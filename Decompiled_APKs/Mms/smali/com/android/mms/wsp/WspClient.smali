.class public Lcom/android/mms/wsp/WspClient;
.super Ljava/lang/Object;
.source "WspClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/wsp/WspClient$ConnectionThread;,
        Lcom/android/mms/wsp/WspClient$WspStackException;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "WSP Stack"

.field static final MAX_BUFFER_SIZE:I = 0x100000

.field private static final MAX_CONNECTION_NUMBER:I = 0x3


# instance fields
.field private mConnectionThread:Lcom/android/mms/wsp/WspClient$ConnectionThread;

.field private mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/android/mms/wsp/WspRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/mms/wsp/WspClient;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/wsp/WspClient;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/mms/wsp/WspClient;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method


# virtual methods
.method public requestQueue(Lcom/android/mms/wsp/WspRequest;)Z
    .locals 3
    .parameter "request"

    .prologue
    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/wsp/WspClient;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    const/4 v1, 0x1

    .line 59
    :goto_0
    return v1

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "WSP Stack"

    const-string v2, "WspClient.requestQueue() interrupted"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public shutdown()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    iget-object v0, p0, Lcom/android/mms/wsp/WspClient;->mConnectionThread:Lcom/android/mms/wsp/WspClient$ConnectionThread;

    invoke-virtual {v0}, Lcom/android/mms/wsp/WspClient$ConnectionThread;->shutdown()V

    .line 46
    iput-object v1, p0, Lcom/android/mms/wsp/WspClient;->mConnectionThread:Lcom/android/mms/wsp/WspClient$ConnectionThread;

    .line 48
    iput-object v1, p0, Lcom/android/mms/wsp/WspClient;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 49
    return-void
.end method

.method public startup()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/mms/wsp/WspClient;->mConnectionThread:Lcom/android/mms/wsp/WspClient$ConnectionThread;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/android/mms/wsp/WspClient$ConnectionThread;

    invoke-direct {v0, p0}, Lcom/android/mms/wsp/WspClient$ConnectionThread;-><init>(Lcom/android/mms/wsp/WspClient;)V

    iput-object v0, p0, Lcom/android/mms/wsp/WspClient;->mConnectionThread:Lcom/android/mms/wsp/WspClient$ConnectionThread;

    .line 39
    iget-object v0, p0, Lcom/android/mms/wsp/WspClient;->mConnectionThread:Lcom/android/mms/wsp/WspClient$ConnectionThread;

    invoke-virtual {v0}, Lcom/android/mms/wsp/WspClient$ConnectionThread;->start()V

    .line 41
    :cond_0
    return-void
.end method
