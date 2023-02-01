//
//  NotificationService.swift
//  Twitter_Clone
//
//  Created by Rohit Patil on 31/01/23.
//

import Firebase
import FirebaseFirestoreSwift

struct NotificationService{
    
    func fetchNotification(forUid uid:String,completion:@escaping([NotifcationsModel])->Void){
//        var tweets = [Tweet]()
//        Firestore.firestore().collection("Notifications").document(uid).collection(uid).getDocuments { snapshot, _ in
//            guard let documents = snapshot?.documents else {return}
//
//            documents.forEach { doc in
//                let tweetID = doc.documentID
//
//                Firestore.firestore().collection(uid)
//                    .document(tweetID)
//                    .getDocument { snapshot, _ in
//                        guard let tweet = try? snapshot?.data(as: Tweet.self) else { return }
//                        tweets.append(tweet)
//
//                        completion(tweets)
//                    }
//            }
//        }
}
}
