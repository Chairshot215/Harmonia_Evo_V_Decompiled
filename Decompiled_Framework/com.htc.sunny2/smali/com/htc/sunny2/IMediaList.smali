.class public interface abstract Lcom/htc/sunny2/IMediaList;
.super Ljava/lang/Object;
.source "IMediaList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/IMediaList$ChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MediaData::",
        "Lcom/htc/sunny2/IMediaData;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getCount()I
.end method

.method public abstract getItem(I)Lcom/htc/sunny2/IMediaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TMediaData;"
        }
    .end annotation
.end method
