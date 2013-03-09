.class Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$AudioFocusChangeListener;
.super Ljava/lang/Object;
.source "HtcVolumePreference.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioFocusChangeListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;


# direct methods
.method private constructor <init>(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$AudioFocusChangeListener;->this$1:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;Lcom/htc/preference/HtcVolumePreference$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$AudioFocusChangeListener;-><init>(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3

    iget-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$AudioFocusChangeListener;->this$1:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    #getter for: Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->access$000(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$AudioFocusChangeListener;->this$1:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    #getter for: Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->LOG_FLAG:Z
    invoke-static {v1}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->access$100(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$AudioFocusChangeListener;->this$1:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    #getter for: Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->access$200(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "failed to call getSystemService(TELEPHONY_SERVICE)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$AudioFocusChangeListener;->this$1:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    #getter for: Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->LOG_FLAG:Z
    invoke-static {v1}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->access$100(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$AudioFocusChangeListener;->this$1:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    #getter for: Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->access$200(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "receive AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK, do nothing"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$AudioFocusChangeListener;->this$1:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    #getter for: Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->LOG_FLAG:Z
    invoke-static {v1}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->access$100(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$AudioFocusChangeListener;->this$1:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    #getter for: Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->access$200(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "receive AUDIOFOCUS_LOSS or AUDIOFOCUS_LOSS_TRANSIENT"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$AudioFocusChangeListener;->this$1:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    invoke-virtual {v1}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->stopSample()V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$AudioFocusChangeListener;->this$1:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    #getter for: Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->LOG_FLAG:Z
    invoke-static {v1}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->access$100(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$AudioFocusChangeListener;->this$1:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    #getter for: Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->access$200(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "receive AUDIOFOCUS_LOSS, do nothing"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
