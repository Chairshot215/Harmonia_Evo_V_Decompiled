.class public interface abstract Ltwitter4j/TwitterListener;
.super Ljava/lang/Object;
.source "TwitterListener.java"


# virtual methods
.method public abstract blocked(Ltwitter4j/User;)V
.end method

.method public abstract created(Ltwitter4j/User;)V
.end method

.method public abstract createdBlock(Ltwitter4j/User;)V
.end method

.method public abstract createdFavorite(Ltwitter4j/Status;)V
.end method

.method public abstract createdFriendship(Ltwitter4j/User;)V
.end method

.method public abstract deletedDirectMessage(Ltwitter4j/DirectMessage;)V
.end method

.method public abstract destroyed(Ltwitter4j/User;)V
.end method

.method public abstract destroyedBlock(Ltwitter4j/User;)V
.end method

.method public abstract destroyedDirectMessage(Ltwitter4j/DirectMessage;)V
.end method

.method public abstract destroyedFavorite(Ltwitter4j/Status;)V
.end method

.method public abstract destroyedFriendship(Ltwitter4j/User;)V
.end method

.method public abstract destroyedStatus(Ltwitter4j/Status;)V
.end method

.method public abstract disabledNotification(Ltwitter4j/User;)V
.end method

.method public abstract enabledNotification(Ltwitter4j/User;)V
.end method

.method public abstract followed(Ltwitter4j/User;)V
.end method

.method public abstract gotBlockingUsers(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/User;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract gotBlockingUsersIDs(Ltwitter4j/IDs;)V
.end method

.method public abstract gotCurrentTrends(Ltwitter4j/Trends;)V
.end method

.method public abstract gotDailyTrends(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Trends;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract gotDirectMessages(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/DirectMessage;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract gotDowntimeSchedule(Ljava/lang/String;)V
.end method

.method public abstract gotExists(Z)V
.end method

.method public abstract gotExistsBlock(Z)V
.end method

.method public abstract gotExistsFriendship(Z)V
.end method

.method public abstract gotFavorites(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract gotFeatured(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/User;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract gotFollowers(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/User;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract gotFollowersIDs(Ltwitter4j/IDs;)V
.end method

.method public abstract gotFriends(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/User;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract gotFriendsIDs(Ltwitter4j/IDs;)V
.end method

.method public abstract gotFriendsTimeline(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract gotHomeTimeline(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract gotMentions(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract gotPublicTimeline(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract gotRateLimitStatus(Ltwitter4j/RateLimitStatus;)V
.end method

.method public abstract gotReplies(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract gotRetweetedByMe(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract gotRetweetedToMe(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract gotRetweetsOfMe(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract gotSentDirectMessages(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/DirectMessage;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract gotShow(Ltwitter4j/Status;)V
.end method

.method public abstract gotShowStatus(Ltwitter4j/Status;)V
.end method

.method public abstract gotTrends(Ltwitter4j/Trends;)V
.end method

.method public abstract gotUserDetail(Ltwitter4j/User;)V
.end method

.method public abstract gotUserTimeline(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract gotWeeklyTrends(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Trends;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract left(Ltwitter4j/User;)V
.end method

.method public abstract onException(Ltwitter4j/TwitterException;I)V
.end method

.method public abstract retweetedStatus(Ltwitter4j/Status;)V
.end method

.method public abstract searched(Ltwitter4j/QueryResult;)V
.end method

.method public abstract sentDirectMessage(Ltwitter4j/DirectMessage;)V
.end method

.method public abstract tested(Z)V
.end method

.method public abstract unblocked(Ltwitter4j/User;)V
.end method

.method public abstract updated(Ltwitter4j/Status;)V
.end method

.method public abstract updatedDeliverlyDevice(Ltwitter4j/User;)V
.end method

.method public abstract updatedLocation(Ltwitter4j/User;)V
.end method

.method public abstract updatedProfile(Ltwitter4j/User;)V
.end method

.method public abstract updatedProfileColors(Ltwitter4j/User;)V
.end method

.method public abstract updatedStatus(Ltwitter4j/Status;)V
.end method
