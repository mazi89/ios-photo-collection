//
//  ThemeSelectionViewController.swift
//  PhotoCollection
//
//  Created by Karen Rodriguez on 2/26/20.
//  Copyright © 2020 Hector Ledesma. All rights reserved.
//

import UIKit

class ThemeSelectionViewController: UIViewController {

    var delegate: ThemeSelectionDelegate?
    var themeHelper: ThemeHelper?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    //MARK: - Button Actions
    @IBAction func selectDarkTheme(_ sender: Any) {
        themeHelper!.setThemePreferenceToDark()
        delegate!.themeWasChanged()
        dismiss(animated: true, completion: nil)
    }
    @IBAction func selectGreenTheme(_ sender: Any) {
        themeHelper!.setThemePreferenceToGreen()
        delegate!.themeWasChanged()
        dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

protocol ThemeSelectionDelegate {
    func themeWasChanged()
}
