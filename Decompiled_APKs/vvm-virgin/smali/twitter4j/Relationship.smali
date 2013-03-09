.class public interface abstract Ltwitter4j/Relationship;
.super Ljava/lang/Object;
.source "Relationship.java"

# interfaces
.implements Ltwitter4j/TwitterResponse;
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract getSourceUserId()J
.end method

.method public abstract getSourceUserScreenName()Ljava/lang/String;
.end method

.method public abstract getTargetUserId()J
.end method

.method public abstract getTargetUserScreenName()Ljava/lang/String;
.end method

.method public abstract isSourceBlockingTarget()Z
.end method

.method public abstract isSourceFollowedByTarget()Z
.end method

.method public abstract isSourceFollowingTarget()Z
.end method

.method public abstract isSourceNotificationsEnabled()Z
.end method

.method public abstract isTargetFollowedBySource()Z
.end method

.method public abstract isTargetFollowingSource()Z
.end method
