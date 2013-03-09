.class Lcom/htc/fm/FMRadio$ChannelController;
.super Ljava/lang/Object;
.source "FMRadio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/FMRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChannelController"
.end annotation


# instance fields
.field private mFreq:I

.field final synthetic this$0:Lcom/htc/fm/FMRadio;


# direct methods
.method private constructor <init>(Lcom/htc/fm/FMRadio;)V
    .locals 1
    .parameter

    .prologue
    .line 2776
    iput-object p1, p0, Lcom/htc/fm/FMRadio$ChannelController;->this$0:Lcom/htc/fm/FMRadio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2777
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/fm/FMRadio$ChannelController;->mFreq:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/fm/FMRadio;Lcom/htc/fm/FMRadio$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2776
    invoke-direct {p0, p1}, Lcom/htc/fm/FMRadio$ChannelController;-><init>(Lcom/htc/fm/FMRadio;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/htc/fm/FMRadio$ChannelController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2776
    iget v0, p0, Lcom/htc/fm/FMRadio$ChannelController;->mFreq:I

    return v0
.end method


# virtual methods
.method public tune(I)V
    .locals 5
    .parameter "freq"

    .prologue
    const/4 v1, 0x4

    const/4 v4, 0x1

    .line 2798
    iput p1, p0, Lcom/htc/fm/FMRadio$ChannelController;->mFreq:I

    .line 2801
    iget-object v0, p0, Lcom/htc/fm/FMRadio$ChannelController;->this$0:Lcom/htc/fm/FMRadio;

    #getter for: Lcom/htc/fm/FMRadio;->mIsUseRollingAnimation:Z
    invoke-static {v0}, Lcom/htc/fm/FMRadio;->access$3500(Lcom/htc/fm/FMRadio;)Z

    move-result v0

    if-eq v0, v4, :cond_2

    .line 2803
    sget-boolean v0, Lcom/htc/fm/FMDef;->ISFAKE:Z

    if-eqz v0, :cond_1

    .line 2804
    iget-object v0, p0, Lcom/htc/fm/FMRadio$ChannelController;->this$0:Lcom/htc/fm/FMRadio;

    #getter for: Lcom/htc/fm/FMRadio;->mTextFreq:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/fm/FMRadio;->access$3600(Lcom/htc/fm/FMRadio;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2821
    :goto_0
    iget-object v0, p0, Lcom/htc/fm/FMRadio$ChannelController;->this$0:Lcom/htc/fm/FMRadio;

    #calls: Lcom/htc/fm/FMRadio;->getState()I
    invoke-static {v0}, Lcom/htc/fm/FMRadio;->access$400(Lcom/htc/fm/FMRadio;)I

    move-result v0

    if-eq v0, v4, :cond_4

    .line 2832
    :cond_0
    :goto_1
    return-void

    .line 2806
    :cond_1
    iget-object v0, p0, Lcom/htc/fm/FMRadio$ChannelController;->this$0:Lcom/htc/fm/FMRadio;

    #getter for: Lcom/htc/fm/FMRadio;->mTextFreq:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/fm/FMRadio;->access$3600(Lcom/htc/fm/FMRadio;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/fm/FMRadio$ChannelController;->this$0:Lcom/htc/fm/FMRadio;

    iget v2, p0, Lcom/htc/fm/FMRadio$ChannelController;->mFreq:I

    int-to-long v2, v2

    #calls: Lcom/htc/fm/FMRadio;->getFreq(J)Ljava/lang/String;
    invoke-static {v1, v2, v3}, Lcom/htc/fm/FMRadio;->access$3700(Lcom/htc/fm/FMRadio;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2809
    :cond_2
    sget-boolean v0, Lcom/htc/fm/FMDef;->ISFAKE:Z

    if-eqz v0, :cond_3

    .line 2811
    iget-object v0, p0, Lcom/htc/fm/FMRadio$ChannelController;->this$0:Lcom/htc/fm/FMRadio;

    iget-object v0, v0, Lcom/htc/fm/FMRadio;->mrollbar:Lcom/htc/fm/FreqRollBar;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2812
    iget-object v0, p0, Lcom/htc/fm/FMRadio$ChannelController;->this$0:Lcom/htc/fm/FMRadio;

    iget-object v0, v0, Lcom/htc/fm/FMRadio;->mmirrorface:Lcom/htc/fm/MirrorFace;

    invoke-virtual {v0, v1}, Lcom/htc/fm/MirrorFace;->setVisibility(I)V

    goto :goto_0

    .line 2816
    :cond_3
    invoke-static {}, Lcom/htc/fm/FMRadio;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[FMRadio][ChannelController]"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2817
    iget-object v0, p0, Lcom/htc/fm/FMRadio$ChannelController;->this$0:Lcom/htc/fm/FMRadio;

    iget-object v0, v0, Lcom/htc/fm/FMRadio;->mrollbar:Lcom/htc/fm/FreqRollBar;

    iget v1, p0, Lcom/htc/fm/FMRadio$ChannelController;->mFreq:I

    invoke-virtual {v0, v1}, Lcom/htc/fm/FreqRollBar;->setFreq(I)V

    goto :goto_0

    .line 2825
    :cond_4
    iget-object v0, p0, Lcom/htc/fm/FMRadio$ChannelController;->this$0:Lcom/htc/fm/FMRadio;

    #calls: Lcom/htc/fm/FMRadio;->getCmdState()I
    invoke-static {v0}, Lcom/htc/fm/FMRadio;->access$3400(Lcom/htc/fm/FMRadio;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2829
    invoke-static {}, Lcom/htc/fm/FMRadio;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMRadio][Tune] TuneFrequenceTask().execut("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2831
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/fm/FMRadio$FreqUpdater;

    iget-object v2, p0, Lcom/htc/fm/FMRadio$ChannelController;->this$0:Lcom/htc/fm/FMRadio;

    invoke-direct {v1, v2, p1}, Lcom/htc/fm/FMRadio$FreqUpdater;-><init>(Lcom/htc/fm/FMRadio;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_1
.end method

.method public tuneNotChangeUI(I)V
    .locals 4
    .parameter "displayFreq"

    .prologue
    .line 2780
    iput p1, p0, Lcom/htc/fm/FMRadio$ChannelController;->mFreq:I

    .line 2783
    iget-object v0, p0, Lcom/htc/fm/FMRadio$ChannelController;->this$0:Lcom/htc/fm/FMRadio;

    #calls: Lcom/htc/fm/FMRadio;->getState()I
    invoke-static {v0}, Lcom/htc/fm/FMRadio;->access$400(Lcom/htc/fm/FMRadio;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 2794
    :cond_0
    :goto_0
    return-void

    .line 2787
    :cond_1
    iget-object v0, p0, Lcom/htc/fm/FMRadio$ChannelController;->this$0:Lcom/htc/fm/FMRadio;

    #calls: Lcom/htc/fm/FMRadio;->getCmdState()I
    invoke-static {v0}, Lcom/htc/fm/FMRadio;->access$3400(Lcom/htc/fm/FMRadio;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2791
    invoke-static {}, Lcom/htc/fm/FMRadio;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMRadio][Tune] TuneFrequenceTask().execut("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2793
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/fm/FMRadio$FreqUpdater;

    iget-object v2, p0, Lcom/htc/fm/FMRadio$ChannelController;->this$0:Lcom/htc/fm/FMRadio;

    iget v3, p0, Lcom/htc/fm/FMRadio$ChannelController;->mFreq:I

    invoke-direct {v1, v2, v3}, Lcom/htc/fm/FMRadio$FreqUpdater;-><init>(Lcom/htc/fm/FMRadio;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
