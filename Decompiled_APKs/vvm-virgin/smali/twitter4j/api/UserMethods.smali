.class public interface abstract Ltwitter4j/api/UserMethods;
.super Ljava/lang/Object;
.source "UserMethods.java"


# virtual methods
.method public abstract getFollowersStatuses(J)Ltwitter4j/PagableResponseList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public abstract getFollowersStatuses(JJ)Ltwitter4j/PagableResponseList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public abstract getFollowersStatuses(Ljava/lang/String;J)Ltwitter4j/PagableResponseList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public abstract getFriendsStatuses(J)Ltwitter4j/PagableResponseList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public abstract getFriendsStatuses(JJ)Ltwitter4j/PagableResponseList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public abstract getFriendsStatuses(Ljava/lang/String;J)Ltwitter4j/PagableResponseList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public abstract getMemberSuggestions(Ljava/lang/String;)Ltwitter4j/ResponseList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public abstract getProfileImage(Ljava/lang/String;Ltwitter4j/ProfileImage$ImageSize;)Ltwitter4j/ProfileImage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public abstract getSuggestedUserCategories()Ltwitter4j/ResponseList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Category;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public abstract getUserSuggestions(Ljava/lang/String;)Ltwitter4j/ResponseList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public abstract lookupUsers([J)Ltwitter4j/ResponseList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public abstract lookupUsers([Ljava/lang/String;)Ltwitter4j/ResponseList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public abstract searchUsers(Ljava/lang/String;I)Ltwitter4j/ResponseList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public abstract showUser(J)Ltwitter4j/User;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public abstract showUser(Ljava/lang/String;)Ltwitter4j/User;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method
