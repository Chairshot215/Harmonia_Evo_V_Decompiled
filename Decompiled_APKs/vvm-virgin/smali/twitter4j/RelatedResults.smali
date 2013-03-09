.class public interface abstract Ltwitter4j/RelatedResults;
.super Ljava/lang/Object;
.source "RelatedResults.java"

# interfaces
.implements Ltwitter4j/TwitterResponse;
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract getTweetsFromUser()Ltwitter4j/ResponseList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTweetsWithConversation()Ltwitter4j/ResponseList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTweetsWithReply()Ltwitter4j/ResponseList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation
.end method
