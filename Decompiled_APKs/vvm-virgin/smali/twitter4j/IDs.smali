.class public interface abstract Ltwitter4j/IDs;
.super Ljava/lang/Object;
.source "IDs.java"

# interfaces
.implements Ltwitter4j/TwitterResponse;
.implements Ltwitter4j/CursorSupport;
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract getIDs()[J
.end method

.method public abstract getNextCursor()J
.end method

.method public abstract getPreviousCursor()J
.end method

.method public abstract hasNext()Z
.end method

.method public abstract hasPrevious()Z
.end method
