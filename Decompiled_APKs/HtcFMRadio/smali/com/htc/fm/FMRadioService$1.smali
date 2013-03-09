.class Lcom/htc/fm/FMRadioService$1;
.super Landroid/os/Handler;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mVolumePercent:F

.field private mVolumePercentBeforeMute:F

.field private mVolumePercentUpLevel:F

.field final synthetic this$0:Lcom/htc/fm/FMRadioService;


# direct methods
.method constructor <init>(Lcom/htc/fm/FMRadioService;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 255
    iput-object p1, p0, Lcom/htc/fm/FMRadioService$1;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 257
    iput v0, p0, Lcom/htc/fm/FMRadioService$1;->mVolumePercentBeforeMute:F

    .line 258
    iput v0, p0, Lcom/htc/fm/FMRadioService$1;->mVolumePercent:F

    .line 259
    iput v0, p0, Lcom/htc/fm/FMRadioService$1;->mVolumePercentUpLevel:F

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const-wide/16 v7, 0x64

    const/4 v6, 0x0

    const/high16 v5, 0x4180

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 263
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 265
    :pswitch_0
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMRadioService][FMTuner] mFMVolumeHandler - VOLUME_MUTE mFMVolume("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fm/FMRadioService$1;->this$0:Lcom/htc/fm/FMRadioService;

    #getter for: Lcom/htc/fm/FMRadioService;->mFMVolume:I
    invoke-static {v2}, Lcom/htc/fm/FMRadioService;->access$000(Lcom/htc/fm/FMRadioService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$1;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->getState()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 270
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$1;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->getCmdState()I

    move-result v0

    if-nez v0, :cond_2

    .line 271
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$1;->this$0:Lcom/htc/fm/FMRadioService;

    #getter for: Lcom/htc/fm/FMRadioService;->mFMVolume:I
    invoke-static {v0}, Lcom/htc/fm/FMRadioService;->access$000(Lcom/htc/fm/FMRadioService;)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v5

    iput v0, p0, Lcom/htc/fm/FMRadioService$1;->mVolumePercentBeforeMute:F

    .line 272
    iput v4, p0, Lcom/htc/fm/FMRadioService$1;->mVolumePercent:F

    .line 273
    iget v0, p0, Lcom/htc/fm/FMRadioService$1;->mVolumePercentBeforeMute:F

    const v1, 0x3dcccccd

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/htc/fm/FMRadioService$1;->mVolumePercentUpLevel:F

    .line 274
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMRadioService][FMTuner] mFMVolumeHandler - VOLUME_RESUME VolumeLevel("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/fm/FMRadioService$1;->mVolumePercentUpLevel:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") To("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/fm/FMRadioService$1;->mVolumePercentBeforeMute:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget v0, p0, Lcom/htc/fm/FMRadioService$1;->mVolumePercentUpLevel:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_1

    .line 276
    const v0, 0x3c23d70a

    iput v0, p0, Lcom/htc/fm/FMRadioService$1;->mVolumePercentUpLevel:F

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$1;->this$0:Lcom/htc/fm/FMRadioService;

    #getter for: Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;
    invoke-static {v0}, Lcom/htc/fm/FMRadioService;->access$100(Lcom/htc/fm/FMRadioService;)Lcom/htc/fm/FMTunerController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$1;->this$0:Lcom/htc/fm/FMRadioService;

    #getter for: Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;
    invoke-static {v0}, Lcom/htc/fm/FMRadioService;->access$100(Lcom/htc/fm/FMRadioService;)Lcom/htc/fm/FMTunerController;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/htc/fm/FMTunerController;->setVolume(I)V

    goto/16 :goto_0

    .line 282
    :cond_2
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$1;->this$0:Lcom/htc/fm/FMRadioService;

    #getter for: Lcom/htc/fm/FMRadioService;->mFMVolumeHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/fm/FMRadioService;->access$200(Lcom/htc/fm/FMRadioService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 286
    :pswitch_1
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMRadioService][FMTuner] mFMVolumeHandler - VOLUME_RESUME mVolumePercent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/fm/FMRadioService$1;->mVolumePercent:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$1;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->getState()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 291
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$1;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->getCmdState()I

    move-result v0

    if-nez v0, :cond_4

    .line 292
    iget v0, p0, Lcom/htc/fm/FMRadioService$1;->mVolumePercent:F

    iget v1, p0, Lcom/htc/fm/FMRadioService$1;->mVolumePercentUpLevel:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/htc/fm/FMRadioService$1;->mVolumePercent:F

    .line 293
    iget v0, p0, Lcom/htc/fm/FMRadioService$1;->mVolumePercent:F

    iget v1, p0, Lcom/htc/fm/FMRadioService$1;->mVolumePercentBeforeMute:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    .line 294
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$1;->this$0:Lcom/htc/fm/FMRadioService;

    #getter for: Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;
    invoke-static {v0}, Lcom/htc/fm/FMRadioService;->access$100(Lcom/htc/fm/FMRadioService;)Lcom/htc/fm/FMTunerController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$1;->this$0:Lcom/htc/fm/FMRadioService;

    #getter for: Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;
    invoke-static {v0}, Lcom/htc/fm/FMRadioService;->access$100(Lcom/htc/fm/FMRadioService;)Lcom/htc/fm/FMTunerController;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/fm/FMRadioService$1;->this$0:Lcom/htc/fm/FMRadioService;

    #getter for: Lcom/htc/fm/FMRadioService;->mFMVolume:I
    invoke-static {v1}, Lcom/htc/fm/FMRadioService;->access$000(Lcom/htc/fm/FMRadioService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/fm/FMTunerController;->setVolume(I)V

    goto/16 :goto_0

    .line 299
    :cond_3
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$1;->this$0:Lcom/htc/fm/FMRadioService;

    #getter for: Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;
    invoke-static {v0}, Lcom/htc/fm/FMRadioService;->access$100(Lcom/htc/fm/FMRadioService;)Lcom/htc/fm/FMTunerController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$1;->this$0:Lcom/htc/fm/FMRadioService;

    #getter for: Lcom/htc/fm/FMRadioService;->mFMController:Lcom/htc/fm/FMTunerController;
    invoke-static {v0}, Lcom/htc/fm/FMRadioService;->access$100(Lcom/htc/fm/FMRadioService;)Lcom/htc/fm/FMTunerController;

    move-result-object v0

    iget v1, p0, Lcom/htc/fm/FMRadioService$1;->mVolumePercent:F

    mul-float/2addr v1, v5

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/fm/FMTunerController;->setVolume(I)V

    .line 301
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$1;->this$0:Lcom/htc/fm/FMRadioService;

    #getter for: Lcom/htc/fm/FMRadioService;->mFMVolumeHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/fm/FMRadioService;->access$200(Lcom/htc/fm/FMRadioService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 304
    :cond_4
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$1;->this$0:Lcom/htc/fm/FMRadioService;

    #getter for: Lcom/htc/fm/FMRadioService;->mFMVolumeHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/fm/FMRadioService;->access$200(Lcom/htc/fm/FMRadioService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 263
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
