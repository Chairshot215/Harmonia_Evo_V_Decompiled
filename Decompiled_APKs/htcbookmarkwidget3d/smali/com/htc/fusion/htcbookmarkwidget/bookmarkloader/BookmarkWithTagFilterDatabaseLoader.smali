.class public Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;
.super Ljava/lang/Object;
.source "BookmarkWithTagFilterDatabaseLoader.java"

# interfaces
.implements Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryInterceptor;,
        Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$TagFilterQueryInterceptor;,
        Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$AsyncSavingCursor;,
        Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryArgs;,
        Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOGTAG:Ljava/lang/String; = "HtcBookmarkWidget"

.field private static final MSG_START_QUERY:I = 0x1000


# instance fields
.field private bIsLoading:Z

.field protected bIsSavingBookmark:Z

.field private mLoadingHandler:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler;

.field private mLoadingListener:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;

.field private mObserver:Landroid/database/ContentObserver;

.field private mResolver:Landroid/content/ContentResolver;

.field private mWidgetContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;->mWidgetContext:Landroid/content/Context;

    .line 29
    iput-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;->mLoadingHandler:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler;

    .line 30
    iput-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;->mLoadingListener:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;

    .line 31
    iput-boolean v1, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;->bIsLoading:Z

    .line 33
    iput-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;->mResolver:Landroid/content/ContentResolver;

    .line 34
    iput-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;->mObserver:Landroid/database/ContentObserver;

    .line 195
    iput-boolean v1, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;->bIsSavingBookmark:Z

    .line 39
    iput-object p1, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;->mWidgetContext:Landroid/content/Context;

    .line 41
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;->mWidgetContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 42
    const-string v0, "HtcBookmarkWidget"

    const-string v1, "Null context, abort creating loader"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :goto_0
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;->mWidgetContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;->mResolver:Landroid/content/ContentResolver;

    .line 47
    new-instance v0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler;

    iget-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler;-><init>(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;->mLoadingHandler:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler;

    .line 48
    new-instance v0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$1;

    iget-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;->mLoadingHandler:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler;

    invoke-direct {v0, p0, v1}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$1;-><init>(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;->mObserver:Landroid/database/ContentObserver;

    .line 56
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 58
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/fusion/htcbookmarkwidget/Constants;->TAGS_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 59
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/fusion/htcbookmarkwidget/Constants;->BOOKMARKTAG_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;)Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;->mLoadingListener:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;)Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;->mLoadingHandler:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method


# virtual methods
.method public isLoading()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;->bIsLoading:Z

    return v0
.end method

.method public onCreateLoader()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public onDestroyLoader()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 66
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;->mLoadingHandler:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler;->removeMessages(I)V

    .line 67
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 69
    iput-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;->mLoadingHandler:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler;

    .line 70
    iput-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;->mObserver:Landroid/database/ContentObserver;

    .line 71
    return-void
.end method

.method public setLoaderCallback(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;)V
    .locals 0
    .parameter "loaderCallback"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;->mLoadingListener:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;

    .line 93
    return-void
.end method

.method public startLoadBookmark(Ljava/lang/Object;)V
    .locals 3
    .parameter "param"

    .prologue
    .line 78
    iget-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;->mResolver:Landroid/content/ContentResolver;

    if-nez v1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;->mLoadingHandler:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler;

    if-nez v1, :cond_2

    .line 80
    new-instance v1, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler;

    iget-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {v1, p0, v2}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler;-><init>(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;->mLoadingHandler:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler;

    .line 82
    :cond_2
    iget-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;->mLoadingHandler:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler;

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;->mLoadingHandler:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler;

    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 85
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_3

    instance-of v1, p1, [Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;

    if-eqz v1, :cond_3

    .line 86
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 88
    :cond_3
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
