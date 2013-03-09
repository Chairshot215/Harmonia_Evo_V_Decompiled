.class Lcom/htc/WifiRouter/WifiRouter$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/WifiRouter/WifiRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/WifiRouter/WifiRouter;


# direct methods
.method constructor <init>(Lcom/htc/WifiRouter/WifiRouter;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/htc/WifiRouter/WifiRouter$2;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const v8, 0x7f090025

    const/16 v7, 0xe

    const/4 v6, -0x1

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 156
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 159
    const-string v5, "wifi_state"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 162
    .local v3, state:I
    const/16 v5, 0xb

    if-eq v3, v5, :cond_0

    if-ne v3, v7, :cond_4

    .line 163
    :cond_0
    iget-object v5, p0, Lcom/htc/WifiRouter/WifiRouter$2;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #getter for: Lcom/htc/WifiRouter/WifiRouter;->mHotspotStatus:Lcom/htc/widget/HtcListItem2LineText;
    invoke-static {v5}, Lcom/htc/WifiRouter/WifiRouter;->access$100(Lcom/htc/WifiRouter/WifiRouter;)Lcom/htc/widget/HtcListItem2LineText;

    move-result-object v5

    const v6, 0x7f090022

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(I)V

    .line 164
    iget-object v5, p0, Lcom/htc/WifiRouter/WifiRouter$2;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #setter for: Lcom/htc/WifiRouter/WifiRouter;->mPassGuild:Z
    invoke-static {v5, v4}, Lcom/htc/WifiRouter/WifiRouter;->access$202(Lcom/htc/WifiRouter/WifiRouter;Z)Z

    .line 165
    iget-object v5, p0, Lcom/htc/WifiRouter/WifiRouter$2;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #setter for: Lcom/htc/WifiRouter/WifiRouter;->mState:Z
    invoke-static {v5, v4}, Lcom/htc/WifiRouter/WifiRouter;->access$302(Lcom/htc/WifiRouter/WifiRouter;Z)Z

    .line 166
    iget-object v5, p0, Lcom/htc/WifiRouter/WifiRouter$2;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #getter for: Lcom/htc/WifiRouter/WifiRouter;->mDisabledInAirpalneMode:Z
    invoke-static {v5}, Lcom/htc/WifiRouter/WifiRouter;->access$400(Lcom/htc/WifiRouter/WifiRouter;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 168
    iget-object v5, p0, Lcom/htc/WifiRouter/WifiRouter$2;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #getter for: Lcom/htc/WifiRouter/WifiRouter;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/WifiRouter/WifiRouter;->access$500(Lcom/htc/WifiRouter/WifiRouter;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v4}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_2

    .line 170
    .local v1, enabled:Z
    :goto_0
    iget-object v5, p0, Lcom/htc/WifiRouter/WifiRouter$2;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #calls: Lcom/htc/WifiRouter/WifiRouter;->setSettingFieldEnable(Z)V
    invoke-static {v5, v1}, Lcom/htc/WifiRouter/WifiRouter;->access$600(Lcom/htc/WifiRouter/WifiRouter;Z)V

    .line 171
    iget-object v5, p0, Lcom/htc/WifiRouter/WifiRouter$2;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #getter for: Lcom/htc/WifiRouter/WifiRouter;->mPowerBtn:Lcom/htc/widget/HtcListItemCheckBox;
    invoke-static {v5}, Lcom/htc/WifiRouter/WifiRouter;->access$700(Lcom/htc/WifiRouter/WifiRouter;)Lcom/htc/widget/HtcListItemCheckBox;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 172
    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter$2;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #calls: Lcom/htc/WifiRouter/WifiRouter;->setSettingFieldAirplane(Z)V
    invoke-static {v4, v1}, Lcom/htc/WifiRouter/WifiRouter;->access$800(Lcom/htc/WifiRouter/WifiRouter;Z)V

    .line 176
    .end local v1           #enabled:Z
    :goto_1
    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter$2;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #calls: Lcom/htc/WifiRouter/WifiRouter;->dismissProgressDialog()V
    invoke-static {v4}, Lcom/htc/WifiRouter/WifiRouter;->access$900(Lcom/htc/WifiRouter/WifiRouter;)V

    .line 227
    .end local v3           #state:I
    :cond_1
    :goto_2
    return-void

    .restart local v3       #state:I
    :cond_2
    move v1, v4

    .line 168
    goto :goto_0

    .line 174
    :cond_3
    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter$2;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #calls: Lcom/htc/WifiRouter/WifiRouter;->setSettingFieldEnable(Z)V
    invoke-static {v4, v1}, Lcom/htc/WifiRouter/WifiRouter;->access$600(Lcom/htc/WifiRouter/WifiRouter;Z)V

    goto :goto_1

    .line 177
    :cond_4
    const/16 v5, 0xc

    if-ne v3, v5, :cond_6

    .line 178
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0x51

    if-ne v5, v6, :cond_5

    .line 179
    iget-object v5, p0, Lcom/htc/WifiRouter/WifiRouter$2;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #getter for: Lcom/htc/WifiRouter/WifiRouter;->mHotspotStatus:Lcom/htc/widget/HtcListItem2LineText;
    invoke-static {v5}, Lcom/htc/WifiRouter/WifiRouter;->access$100(Lcom/htc/WifiRouter/WifiRouter;)Lcom/htc/widget/HtcListItem2LineText;

    move-result-object v5

    const v6, 0x7f090024

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(I)V

    .line 183
    :goto_3
    iget-object v5, p0, Lcom/htc/WifiRouter/WifiRouter$2;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #calls: Lcom/htc/WifiRouter/WifiRouter;->setSettingFieldEnable(Z)V
    invoke-static {v5, v4}, Lcom/htc/WifiRouter/WifiRouter;->access$600(Lcom/htc/WifiRouter/WifiRouter;Z)V

    .line 184
    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter$2;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #setter for: Lcom/htc/WifiRouter/WifiRouter;->mState:Z
    invoke-static {v4, v1}, Lcom/htc/WifiRouter/WifiRouter;->access$302(Lcom/htc/WifiRouter/WifiRouter;Z)Z

    .line 185
    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter$2;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #calls: Lcom/htc/WifiRouter/WifiRouter;->recoveryAirplaneModeUI()V
    invoke-static {v4}, Lcom/htc/WifiRouter/WifiRouter;->access$1000(Lcom/htc/WifiRouter/WifiRouter;)V

    goto :goto_2

    .line 181
    :cond_5
    iget-object v5, p0, Lcom/htc/WifiRouter/WifiRouter$2;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #getter for: Lcom/htc/WifiRouter/WifiRouter;->mHotspotStatus:Lcom/htc/widget/HtcListItem2LineText;
    invoke-static {v5}, Lcom/htc/WifiRouter/WifiRouter;->access$100(Lcom/htc/WifiRouter/WifiRouter;)Lcom/htc/widget/HtcListItem2LineText;

    move-result-object v5

    const v6, 0x7f090023

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(I)V

    goto :goto_3

    .line 186
    :cond_6
    const/16 v4, 0xd

    if-ne v3, v4, :cond_1

    .line 187
    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter$2;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    iget-object v5, p0, Lcom/htc/WifiRouter/WifiRouter$2;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #calls: Lcom/htc/WifiRouter/WifiRouter;->getActiveNetworkType()I
    invoke-static {v5}, Lcom/htc/WifiRouter/WifiRouter;->access$1200(Lcom/htc/WifiRouter/WifiRouter;)I

    move-result v5

    #setter for: Lcom/htc/WifiRouter/WifiRouter;->mActiveDefaultNetwork:I
    invoke-static {v4, v5}, Lcom/htc/WifiRouter/WifiRouter;->access$1102(Lcom/htc/WifiRouter/WifiRouter;I)I

    .line 189
    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter$2;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #getter for: Lcom/htc/WifiRouter/WifiRouter;->mActiveDefaultNetwork:I
    invoke-static {v4}, Lcom/htc/WifiRouter/WifiRouter;->access$1100(Lcom/htc/WifiRouter/WifiRouter;)I

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter$2;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #getter for: Lcom/htc/WifiRouter/WifiRouter;->mActiveDefaultNetwork:I
    invoke-static {v4}, Lcom/htc/WifiRouter/WifiRouter;->access$1100(Lcom/htc/WifiRouter/WifiRouter;)I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_7

    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter$2;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #getter for: Lcom/htc/WifiRouter/WifiRouter;->mActiveDefaultNetwork:I
    invoke-static {v4}, Lcom/htc/WifiRouter/WifiRouter;->access$1100(Lcom/htc/WifiRouter/WifiRouter;)I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_8

    .line 192
    :cond_7
    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter$2;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #getter for: Lcom/htc/WifiRouter/WifiRouter;->mHotspotStatus:Lcom/htc/widget/HtcListItem2LineText;
    invoke-static {v4}, Lcom/htc/WifiRouter/WifiRouter;->access$100(Lcom/htc/WifiRouter/WifiRouter;)Lcom/htc/widget/HtcListItem2LineText;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(I)V

    .line 196
    :goto_4
    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter$2;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #setter for: Lcom/htc/WifiRouter/WifiRouter;->mState:Z
    invoke-static {v4, v1}, Lcom/htc/WifiRouter/WifiRouter;->access$302(Lcom/htc/WifiRouter/WifiRouter;Z)Z

    .line 197
    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter$2;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #calls: Lcom/htc/WifiRouter/WifiRouter;->dismissProgressDialog()V
    invoke-static {v4}, Lcom/htc/WifiRouter/WifiRouter;->access$900(Lcom/htc/WifiRouter/WifiRouter;)V

    .line 198
    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter$2;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #getter for: Lcom/htc/WifiRouter/WifiRouter;->mPassGuild:Z
    invoke-static {v4}, Lcom/htc/WifiRouter/WifiRouter;->access$200(Lcom/htc/WifiRouter/WifiRouter;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 199
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    .local v2, gint:Landroid/content/Intent;
    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter$2;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    const-class v5, Lcom/htc/WifiRouter/Guild;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 201
    const-string v4, "ssid"

    iget-object v5, p0, Lcom/htc/WifiRouter/WifiRouter$2;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #getter for: Lcom/htc/WifiRouter/WifiRouter;->mSsid:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/htc/WifiRouter/WifiRouter;->access$1300(Lcom/htc/WifiRouter/WifiRouter;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter$2;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #getter for: Lcom/htc/WifiRouter/WifiRouter;->mSecurityType:Lcom/htc/widget/HtcSpinner;
    invoke-static {v4}, Lcom/htc/WifiRouter/WifiRouter;->access$1400(Lcom/htc/WifiRouter/WifiRouter;)Lcom/htc/widget/HtcSpinner;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_9

    .line 203
    const-string v4, "key"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    :goto_5
    const-string v4, "cancelable"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 208
    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter$2;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    invoke-virtual {v4, v2, v1}, Lcom/htc/WifiRouter/WifiRouter;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    .line 194
    .end local v2           #gint:Landroid/content/Intent;
    :cond_8
    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter$2;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #getter for: Lcom/htc/WifiRouter/WifiRouter;->mHotspotStatus:Lcom/htc/widget/HtcListItem2LineText;
    invoke-static {v4}, Lcom/htc/WifiRouter/WifiRouter;->access$100(Lcom/htc/WifiRouter/WifiRouter;)Lcom/htc/widget/HtcListItem2LineText;

    move-result-object v4

    const v5, 0x7f09005c

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(I)V

    goto :goto_4

    .line 205
    .restart local v2       #gint:Landroid/content/Intent;
    :cond_9
    const-string v4, "key"

    iget-object v5, p0, Lcom/htc/WifiRouter/WifiRouter$2;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #getter for: Lcom/htc/WifiRouter/WifiRouter;->mPassWord:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/htc/WifiRouter/WifiRouter;->access$1500(Lcom/htc/WifiRouter/WifiRouter;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_5

    .line 213
    .end local v2           #gint:Landroid/content/Intent;
    .end local v3           #state:I
    :cond_a
    const-string v4, "android.net.hotspot.ASSOCLIST"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 214
    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter$2;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #calls: Lcom/htc/WifiRouter/WifiRouter;->updateUserCountUI()V
    invoke-static {v4}, Lcom/htc/WifiRouter/WifiRouter;->access$1600(Lcom/htc/WifiRouter/WifiRouter;)V

    goto/16 :goto_2

    .line 216
    :cond_b
    const-string v4, "com.htc.htcconnectivity.ActiveWAN"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 217
    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter$2;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    const-string v5, "networkType"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    #setter for: Lcom/htc/WifiRouter/WifiRouter;->mActiveDefaultNetwork:I
    invoke-static {v4, v5}, Lcom/htc/WifiRouter/WifiRouter;->access$1102(Lcom/htc/WifiRouter/WifiRouter;I)I

    .line 219
    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter$2;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #getter for: Lcom/htc/WifiRouter/WifiRouter;->mState:Z
    invoke-static {v4}, Lcom/htc/WifiRouter/WifiRouter;->access$300(Lcom/htc/WifiRouter/WifiRouter;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 220
    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter$2;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #getter for: Lcom/htc/WifiRouter/WifiRouter;->mActiveDefaultNetwork:I
    invoke-static {v4}, Lcom/htc/WifiRouter/WifiRouter;->access$1100(Lcom/htc/WifiRouter/WifiRouter;)I

    move-result v4

    if-eq v4, v6, :cond_c

    .line 221
    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter$2;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #getter for: Lcom/htc/WifiRouter/WifiRouter;->mHotspotStatus:Lcom/htc/widget/HtcListItem2LineText;
    invoke-static {v4}, Lcom/htc/WifiRouter/WifiRouter;->access$100(Lcom/htc/WifiRouter/WifiRouter;)Lcom/htc/widget/HtcListItem2LineText;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(I)V

    goto/16 :goto_2

    .line 223
    :cond_c
    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter$2;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #getter for: Lcom/htc/WifiRouter/WifiRouter;->mHotspotStatus:Lcom/htc/widget/HtcListItem2LineText;
    invoke-static {v4}, Lcom/htc/WifiRouter/WifiRouter;->access$100(Lcom/htc/WifiRouter/WifiRouter;)Lcom/htc/widget/HtcListItem2LineText;

    move-result-object v4

    const v5, 0x7f09005c

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(I)V

    goto/16 :goto_2
.end method
