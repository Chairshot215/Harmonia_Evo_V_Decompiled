.class public Lcom/htc/demoflopackageinstaller/net/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/demoflopackageinstaller/net/DownloadManager$DownThread;
    }
.end annotation


# static fields
.field private static final STATES_DOWNLOADING:Ljava/lang/String; = "downloading"

.field private static final STATES_PAUSE:Ljava/lang/String; = "pause"

.field private static final TAG:Ljava/lang/String; = "DFPI"

.field private static final TAG_SUB:Ljava/lang/String; = "[DownloadManager]"

.field private static m_DownloadQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/demoflopackageinstaller/net/QueryResult;",
            ">;"
        }
    .end annotation
.end field

.field private static m_DownloadThread:Lcom/htc/demoflopackageinstaller/net/DownloadManager$DownThread;

.field private static m_States:Ljava/lang/String;


# instance fields
.field private mDownloadApkFolder:Ljava/lang/String;

.field private m_CallbackFunc:Lcom/htc/demoflopackageinstaller/net/IDownloadCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    sput-object v0, Lcom/htc/demoflopackageinstaller/net/DownloadManager;->m_DownloadQueue:Ljava/util/LinkedList;

    .line 19
    sput-object v0, Lcom/htc/demoflopackageinstaller/net/DownloadManager;->m_States:Ljava/lang/String;

    .line 20
    sput-object v0, Lcom/htc/demoflopackageinstaller/net/DownloadManager;->m_DownloadThread:Lcom/htc/demoflopackageinstaller/net/DownloadManager$DownThread;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/htc/demoflopackageinstaller/net/IDownloadCallback;)V
    .locals 1
    .parameter "DownloadApkFolder"
    .parameter "cb"

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/htc/demoflopackageinstaller/net/DownloadManager;->m_CallbackFunc:Lcom/htc/demoflopackageinstaller/net/IDownloadCallback;

    .line 22
    iput-object v0, p0, Lcom/htc/demoflopackageinstaller/net/DownloadManager;->mDownloadApkFolder:Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/htc/demoflopackageinstaller/net/DownloadManager;->m_DownloadQueue:Ljava/util/LinkedList;

    .line 90
    const-string v0, "pause"

    sput-object v0, Lcom/htc/demoflopackageinstaller/net/DownloadManager;->m_States:Ljava/lang/String;

    .line 91
    iput-object p1, p0, Lcom/htc/demoflopackageinstaller/net/DownloadManager;->mDownloadApkFolder:Ljava/lang/String;

    .line 92
    iput-object p2, p0, Lcom/htc/demoflopackageinstaller/net/DownloadManager;->m_CallbackFunc:Lcom/htc/demoflopackageinstaller/net/IDownloadCallback;

    .line 93
    return-void
.end method

.method static synthetic access$000()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/htc/demoflopackageinstaller/net/DownloadManager;->m_DownloadQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/demoflopackageinstaller/net/DownloadManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/htc/demoflopackageinstaller/net/DownloadManager;->mDownloadApkFolder:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/demoflopackageinstaller/net/DownloadManager;)Lcom/htc/demoflopackageinstaller/net/IDownloadCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/htc/demoflopackageinstaller/net/DownloadManager;->m_CallbackFunc:Lcom/htc/demoflopackageinstaller/net/IDownloadCallback;

    return-object v0
.end method

.method static synthetic access$302(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 11
    sput-object p0, Lcom/htc/demoflopackageinstaller/net/DownloadManager;->m_States:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public addToQueue(Lcom/htc/demoflopackageinstaller/net/QueryResult;)Z
    .locals 2
    .parameter "qr"

    .prologue
    .line 103
    const-string v0, "DFPI"

    const-string v1, "[DownloadManager]DownloadManager.addToQueue()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    sget-object v0, Lcom/htc/demoflopackageinstaller/net/DownloadManager;->m_DownloadQueue:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/htc/demoflopackageinstaller/net/DownloadManager;->m_DownloadQueue:Ljava/util/LinkedList;

    .line 107
    :cond_0
    sget-object v0, Lcom/htc/demoflopackageinstaller/net/DownloadManager;->m_DownloadQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method downloadFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "pathLocal"
    .parameter "URL"

    .prologue
    .line 97
    const-string v0, "DFPI"

    const-string v1, "[DownloadManager]DownloadManager.downloadFile()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-static {p1, p2}, Lcom/htc/demoflopackageinstaller/net/HttpHelper;->DownloadFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startDownload()V
    .locals 2

    .prologue
    .line 112
    const-string v0, "DFPI"

    const-string v1, "[DownloadManager]DownloadManager.startDownload()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string v0, "downloading"

    sget-object v1, Lcom/htc/demoflopackageinstaller/net/DownloadManager;->m_States:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    sget-object v0, Lcom/htc/demoflopackageinstaller/net/DownloadManager;->m_DownloadQueue:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 118
    sget-object v0, Lcom/htc/demoflopackageinstaller/net/DownloadManager;->m_DownloadQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    new-instance v0, Lcom/htc/demoflopackageinstaller/net/DownloadManager$DownThread;

    invoke-direct {v0, p0}, Lcom/htc/demoflopackageinstaller/net/DownloadManager$DownThread;-><init>(Lcom/htc/demoflopackageinstaller/net/DownloadManager;)V

    sput-object v0, Lcom/htc/demoflopackageinstaller/net/DownloadManager;->m_DownloadThread:Lcom/htc/demoflopackageinstaller/net/DownloadManager$DownThread;

    .line 121
    sget-object v0, Lcom/htc/demoflopackageinstaller/net/DownloadManager;->m_DownloadThread:Lcom/htc/demoflopackageinstaller/net/DownloadManager$DownThread;

    invoke-virtual {v0}, Lcom/htc/demoflopackageinstaller/net/DownloadManager$DownThread;->start()V

    .line 122
    const-string v0, "downloading"

    sput-object v0, Lcom/htc/demoflopackageinstaller/net/DownloadManager;->m_States:Ljava/lang/String;

    goto :goto_0
.end method
