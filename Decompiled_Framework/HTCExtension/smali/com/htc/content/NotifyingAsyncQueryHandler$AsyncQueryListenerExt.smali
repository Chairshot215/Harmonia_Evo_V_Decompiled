.class public interface abstract Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;
.super Ljava/lang/Object;
.source "NotifyingAsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/content/NotifyingAsyncQueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AsyncQueryListenerExt"
.end annotation


# virtual methods
.method public abstract addTabMemoryMode(ILjava/lang/Object;)V
.end method

.method public abstract isUpdateRequired(Ljava/lang/Object;Landroid/database/Cursor;Landroid/content/ContentValues;[I[Ljava/lang/String;)V
.end method

.method public abstract onAddTabComplete()V
.end method

.method public abstract onCheckInsertOrUpdateComplete(ILjava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract prepareForInsertion(Ljava/lang/Object;Landroid/content/ContentValues;[I)V
.end method

.method public abstract updateTabMemoryMode(ILjava/lang/Object;)V
.end method
