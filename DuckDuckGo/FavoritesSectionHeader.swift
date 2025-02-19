//
//  FavoritesSectionHeader.swift
//  DuckDuckGo
//
//  Copyright © 2024 DuckDuckGo. All rights reserved.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

import SwiftUI
import DesignResourcesKit
import Core

struct FavoritesSectionHeader: View {

    let model: any FavoritesEmptyStateModel

    var body: some View {
        HStack(spacing: 16, content: {
            Text(UserText.newTabPageFavoritesSectionHeaderTitle)
                .font(.system(size: 15, weight: .semibold))
                .foregroundColor(Color(designSystemColor: .textPrimary))
                .frame(alignment: .leading)

            Spacer()

            Button(action: {
                model.toggleTooltip()
            }, label: {
                Image(.info12)
                    .foregroundStyle(Color(designSystemColor: .textPrimary))
            })
        })
    }
}

#Preview {
    return FavoritesSectionHeader(model: FavoritesPreviewModel())
}
