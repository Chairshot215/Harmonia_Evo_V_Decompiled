.class Lcom/android/settings/framework/activity/powersaver/PowersaverSettings$4;
.super Landroid/os/Handler;
.source "PowersaverSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 438
    iput-object p1, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings$4;->this$0:Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 440
    const-string v0, "PowersaverSettings"

    const-string v1, "[PSaver]handleMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 451
    :goto_0
    return-void

    .line 443
    :pswitch_0
    const-string v0, "PowersaverSettings"

    const-string v1, "[PSaver]DISABLE_SETTINGS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings$4;->this$0:Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;

    #getter for: Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->mEnablePowersaverPref:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->access$300(Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 445
    iget-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings$4;->this$0:Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;

    #getter for: Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->access$400(Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xfa1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 448
    :pswitch_1
    const-string v0, "PowersaverSettings"

    const-string v1, "[PSaver]REVERT_SETTINGS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings$4;->this$0:Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;

    #getter for: Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->mEnablePowersaverPref:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->access$300(Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 441
    :pswitch_data_0
    .packed-switch 0xfa0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
