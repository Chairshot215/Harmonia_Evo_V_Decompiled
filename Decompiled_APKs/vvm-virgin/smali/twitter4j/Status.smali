.class public interface abstract Ltwitter4j/Status;
.super Ljava/lang/Object;
.source "Status.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ltwitter4j/TwitterResponse;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ltwitter4j/Status;",
        ">;",
        "Ltwitter4j/TwitterResponse;",
        "Ljava/io/Serializable;"
    }
.end annotation


# virtual methods
.method public abstract getAnnotations()Ltwitter4j/Annotations;
.end method

.method public abstract getContributors()[Ljava/lang/String;
.end method

.method public abstract getCreatedAt()Ljava/util/Date;
.end method

.method public abstract getGeoLocation()Ltwitter4j/GeoLocation;
.end method

.method public abstract getHashtagEntities()[Ltwitter4j/HashtagEntity;
.end method

.method public abstract getId()J
.end method

.method public abstract getInReplyToScreenName()Ljava/lang/String;
.end method

.method public abstract getInReplyToStatusId()J
.end method

.method public abstract getInReplyToUserId()J
.end method

.method public abstract getPlace()Ltwitter4j/Place;
.end method

.method public abstract getRetweetCount()J
.end method

.method public abstract getRetweetedStatus()Ltwitter4j/Status;
.end method

.method public abstract getSource()Ljava/lang/String;
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public abstract getURLEntities()[Ltwitter4j/URLEntity;
.end method

.method public abstract getUser()Ltwitter4j/User;
.end method

.method public abstract getUserMentionEntities()[Ltwitter4j/UserMentionEntity;
.end method

.method public abstract isFavorited()Z
.end method

.method public abstract isRetweet()Z
.end method

.method public abstract isRetweetedByMe()Z
.end method

.method public abstract isTruncated()Z
.end method
