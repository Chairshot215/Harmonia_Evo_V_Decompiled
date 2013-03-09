.class public interface abstract Ltwitter4j/api/ListSubscribersMethods;
.super Ljava/lang/Object;
.source "ListSubscribersMethods.java"


# virtual methods
.method public abstract checkUserListSubscription(Ljava/lang/String;IJ)Ltwitter4j/User;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public abstract getUserListSubscribers(Ljava/lang/String;IJ)Ltwitter4j/PagableResponseList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ)",
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

.method public abstract subscribeUserList(Ljava/lang/String;I)Ltwitter4j/UserList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public abstract unsubscribeUserList(Ljava/lang/String;I)Ltwitter4j/UserList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method
