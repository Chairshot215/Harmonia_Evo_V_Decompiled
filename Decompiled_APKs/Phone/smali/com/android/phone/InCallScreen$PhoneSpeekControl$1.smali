.class final Lcom/android/phone/InCallScreen$PhoneSpeekControl$1;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen$PhoneSpeekControl;->initSpeekerControl(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7252
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 7256
    if-nez p2, :cond_0

    .line 7257
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 7258
    const/4 p2, 0x1

    .line 7261
    :cond_0
    #calls: Lcom/android/phone/InCallScreen$PhoneSpeekControl;->getAudioManager()Landroid/media/AudioManager;
    invoke-static {}, Lcom/android/phone/InCallScreen$PhoneSpeekControl;->access$4100()Landroid/media/AudioManager;

    move-result-object v0

    .line 7263
    .local v0, am:Landroid/media/AudioManager;
    #calls: Lcom/android/phone/InCallScreen$PhoneSpeekControl;->getCurrentStreamType()I
    invoke-static {}, Lcom/android/phone/InCallScreen$PhoneSpeekControl;->access$4200()I

    move-result v1

    .line 7264
    .local v1, streamType:I
    add-int/lit8 v2, p2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 7265
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 7271
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 7277
    return-void
.end method
