.class public Ltwitter4j/TwitterAdapter;
.super Ljava/lang/Object;
.source "TwitterAdapter.java"

# interfaces
.implements Ltwitter4j/TwitterListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method public blocked(Ltwitter4j/User;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 205
    return-void
.end method

.method public created(Ltwitter4j/User;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 133
    return-void
.end method

.method public createdBlock(Ltwitter4j/User;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 210
    return-void
.end method

.method public createdFavorite(Ltwitter4j/Status;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 178
    return-void
.end method

.method public createdFriendship(Ltwitter4j/User;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 138
    return-void
.end method

.method public deletedDirectMessage(Ltwitter4j/DirectMessage;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 119
    return-void
.end method

.method public destroyed(Ltwitter4j/User;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 143
    return-void
.end method

.method public destroyedBlock(Ltwitter4j/User;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 220
    return-void
.end method

.method public destroyedDirectMessage(Ltwitter4j/DirectMessage;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 124
    return-void
.end method

.method public destroyedFavorite(Ltwitter4j/Status;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 180
    return-void
.end method

.method public destroyedFriendship(Ltwitter4j/User;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 148
    return-void
.end method

.method public destroyedStatus(Ltwitter4j/Status;)V
    .locals 0
    .parameter "destroyedStatus"

    .prologue
    .line 94
    return-void
.end method

.method public disabledNotification(Ltwitter4j/User;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 200
    return-void
.end method

.method public enabledNotification(Ltwitter4j/User;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 190
    return-void
.end method

.method public followed(Ltwitter4j/User;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 185
    return-void
.end method

.method public gotBlockingUsers(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 231
    .local p1, blockingUsers:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/User;>;"
    return-void
.end method

.method public gotBlockingUsersIDs(Ltwitter4j/IDs;)V
    .locals 0
    .parameter "blockingUsersIDs"

    .prologue
    .line 237
    return-void
.end method

.method public gotCurrentTrends(Ltwitter4j/Trends;)V
    .locals 0
    .parameter "trends"

    .prologue
    .line 257
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
    .line 262
    .local p1, trendsList:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/Trends;>;"
    return-void
.end method

.method public gotDirectMessages(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/DirectMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, messages:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/DirectMessage;>;"
    return-void
.end method

.method public gotDowntimeSchedule(Ljava/lang/String;)V
    .locals 0
    .parameter "schedule"

    .prologue
    .line 245
    return-void
.end method

.method public gotExists(Z)V
    .locals 0
    .parameter "exists"

    .prologue
    .line 153
    return-void
.end method

.method public gotExistsBlock(Z)V
    .locals 0
    .parameter "blockExists"

    .prologue
    .line 225
    return-void
.end method

.method public gotExistsFriendship(Z)V
    .locals 0
    .parameter "exists"

    .prologue
    .line 158
    return-void
.end method

.method public gotFavorites(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, statuses:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/Status;>;"
    return-void
.end method

.method public gotFeatured(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, users:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/User;>;"
    return-void
.end method

.method public gotFollowers(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, users:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/User;>;"
    return-void
.end method

.method public gotFollowersIDs(Ltwitter4j/IDs;)V
    .locals 0
    .parameter "ids"

    .prologue
    .line 128
    return-void
.end method

.method public gotFriends(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, users:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/User;>;"
    return-void
.end method

.method public gotFriendsIDs(Ltwitter4j/IDs;)V
    .locals 0
    .parameter "ids"

    .prologue
    .line 126
    return-void
.end method

.method public gotFriendsTimeline(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, statuses:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/Status;>;"
    return-void
.end method

.method public gotHomeTimeline(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, statuses:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/Status;>;"
    return-void
.end method

.method public gotMentions(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, statuses:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/Status;>;"
    return-void
.end method

.method public gotPublicTimeline(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, statuses:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/Status;>;"
    return-void
.end method

.method public gotRateLimitStatus(Ltwitter4j/RateLimitStatus;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 172
    return-void
.end method

.method public gotReplies(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, statuses:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/Status;>;"
    return-void
.end method

.method public gotRetweetedByMe(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, statuses:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/Status;>;"
    return-void
.end method

.method public gotRetweetedToMe(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, statuses:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/Status;>;"
    return-void
.end method

.method public gotRetweetsOfMe(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, statuses:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/Status;>;"
    return-void
.end method

.method public gotSentDirectMessages(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/DirectMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, messages:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/DirectMessage;>;"
    return-void
.end method

.method public gotShow(Ltwitter4j/Status;)V
    .locals 0
    .parameter "statuses"

    .prologue
    .line 55
    return-void
.end method

.method public gotShowStatus(Ltwitter4j/Status;)V
    .locals 0
    .parameter "statuses"

    .prologue
    .line 60
    return-void
.end method

.method public gotTrends(Ltwitter4j/Trends;)V
    .locals 0
    .parameter "trends"

    .prologue
    .line 252
    return-void
.end method

.method public gotUserDetail(Ltwitter4j/User;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 108
    return-void
.end method

.method public gotUserTimeline(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, statuses:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/Status;>;"
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
    .line 267
    .local p1, trendsList:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/Trends;>;"
    return-void
.end method

.method public left(Ltwitter4j/User;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 195
    return-void
.end method

.method public onException(Ltwitter4j/TwitterException;I)V
    .locals 0
    .parameter "ex"
    .parameter "method"

    .prologue
    .line 274
    return-void
.end method

.method public retweetedStatus(Ltwitter4j/Status;)V
    .locals 0
    .parameter "retweetedStatus"

    .prologue
    .line 99
    return-void
.end method

.method public searched(Ltwitter4j/QueryResult;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 247
    return-void
.end method

.method public sentDirectMessage(Ltwitter4j/DirectMessage;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 114
    return-void
.end method

.method public tested(Z)V
    .locals 0
    .parameter "test"

    .prologue
    .line 240
    return-void
.end method

.method public unblocked(Ltwitter4j/User;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 215
    return-void
.end method

.method public updated(Ltwitter4j/Status;)V
    .locals 0
    .parameter "statuses"

    .prologue
    .line 65
    return-void
.end method

.method public updatedDeliverlyDevice(Ltwitter4j/User;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 174
    return-void
.end method

.method public updatedLocation(Ltwitter4j/User;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 163
    return-void
.end method

.method public updatedProfile(Ltwitter4j/User;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 168
    return-void
.end method

.method public updatedProfileColors(Ltwitter4j/User;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 170
    return-void
.end method

.method public updatedStatus(Ltwitter4j/Status;)V
    .locals 0
    .parameter "statuses"

    .prologue
    .line 67
    return-void
.end method
