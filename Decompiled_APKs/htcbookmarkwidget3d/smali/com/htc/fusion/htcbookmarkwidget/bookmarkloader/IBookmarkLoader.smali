.class public interface abstract Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader;
.super Ljava/lang/Object;
.source "IBookmarkLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;
    }
.end annotation


# virtual methods
.method public abstract isLoading()Z
.end method

.method public abstract onCreateLoader()V
.end method

.method public abstract onDestroyLoader()V
.end method

.method public abstract setLoaderCallback(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;)V
.end method

.method public abstract startLoadBookmark(Ljava/lang/Object;)V
.end method
