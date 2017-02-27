/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package AkashApplications.src;

import java.util.List;
import javax.swing.JProgressBar;
import javax.swing.SwingWorker;

/**
 *
 * @author akash
 */
public class ProgressTask extends SwingWorker<Void, Void>{
    
    JProgressBar progressBar;

    public ProgressTask(JProgressBar progressBar) {
        this.progressBar = progressBar;
    }

    @Override
    protected void process(List<Void> chunks) {
        this.progressBar = progressBar;
    }
    
    @Override
    protected Void doInBackground() throws Exception {
        progressBar.setIndeterminate(true);
        
        return null;
    }

    @Override
    protected void done() {
        super.done(); //To change body of generated methods, choose Tools | Templates.
        
    }

    
    public void stopPrgress()
    {
        progressBar.setIndeterminate(false);
        
    }
    
}
