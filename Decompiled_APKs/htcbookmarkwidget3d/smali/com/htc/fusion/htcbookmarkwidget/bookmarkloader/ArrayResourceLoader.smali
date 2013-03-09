.class public Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;
.super Ljava/lang/Object;
.source "ArrayResourceLoader.java"

# interfaces
.implements Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader$LoadingTask;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "HtcBookmarkWidget"


# instance fields
.field private bIsLoading:Z

.field private mLoadingListener:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;

.field private mLoadingTask:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader$LoadingTask;

.field private mWidgetContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;->mWidgetContext:Landroid/content/Context;

    .line 20
    iput-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;->mLoadingTask:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader$LoadingTask;

    .line 21
    iput-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;->mLoadingListener:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;->bIsLoading:Z

    .line 25
    iput-object p1, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;->mWidgetContext:Landroid/content/Context;

    .line 26
    return-void
.end method

.method static synthetic access$002(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;->bIsLoading:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;)Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;->mLoadingListener:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;->mWidgetContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public isLoading()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;->bIsLoading:Z

    return v0
.end method

.method public onCreateLoader()V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public onDestroyLoader()V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;->mLoadingTask:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader$LoadingTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader$LoadingTask;->cancel(Z)Z

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;->mLoadingTask:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader$LoadingTask;

    .line 35
    return-void
.end method

.method public setLoaderCallback(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;)V
    .locals 0
    .parameter "loaderCallback"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;->mLoadingListener:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;

    .line 54
    return-void
.end method

.method public startLoadBookmark(Ljava/lang/Object;)V
    .locals 3
    .parameter "param"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;->bIsLoading:Z

    if-nez v0, :cond_0

    .line 43
    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader$LoadingTask;

    invoke-direct {v0, p0}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader$LoadingTask;-><init>(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;)V

    iput-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;->mLoadingTask:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader$LoadingTask;

    .line 45
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;->mLoadingTask:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader$LoadingTask;

    invoke-virtual {v0}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader$LoadingTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 46
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;->mLoadingTask:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader$LoadingTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    check-cast p1, Ljava/lang/Integer;

    .end local p1
    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader$LoadingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 50
    :cond_0
    return-void
.end method
