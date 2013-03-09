.class Lcom/htc/music/DMCServiceManager$DMCStatus;
.super Ljava/lang/Object;
.source "DMCServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/DMCServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DMCStatus"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/DMCServiceManager$DMCStatus$StateMsgTimerTask;,
        Lcom/htc/music/DMCServiceManager$DMCStatus$StateTimerTask;
    }
.end annotation


# instance fields
.field PgTimer:Ljava/util/Timer;

.field public StateMsgTimer:Ljava/util/Timer;

.field public StateTimer:Ljava/util/Timer;

.field bCanToastR:Z

.field bCanToastS:Z

.field public bMuteState:Z

.field public bShuffleState:Z

.field private bStateSynced:Z

.field public lDuration:J

.field public lPosition:J

.field public lPositionDyn:J

.field protected lUserPosition:J

.field public mbIsLiveRenderer:Z

.field public mbIsLiveServer:Z

.field public nPlayState:I

.field public nRepeatState:I

.field public nUserShuffleState:I

.field public nUserState:I

.field public nUserVolume:I

.field public nVolume:I

.field final synthetic this$0:Lcom/htc/music/DMCServiceManager;


# direct methods
.method private constructor <init>(Lcom/htc/music/DMCServiceManager;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->this$0:Lcom/htc/music/DMCServiceManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nPlayState:I

    iput v0, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nUserState:I

    iput-boolean v1, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->bStateSynced:Z

    iput-object v2, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->StateTimer:Ljava/util/Timer;

    iput-object v2, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->StateMsgTimer:Ljava/util/Timer;

    iput-boolean v1, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->mbIsLiveServer:Z

    iput-boolean v1, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->mbIsLiveRenderer:Z

    iput v0, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nUserShuffleState:I

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->PgTimer:Ljava/util/Timer;

    iput-boolean v1, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->bCanToastR:Z

    iput-boolean v1, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->bCanToastS:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/DMCServiceManager;Lcom/htc/music/DMCServiceManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/music/DMCServiceManager$DMCStatus;-><init>(Lcom/htc/music/DMCServiceManager;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/htc/music/DMCServiceManager$DMCStatus;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/music/DMCServiceManager$DMCStatus;->setPosUI(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/htc/music/DMCServiceManager$DMCStatus;)Z
    .locals 1

    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager$DMCStatus;->isPlaying()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/htc/music/DMCServiceManager$DMCStatus;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->bStateSynced:Z

    return v0
.end method

.method static synthetic access$3902(Lcom/htc/music/DMCServiceManager$DMCStatus;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->bStateSynced:Z

    return p1
.end method

.method private isPlaying()Z
    .locals 3

    iget v0, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nPlayState:I

    if-nez v0, :cond_0

    const-string v0, "[DMCServiceManager]"

    const-string v1, "isPlaying() state:YES(0)"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "[DMCServiceManager]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPlaying() state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nPlayState:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setPosUI(I)V
    .locals 4

    int-to-long v0, p1

    iget-wide v2, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->lUserPosition:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0xa

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->this$0:Lcom/htc/music/DMCServiceManager;

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->PgTimer:Ljava/util/Timer;

    invoke-virtual {v0, v1}, Lcom/htc/music/DMCServiceManager;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->PgTimer:Ljava/util/Timer;

    :cond_0
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCurMode:I
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$100(Lcom/htc/music/DMCServiceManager;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_1
    return-void
.end method

.method private setVolUI(I)V
    .locals 0

    return-void
.end method


# virtual methods
.method protected checkState()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/16 v1, 0x8

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iget v1, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nPlayState:I

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_0

    iput v4, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nPlayState:I

    iput v4, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nUserState:I

    :cond_0
    iget v1, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nPlayState:I

    const/4 v2, 0x7

    if-gt v1, v2, :cond_1

    iget v1, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nPlayState:I

    if-gez v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v1, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nPlayState:I

    aget v1, v0, v1

    iget v2, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nUserState:I

    if-ne v1, v2, :cond_3

    iput-boolean v3, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->bStateSynced:Z

    :cond_3
    iget-boolean v1, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->bStateSynced:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->this$0:Lcom/htc/music/DMCServiceManager;

    #setter for: Lcom/htc/music/DMCServiceManager;->mOncePlayed:Z
    invoke-static {v1, v3}, Lcom/htc/music/DMCServiceManager;->access$1502(Lcom/htc/music/DMCServiceManager;Z)Z

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->this$0:Lcom/htc/music/DMCServiceManager;

    #calls: Lcom/htc/music/DMCServiceManager;->setDMCLine(I)V
    invoke-static {v1, v3}, Lcom/htc/music/DMCServiceManager;->access$1600(Lcom/htc/music/DMCServiceManager;I)V

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->this$0:Lcom/htc/music/DMCServiceManager;

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->StateTimer:Ljava/util/Timer;

    invoke-virtual {v1, v2}, Lcom/htc/music/DMCServiceManager;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->StateTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->this$0:Lcom/htc/music/DMCServiceManager;

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->StateMsgTimer:Ljava/util/Timer;

    invoke-virtual {v1, v2}, Lcom/htc/music/DMCServiceManager;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->StateMsgTimer:Ljava/util/Timer;

    goto :goto_0

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected refreshRS(I)V
    .locals 0

    return-void
.end method

.method protected refreshTime()V
    .locals 4

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCurMode:I
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$100(Lcom/htc/music/DMCServiceManager;)I

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->lDuration:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->bStateSynced:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->lPositionDyn:J

    iput-wide v0, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->lPosition:J

    :cond_0
    iget-wide v0, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->lDuration:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-wide v0, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->lPosition:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-wide v0, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->lPosition:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    goto :goto_0
.end method

.method protected refreshVolume()V
    .locals 4

    const/16 v3, 0x64

    const-string v0, "[DMCServiceManager]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vol to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nVolume:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nVolume:I

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nVolume:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nVolume:I

    if-lt v0, v3, :cond_0

    iput v3, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nVolume:I

    goto :goto_0
.end method

.method protected setUserState(I)V
    .locals 8

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->bStateSynced:Z

    iput p1, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nUserState:I

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->this$0:Lcom/htc/music/DMCServiceManager;

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->StateMsgTimer:Ljava/util/Timer;

    new-instance v2, Lcom/htc/music/DMCServiceManager$DMCStatus$StateMsgTimerTask;

    invoke-direct {v2, p0, v7}, Lcom/htc/music/DMCServiceManager$DMCStatus$StateMsgTimerTask;-><init>(Lcom/htc/music/DMCServiceManager$DMCStatus;Lcom/htc/music/DMCServiceManager$1;)V

    const-wide/16 v3, 0xfa0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/music/DMCServiceManager;->TimerEnable(Ljava/util/Timer;Ljava/util/TimerTask;JJ)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->StateMsgTimer:Ljava/util/Timer;

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCurCookie:I
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$500(Lcom/htc/music/DMCServiceManager;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->this$0:Lcom/htc/music/DMCServiceManager;

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->StateTimer:Ljava/util/Timer;

    new-instance v2, Lcom/htc/music/DMCServiceManager$DMCStatus$StateTimerTask;

    invoke-direct {v2, p0, v7}, Lcom/htc/music/DMCServiceManager$DMCStatus$StateTimerTask;-><init>(Lcom/htc/music/DMCServiceManager$DMCStatus;Lcom/htc/music/DMCServiceManager$1;)V

    const-wide/32 v3, 0x88b8

    invoke-virtual/range {v0 .. v6}, Lcom/htc/music/DMCServiceManager;->TimerEnable(Ljava/util/Timer;Ljava/util/TimerTask;JJ)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->StateTimer:Ljava/util/Timer;

    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/DMCServiceManager$DMCStatus;->refreshTime()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->this$0:Lcom/htc/music/DMCServiceManager;

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->StateTimer:Ljava/util/Timer;

    new-instance v2, Lcom/htc/music/DMCServiceManager$DMCStatus$StateTimerTask;

    invoke-direct {v2, p0, v7}, Lcom/htc/music/DMCServiceManager$DMCStatus$StateTimerTask;-><init>(Lcom/htc/music/DMCServiceManager$DMCStatus;Lcom/htc/music/DMCServiceManager$1;)V

    const-wide/16 v3, 0x61a8

    invoke-virtual/range {v0 .. v6}, Lcom/htc/music/DMCServiceManager;->TimerEnable(Ljava/util/Timer;Ljava/util/TimerTask;JJ)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/DMCServiceManager$DMCStatus;->StateTimer:Ljava/util/Timer;

    goto :goto_0
.end method
