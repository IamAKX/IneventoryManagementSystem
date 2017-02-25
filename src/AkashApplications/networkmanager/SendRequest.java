/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package AkashApplications.networkmanager;

import java.io.IOException;
import java.util.HashMap;
import javax.swing.JLabel;
import javax.swing.JProgressBar;

/**
 *
 * @author akash
 */
public class SendRequest {
    JLabel label;
    JProgressBar progressBar;
    HashMap<String, String> map;
    String url;
    
    public SendRequest(JLabel label, JProgressBar progressBar, HashMap<String, String> map, String url) {
        this.label = label;
        this.progressBar = progressBar;
        this.map = map;
        this.url = url;
    }

    
    public String serverResponse()
    {
        label.setText("Resquesting server...");
        progressBar.setValue(1);
        String result = "";
        try {
            HttpUtility.sendPostRequest(url, map);
            label.setText("Fetching response...");
            progressBar.setValue(50);
            String[] response = HttpUtility.readMultipleLinesRespone();
            for (String line : response) {
                result += line;
            }
        } catch (IOException ex) {
            ex.printStackTrace();
        }
        HttpUtility.disconnect();
        label.setText("Saved successfully...");
        progressBar.setValue(100);
        return result;
    }
    
    
}
