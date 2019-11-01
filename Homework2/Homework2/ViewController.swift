//
//  ViewController.swift
//  Homework2
//
//  Created by Cody Tavenner on 4/5/19.
//  Copyright © 2019 Cody Tavenner. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UIImagePickerControllerDelegate, UINavigationControllerDelegate{

    @IBOutlet weak var cityTable: UITableView!
    
    var n = ""
    //var chosen:UIImage?
    var d = ""
   // var x = 0
    var myCityList:cityModel =  cityModel()
    var cityList = [String: [city]]()


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        createCityDictionary()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // get the section count
        return myCityList.citySectionTitles.count
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of rows in the section.
        // get the section title
        let cityKey = myCityList.citySectionTitles[section]
        
        // use the section title to count howmany fruits are in that section
        if let cityValues = cityList[cityKey]
        {
            return cityValues.count
        }
        else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        // returns the heading for each section
        return myCityList.citySectionTitles[section]
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "city1", for: indexPath) as! CityTableViewCell
        cell.layer.borderWidth = 1.0
        let cityKey = myCityList.citySectionTitles[indexPath.section]
        
        if let cityValues = cityList[cityKey]{
            cell.cityName.text = cityValues[indexPath.row].cityName;
            cell.cityimage.image = cityValues[indexPath.row].cityImageName

        }

        return cell
        
    }
    
    func createCityDictionary() {
        // for each fruit in the fruit list from the fruits object
        for city in myCityList.cities {
            
            // extract the first letter as a string for the key
            let fName = city.cityName
            
            let endIndex = fName!.index((fName!.startIndex), offsetBy: 1)
            
            let cityKey = String(fName![(..<endIndex)])
            
            // build the fruit object array for each key
            if var cityObjects = cityList[cityKey] {
                cityObjects.append(city)
                cityList[cityKey] = cityObjects
                
            } else {
                cityList[cityKey] = [city]
            }
            
        }
        
        
    }
    
    // delete table entry
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool
    {
        return true
    }
    
    func tableView(tableView: UITableView, editingStyleForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell.EditingStyle { return UITableViewCell.EditingStyle.delete }
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath)
    {
        // delete the data from the fruit table,  Do this first, then use method 1 or method 2
        self.myCityList.cities.remove(at: indexPath.row)
        
        self.cityTable.beginUpdates()
        self.cityTable.deleteRows(at: [indexPath], with: .automatic)
        self.cityTable.endUpdates()
        
    }
  /*  func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let delete = UITableViewRowAction(style: .destructive, title: "Delete") { (action, indexPath) in
            self.myCityList.cities.remove(at: indexPath.row)
            self.cityTable.deleteRows(at: [indexPath], with: .automatic)
        }
        
        let edit = UITableViewRowAction(style: .normal, title: "Edit") { (action, indexPath) in
            let alertController = UIAlertController(title: "Edit City", message: "", preferredStyle: .alert)
            
            alertController.addTextField(configurationHandler: { textField in
                textField.placeholder = "Change Details of the City Here"
            })
            let serachAction = UIAlertAction(title: "Picture", style: .default) { (action) in
                self.d = (alertController.textFields?.first?.text)!
                // load image
                let photoPicker = UIImagePickerController ()
                photoPicker.delegate = self
                photoPicker.sourceType = .photoLibrary
                // display image selection view
                self.present(photoPicker, animated: true, completion: nil)
                
            }
            let cameraAction = UIAlertAction(title: "Camera", style: .default) { (action) in
                self.d = (alertController.textFields![0].text)!
                
                if UIImagePickerController.isSourceTypeAvailable(.camera) {
                    let picker = UIImagePickerController()
                    picker.allowsEditing = false
                    picker.sourceType = UIImagePickerController.SourceType.camera
                    picker.cameraCaptureMode = .photo
                    picker.modalPresentationStyle = .fullScreen
                    self.present(picker,animated: true,completion: nil)
                } else {
                    print("No camera")
                }
                
            }
            
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
            }
            
            
            alertController.addAction(cancelAction)
            alertController.addAction(serachAction)
            alertController.addAction(cameraAction)
            
            let cityKey = self.myCityList.citySectionTitles[indexPath.section]
            
            // get the fruit object for the selected row in the section
            let city = self.cityList[cityKey]![indexPath.row]
            city.cityDetails = self.d
            city.cityImageName = self.chosen
            
            self.present(alertController, animated: true, completion: nil)
            
        }
        
        edit.backgroundColor = UIColor.blue
        
        return [delete, edit]
    }
    
*/
    @IBAction func addCity(_ sender: UIBarButtonItem) {
        //show the alert controller to select an image for the row
        let alertController = UIAlertController(title: "Add City", message: "", preferredStyle: .alert)
        
        alertController.addTextField(configurationHandler: { textField in
            textField.placeholder = "Enter Name of the City Here"
        })
        alertController.addTextField(configurationHandler: { textField in
            textField.placeholder = "Enter Details of the City Here"
        })
        let serachAction = UIAlertAction(title: "Picture", style: .default) { (action) in
            self.n = (alertController.textFields?.first?.text)!
            self.d = (alertController.textFields![1].text)!
            // load image
            let photoPicker = UIImagePickerController ()
            photoPicker.delegate = self
            photoPicker.sourceType = .photoLibrary
            // display image selection view
            self.present(photoPicker, animated: true, completion: nil)
            
        }
        let cameraAction = UIAlertAction(title: "Camera", style: .default) { (action) in
            self.n = (alertController.textFields?.first?.text)!
            self.d = (alertController.textFields![1].text)!

            if UIImagePickerController.isSourceTypeAvailable(.camera) {
                let picker = UIImagePickerController()
                picker.allowsEditing = false
                picker.sourceType = UIImagePickerController.SourceType.camera
                picker.cameraCaptureMode = .photo
                picker.modalPresentationStyle = .fullScreen
                self.present(picker,animated: true,completion: nil)
            } else {
                print("No camera")
            }
            
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
        }
      
        
        alertController.addAction(cancelAction)
        alertController.addAction(serachAction)
        alertController.addAction(cameraAction)


        
        self.present(alertController, animated: true, completion: nil)

        cityTable.reloadData()

    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]){
        picker.dismiss(animated: true, completion: nil)
            let photo = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
            let f6 = city(fn: n, fd: d, fin: photo!)
            self.myCityList.cities.append(f6)
            
            let fName = n
            
            let endIndex = fName.index((fName.startIndex), offsetBy: 1)
            
            let cityKey = String(fName[(..<endIndex)])
            
            // adding the new fruit object to hthe dictionary
            if var cityObjects = self.cityList[cityKey] {
                cityObjects.append(f6)
                self.cityList[cityKey] = cityObjects
                
            } else {
                self.cityList[cityKey] = [f6]
            }
            self.cityTable.reloadData()
        
        
    
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let selectedIndex: IndexPath = self.cityTable.indexPath(for: sender as! UITableViewCell)!
        // access the section for the selected row
        let cityKey = myCityList.citySectionTitles[selectedIndex.section]
        
        // get the fruit object for the selected row in the section
        let city = cityList[cityKey]![selectedIndex.row]
        
        if(segue.identifier == "toCityView"){
            if let viewController: CityViewController = segue.destination as? CityViewController {
                viewController.selectedCity = city.cityName;
                viewController.cDetails = city.cityDetails;
                viewController.cImage = city.cityImageName;
            }
        }
    }
    
   /* @IBAction func returnedFromCity(segue: UIStoryboardSegue)
    {
        let foo = segue.sourceViewController.
        let selectedIndex: IndexPath = self.cityTable.indexPath(for: IndexPath.self as! UITableViewCell)!
        
        let cityKey = myCityList.citySectionTitles[selectedIndex.section]
        
        // get the fruit object for the selected row in the section
        let city = cityList[cityKey]![selectedIndex.row]
        city.cityDetails =
        }
    }
    */
}

