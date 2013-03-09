.class public interface abstract Ltwitter4j/QueryResult;
.super Ljava/lang/Object;
.source "QueryResult.java"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract getCompletedIn()D
.end method

.method public abstract getMaxId()J
.end method

.method public abstract getPage()I
.end method

.method public abstract getQuery()Ljava/lang/String;
.end method

.method public abstract getRefreshUrl()Ljava/lang/String;
.end method

.method public abstract getResultsPerPage()I
.end method

.method public abstract getSinceId()J
.end method

.method public abstract getTweets()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Tweet;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWarning()Ljava/lang/String;
.end method
