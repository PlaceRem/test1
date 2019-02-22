//
//  GameScene.swift
//  test1
//
//  Created by Denis Kovrigin on 22/02/2019.
//  Copyright © 2019 Denis Kovrigin. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        let border = SKPhysicsBody(edgeLoopFrom: self.frame)
        border.friction = 0
        self.physicsBody = border
        
        let firstBall = childNode(withName: "ball") as! SKSpriteNode
        firstBall.texture = SKTexture(imageNamed: "ball")
        firstBall.physicsBody?.applyImpulse(CGVector(dx: 1200.0, dy: 1000.0))
        
        let secondBall = childNode(withName: "ball1") as! SKSpriteNode
        secondBall.texture = SKTexture(imageNamed: "ball1")
        secondBall.physicsBody?.velocity = CGVector(dx: 200, dy: 200)
        secondBall.physicsBody?.applyImpulse(CGVector(dx: 5300.0, dy: 5050.0))
    }
    
}
