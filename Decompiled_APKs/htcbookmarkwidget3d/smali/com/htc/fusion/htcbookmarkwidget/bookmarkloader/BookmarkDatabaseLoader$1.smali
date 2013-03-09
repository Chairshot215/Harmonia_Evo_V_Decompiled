.class Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$1;
.super Landroid/database/ContentObserver;
.source "BookmarkDatabaseLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;


# direct methods
.method constructor <init>(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$1;->this$0:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 58
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$1;->this$0:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;

    #getter for: Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->mLoadingListener:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;
    invoke-static {v0}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->access$000(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;)Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$1;->this$0:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;

    #getter for: Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->mLoadingListener:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;
    invoke-static {v0}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->access$000(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;)Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;->onObservedChanges()V

    .line 61
    :cond_0
    return-void
.end method
