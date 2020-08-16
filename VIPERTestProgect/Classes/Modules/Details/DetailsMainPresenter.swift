//
//  DetailsMainPresenter.swift
//  VIPERTestProgect
//
//  Created by Раис Аглиуллов on 15.08.2020.
//  Copyright (c) 2020 Ильдар Аглиуллов. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import Foundation

protocol DetailsMainPresentationLogic {
    func presentChangeControllerMode(response: DetailsMain.ChangeControllerMode.Response)
    func presentFetchedOptions(response: DetailsMain.FetchOptions.Response)
    
}

class DetailsMainPresenter {
    
    weak var viewController: DetailsMainDisplayLogic?
    
    private func getSection(option: Options?) -> [DetailsMain.DisplayedSection] {
        guard let option = option else { return [] }
        
        var sections: [DetailsMain.DisplayedSection] = []
        let descriptionCell = DetailsMain.DisplayedSection.DisplayedCell(type: .description(title: option.title, imageName: option.imageName, detailsText: option.description))
        
        let section = DetailsMain.DisplayedSection(type: .details, cells: [descriptionCell], header: nil, footer: nil)
        sections.append(section)
        return sections
    }
    
}

extension DetailsMainPresenter: DetailsMainPresentationLogic {
    
    func presentFetchedOptions(response: DetailsMain.FetchOptions.Response) {
        let sections = getSection(option: response.detailsOption)
        
        let viewModel = DetailsMain.FetchOptions.ViewModel(displayedSection: sections)
        viewController?.displayFetchedOptions(viewModel: viewModel)
    }
    
    func presentChangeControllerMode(response: DetailsMain.ChangeControllerMode.Response) {
        let viewModel = DetailsMain.ChangeControllerMode.ViewModel(mode: response.mode)
        viewController?.displayChangeControllerMode(viewModel: viewModel)
    }
    
}