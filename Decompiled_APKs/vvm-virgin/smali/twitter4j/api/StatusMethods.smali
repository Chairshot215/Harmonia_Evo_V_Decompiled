.class public interface abstract Ltwitter4j/api/StatusMethods;
.super Ljava/lang/Object;
.source "StatusMethods.java"


# virtual methods
.method public abstract destroyStatus(J)Ltwitter4j/Status;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public abstract getRetweetedBy(J)Ltwitter4j/ResponseList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
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

.method public abstract getRetweetedByIDs(J)Ltwitter4j/IDs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public abstract getRetweets(J)Ltwitter4j/ResponseList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public abstract retweetStatus(J)Ltwitter4j/Status;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public abstract showStatus(J)Ltwitter4j/Status;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public abstract updateStatus(Ljava/lang/String;)Ltwitter4j/Status;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public abstract updateStatus(Ltwitter4j/StatusUpdate;)Ltwitter4j/Status;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method
