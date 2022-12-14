//
//  ErrorMessage.swift
//  GHFollowers
//
//  Created by Babak Kiaie on 9/27/22.
//

import Foundation

enum ErrorMessage: String, Error {
    
    case invalidUsername    = "This username created an invalid request. Please try again."
    case unableToComplete   = "Unable to complete your request. Please check your internet connection"
    case invalidResponse    = "Invalid response from the server. Please try again"
    case invalidData        = "The data received is invalid. Try again"
}
