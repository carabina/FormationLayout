//
//  GroupFormation+LayoutTarget.swift
//  FormationLayout
//
//  Created by Evan on 22/06/15.
//  Copyright © 2015 evancoding.com. All rights reserved.
//

import UIKit

/// GroupFormation extension that takes `LayoutTarget` to create constraints.
extension GroupFormation: FormationTakesLayoutTarget {
    
    /// `NSLayoutConstraint` factory method with `LayoutTarget`.    
    public func attribute(attribute: NSLayoutAttribute, relatedBy relation: NSLayoutRelation, target: LayoutTarget, priority: UILayoutPriority = UILayoutPriorityRequired, handler: ((NSLayoutConstraint) -> Void)? = nil) -> Self {
        for viewFormation in viewFormations {
            if viewFormation.view != target.view || attribute != target.attribute {
                viewFormation.attribute(attribute, relatedBy: relation, target: target, priority: priority, handler: handler)
            }
        }
        return self
    }
}