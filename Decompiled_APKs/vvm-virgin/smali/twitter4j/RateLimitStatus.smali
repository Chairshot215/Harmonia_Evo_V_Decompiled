.class public interface abstract Ltwitter4j/RateLimitStatus;
.super Ljava/lang/Object;
.source "RateLimitStatus.java"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract getHourlyLimit()I
.end method

.method public abstract getRemainingHits()I
.end method

.method public abstract getResetTime()Ljava/util/Date;
.end method

.method public abstract getResetTimeInSeconds()I
.end method

.method public abstract getSecondsUntilReset()I
.end method
