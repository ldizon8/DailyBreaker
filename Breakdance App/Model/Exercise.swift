import Foundation

struct Exercise {
    var name: String
    var duration: Int
}

enum TrainingExercises{
    static let WarmUp: [Exercise] = [
        Exercise(name: "Pushups", duration: 10),
        Exercise(name: "Jumping Jacks", duration: 60),
        Exercise(name: "Situps", duration: 60),
        Exercise(name: "Squats", duration: 60),
        Exercise(name: "Lunges", duration: 60)]
    
    static let Stamina = [
        Exercise(name: "Toprock", duration: 60),
        Exercise(name: "Footwork", duration: 60),
        Exercise(name: "Power Moves", duration: 60),
        Exercise(name: "Freeze", duration: 60)]
    
    static let Battle = [
        Exercise(name: "Set 1", duration: 60),
        Exercise(name: "Set 2", duration: 60),
        Exercise(name: "Set 3", duration: 60),
        Exercise(name: "Set 4", duration: 60),
        Exercise(name: "Set 5", duration: 60)]
}
