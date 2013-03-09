.class public Ltwitter4j/TwitterAdapter;
.super Ljava/lang/Object;
.source "TwitterAdapter.java"

# interfaces
.implements Ltwitter4j/TwitterListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public addedUserListMember(Ltwitter4j/UserList;)V
    .locals 0
    .parameter "userList"

    .prologue
    .line 265
    return-void
.end method

.method public addedUserListMembers(Ltwitter4j/UserList;)V
    .locals 0
    .parameter "userList"

    .prologue
    .line 271
    return-void
.end method

.method public checkedUserListMembership(Ltwitter4j/User;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 283
    return-void
.end method

.method public checkedUserListSubscription(Ltwitter4j/User;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 309
    return-void
.end method

.method public createdBlock(Ltwitter4j/User;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 459
    return-void
.end method

.method public createdFavorite(Ltwitter4j/Status;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 435
    return-void
.end method

.method public createdFriendship(Ltwitter4j/User;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 338
    return-void
.end method

.method public createdPlace(Ltwitter4j/Place;)V
    .locals 0
    .parameter "place"

    .prologue
    .line 540
    return-void
.end method

.method public createdUserList(Ltwitter4j/UserList;)V
    .locals 0
    .parameter "userList"

    .prologue
    .line 203
    return-void
.end method

.method public deletedUserListMember(Ltwitter4j/UserList;)V
    .locals 0
    .parameter "userList"

    .prologue
    .line 277
    return-void
.end method

.method public destroyedBlock(Ltwitter4j/User;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 465
    return-void
.end method

.method public destroyedDirectMessage(Ltwitter4j/DirectMessage;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 325
    return-void
.end method

.method public destroyedFavorite(Ltwitter4j/Status;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 438
    return-void
.end method

.method public destroyedFriendship(Ltwitter4j/User;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 344
    return-void
.end method

.method public destroyedStatus(Ltwitter4j/Status;)V
    .locals 0
    .parameter "destroyedStatus"

    .prologue
    .line 124
    return-void
.end method

.method public destroyedUserList(Ltwitter4j/UserList;)V
    .locals 0
    .parameter "userList"

    .prologue
    .line 227
    return-void
.end method

.method public disabledNotification(Ltwitter4j/User;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 452
    return-void
.end method

.method public enabledNotification(Ltwitter4j/User;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 446
    return-void
.end method

.method public gotAccountSettings(Ltwitter4j/AccountSettings;)V
    .locals 0
    .parameter "settings"

    .prologue
    .line 410
    return-void
.end method

.method public gotAccountTotals(Ltwitter4j/AccountTotals;)V
    .locals 0
    .parameter "totals"

    .prologue
    .line 404
    return-void
.end method

.method public gotAllUserLists(Ltwitter4j/ResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/UserList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 251
    .local p1, lists:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/UserList;>;"
    return-void
.end method

.method public gotAvailableTrends(Ltwitter4j/ResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Location;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 504
    .local p1, locations:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Location;>;"
    return-void
.end method

.method public gotBlockingUsers(Ltwitter4j/ResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 477
    .local p1, blockingUsers:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/User;>;"
    return-void
.end method

.method public gotBlockingUsersIDs(Ltwitter4j/IDs;)V
    .locals 0
    .parameter "blockingUsersIDs"

    .prologue
    .line 483
    return-void
.end method

.method public gotCurrentTrends(Ltwitter4j/Trends;)V
    .locals 0
    .parameter "trends"

    .prologue
    .line 46
    return-void
.end method

.method public gotDailyTrends(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Trends;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, trendsList:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/Trends;>;"
    return-void
.end method

.method public gotDirectMessage(Ltwitter4j/DirectMessage;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 331
    return-void
.end method

.method public gotDirectMessages(Ltwitter4j/ResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/DirectMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 313
    .local p1, messages:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/DirectMessage;>;"
    return-void
.end method

.method public gotExistsBlock(Z)V
    .locals 0
    .parameter "blockExists"

    .prologue
    .line 471
    return-void
.end method

.method public gotExistsFriendship(Z)V
    .locals 0
    .parameter "exists"

    .prologue
    .line 350
    return-void
.end method

.method public gotFavorites(Ltwitter4j/ResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 432
    .local p1, statuses:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    return-void
.end method

.method public gotFollowersIDs(Ltwitter4j/IDs;)V
    .locals 0
    .parameter "ids"

    .prologue
    .line 387
    return-void
.end method

.method public gotFollowersStatuses(Ltwitter4j/PagableResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, users:Ltwitter4j/PagableResponseList;,"Ltwitter4j/PagableResponseList<Ltwitter4j/User;>;"
    return-void
.end method

.method public gotFriendsIDs(Ltwitter4j/IDs;)V
    .locals 0
    .parameter "ids"

    .prologue
    .line 384
    return-void
.end method

.method public gotFriendsStatuses(Ltwitter4j/PagableResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, users:Ltwitter4j/PagableResponseList;,"Ltwitter4j/PagableResponseList<Ltwitter4j/User;>;"
    return-void
.end method

.method public gotFriendsTimeline(Ltwitter4j/ResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, statuses:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    return-void
.end method

.method public gotGeoDetails(Ltwitter4j/Place;)V
    .locals 0
    .parameter "place"

    .prologue
    .line 534
    return-void
.end method

.method public gotHomeTimeline(Ltwitter4j/ResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, statuses:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    return-void
.end method

.method public gotIncomingFriendships(Ltwitter4j/IDs;)V
    .locals 0
    .parameter "ids"

    .prologue
    .line 362
    return-void
.end method

.method public gotLocationTrends(Ltwitter4j/Trends;)V
    .locals 0
    .parameter "trends"

    .prologue
    .line 511
    return-void
.end method

.method public gotMemberSuggestions(Ltwitter4j/ResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p1, users:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/User;>;"
    return-void
.end method

.method public gotMentions(Ltwitter4j/ResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, statuses:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    return-void
.end method

.method public gotNearByPlaces(Ltwitter4j/ResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Place;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 528
    .local p1, places:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Place;>;"
    return-void
.end method

.method public gotOutgoingFriendships(Ltwitter4j/IDs;)V
    .locals 0
    .parameter "ids"

    .prologue
    .line 368
    return-void
.end method

.method public gotPrivacyPolicy(Ljava/lang/String;)V
    .locals 0
    .parameter "privacyPolicy"

    .prologue
    .line 556
    return-void
.end method

.method public gotProfileImage(Ltwitter4j/ProfileImage;)V
    .locals 0
    .parameter "image"

    .prologue
    .line 190
    return-void
.end method

.method public gotPublicTimeline(Ltwitter4j/ResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, statuses:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    return-void
.end method

.method public gotRateLimitStatus(Ltwitter4j/RateLimitStatus;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 395
    return-void
.end method

.method public gotRelatedResults(Ltwitter4j/RelatedResults;)V
    .locals 0
    .parameter "relatedResults"

    .prologue
    .line 564
    return-void
.end method

.method public gotRetweetedBy(Ltwitter4j/ResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, users:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/User;>;"
    return-void
.end method

.method public gotRetweetedByIDs(Ltwitter4j/IDs;)V
    .locals 0
    .parameter "ids"

    .prologue
    .line 150
    return-void
.end method

.method public gotRetweetedByMe(Ltwitter4j/ResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, statuses:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    return-void
.end method

.method public gotRetweetedByUser(Ltwitter4j/ResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, statuses:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    return-void
.end method

.method public gotRetweetedToMe(Ltwitter4j/ResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, statuses:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    return-void
.end method

.method public gotRetweetedToUser(Ltwitter4j/ResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, statuses:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    return-void
.end method

.method public gotRetweets(Ltwitter4j/ResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, retweets:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    return-void
.end method

.method public gotRetweetsOfMe(Ltwitter4j/ResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, statuses:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    return-void
.end method

.method public gotReverseGeoCode(Ltwitter4j/ResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Place;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 531
    .local p1, places:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Place;>;"
    return-void
.end method

.method public gotSentDirectMessages(Ltwitter4j/ResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/DirectMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 316
    .local p1, messages:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/DirectMessage;>;"
    return-void
.end method

.method public gotShowFriendship(Ltwitter4j/Relationship;)V
    .locals 0
    .parameter "relationship"

    .prologue
    .line 356
    return-void
.end method

.method public gotShowStatus(Ltwitter4j/Status;)V
    .locals 0
    .parameter "statuses"

    .prologue
    .line 118
    return-void
.end method

.method public gotShowUserList(Ltwitter4j/UserList;)V
    .locals 0
    .parameter "userList"

    .prologue
    .line 221
    return-void
.end method

.method public gotSimilarPlaces(Ltwitter4j/SimilarPlaces;)V
    .locals 0
    .parameter "places"

    .prologue
    .line 525
    return-void
.end method

.method public gotSuggestedUserCategories(Ltwitter4j/ResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, categories:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Category;>;"
    return-void
.end method

.method public gotTermsOfService(Ljava/lang/String;)V
    .locals 0
    .parameter "tof"

    .prologue
    .line 549
    return-void
.end method

.method public gotTrends(Ltwitter4j/Trends;)V
    .locals 0
    .parameter "trends"

    .prologue
    .line 40
    return-void
.end method

.method public gotUserDetail(Ltwitter4j/User;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 154
    return-void
.end method

.method public gotUserListMembers(Ltwitter4j/PagableResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 259
    .local p1, users:Ltwitter4j/PagableResponseList;,"Ltwitter4j/PagableResponseList<Ltwitter4j/User;>;"
    return-void
.end method

.method public gotUserListMemberships(Ltwitter4j/PagableResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/UserList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 239
    .local p1, userLists:Ltwitter4j/PagableResponseList;,"Ltwitter4j/PagableResponseList<Ltwitter4j/UserList;>;"
    return-void
.end method

.method public gotUserListStatuses(Ltwitter4j/ResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 233
    .local p1, statuses:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    return-void
.end method

.method public gotUserListSubscribers(Ltwitter4j/PagableResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 291
    .local p1, users:Ltwitter4j/PagableResponseList;,"Ltwitter4j/PagableResponseList<Ltwitter4j/User;>;"
    return-void
.end method

.method public gotUserListSubscriptions(Ltwitter4j/PagableResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/UserList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 245
    .local p1, userLists:Ltwitter4j/PagableResponseList;,"Ltwitter4j/PagableResponseList<Ltwitter4j/UserList;>;"
    return-void
.end method

.method public gotUserLists(Ltwitter4j/PagableResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/UserList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 215
    .local p1, userLists:Ltwitter4j/PagableResponseList;,"Ltwitter4j/PagableResponseList<Ltwitter4j/UserList;>;"
    return-void
.end method

.method public gotUserSuggestions(Ltwitter4j/ResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p1, users:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/User;>;"
    return-void
.end method

.method public gotUserTimeline(Ltwitter4j/ResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, statuses:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    return-void
.end method

.method public gotWeeklyTrends(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Trends;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, trendsList:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/Trends;>;"
    return-void
.end method

.method public lookedUpFriendships(Ltwitter4j/ResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Friendship;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 374
    .local p1, friendships:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Friendship;>;"
    return-void
.end method

.method public lookedupUsers(Ltwitter4j/ResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, users:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/User;>;"
    return-void
.end method

.method public onException(Ltwitter4j/TwitterException;Ltwitter4j/TwitterMethod;)V
    .locals 0
    .parameter "ex"
    .parameter "method"

    .prologue
    .line 575
    return-void
.end method

.method public reportedSpam(Ltwitter4j/User;)V
    .locals 0
    .parameter "reportedSpammer"

    .prologue
    .line 488
    return-void
.end method

.method public retweetedStatus(Ltwitter4j/Status;)V
    .locals 0
    .parameter "retweetedStatus"

    .prologue
    .line 130
    return-void
.end method

.method public searched(Ltwitter4j/QueryResult;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 34
    return-void
.end method

.method public searchedPlaces(Ltwitter4j/ResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Place;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 519
    .local p1, places:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Place;>;"
    return-void
.end method

.method public searchedUser(Ltwitter4j/ResponseList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, userList:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/User;>;"
    return-void
.end method

.method public sentDirectMessage(Ltwitter4j/DirectMessage;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 319
    return-void
.end method

.method public subscribedUserList(Ltwitter4j/UserList;)V
    .locals 0
    .parameter "userList"

    .prologue
    .line 297
    return-void
.end method

.method public tested(Z)V
    .locals 0
    .parameter "test"

    .prologue
    .line 568
    return-void
.end method

.method public unsubscribedUserList(Ltwitter4j/UserList;)V
    .locals 0
    .parameter "userList"

    .prologue
    .line 303
    return-void
.end method

.method public updatedFriendship(Ltwitter4j/Relationship;)V
    .locals 0
    .parameter "relationship"

    .prologue
    .line 380
    return-void
.end method

.method public updatedProfile(Ltwitter4j/User;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 428
    return-void
.end method

.method public updatedProfileBackgroundImage(Ltwitter4j/User;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 422
    return-void
.end method

.method public updatedProfileColors(Ltwitter4j/User;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 398
    return-void
.end method

.method public updatedProfileImage(Ltwitter4j/User;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 416
    return-void
.end method

.method public updatedStatus(Ltwitter4j/Status;)V
    .locals 0
    .parameter "statuses"

    .prologue
    .line 121
    return-void
.end method

.method public updatedUserList(Ltwitter4j/UserList;)V
    .locals 0
    .parameter "userList"

    .prologue
    .line 209
    return-void
.end method

.method public verifiedCredentials(Ltwitter4j/User;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 392
    return-void
.end method
