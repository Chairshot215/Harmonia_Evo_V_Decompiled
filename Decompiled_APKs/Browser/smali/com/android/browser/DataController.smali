.class public Lcom/android/browser/DataController;
.super Ljava/lang/Object;
.source "DataController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/DataController$DataControllerHandler;,
        Lcom/android/browser/DataController$DCMessage;,
        Lcom/android/browser/DataController$CallbackContainer;,
        Lcom/android/browser/DataController$OnQueryUrlIsBookmark;
    }
.end annotation


# static fields
.field private static final HISTORY_UPDATE_TITLE:I = 0x65

.field private static final HISTORY_UPDATE_VISITED:I = 0x64

.field private static final LOGTAG:Ljava/lang/String; = "DataController"

.field public static final QUERY_URL_IS_BOOKMARK:I = 0xc8

.field private static sInstance:Lcom/android/browser/DataController;


# instance fields
.field private mCbHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mDataHandler:Lcom/android/browser/DataController$DataControllerHandler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/DataController;->mContext:Landroid/content/Context;

    .line 74
    new-instance v0, Lcom/android/browser/DataController$DataControllerHandler;

    invoke-direct {v0, p0}, Lcom/android/browser/DataController$DataControllerHandler;-><init>(Lcom/android/browser/DataController;)V

    iput-object v0, p0, Lcom/android/browser/DataController;->mDataHandler:Lcom/android/browser/DataController$DataControllerHandler;

    .line 75
    iget-object v0, p0, Lcom/android/browser/DataController;->mDataHandler:Lcom/android/browser/DataController$DataControllerHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/browser/DataController$DataControllerHandler;->setDaemon(Z)V

    .line 76
    iget-object v0, p0, Lcom/android/browser/DataController;->mDataHandler:Lcom/android/browser/DataController$DataControllerHandler;

    invoke-virtual {v0}, Lcom/android/browser/DataController$DataControllerHandler;->start()V

    .line 77
    new-instance v0, Lcom/android/browser/DataController$1;

    invoke-direct {v0, p0}, Lcom/android/browser/DataController$1;-><init>(Lcom/android/browser/DataController;)V

    iput-object v0, p0, Lcom/android/browser/DataController;->mCbHandler:Landroid/os/Handler;

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/DataController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/browser/DataController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/browser/DataController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/browser/DataController;->mCbHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static getInstance(Landroid/content/Context;)Lcom/android/browser/DataController;
    .locals 1
    .parameter "c"

    .prologue
    .line 66
    sget-object v0, Lcom/android/browser/DataController;->sInstance:Lcom/android/browser/DataController;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/android/browser/DataController;

    invoke-direct {v0, p0}, Lcom/android/browser/DataController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/browser/DataController;->sInstance:Lcom/android/browser/DataController;

    .line 69
    :cond_0
    sget-object v0, Lcom/android/browser/DataController;->sInstance:Lcom/android/browser/DataController;

    return-object v0
.end method


# virtual methods
.method public queryBookmarkStatus(Ljava/lang/String;Lcom/android/browser/DataController$OnQueryUrlIsBookmark;)V
    .locals 3
    .parameter "url"
    .parameter "replyTo"

    .prologue
    .line 103
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 105
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/android/browser/DataController$OnQueryUrlIsBookmark;->onQueryUrlIsBookmark(Ljava/lang/String;Z)V

    .line 109
    :goto_0
    return-void

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/android/browser/DataController;->mDataHandler:Lcom/android/browser/DataController$DataControllerHandler;

    const/16 v1, 0xc8

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/browser/DataController$DataControllerHandler;->sendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public updateHistoryTitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "url"
    .parameter "title"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/browser/DataController;->mDataHandler:Lcom/android/browser/DataController$DataControllerHandler;

    const/16 v1, 0x65

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/DataController$DataControllerHandler;->sendMessage(ILjava/lang/Object;)V

    .line 100
    return-void
.end method

.method public updateVisitedHistory(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/browser/DataController;->mDataHandler:Lcom/android/browser/DataController$DataControllerHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1}, Lcom/android/browser/DataController$DataControllerHandler;->sendMessage(ILjava/lang/Object;)V

    .line 96
    return-void
.end method
