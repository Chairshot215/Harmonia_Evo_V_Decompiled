.class public interface abstract Ltwitter4j/ResponseList;
.super Ljava/lang/Object;
.source "ResponseList.java"

# interfaces
.implements Ltwitter4j/TwitterResponse;
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ltwitter4j/TwitterResponse;",
        "Ljava/util/List",
        "<TT;>;"
    }
.end annotation


# virtual methods
.method public abstract getFeatureSpecificRateLimitStatus()Ltwitter4j/RateLimitStatus;
.end method

.method public abstract getRateLimitStatus()Ltwitter4j/RateLimitStatus;
.end method
