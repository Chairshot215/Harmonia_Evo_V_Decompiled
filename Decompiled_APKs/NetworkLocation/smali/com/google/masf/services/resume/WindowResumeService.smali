.class public Lcom/google/masf/services/resume/WindowResumeService;
.super Lcom/google/masf/services/resume/ResumeService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/masf/services/resume/WindowResumeService$1;,
        Lcom/google/masf/services/resume/WindowResumeService$MainTask;,
        Lcom/google/masf/services/resume/WindowResumeService$CallbackTask;,
        Lcom/google/masf/services/resume/WindowResumeService$Listener;,
        Lcom/google/masf/services/resume/WindowResumeService$Control;,
        Lcom/google/masf/services/resume/WindowResumeService$Chunk;
    }
.end annotation


# instance fields
.field private activeQueue:Ljava/util/Vector;

.field private chunkSize:I

.field private header:Lcom/google/masf/protocol/HeaderRequest;

.field private mainTask:Lcom/google/common/task/Task;

.field private mutex:Ljava/lang/Object;

.field private mux:Lcom/google/masf/MobileServiceMux;

.field private runner:Lcom/google/common/task/TaskRunner;


# direct methods
.method public constructor <init>(Lcom/google/masf/MobileServiceMux;Lcom/google/common/task/TaskRunner;Lcom/google/masf/protocol/HeaderRequest;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/masf/services/resume/ResumeService;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService;->activeQueue:Ljava/util/Vector;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService;->mutex:Ljava/lang/Object;

    const/16 v0, 0x4000

    iput v0, p0, Lcom/google/masf/services/resume/WindowResumeService;->chunkSize:I

    iput-object p1, p0, Lcom/google/masf/services/resume/WindowResumeService;->mux:Lcom/google/masf/MobileServiceMux;

    iput-object p2, p0, Lcom/google/masf/services/resume/WindowResumeService;->runner:Lcom/google/common/task/TaskRunner;

    iput-object p3, p0, Lcom/google/masf/services/resume/WindowResumeService;->header:Lcom/google/masf/protocol/HeaderRequest;

    new-instance v0, Lcom/google/common/task/Task;

    new-instance v1, Lcom/google/masf/services/resume/WindowResumeService$MainTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/masf/services/resume/WindowResumeService$MainTask;-><init>(Lcom/google/masf/services/resume/WindowResumeService;Lcom/google/masf/services/resume/WindowResumeService$1;)V

    invoke-direct {v0, p2, v1}, Lcom/google/common/task/Task;-><init>(Lcom/google/common/task/TaskRunner;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService;->mainTask:Lcom/google/common/task/Task;

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/google/masf/services/resume/WindowResumeService;->debug(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/masf/services/resume/WindowResumeService;)Lcom/google/masf/protocol/HeaderRequest;
    .locals 1

    iget-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService;->header:Lcom/google/masf/protocol/HeaderRequest;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/masf/services/resume/WindowResumeService;)I
    .locals 1

    iget v0, p0, Lcom/google/masf/services/resume/WindowResumeService;->chunkSize:I

    return v0
.end method

.method static synthetic access$500(Lcom/google/masf/services/resume/WindowResumeService;)Lcom/google/masf/MobileServiceMux;
    .locals 1

    iget-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService;->mux:Lcom/google/masf/MobileServiceMux;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/masf/services/resume/WindowResumeService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService;->mutex:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/masf/services/resume/WindowResumeService;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService;->activeQueue:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/masf/services/resume/WindowResumeService;)Lcom/google/common/task/TaskRunner;
    .locals 1

    iget-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService;->runner:Lcom/google/common/task/TaskRunner;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/masf/services/resume/WindowResumeService;)Lcom/google/common/task/Task;
    .locals 1

    iget-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService;->mainTask:Lcom/google/common/task/Task;

    return-object v0
.end method

.method private static debug(Ljava/lang/String;)V
    .locals 1

    const-string v0, "MASF"

    invoke-static {v0, p0}, Lcom/google/common/Log;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
