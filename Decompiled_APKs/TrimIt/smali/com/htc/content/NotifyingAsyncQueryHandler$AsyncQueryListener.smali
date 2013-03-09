.class public interface abstract Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListener;
.super Ljava/lang/Object;
.source "NotifyingAsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/content/NotifyingAsyncQueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AsyncQueryListener"
.end annotation


# virtual methods
.method public abstract onDeleteComplete(ILjava/lang/Object;I)V
.end method

.method public abstract onExceptionHandle(ILjava/lang/Object;ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
.end method

.method public abstract onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
.end method

.method public abstract onUpdateComplete(ILjava/lang/Object;I)V
.end method
