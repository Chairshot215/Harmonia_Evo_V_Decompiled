.class Lcom/android/settings/Power$3;
.super Landroid/os/Handler;
.source "Power.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Power;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/Power;


# direct methods
.method constructor <init>(Lcom/android/settings/Power;)V
    .locals 0
    .parameter

    .prologue
    .line 598
    iput-object p1, p0, Lcom/android/settings/Power$3;->this$0:Lcom/android/settings/Power;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 600
    const-string v0, "PowersaverSettings"

    const-string v1, "[PSaver]handleMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 621
    :cond_0
    :goto_0
    return-void

    .line 603
    :pswitch_0
    const-string v0, "PowersaverSettings"

    const-string v1, "[PSaver]DISABLE_SETTINGS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    iget-object v0, p0, Lcom/android/settings/Power$3;->this$0:Lcom/android/settings/Power;

    #getter for: Lcom/android/settings/Power;->mEnablePowersaverPref:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/Power;->access$000(Lcom/android/settings/Power;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 605
    iget-object v0, p0, Lcom/android/settings/Power$3;->this$0:Lcom/android/settings/Power;

    #getter for: Lcom/android/settings/Power;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/Power;->access$300(Lcom/android/settings/Power;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xfa1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 608
    :pswitch_1
    const-string v0, "PowersaverSettings"

    const-string v1, "[PSaver]REVERT_SETTINGS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-object v0, p0, Lcom/android/settings/Power$3;->this$0:Lcom/android/settings/Power;

    #getter for: Lcom/android/settings/Power;->mPlugState:Z
    invoke-static {v0}, Lcom/android/settings/Power;->access$200(Lcom/android/settings/Power;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/android/settings/Power$3;->this$0:Lcom/android/settings/Power;

    #getter for: Lcom/android/settings/Power;->mEnablePowersaverPref:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/Power;->access$000(Lcom/android/settings/Power;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 613
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/Power$3;->this$0:Lcom/android/settings/Power;

    #getter for: Lcom/android/settings/Power;->mEnablePowersaverPref:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/Power;->access$000(Lcom/android/settings/Power;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/android/settings/Power$3;->this$0:Lcom/android/settings/Power;

    #getter for: Lcom/android/settings/Power;->mEnablePowersaverPref:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/Power;->access$000(Lcom/android/settings/Power;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 617
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/Power$3;->this$0:Lcom/android/settings/Power;

    #getter for: Lcom/android/settings/Power;->mEnablePowersaverPref:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/Power;->access$000(Lcom/android/settings/Power;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/android/settings/Power$3;->this$0:Lcom/android/settings/Power;

    #getter for: Lcom/android/settings/Power;->mEnablePowersaverPref:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/Power;->access$000(Lcom/android/settings/Power;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 601
    :pswitch_data_0
    .packed-switch 0xfa0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
