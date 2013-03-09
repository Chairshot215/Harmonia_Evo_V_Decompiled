.class public Lcom/android/mms/util/MmsAsyncQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "MmsAsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/MmsAsyncQueryHandler$MmsWorkerHandler;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final EVENT_ARG_DELETE:I = 0x4

.field private static final EVENT_ARG_INSERT:I = 0x2

.field private static final EVENT_ARG_QUERY:I = 0x1

.field private static final EVENT_ARG_UPDATE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MmsAsyncQueryHandler"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/util/MmsAsyncQueryHandler;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 54
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/MmsAsyncQueryHandler;->mContext:Landroid/content/Context;

    .line 55
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/MmsAsyncQueryHandler;->mResolver:Landroid/content/ContentResolver;

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 45
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 47
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/MmsAsyncQueryHandler;->mContext:Landroid/content/Context;

    .line 48
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/MmsAsyncQueryHandler;->mResolver:Landroid/content/ContentResolver;

    .line 49
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/android/mms/util/MmsAsyncQueryHandler;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/mms/util/MmsAsyncQueryHandler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/mms/util/MmsAsyncQueryHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/util/MmsAsyncQueryHandler;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/mms/util/MmsAsyncQueryHandler;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method


# virtual methods
.method public cancelMmsOperation(I)V
    .locals 0
    .parameter "token"

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/mms/util/MmsAsyncQueryHandler;->cancelOperation(I)V

    .line 66
    return-void
.end method

.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1
    .parameter "looper"

    .prologue
    .line 60
    new-instance v0, Lcom/android/mms/util/MmsAsyncQueryHandler$MmsWorkerHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/util/MmsAsyncQueryHandler$MmsWorkerHandler;-><init>(Lcom/android/mms/util/MmsAsyncQueryHandler;Landroid/os/Looper;)V

    return-object v0
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 70
    const-string v0, "Jerry1"

    const-string v1, "onQueryComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method
