/*
 * Copyright 2005 MH-Software-Entwicklung. All rights reserved.
 * Use is subject to license terms.
 */
package com.jtattoo.plaf;

import java.awt.*;
import java.awt.event.FocusEvent;
import java.awt.event.FocusListener;
import java.beans.PropertyChangeEvent;
import javax.swing.*;
import javax.swing.border.Border;
import javax.swing.plaf.ComponentUI;
import javax.swing.plaf.UIResource;
import javax.swing.plaf.basic.BasicTextAreaUI;
import javax.swing.text.JTextComponent;

/**
 * @author Michael Hagen
 */
public class BaseTextAreaUI extends BasicTextAreaUI {

    private Border orgBorder = null;
    private FocusListener focusListener = null;

    public static ComponentUI createUI(JComponent c) {
        return new BaseTextAreaUI();
    }

    public void installDefaults() {
        super.installDefaults();
        updateBackground();
    }

    protected void installListeners() {
        super.installListeners();

        if (AbstractLookAndFeel.getTheme().doShowFocusFrame()) {
            focusListener = new FocusListener() {

                public void focusGained(FocusEvent e) {
                    if (getComponent() != null) {
                        orgBorder = getComponent().getBorder();
                        LookAndFeel laf = UIManager.getLookAndFeel();
                        if (laf instanceof AbstractLookAndFeel && orgBorder instanceof UIResource) {
                            Border focusBorder = ((AbstractLookAndFeel)laf).getBorderFactory().getFocusFrameBorder();
                            getComponent().setBorder(focusBorder);
                        }
                        getComponent().invalidate();
                        getComponent().repaint();
                    }
                }

                public void focusLost(FocusEvent e) {
                    if (getComponent() != null) {
                        if (orgBorder instanceof UIResource) {
                            getComponent().setBorder(orgBorder);
                            getComponent().invalidate();
                            getComponent().repaint();
                        }
                    }
                }
            };
            getComponent().addFocusListener(focusListener);
        }
    }

    protected void uninstallListeners() {
        getComponent().removeFocusListener(focusListener);
        focusListener = null;
        super.uninstallListeners();
    }

    protected void paintBackground(Graphics g) {
        g.setColor(getComponent().getBackground());
        if (AbstractLookAndFeel.getTheme().doShowFocusFrame()) {
            if (getComponent().hasFocus() && getComponent().isEditable()) {
                g.setColor(AbstractLookAndFeel.getTheme().getFocusBackgroundColor());
            }
        }
        g.fillRect(0, 0, getComponent().getWidth(), getComponent().getHeight());
    }

    protected void paintSafely(Graphics g) {
        Graphics2D g2D = (Graphics2D) g;
        Object savedRenderingHint = null;
        if (AbstractLookAndFeel.getTheme().isTextAntiAliasingOn()) {
            savedRenderingHint = g2D.getRenderingHint(RenderingHints.KEY_TEXT_ANTIALIASING);
            g2D.setRenderingHint(RenderingHints.KEY_TEXT_ANTIALIASING, AbstractLookAndFeel.getTheme().getTextAntiAliasingHint());
        }
        super.paintSafely(g);
        if (AbstractLookAndFeel.getTheme().isTextAntiAliasingOn()) {
            g2D.setRenderingHint(RenderingHints.KEY_TEXT_ANTIALIASING, savedRenderingHint);
        }
    }

    protected void propertyChange(PropertyChangeEvent evt) {
        if (evt.getPropertyName().equals("editable") ||
                evt.getPropertyName().equals("enabled")) {
            updateBackground();
        }
        super.propertyChange(evt);
    }

    private void updateBackground() {
        JTextComponent c = getComponent();
        if (c.getBackground() instanceof UIResource) {
            if (!c.isEnabled() || !c.isEditable()) {
                c.setBackground(AbstractLookAndFeel.getDisabledBackgroundColor());
            } else {
                c.setBackground(AbstractLookAndFeel.getInputBackgroundColor());
            }
        }
    }
}
