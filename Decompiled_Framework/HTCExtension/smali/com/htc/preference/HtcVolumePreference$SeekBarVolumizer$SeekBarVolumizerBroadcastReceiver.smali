.class Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$SeekBarVolumizerBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HtcVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeekBarVolumizerBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;


# direct methods
.method private constructor <init>(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$SeekBarVolumizerBroadcastReceiver;->this$1:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;Lcom/htc/preference/HtcVolumePreference$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$SeekBarVolumizerBroadcastReceiver;-><init>(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "state"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$SeekBarVolumizerBroadcastReceiver;->this$1:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    #getter for: Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mDelayUpdateHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->access$500(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
