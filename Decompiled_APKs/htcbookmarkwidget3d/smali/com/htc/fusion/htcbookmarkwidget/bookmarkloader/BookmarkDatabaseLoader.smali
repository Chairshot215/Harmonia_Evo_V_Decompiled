.class public Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;
.super Ljava/lang/Object;
.source "BookmarkDatabaseLoader.java"

# interfaces
.implements Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$AsyncSavingCursor;,
        Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$QueryHandler;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "HtcBookmarkWidget"

.field private static final MSG_QUERY_ROOT_PARENT:I = 0x1001

.field private static final MSG_START_QUERY:I = 0x1000


# instance fields
.field private bIsLoading:Z

.field protected bIsSavingBookmark:Z

.field private mLoadingHandler:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$QueryHandler;

.field private mLoadingListener:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;

.field private mObserver:Landroid/database/ContentObserver;

.field private mResolver:Landroid/content/ContentResolver;

.field private mRootIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->mWidgetContext:Landroid/content/Context;

    .line 34
    iput-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->mLoadingHandler:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$QueryHandler;

    .line 35
    iput-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->mLoadingListener:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;

    .line 36
    iput-boolean v1, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->bIsLoading:Z

    .line 38
    iput-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->mResolver:Landroid/content/ContentResolver;

    .line 39
    iput-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->mObserver:Landroid/database/ContentObserver;

    .line 43
    iput-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->mRootIdList:Ljava/util/ArrayList;

    .line 187
    iput-boolean v1, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->bIsSavingBookmark:Z

    .line 46
    iput-object p1, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->mWidgetContext:Landroid/content/Context;

    .line 48
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->mWidgetContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 49
    const-string v0, "HtcBookmarkWidget"

    const-string v1, "Null context, abort creating loader"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->mWidgetContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->mResolver:Landroid/content/ContentResolver;

    .line 54
    new-instance v0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$QueryHandler;

    iget-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$QueryHandler;-><init>(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->mLoadingHandler:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$QueryHandler;

    .line 55
    new-instance v0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$1;

    iget-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->mLoadingHandler:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$QueryHandler;

    invoke-direct {v0, p0, v1}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$1;-><init>(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->mObserver:Landroid/database/ContentObserver;

    .line 63
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;)Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->mLoadingListener:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->mRootIdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->mRootIdList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;)Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$QueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->mLoadingHandler:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$QueryHandler;

    return-object v0
.end method


# virtual methods
.method public isLoading()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->bIsLoading:Z

    return v0
.end method

.method public onCreateLoader()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public onDestroyLoader()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 71
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->mLoadingHandler:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$QueryHandler;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$QueryHandler;->removeMessages(I)V

    .line 72
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 74
    iput-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->mLoadingHandler:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$QueryHandler;

    .line 75
    iput-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->mObserver:Landroid/database/ContentObserver;

    .line 76
    return-void
.end method

.method public setLoaderCallback(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;)V
    .locals 0
    .parameter "loaderCallback"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->mLoadingListener:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;

    .line 88
    return-void
.end method

.method public startLoadBookmark(Ljava/lang/Object;)V
    .locals 2
    .parameter "param"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader;->mLoadingHandler:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$QueryHandler;

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkDatabaseLoader$QueryHandler;->sendEmptyMessage(I)Z

    .line 84
    return-void
.end method
