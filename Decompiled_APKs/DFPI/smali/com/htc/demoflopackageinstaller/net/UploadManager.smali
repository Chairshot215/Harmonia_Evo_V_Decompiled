.class public Lcom/htc/demoflopackageinstaller/net/UploadManager;
.super Ljava/lang/Object;
.source "UploadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/demoflopackageinstaller/net/UploadManager$UpThread;
    }
.end annotation


# static fields
.field private static final STATES_PAUSE:Ljava/lang/String; = "pause"

.field private static final STATES_UPLODING:Ljava/lang/String; = "uploding"

.field private static final TAG:Ljava/lang/String; = "DFPI"

.field private static final TAG_SUB:Ljava/lang/String; = "[UploadManager]"

.field private static m_States:Ljava/lang/String;

.field private static m_UploadQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static m_UploadThread:Lcom/htc/demoflopackageinstaller/net/UploadManager$UpThread;


# instance fields
.field private mCallback:Lcom/htc/demoflopackageinstaller/net/IUploadCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    sput-object v0, Lcom/htc/demoflopackageinstaller/net/UploadManager;->m_UploadQueue:Ljava/util/LinkedList;

    .line 18
    sput-object v0, Lcom/htc/demoflopackageinstaller/net/UploadManager;->m_States:Ljava/lang/String;

    .line 19
    sput-object v0, Lcom/htc/demoflopackageinstaller/net/UploadManager;->m_UploadThread:Lcom/htc/demoflopackageinstaller/net/UploadManager$UpThread;

    return-void
.end method

.method public constructor <init>(Lcom/htc/demoflopackageinstaller/net/IUploadCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 72
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/demoflopackageinstaller/net/UploadManager;->mCallback:Lcom/htc/demoflopackageinstaller/net/IUploadCallback;

    .line 73
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/htc/demoflopackageinstaller/net/UploadManager;->m_UploadQueue:Ljava/util/LinkedList;

    .line 74
    const-string v0, "pause"

    sput-object v0, Lcom/htc/demoflopackageinstaller/net/UploadManager;->m_States:Ljava/lang/String;

    .line 75
    iput-object p1, p0, Lcom/htc/demoflopackageinstaller/net/UploadManager;->mCallback:Lcom/htc/demoflopackageinstaller/net/IUploadCallback;

    .line 76
    return-void
.end method

.method static synthetic access$000()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/htc/demoflopackageinstaller/net/UploadManager;->m_UploadQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/demoflopackageinstaller/net/UploadManager;)Lcom/htc/demoflopackageinstaller/net/IUploadCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    iget-object v0, p0, Lcom/htc/demoflopackageinstaller/net/UploadManager;->mCallback:Lcom/htc/demoflopackageinstaller/net/IUploadCallback;

    return-object v0
.end method

.method static synthetic access$202(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 10
    sput-object p0, Lcom/htc/demoflopackageinstaller/net/UploadManager;->m_States:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public addToQueue(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 86
    sget-object v0, Lcom/htc/demoflopackageinstaller/net/UploadManager;->m_UploadQueue:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 88
    sget-object v0, Lcom/htc/demoflopackageinstaller/net/UploadManager;->m_UploadQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const/4 v0, 0x1

    .line 94
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExistInQueue(Ljava/lang/String;)Z
    .locals 1
    .parameter "fileName"

    .prologue
    .line 124
    sget-object v0, Lcom/htc/demoflopackageinstaller/net/UploadManager;->m_UploadQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public startUpload()V
    .locals 2

    .prologue
    .line 99
    const-string v0, "DFPI"

    const-string v1, "[UploadManager]startUpload() called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string v0, "uploding"

    sget-object v1, Lcom/htc/demoflopackageinstaller/net/UploadManager;->m_States:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 104
    :cond_0
    new-instance v0, Lcom/htc/demoflopackageinstaller/net/UploadManager$UpThread;

    invoke-direct {v0, p0}, Lcom/htc/demoflopackageinstaller/net/UploadManager$UpThread;-><init>(Lcom/htc/demoflopackageinstaller/net/UploadManager;)V

    sput-object v0, Lcom/htc/demoflopackageinstaller/net/UploadManager;->m_UploadThread:Lcom/htc/demoflopackageinstaller/net/UploadManager$UpThread;

    .line 105
    sget-object v0, Lcom/htc/demoflopackageinstaller/net/UploadManager;->m_UploadThread:Lcom/htc/demoflopackageinstaller/net/UploadManager$UpThread;

    invoke-virtual {v0}, Lcom/htc/demoflopackageinstaller/net/UploadManager$UpThread;->start()V

    .line 106
    const-string v0, "uploding"

    sput-object v0, Lcom/htc/demoflopackageinstaller/net/UploadManager;->m_States:Ljava/lang/String;

    goto :goto_0
.end method

.method public stopUpload()V
    .locals 2

    .prologue
    .line 111
    const-string v0, "DFPI"

    const-string v1, "[UploadManager]stopUpload() called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    sget-object v0, Lcom/htc/demoflopackageinstaller/net/UploadManager;->m_UploadThread:Lcom/htc/demoflopackageinstaller/net/UploadManager$UpThread;

    if-nez v0, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    sget-object v0, Lcom/htc/demoflopackageinstaller/net/UploadManager;->m_UploadQueue:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 116
    sget-object v0, Lcom/htc/demoflopackageinstaller/net/UploadManager;->m_UploadQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    sget-object v0, Lcom/htc/demoflopackageinstaller/net/UploadManager;->m_UploadThread:Lcom/htc/demoflopackageinstaller/net/UploadManager$UpThread;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/demoflopackageinstaller/net/UploadManager$UpThread;->m_fRun:Z

    .line 119
    const-string v0, "pause"

    sput-object v0, Lcom/htc/demoflopackageinstaller/net/UploadManager;->m_States:Ljava/lang/String;

    goto :goto_0
.end method

.method uploadFile(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 80
    const-string v0, "DFPI"

    const-string v1, "[UploadManager]UploadManager.uploadFile()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-static {p1}, Lcom/htc/demoflopackageinstaller/net/HttpHelper;->UploadFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
