/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package AkashApplications.src;

import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JLabel;
import javax.swing.JProgressBar;
import javax.swing.SwingWorker;

/**
 *
 * @author akash
 */
public class ProgressBarUpdate extends SwingWorker<Void, Void>{
    
    JProgressBar progressBar;
    JLabel label;
    String text;
    int progressInterval;

    public ProgressBarUpdate(JProgressBar progressBar, JLabel label, String text, int progressInterval) {
        this.progressBar = progressBar;
        this.label = label;
        this.text = text;
        this.progressInterval = progressInterval;
    }

    public void setProgerss()
    {
         progressBar.setValue(progressInterval+progressBar.getValue());
         label.setText(text);
    }
    
    @Override
    protected Void doInBackground() throws Exception {
        
        new Thread(new Runnable() {
            @Override
            public void run() {
                progressBar.setValue(progressInterval+progressBar.getValue());
                label.setText(text);
            }
        }).start();
        return null;
    }

}
