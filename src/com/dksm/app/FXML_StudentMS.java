/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dksm.app;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.application.Application;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.layout.StackPane;
import javafx.stage.Stage;

/**
 *
 * @author nelson
 */
public class FXML_StudentMS extends Application {

    private static FXML_StudentMS instance;
    private Stage stage;

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        launch(args);
    }

    public static FXML_StudentMS getInstance() {
        return instance;
    }

    @Override
    public void start(Stage primaryStage) {
        instance = this;
        stage = primaryStage;
        Parent parent = getSceneParent(loginFxml);
        stage.setScene(new Scene(parent, 480, 300));
        stage.show();
    }
    private String loginFxml = "/com/dksm/app/views/Login.fxml";
    private String regFxml = "/com/dksm/app/views/Register.fxml";

    private Parent getSceneParent(String fxmlFile) {
        Parent parent = null;
        try {
            parent = FXMLLoader.load(this.getClass().getResource(fxmlFile));
        } catch (IOException ex) {
            Logger.getLogger(FXML_StudentMS.class.getName()).log(Level.SEVERE, null, ex);
        }
        return parent;
    }

    public void toReg() {
        Scene sce = stage.getScene();
        if (sce == null) {
            stage.setScene(new Scene(getSceneParent(regFxml), 400, 300));
        }else{
            sce.setRoot(getSceneParent(regFxml));
        }
        stage.sizeToScene();
    }
}
