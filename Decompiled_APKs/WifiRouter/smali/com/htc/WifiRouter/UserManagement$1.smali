.class Lcom/htc/WifiRouter/UserManagement$1;
.super Landroid/content/BroadcastReceiver;
.source "UserManagement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/WifiRouter/UserManagement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/WifiRouter/UserManagement;


# direct methods
.method constructor <init>(Lcom/htc/WifiRouter/UserManagement;)V
    .locals 0
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/htc/WifiRouter/UserManagement$1;->this$0:Lcom/htc/WifiRouter/UserManagement;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const v10, 0x1020014

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 204
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, action:Ljava/lang/String;
    const-string v5, "android.net.hotspot.ASSOCLIST"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 207
    iget-object v5, p0, Lcom/htc/WifiRouter/UserManagement$1;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #calls: Lcom/htc/WifiRouter/UserManagement;->updateIPtable(Z)V
    invoke-static {v5, v8}, Lcom/htc/WifiRouter/UserManagement;->access$400(Lcom/htc/WifiRouter/UserManagement;Z)V

    .line 208
    iget-object v5, p0, Lcom/htc/WifiRouter/UserManagement$1;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->allowed_only:Z
    invoke-static {v5}, Lcom/htc/WifiRouter/UserManagement;->access$500(Lcom/htc/WifiRouter/UserManagement;)Z

    move-result v5

    if-ne v5, v8, :cond_1

    .line 210
    iget-object v5, p0, Lcom/htc/WifiRouter/UserManagement$1;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #calls: Lcom/htc/WifiRouter/UserManagement;->updateWlistView()V
    invoke-static {v5}, Lcom/htc/WifiRouter/UserManagement;->access$600(Lcom/htc/WifiRouter/UserManagement;)V

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v5, p0, Lcom/htc/WifiRouter/UserManagement$1;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #calls: Lcom/htc/WifiRouter/UserManagement;->relayoutDeviceList()V
    invoke-static {v5}, Lcom/htc/WifiRouter/UserManagement;->access$700(Lcom/htc/WifiRouter/UserManagement;)V

    goto :goto_0

    .line 214
    :cond_2
    const-string v5, "android.net.hotspot.connecitonrequest"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 215
    const-string v5, "hotspot_block_mac"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 216
    .local v2, mac:Ljava/lang/String;
    const-string v5, "hotspot_lastest_time_of_request"

    const-wide/16 v6, -0x1

    invoke-virtual {p2, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 218
    .local v3, time:J
    iget-object v5, p0, Lcom/htc/WifiRouter/UserManagement$1;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #calls: Lcom/htc/WifiRouter/UserManagement;->relayoutRequestList(Ljava/lang/String;)V
    invoke-static {v5, v2}, Lcom/htc/WifiRouter/UserManagement;->access$800(Lcom/htc/WifiRouter/UserManagement;Ljava/lang/String;)V

    goto :goto_0

    .line 219
    .end local v2           #mac:Ljava/lang/String;
    .end local v3           #time:J
    :cond_3
    const-string v5, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 220
    iget-object v5, p0, Lcom/htc/WifiRouter/UserManagement$1;->this$0:Lcom/htc/WifiRouter/UserManagement;

    const-string v6, "wifi_state"

    const/16 v7, 0xe

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    #setter for: Lcom/htc/WifiRouter/UserManagement;->mWifiApState:I
    invoke-static {v5, v6}, Lcom/htc/WifiRouter/UserManagement;->access$902(Lcom/htc/WifiRouter/UserManagement;I)I

    .line 222
    iget-object v5, p0, Lcom/htc/WifiRouter/UserManagement$1;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->mWifiApState:I
    invoke-static {v5}, Lcom/htc/WifiRouter/UserManagement;->access$900(Lcom/htc/WifiRouter/UserManagement;)I

    move-result v5

    const/16 v6, 0xc

    if-eq v5, v6, :cond_4

    iget-object v5, p0, Lcom/htc/WifiRouter/UserManagement$1;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->mWifiApState:I
    invoke-static {v5}, Lcom/htc/WifiRouter/UserManagement;->access$900(Lcom/htc/WifiRouter/UserManagement;)I

    move-result v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_5

    .line 223
    :cond_4
    iget-object v5, p0, Lcom/htc/WifiRouter/UserManagement$1;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->mAllowUsersGroup:Lcom/htc/widget/HtcListItem;
    invoke-static {v5}, Lcom/htc/WifiRouter/UserManagement;->access$1000(Lcom/htc/WifiRouter/UserManagement;)Lcom/htc/widget/HtcListItem;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/htc/widget/HtcListItem;->setEnabled(Z)V

    .line 224
    iget-object v5, p0, Lcom/htc/WifiRouter/UserManagement$1;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->mMaxConnection:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/htc/WifiRouter/UserManagement;->access$1100(Lcom/htc/WifiRouter/UserManagement;)Landroid/widget/TextView;

    move-result-object v5

    const v6, -0x787879

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 225
    iget-object v5, p0, Lcom/htc/WifiRouter/UserManagement$1;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->mMaxCount:Lcom/htc/widget/HtcSpinner;
    invoke-static {v5}, Lcom/htc/WifiRouter/UserManagement;->access$1200(Lcom/htc/WifiRouter/UserManagement;)Lcom/htc/widget/HtcSpinner;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/htc/widget/HtcSpinner;->setEnabled(Z)V

    .line 226
    iget-object v5, p0, Lcom/htc/WifiRouter/UserManagement$1;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->mMaxCount:Lcom/htc/widget/HtcSpinner;
    invoke-static {v5}, Lcom/htc/WifiRouter/UserManagement;->access$1200(Lcom/htc/WifiRouter/UserManagement;)Lcom/htc/widget/HtcSpinner;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/htc/widget/HtcSpinner;->setFocusable(Z)V

    .line 227
    iget-object v5, p0, Lcom/htc/WifiRouter/UserManagement$1;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->mMaxCount:Lcom/htc/widget/HtcSpinner;
    invoke-static {v5}, Lcom/htc/WifiRouter/UserManagement;->access$1200(Lcom/htc/WifiRouter/UserManagement;)Lcom/htc/widget/HtcSpinner;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcSpinner;->getSelectedView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 228
    iget-object v5, p0, Lcom/htc/WifiRouter/UserManagement$1;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->mMaxCount:Lcom/htc/widget/HtcSpinner;
    invoke-static {v5}, Lcom/htc/WifiRouter/UserManagement;->access$1200(Lcom/htc/WifiRouter/UserManagement;)Lcom/htc/widget/HtcSpinner;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcSpinner;->getSelectedView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object v0, v5

    check-cast v0, Landroid/widget/TextView;

    .line 229
    .local v0, T1:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_0

    .line 234
    .end local v0           #T1:Landroid/widget/TextView;
    :cond_5
    iget-object v5, p0, Lcom/htc/WifiRouter/UserManagement$1;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->mAllowUsersGroup:Lcom/htc/widget/HtcListItem;
    invoke-static {v5}, Lcom/htc/WifiRouter/UserManagement;->access$1000(Lcom/htc/WifiRouter/UserManagement;)Lcom/htc/widget/HtcListItem;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcListItem;->setEnabled(Z)V

    .line 235
    iget-object v5, p0, Lcom/htc/WifiRouter/UserManagement$1;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->mMaxConnection:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/htc/WifiRouter/UserManagement;->access$1100(Lcom/htc/WifiRouter/UserManagement;)Landroid/widget/TextView;

    move-result-object v5

    const/high16 v6, -0x100

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 236
    iget-object v5, p0, Lcom/htc/WifiRouter/UserManagement$1;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->mMaxCount:Lcom/htc/widget/HtcSpinner;
    invoke-static {v5}, Lcom/htc/WifiRouter/UserManagement;->access$1200(Lcom/htc/WifiRouter/UserManagement;)Lcom/htc/widget/HtcSpinner;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcSpinner;->setEnabled(Z)V

    .line 237
    iget-object v5, p0, Lcom/htc/WifiRouter/UserManagement$1;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->mMaxCount:Lcom/htc/widget/HtcSpinner;
    invoke-static {v5}, Lcom/htc/WifiRouter/UserManagement;->access$1200(Lcom/htc/WifiRouter/UserManagement;)Lcom/htc/widget/HtcSpinner;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcSpinner;->setFocusable(Z)V

    .line 238
    iget-object v5, p0, Lcom/htc/WifiRouter/UserManagement$1;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->mMaxCount:Lcom/htc/widget/HtcSpinner;
    invoke-static {v5}, Lcom/htc/WifiRouter/UserManagement;->access$1200(Lcom/htc/WifiRouter/UserManagement;)Lcom/htc/widget/HtcSpinner;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcSpinner;->getSelectedView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 239
    iget-object v5, p0, Lcom/htc/WifiRouter/UserManagement$1;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->mMaxCount:Lcom/htc/widget/HtcSpinner;
    invoke-static {v5}, Lcom/htc/WifiRouter/UserManagement;->access$1200(Lcom/htc/WifiRouter/UserManagement;)Lcom/htc/widget/HtcSpinner;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcSpinner;->getSelectedView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object v0, v5

    check-cast v0, Landroid/widget/TextView;

    .line 240
    .restart local v0       #T1:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_0
.end method
