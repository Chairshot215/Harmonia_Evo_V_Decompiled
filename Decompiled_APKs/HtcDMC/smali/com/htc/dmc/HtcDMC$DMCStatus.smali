.class Lcom/htc/dmc/HtcDMC$DMCStatus;
.super Ljava/lang/Object;
.source "HtcDMC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dmc/HtcDMC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DMCStatus"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dmc/HtcDMC$DMCStatus$StateMsgTimerTask;,
        Lcom/htc/dmc/HtcDMC$DMCStatus$StateTimerTask;
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

.field public nUserRepeatstate:I

.field public nUserShuffleState:I

.field public nUserState:I

.field public nUserVolume:I

.field public nVolume:I

.field final synthetic this$0:Lcom/htc/dmc/HtcDMC;


# direct methods
.method private constructor <init>(Lcom/htc/dmc/HtcDMC;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 580
    iput-object p1, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 587
    iput v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->nPlayState:I

    .line 588
    iput v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->nUserState:I

    .line 589
    iput-boolean v1, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->bStateSynced:Z

    .line 590
    iput-object v2, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->StateTimer:Ljava/util/Timer;

    .line 591
    iput-object v2, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->StateMsgTimer:Ljava/util/Timer;

    .line 674
    iput-boolean v1, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->mbIsLiveServer:Z

    .line 675
    iput-boolean v1, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->mbIsLiveRenderer:Z

    .line 682
    iput v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->nUserShuffleState:I

    .line 683
    iput v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->nUserRepeatstate:I

    .line 726
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->PgTimer:Ljava/util/Timer;

    .line 754
    iput-boolean v1, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->bCanToastR:Z

    .line 755
    iput-boolean v1, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->bCanToastS:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/dmc/HtcDMC;Lcom/htc/dmc/HtcDMC$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 580
    invoke-direct {p0, p1}, Lcom/htc/dmc/HtcDMC$DMCStatus;-><init>(Lcom/htc/dmc/HtcDMC;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/htc/dmc/HtcDMC$DMCStatus;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 580
    invoke-direct {p0, p1}, Lcom/htc/dmc/HtcDMC$DMCStatus;->setPosUI(I)V

    return-void
.end method

.method static synthetic access$4600(Lcom/htc/dmc/HtcDMC$DMCStatus;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 580
    invoke-direct {p0}, Lcom/htc/dmc/HtcDMC$DMCStatus;->isPlaying()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6700(Lcom/htc/dmc/HtcDMC$DMCStatus;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 580
    iget-boolean v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->bStateSynced:Z

    return v0
.end method

.method static synthetic access$6702(Lcom/htc/dmc/HtcDMC$DMCStatus;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 580
    iput-boolean p1, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->bStateSynced:Z

    return p1
.end method

.method private isPlaying()Z
    .locals 3

    .prologue
    .line 662
    iget v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->nPlayState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->nUserState:I

    if-nez v0, :cond_1

    .line 663
    :cond_0
    const-string v0, "[HtcDMC]"

    const-string v1, "isPlaying() state:YES(0)"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    const/4 v0, 0x1

    .line 667
    :goto_0
    return v0

    .line 666
    :cond_1
    const-string v0, "[HtcDMC]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPlaying() state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->nPlayState:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setPosUI(I)V
    .locals 4
    .parameter "nProgress"

    .prologue
    .line 729
    int-to-long v0, p1

    iget-wide v2, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->lUserPosition:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0xa

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->PgTimer:Ljava/util/Timer;

    invoke-virtual {v0, v1}, Lcom/htc/dmc/HtcDMC;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->PgTimer:Ljava/util/Timer;

    .line 732
    :cond_0
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurMode:I
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$000(Lcom/htc/dmc/HtcDMC;)I

    move-result v0

    if-nez v0, :cond_3

    .line 734
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->PgTimer:Ljava/util/Timer;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mPgVideo:Lcom/htc/widget/HtcSeekBar;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$3100(Lcom/htc/dmc/HtcDMC;)Lcom/htc/widget/HtcSeekBar;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mPgVideo:Lcom/htc/widget/HtcSeekBar;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$3100(Lcom/htc/dmc/HtcDMC;)Lcom/htc/widget/HtcSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcSeekBar;->isPressed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 736
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mPgVideo:Lcom/htc/widget/HtcSeekBar;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$3100(Lcom/htc/dmc/HtcDMC;)Lcom/htc/widget/HtcSeekBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcSeekBar;->setProgress(I)V

    .line 748
    :cond_1
    :goto_0
    return-void

    .line 740
    :cond_2
    const-string v0, "[HtcDMC]"

    const-string v1, "mPgVideo null or pressed"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 743
    :cond_3
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurMode:I
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$000(Lcom/htc/dmc/HtcDMC;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 745
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->PgTimer:Ljava/util/Timer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mPgMain:Lcom/htc/widget/HtcSeekBar;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$3200(Lcom/htc/dmc/HtcDMC;)Lcom/htc/widget/HtcSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcSeekBar;->isPressed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 746
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mPgMain:Lcom/htc/widget/HtcSeekBar;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$3200(Lcom/htc/dmc/HtcDMC;)Lcom/htc/widget/HtcSeekBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcSeekBar;->setProgress(I)V

    goto :goto_0
.end method

.method private setVolUI(I)V
    .locals 0
    .parameter "nVol"

    .prologue
    .line 752
    return-void
.end method


# virtual methods
.method protected checkState()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 614
    const/16 v1, 0x8

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 619
    .local v0, nStateTable:[I
    iget v1, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->nPlayState:I

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_0

    .line 620
    iput v4, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->nPlayState:I

    .line 621
    iput v4, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->nUserState:I

    .line 623
    :cond_0
    iget v1, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->nPlayState:I

    const/4 v2, 0x7

    if-gt v1, v2, :cond_1

    iget v1, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->nPlayState:I

    if-gez v1, :cond_2

    .line 640
    :cond_1
    :goto_0
    return-void

    .line 626
    :cond_2
    iget v1, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->nPlayState:I

    aget v1, v0, v1

    iget v2, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->nUserState:I

    if-ne v1, v2, :cond_3

    .line 627
    iput-boolean v3, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->bStateSynced:Z

    .line 629
    :cond_3
    iget-boolean v1, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->bStateSynced:Z

    if-eqz v1, :cond_1

    .line 630
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    #setter for: Lcom/htc/dmc/HtcDMC;->mOncePlayed:Z
    invoke-static {v1, v3}, Lcom/htc/dmc/HtcDMC;->access$2702(Lcom/htc/dmc/HtcDMC;Z)Z

    .line 632
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    #calls: Lcom/htc/dmc/HtcDMC;->setDMCLine(I)V
    invoke-static {v1, v3}, Lcom/htc/dmc/HtcDMC;->access$2300(Lcom/htc/dmc/HtcDMC;I)V

    .line 635
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mHeaderText:Lcom/htc/widget/HeaderBarText;
    invoke-static {v1}, Lcom/htc/dmc/HtcDMC;->access$100(Lcom/htc/dmc/HtcDMC;)Lcom/htc/widget/HeaderBarText;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mszListIndex:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/dmc/HtcDMC;->access$1100(Lcom/htc/dmc/HtcDMC;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/htc/dmc/HtcDMC;->makeDynInfoString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftText(Ljava/lang/String;)V

    .line 637
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->StateTimer:Ljava/util/Timer;

    invoke-virtual {v1, v2}, Lcom/htc/dmc/HtcDMC;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->StateTimer:Ljava/util/Timer;

    .line 638
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->StateMsgTimer:Ljava/util/Timer;

    invoke-virtual {v1, v2}, Lcom/htc/dmc/HtcDMC;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->StateMsgTimer:Ljava/util/Timer;

    goto :goto_0

    .line 614
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
    .locals 7
    .parameter "nRef"

    .prologue
    const v6, 0x7f080007

    const v5, 0x2080945

    const v3, 0x2080944

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 759
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mBtnRepeat:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$3300(Lcom/htc/dmc/HtcDMC;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 760
    iget v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->nRepeatState:I

    if-ne v0, v2, :cond_5

    .line 761
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurMode:I
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$000(Lcom/htc/dmc/HtcDMC;)I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 762
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mBtnRepeat:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$3300(Lcom/htc/dmc/HtcDMC;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-static {}, Lcom/htc/dmc/HtcDMC;->access$800()Landroid/content/Context;

    move-result-object v1

    const-string v2, "common_icon_glance_repeat_one_on"

    invoke-static {v1, v2, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 764
    iget-boolean v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->bCanToastR:Z

    if-eqz v0, :cond_0

    .line 765
    invoke-static {}, Lcom/htc/dmc/HtcDMC;->access$800()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/htc/dmc/HtcDMC;->access$800()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080012

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 802
    :cond_0
    :goto_0
    iput-boolean v4, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->bCanToastR:Z

    .line 805
    :cond_1
    const/4 v0, 0x6

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mBtnShuffle:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$3400(Lcom/htc/dmc/HtcDMC;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 806
    iget-boolean v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->bShuffleState:Z

    if-eqz v0, :cond_8

    .line 807
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mBtnShuffle:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$3400(Lcom/htc/dmc/HtcDMC;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-static {}, Lcom/htc/dmc/HtcDMC;->access$800()Landroid/content/Context;

    move-result-object v1

    const-string v2, "common_icon_glance_shuffle_on"

    const v3, 0x2080969

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 809
    iget-boolean v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->bCanToastS:Z

    if-eqz v0, :cond_2

    .line 810
    invoke-static {}, Lcom/htc/dmc/HtcDMC;->access$800()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/htc/dmc/HtcDMC;->access$800()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08000f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 821
    :cond_2
    :goto_1
    iput-boolean v4, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->bCanToastS:Z

    .line 823
    :cond_3
    return-void

    .line 770
    :cond_4
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mBtnRepeat:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$3300(Lcom/htc/dmc/HtcDMC;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-static {}, Lcom/htc/dmc/HtcDMC;->access$800()Landroid/content/Context;

    move-result-object v1

    const-string v2, "common_icon_glance_repeat_on"

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 772
    iget-boolean v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->bCanToastR:Z

    if-eqz v0, :cond_0

    .line 773
    invoke-static {}, Lcom/htc/dmc/HtcDMC;->access$800()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/htc/dmc/HtcDMC;->access$800()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 777
    :cond_5
    iget v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->nRepeatState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 778
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurMode:I
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$000(Lcom/htc/dmc/HtcDMC;)I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 779
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mBtnRepeat:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$3300(Lcom/htc/dmc/HtcDMC;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-static {}, Lcom/htc/dmc/HtcDMC;->access$800()Landroid/content/Context;

    move-result-object v1

    const-string v2, "common_icon_glance_repeat_on"

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 781
    iget-boolean v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->bCanToastR:Z

    if-eqz v0, :cond_0

    .line 782
    invoke-static {}, Lcom/htc/dmc/HtcDMC;->access$800()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/htc/dmc/HtcDMC;->access$800()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 786
    :cond_6
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mBtnRepeat:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$3300(Lcom/htc/dmc/HtcDMC;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-static {}, Lcom/htc/dmc/HtcDMC;->access$800()Landroid/content/Context;

    move-result-object v1

    const-string v2, "common_icon_glance_repeat_one_on"

    invoke-static {v1, v2, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 788
    iget-boolean v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->bCanToastR:Z

    if-eqz v0, :cond_0

    .line 789
    invoke-static {}, Lcom/htc/dmc/HtcDMC;->access$800()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/htc/dmc/HtcDMC;->access$800()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080012

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 795
    :cond_7
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mBtnRepeat:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$3300(Lcom/htc/dmc/HtcDMC;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-static {}, Lcom/htc/dmc/HtcDMC;->access$800()Landroid/content/Context;

    move-result-object v1

    const-string v2, "common_icon_glance_repeat_disable"

    const v3, 0x2080943

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 797
    iget-boolean v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->bCanToastR:Z

    if-eqz v0, :cond_0

    .line 798
    invoke-static {}, Lcom/htc/dmc/HtcDMC;->access$800()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/htc/dmc/HtcDMC;->access$800()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080011

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 814
    :cond_8
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mBtnShuffle:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$3400(Lcom/htc/dmc/HtcDMC;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-static {}, Lcom/htc/dmc/HtcDMC;->access$800()Landroid/content/Context;

    move-result-object v1

    const-string v2, "common_icon_glance_shuffle_disable"

    const v3, 0x2080968

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 816
    iget-boolean v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->bCanToastS:Z

    if-eqz v0, :cond_2

    .line 817
    invoke-static {}, Lcom/htc/dmc/HtcDMC;->access$800()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/htc/dmc/HtcDMC;->access$800()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080010

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1
.end method

.method protected refreshTime()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 687
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurMode:I
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$000(Lcom/htc/dmc/HtcDMC;)I

    move-result v0

    if-nez v0, :cond_0

    iget-wide v3, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->lDuration:J

    cmp-long v0, v3, v8

    if-lez v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mTxtArtistName:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$400(Lcom/htc/dmc/HtcDMC;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {}, Lcom/htc/dmc/HtcDMC;->access$800()Landroid/content/Context;

    move-result-object v4

    iget-wide v5, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->lDuration:J

    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurMode:I
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$000(Lcom/htc/dmc/HtcDMC;)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v7, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurMode:I
    invoke-static {v7}, Lcom/htc/dmc/HtcDMC;->access$000(Lcom/htc/dmc/HtcDMC;)I

    move-result v7

    invoke-static {v4, v5, v6, v0, v7}, Lcom/htc/dmc/HtcDMC;->makeTimeString(Landroid/content/Context;JZI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 691
    :cond_0
    iget-boolean v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->bStateSynced:Z

    if-ne v0, v1, :cond_1

    .line 692
    iget-wide v3, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->lPositionDyn:J

    iput-wide v3, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->lPosition:J

    .line 696
    :cond_1
    iget-wide v3, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->lDuration:J

    cmp-long v0, v3, v8

    if-lez v0, :cond_8

    .line 697
    iget-wide v3, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->lPosition:J

    cmp-long v0, v3, v8

    if-ltz v0, :cond_5

    .line 698
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mTxtElapseTime:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$2900(Lcom/htc/dmc/HtcDMC;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {}, Lcom/htc/dmc/HtcDMC;->access$800()Landroid/content/Context;

    move-result-object v4

    iget-wide v5, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->lPosition:J

    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurMode:I
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$000(Lcom/htc/dmc/HtcDMC;)I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    iget-object v7, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurMode:I
    invoke-static {v7}, Lcom/htc/dmc/HtcDMC;->access$000(Lcom/htc/dmc/HtcDMC;)I

    move-result v7

    invoke-static {v4, v5, v6, v0, v7}, Lcom/htc/dmc/HtcDMC;->makeTimeString(Landroid/content/Context;JZI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 700
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mTxtRemainTime:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$3000(Lcom/htc/dmc/HtcDMC;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/htc/dmc/HtcDMC;->access$800()Landroid/content/Context;

    move-result-object v4

    iget-wide v5, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->lDuration:J

    iget-wide v7, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->lPosition:J

    sub-long/2addr v5, v7

    iget-object v7, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurMode:I
    invoke-static {v7}, Lcom/htc/dmc/HtcDMC;->access$000(Lcom/htc/dmc/HtcDMC;)I

    move-result v7

    if-nez v7, :cond_4

    :goto_2
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurMode:I
    invoke-static {v2}, Lcom/htc/dmc/HtcDMC;->access$000(Lcom/htc/dmc/HtcDMC;)I

    move-result v2

    invoke-static {v4, v5, v6, v1, v2}, Lcom/htc/dmc/HtcDMC;->makeTimeString(Landroid/content/Context;JZI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 703
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$2400(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dmc/HtcDMC$DMCStatus;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->lPosition:J

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    iget-wide v3, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->lDuration:J

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-direct {v0, v1}, Lcom/htc/dmc/HtcDMC$DMCStatus;->setPosUI(I)V

    .line 724
    :goto_3
    return-void

    :cond_2
    move v0, v2

    .line 688
    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 698
    goto :goto_1

    :cond_4
    move v1, v2

    .line 700
    goto :goto_2

    .line 705
    :cond_5
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mTxtElapseTime:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$2900(Lcom/htc/dmc/HtcDMC;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {}, Lcom/htc/dmc/HtcDMC;->access$800()Landroid/content/Context;

    move-result-object v4

    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurMode:I
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$000(Lcom/htc/dmc/HtcDMC;)I

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_4
    iget-object v5, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurMode:I
    invoke-static {v5}, Lcom/htc/dmc/HtcDMC;->access$000(Lcom/htc/dmc/HtcDMC;)I

    move-result v5

    invoke-static {v4, v8, v9, v0, v5}, Lcom/htc/dmc/HtcDMC;->makeTimeString(Landroid/content/Context;JZI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 706
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mTxtRemainTime:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$3000(Lcom/htc/dmc/HtcDMC;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/htc/dmc/HtcDMC;->access$800()Landroid/content/Context;

    move-result-object v4

    iget-wide v5, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->lDuration:J

    iget-object v7, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurMode:I
    invoke-static {v7}, Lcom/htc/dmc/HtcDMC;->access$000(Lcom/htc/dmc/HtcDMC;)I

    move-result v7

    if-nez v7, :cond_7

    :goto_5
    iget-object v7, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurMode:I
    invoke-static {v7}, Lcom/htc/dmc/HtcDMC;->access$000(Lcom/htc/dmc/HtcDMC;)I

    move-result v7

    invoke-static {v4, v5, v6, v1, v7}, Lcom/htc/dmc/HtcDMC;->makeTimeString(Landroid/content/Context;JZI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 709
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$2400(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dmc/HtcDMC$DMCStatus;

    move-result-object v0

    invoke-direct {v0, v2}, Lcom/htc/dmc/HtcDMC$DMCStatus;->setPosUI(I)V

    goto :goto_3

    :cond_6
    move v0, v2

    .line 705
    goto :goto_4

    :cond_7
    move v1, v2

    .line 706
    goto :goto_5

    .line 712
    :cond_8
    iget-wide v3, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->lPosition:J

    cmp-long v0, v3, v8

    if-ltz v0, :cond_b

    .line 713
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mTxtElapseTime:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$2900(Lcom/htc/dmc/HtcDMC;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {}, Lcom/htc/dmc/HtcDMC;->access$800()Landroid/content/Context;

    move-result-object v4

    iget-wide v5, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->lPosition:J

    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurMode:I
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$000(Lcom/htc/dmc/HtcDMC;)I

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    :goto_6
    iget-object v7, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurMode:I
    invoke-static {v7}, Lcom/htc/dmc/HtcDMC;->access$000(Lcom/htc/dmc/HtcDMC;)I

    move-result v7

    invoke-static {v4, v5, v6, v0, v7}, Lcom/htc/dmc/HtcDMC;->makeTimeString(Landroid/content/Context;JZI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 715
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mTxtRemainTime:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$3000(Lcom/htc/dmc/HtcDMC;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/htc/dmc/HtcDMC;->access$800()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurMode:I
    invoke-static {v5}, Lcom/htc/dmc/HtcDMC;->access$000(Lcom/htc/dmc/HtcDMC;)I

    move-result v5

    if-nez v5, :cond_a

    :goto_7
    iget-object v5, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurMode:I
    invoke-static {v5}, Lcom/htc/dmc/HtcDMC;->access$000(Lcom/htc/dmc/HtcDMC;)I

    move-result v5

    invoke-static {v4, v8, v9, v1, v5}, Lcom/htc/dmc/HtcDMC;->makeTimeString(Landroid/content/Context;JZI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 716
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$2400(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dmc/HtcDMC$DMCStatus;

    move-result-object v0

    invoke-direct {v0, v2}, Lcom/htc/dmc/HtcDMC$DMCStatus;->setPosUI(I)V

    goto/16 :goto_3

    :cond_9
    move v0, v2

    .line 713
    goto :goto_6

    :cond_a
    move v1, v2

    .line 715
    goto :goto_7

    .line 718
    :cond_b
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mTxtElapseTime:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$2900(Lcom/htc/dmc/HtcDMC;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {}, Lcom/htc/dmc/HtcDMC;->access$800()Landroid/content/Context;

    move-result-object v4

    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurMode:I
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$000(Lcom/htc/dmc/HtcDMC;)I

    move-result v0

    if-nez v0, :cond_c

    move v0, v1

    :goto_8
    iget-object v5, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurMode:I
    invoke-static {v5}, Lcom/htc/dmc/HtcDMC;->access$000(Lcom/htc/dmc/HtcDMC;)I

    move-result v5

    invoke-static {v4, v8, v9, v0, v5}, Lcom/htc/dmc/HtcDMC;->makeTimeString(Landroid/content/Context;JZI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 719
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mTxtRemainTime:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$3000(Lcom/htc/dmc/HtcDMC;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/htc/dmc/HtcDMC;->access$800()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurMode:I
    invoke-static {v5}, Lcom/htc/dmc/HtcDMC;->access$000(Lcom/htc/dmc/HtcDMC;)I

    move-result v5

    if-nez v5, :cond_d

    :goto_9
    iget-object v5, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurMode:I
    invoke-static {v5}, Lcom/htc/dmc/HtcDMC;->access$000(Lcom/htc/dmc/HtcDMC;)I

    move-result v5

    invoke-static {v4, v8, v9, v1, v5}, Lcom/htc/dmc/HtcDMC;->makeTimeString(Landroid/content/Context;JZI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 720
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$2400(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dmc/HtcDMC$DMCStatus;

    move-result-object v0

    invoke-direct {v0, v2}, Lcom/htc/dmc/HtcDMC$DMCStatus;->setPosUI(I)V

    goto/16 :goto_3

    :cond_c
    move v0, v2

    .line 718
    goto :goto_8

    :cond_d
    move v1, v2

    .line 719
    goto :goto_9
.end method

.method protected refreshVolume()V
    .locals 4

    .prologue
    const/16 v3, 0x64

    .line 826
    const-string v0, "[HtcDMC]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vol to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->nVolume:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    iget v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->nVolume:I

    if-gtz v0, :cond_1

    .line 831
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->nVolume:I

    .line 844
    :cond_0
    :goto_0
    return-void

    .line 836
    :cond_1
    iget v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->nVolume:I

    if-lt v0, v3, :cond_0

    .line 838
    iput v3, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->nVolume:I

    goto :goto_0
.end method

.method protected setUserState(I)V
    .locals 8
    .parameter "nState"

    .prologue
    const/4 v2, 0x0

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    .line 594
    iput-boolean v2, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->bStateSynced:Z

    .line 595
    iput p1, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->nUserState:I

    .line 597
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    const/4 v1, 0x1

    #calls: Lcom/htc/dmc/HtcDMC;->setBtnAll(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/htc/dmc/HtcDMC;->access$1200(Lcom/htc/dmc/HtcDMC;ZZ)V

    .line 599
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->StateMsgTimer:Ljava/util/Timer;

    new-instance v2, Lcom/htc/dmc/HtcDMC$DMCStatus$StateMsgTimerTask;

    invoke-direct {v2, p0, v7}, Lcom/htc/dmc/HtcDMC$DMCStatus$StateMsgTimerTask;-><init>(Lcom/htc/dmc/HtcDMC$DMCStatus;Lcom/htc/dmc/HtcDMC$1;)V

    const-wide/16 v3, 0xfa0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/dmc/HtcDMC;->TimerEnable(Ljava/util/Timer;Ljava/util/TimerTask;JJ)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->StateMsgTimer:Ljava/util/Timer;

    .line 602
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurCookie:I
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$500(Lcom/htc/dmc/HtcDMC;)I

    move-result v0

    if-nez v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->StateTimer:Ljava/util/Timer;

    new-instance v2, Lcom/htc/dmc/HtcDMC$DMCStatus$StateTimerTask;

    invoke-direct {v2, p0, v7}, Lcom/htc/dmc/HtcDMC$DMCStatus$StateTimerTask;-><init>(Lcom/htc/dmc/HtcDMC$DMCStatus;Lcom/htc/dmc/HtcDMC$1;)V

    const-wide/32 v3, 0x88b8

    invoke-virtual/range {v0 .. v6}, Lcom/htc/dmc/HtcDMC;->TimerEnable(Ljava/util/Timer;Ljava/util/TimerTask;JJ)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->StateTimer:Ljava/util/Timer;

    .line 609
    :goto_0
    invoke-virtual {p0}, Lcom/htc/dmc/HtcDMC$DMCStatus;->refreshTime()V

    .line 610
    return-void

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->StateTimer:Ljava/util/Timer;

    new-instance v2, Lcom/htc/dmc/HtcDMC$DMCStatus$StateTimerTask;

    invoke-direct {v2, p0, v7}, Lcom/htc/dmc/HtcDMC$DMCStatus$StateTimerTask;-><init>(Lcom/htc/dmc/HtcDMC$DMCStatus;Lcom/htc/dmc/HtcDMC$1;)V

    const-wide/16 v3, 0x61a8

    invoke-virtual/range {v0 .. v6}, Lcom/htc/dmc/HtcDMC;->TimerEnable(Ljava/util/Timer;Ljava/util/TimerTask;JJ)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dmc/HtcDMC$DMCStatus;->StateTimer:Ljava/util/Timer;

    goto :goto_0
.end method
