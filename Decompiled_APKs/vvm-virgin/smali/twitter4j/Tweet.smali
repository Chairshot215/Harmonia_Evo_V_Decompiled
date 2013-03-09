.class public interface abstract Ltwitter4j/Tweet;
.super Ljava/lang/Object;
.source "Tweet.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ltwitter4j/Tweet;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# virtual methods
.method public abstract getAnnotations()Ltwitter4j/Annotations;
.end method

.method public abstract getCreatedAt()Ljava/util/Date;
.end method

.method public abstract getFromUser()Ljava/lang/String;
.end method

.method public abstract getFromUserId()J
.end method

.method public abstract getGeoLocation()Ltwitter4j/GeoLocation;
.end method

.method public abstract getId()J
.end method

.method public abstract getIsoLanguageCode()Ljava/lang/String;
.end method

.method public abstract getLocation()Ljava/lang/String;
.end method

.method public abstract getPlace()Ltwitter4j/Place;
.end method

.method public abstract getProfileImageUrl()Ljava/lang/String;
.end method

.method public abstract getSource()Ljava/lang/String;
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public abstract getToUser()Ljava/lang/String;
.end method

.method public abstract getToUserId()J
.end method
