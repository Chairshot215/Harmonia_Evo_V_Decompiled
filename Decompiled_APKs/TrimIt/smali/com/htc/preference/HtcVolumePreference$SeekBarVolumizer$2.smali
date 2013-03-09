.class Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$2;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 398
    iput-object p1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$2;->this$1:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .parameter "selfChange"

    .prologue
    const/4 v5, 0x0

    .line 401
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 403
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$2;->this$1:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    #getter for: Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->access$900(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 404
    invoke-static {}, Lcom/htc/preference/HtcVolumePreference;->access$1000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$2;->this$1:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    #getter for: Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->access$200(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVolumeObserver onChange mSeekBar.getProgress() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$2;->this$1:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    #getter for: Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v2}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->access$900(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , system settings "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$2;->this$1:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    #getter for: Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->access$000(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$2;->this$1:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    #getter for: Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I
    invoke-static {v4}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->access$700(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)I

    move-result v4

    aget-object v3, v3, v4

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sStreamType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$2;->this$1:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    #getter for: Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I
    invoke-static {v2}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->access$700(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$2;->this$1:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    #getter for: Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->access$900(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$2;->this$1:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    #getter for: Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->access$000(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$2;->this$1:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    #getter for: Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I
    invoke-static {v3}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->access$700(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 409
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$2;->this$1:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    #getter for: Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->access$900(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$2;->this$1:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    #getter for: Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->access$000(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$2;->this$1:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    #getter for: Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I
    invoke-static {v3}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->access$700(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 412
    :cond_1
    return-void
.end method
