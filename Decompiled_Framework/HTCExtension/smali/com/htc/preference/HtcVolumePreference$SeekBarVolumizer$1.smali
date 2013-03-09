.class Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$1;
.super Landroid/os/Handler;
.source "HtcVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;


# direct methods
.method constructor <init>(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$1;->this$1:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$1;->this$1:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    iget-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$1;->this$1:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    #getter for: Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->access$800(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$1;->this$1:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    #getter for: Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I
    invoke-static {v2}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->access$700(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    #setter for: Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I
    invoke-static {v0, v1}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->access$602(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;I)I

    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$1;->this$1:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    #getter for: Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->access$200(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delay update message mOriginalStreamVolume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$1;->this$1:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    #getter for: Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I
    invoke-static {v2}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->access$600(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sStreamType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$1;->this$1:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    #getter for: Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I
    invoke-static {v2}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->access$700(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$1;->this$1:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    #getter for: Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->access$900(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$1;->this$1:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    #getter for: Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I
    invoke-static {v1}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->access$600(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method
