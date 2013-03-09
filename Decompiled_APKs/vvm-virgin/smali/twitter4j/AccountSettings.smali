.class public interface abstract Ltwitter4j/AccountSettings;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Ltwitter4j/TwitterResponse;
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract getSleepEndTime()Ljava/lang/String;
.end method

.method public abstract getSleepStartTime()Ljava/lang/String;
.end method

.method public abstract getTrendLocations()[Ltwitter4j/Location;
.end method

.method public abstract isGeoEnabled()Z
.end method

.method public abstract isSleepTimeEnabled()Z
.end method
