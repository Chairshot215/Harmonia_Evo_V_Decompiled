.class public interface abstract Lcom/htc/sunny2/ViewItem;
.super Ljava/lang/Object;
.source "ViewItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/htc/sunny2/IMediaData;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract bindMediaData(ILcom/htc/sunny2/IMediaData;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation
.end method

.method public abstract create()Lcom/htc/sunny2/ViewItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/sunny2/ViewItem",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract getHeight()I
.end method

.method public abstract getWidth()I
.end method

.method public abstract unbindMediaData()V
.end method
