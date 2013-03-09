.class Lcom/android/systemui/statusbar/preference/MobileNetwork$1;
.super Landroid/content/BroadcastReceiver;
.source "MobileNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/MobileNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/MobileNetwork;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v11, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    #calls: Lcom/android/systemui/statusbar/preference/MobileNetwork;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    invoke-static {p2}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$000(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v6

    const-string v8, "reason"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "apn"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "apnType"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v8, "networkUnvailable"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    iget-object v11, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    #calls: Lcom/android/systemui/statusbar/preference/MobileNetwork;->getPersistedMobileDataEnabled()Z
    invoke-static {v11}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$200(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Z

    move-result v11

    #setter for: Lcom/android/systemui/statusbar/preference/MobileNetwork;->mMobileDataEnabledSetting:Z
    invoke-static {v8, v11}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$102(Lcom/android/systemui/statusbar/preference/MobileNetwork;Z)Z

    if-eqz v1, :cond_6

    const-string v8, "default"

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "*"

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    #getter for: Lcom/android/systemui/statusbar/preference/MobileNetwork;->mMobileDataEnabledSetting:Z
    invoke-static {v8}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$100(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    #getter for: Lcom/android/systemui/statusbar/preference/MobileNetwork;->connectivity:Landroid/net/ConnectivityManager;
    invoke-static {v8}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$300(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Landroid/net/ConnectivityManager;

    move-result-object v8

    if-nez v8, :cond_0

    iget-object v11, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    iget-object v8, v8, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    const-string v12, "connectivity"

    invoke-virtual {v8, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/ConnectivityManager;

    #setter for: Lcom/android/systemui/statusbar/preference/MobileNetwork;->connectivity:Landroid/net/ConnectivityManager;
    invoke-static {v11, v8}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$302(Lcom/android/systemui/statusbar/preference/MobileNetwork;Landroid/net/ConnectivityManager;)Landroid/net/ConnectivityManager;

    :cond_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    #getter for: Lcom/android/systemui/statusbar/preference/MobileNetwork;->connectivity:Landroid/net/ConnectivityManager;
    invoke-static {v8}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$300(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Landroid/net/ConnectivityManager;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v8

    sget-object v11, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v8, v11, :cond_4

    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    iget-object v11, v8, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Lcom/htc/widget/HtcToggleButton;

    const-string v8, "radioTurnedOff"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    move v8, v9

    :goto_0
    invoke-virtual {v11, v8}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    iget-object v9, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    #calls: Lcom/android/systemui/statusbar/preference/MobileNetwork;->isEnabledByDependency()Z
    invoke-static {v9}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$400(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->setEnabled(Z)V

    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->CheckMNetworkFunction()V

    :cond_2
    :goto_2
    return-void

    :cond_3
    move v8, v10

    goto :goto_0

    :cond_4
    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    #getter for: Lcom/android/systemui/statusbar/preference/MobileNetwork;->mMobileDataInService:Z
    invoke-static {v8}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$500(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    iget-object v8, v8, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    iget-object v9, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    #calls: Lcom/android/systemui/statusbar/preference/MobileNetwork;->isEnabledByDependency()Z
    invoke-static {v9}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$400(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->setEnabled(Z)V

    goto :goto_1

    :cond_5
    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    iget-object v8, v8, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v8, v10}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    invoke-virtual {v8, v10}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->setEnabled(Z)V

    goto :goto_1

    :cond_6
    if-nez v1, :cond_7

    const-string v8, "MobileNetworkStatusBarPreference"

    const-string v9, "capability is null , return."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->CheckMNetworkFunction()V

    goto :goto_2

    :cond_7
    sget-object v8, Lcom/android/systemui/statusbar/preference/MobileNetwork$4;->$SwitchMap$com$android$internal$telephony$Phone$DataState:[I

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone$DataState;->ordinal()I

    move-result v11

    aget v8, v8, v11

    packed-switch v8, :pswitch_data_0

    :cond_8
    :goto_3
    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->CheckMNetworkFunction()V

    goto :goto_2

    :pswitch_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    #getter for: Lcom/android/systemui/statusbar/preference/MobileNetwork;->mMobileDataEnabledSetting:Z
    invoke-static {v8}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$100(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {v10}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$602(Z)Z

    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    iget-object v8, v8, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Lcom/htc/widget/HtcToggleButton;

    const-string v11, "radioTurnedOff"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    iget-object v11, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    #getter for: Lcom/android/systemui/statusbar/preference/MobileNetwork;->mMobileDataEnabledSetting:Z
    invoke-static {v11}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$100(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Z

    move-result v11

    if-eqz v11, :cond_9

    move v10, v9

    :cond_9
    invoke-virtual {v8, v10}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->setEnabled(Z)V

    goto :goto_3

    :pswitch_1
    invoke-static {v10}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$602(Z)Z

    const/4 v2, 0x1

    if-eqz v7, :cond_c

    const-string v8, "radioTurnedOff"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    const/4 v2, 0x0

    :cond_a
    :goto_4
    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    #getter for: Lcom/android/systemui/statusbar/preference/MobileNetwork;->mMobileDataInService:Z
    invoke-static {v8}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$500(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    iget-object v8, v8, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Lcom/htc/widget/HtcToggleButton;

    iget-object v11, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    #getter for: Lcom/android/systemui/statusbar/preference/MobileNetwork;->mMobileDataEnabledSetting:Z
    invoke-static {v11}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$100(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Z

    move-result v11

    if-eqz v11, :cond_d

    if-eqz v2, :cond_d

    :goto_5
    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    iget-object v9, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    #calls: Lcom/android/systemui/statusbar/preference/MobileNetwork;->isEnabledByDependency()Z
    invoke-static {v9}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$400(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->setEnabled(Z)V

    goto :goto_3

    :cond_b
    const-string v8, "dataDetached"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    #calls: Lcom/android/systemui/statusbar/preference/MobileNetwork;->getPersistedAirplaneModeEnabled()Z
    invoke-static {v8}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$700(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/4 v2, 0x0

    goto :goto_4

    :cond_c
    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    iget-object v8, v8, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Lcom/htc/widget/HtcToggleButton;

    iget-object v11, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    #getter for: Lcom/android/systemui/statusbar/preference/MobileNetwork;->mMobileDataEnabledSetting:Z
    invoke-static {v11}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$100(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Z

    move-result v11

    invoke-virtual {v8, v11}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    const-string v8, "radioTurnedOff"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/4 v2, 0x0

    goto :goto_4

    :cond_d
    move v9, v10

    goto :goto_5

    :cond_e
    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    iget-object v8, v8, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v8, v10}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    invoke-virtual {v8, v10}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->setEnabled(Z)V

    goto/16 :goto_3

    :pswitch_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    #getter for: Lcom/android/systemui/statusbar/preference/MobileNetwork;->mMobileDataEnabledSetting:Z
    invoke-static {v8}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$100(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {v9}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$602(Z)Z

    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    iget-object v8, v8, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Lcom/htc/widget/HtcToggleButton;

    const-string v11, "radioTurnedOff"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f

    iget-object v11, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    #getter for: Lcom/android/systemui/statusbar/preference/MobileNetwork;->mMobileDataEnabledSetting:Z
    invoke-static {v11}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$100(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Z

    move-result v11

    if-eqz v11, :cond_f

    :goto_6
    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    invoke-virtual {v8, v10}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->setEnabled(Z)V

    goto/16 :goto_3

    :cond_f
    move v9, v10

    goto :goto_6

    :pswitch_3
    invoke-static {v10}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$602(Z)Z

    goto/16 :goto_3

    :cond_10
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.intent.action.MOBILEDATA_MODE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v8, "state"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v8, "sender"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "MobileNetwork"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    iget-object v9, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    #calls: Lcom/android/systemui/statusbar/preference/MobileNetwork;->getPersistedMobileDataEnabled()Z
    invoke-static {v9}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$200(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Z

    move-result v9

    #setter for: Lcom/android/systemui/statusbar/preference/MobileNetwork;->mMobileDataEnabledSetting:Z
    invoke-static {v8, v9}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$102(Lcom/android/systemui/statusbar/preference/MobileNetwork;Z)Z

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
