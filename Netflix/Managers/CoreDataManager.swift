//
//  CoreDataManager.swift
//  Netflix
//
//  Created by Ramazan Abdullayev on 16.04.22.
//

import Foundation
import UIKit
import CoreData

class CoreDataManager {
    
    enum CoreDataError: Error {
        case failedToSaveData
        case failedToFetchData
        case failedToRemoveData
    }
    
    static let shared = CoreDataManager()
    
    func downloadTitle(with model: Title, completion: @escaping (Result<Void, Error>) -> Void) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
        
        let context = appDelegate.persistentContainer.viewContext
        let item = TitleItem(context: context)
        
        item.id = Int64(model.id)
        item.vote_count = Int64(model.vote_count)
        item.vote_average = model.vote_average
        item.media_type = model.media_type
        item.original_name = model.original_name
        item.original_title = model.original_title
        item.poster_path = model.poster_path
        item.overview = model.overview
        item.release_date = model.release_date
         
        do {
            try context.save()
            completion(.success(()))
        } catch {
            completion(.failure(CoreDataError.failedToSaveData))
        }
    }
    
    func fetchTitlesFromCoreData(completion: @escaping(Result<[TitleItem], Error>) -> Void) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
        
        let context = appDelegate.persistentContainer.viewContext
        
        let request: NSFetchRequest<TitleItem>
        request = TitleItem.fetchRequest()
        
        do {
            let results = try context.fetch(request)
            completion(.success(results))
        } catch {
            completion(.failure(CoreDataError.failedToFetchData))
        }
    }
    
    func removeTitleFromCoreData(with model: TitleItem, completion: @escaping(Result<Void, Error>) -> Void) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
        
        let context = appDelegate.persistentContainer.viewContext
        
        context.delete(model)
        
        do {
            try context.save()
            completion(.success(()))
        } catch {
            completion(.failure(CoreDataError.failedToRemoveData))
        }
    }
}
