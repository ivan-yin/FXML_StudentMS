/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dksm.app.ctrls;

import com.dksm.app.FXML_StudentMS;
import com.dksm.app.models.User;
import com.dksm.app.models.Users;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Label;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;

/**
 *
 * @author nelson
 */
public class LoginCtrl {

    @FXML
    private TextField name;
    @FXML
    private Label errorMessage;
    @FXML
    private PasswordField pwd;

    @FXML
    public void toReg(ActionEvent event) {
        FXML_StudentMS.getInstance().toReg();
    }

    @FXML
    public void login(ActionEvent event) {
        if ("".equals(name.getText()) || "".equals(pwd.getText())) {
            errorMessage.setText("error name/password.");
            return;
        }
        User user = Users.getUsers().get(name.getText());
        if (null == user) {
            errorMessage.setText("error name/password.");
            return;
        }
        if (user.getPassword().equals(pwd.getText())) {
            errorMessage.setText("login ok.");
        }
    }
}
