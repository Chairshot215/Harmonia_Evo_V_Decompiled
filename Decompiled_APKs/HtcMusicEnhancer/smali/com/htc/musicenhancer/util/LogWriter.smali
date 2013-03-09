.class public Lcom/htc/musicenhancer/util/LogWriter;
.super Ljava/lang/Object;
.source "LogWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/musicenhancer/util/LogWriter$NonUiHandler;
    }
.end annotation


# static fields
.field static final LOGV:Z = false

.field private static final MAXIMUM_LOG_SIZE:J = 0x2dc6c0L

.field private static final MSG_CLOSE:I = 0x2

.field private static final MSG_OPEN:I = 0x0

.field private static final MSG_WRITELOG:I = 0x1

.field private static final MSG_WRITETOFILE:I = 0x3

.field private static final UIMSG_CLOSE:I


# instance fields
.field mBufferWriter:Ljava/io/BufferedWriter;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mNonUiHandler:Lcom/htc/musicenhancer/util/LogWriter$NonUiHandler;

.field mStringBuffer:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/htc/musicenhancer/util/LogWriter;->mStringBuffer:Ljava/lang/StringBuffer;

    .line 23
    iput-object v0, p0, Lcom/htc/musicenhancer/util/LogWriter;->mBufferWriter:Ljava/io/BufferedWriter;

    .line 24
    iput-object v0, p0, Lcom/htc/musicenhancer/util/LogWriter;->mHandlerThread:Landroid/os/HandlerThread;

    .line 25
    iput-object v0, p0, Lcom/htc/musicenhancer/util/LogWriter;->mNonUiHandler:Lcom/htc/musicenhancer/util/LogWriter$NonUiHandler;

    .line 88
    new-instance v0, Lcom/htc/musicenhancer/util/LogWriter$1;

    invoke-direct {v0, p0}, Lcom/htc/musicenhancer/util/LogWriter$1;-><init>(Lcom/htc/musicenhancer/util/LogWriter;)V

    iput-object v0, p0, Lcom/htc/musicenhancer/util/LogWriter;->mHandler:Landroid/os/Handler;

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/htc/musicenhancer/util/LogWriter;)Lcom/htc/musicenhancer/util/LogWriter$NonUiHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/musicenhancer/util/LogWriter;->mNonUiHandler:Lcom/htc/musicenhancer/util/LogWriter$NonUiHandler;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/musicenhancer/util/LogWriter;Lcom/htc/musicenhancer/util/LogWriter$NonUiHandler;)Lcom/htc/musicenhancer/util/LogWriter$NonUiHandler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/htc/musicenhancer/util/LogWriter;->mNonUiHandler:Lcom/htc/musicenhancer/util/LogWriter$NonUiHandler;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/musicenhancer/util/LogWriter;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/musicenhancer/util/LogWriter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/musicenhancer/util/LogWriter;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/htc/musicenhancer/util/LogWriter;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/musicenhancer/util/LogWriter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/htc/musicenhancer/util/LogWriter;->writeToFile()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/musicenhancer/util/LogWriter;)Landroid/os/HandlerThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/musicenhancer/util/LogWriter;->mHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method private writeToFile()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public open()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public writeLog(Ljava/lang/String;)V
    .locals 0
    .parameter "log"

    .prologue
    .line 56
    return-void
.end method
