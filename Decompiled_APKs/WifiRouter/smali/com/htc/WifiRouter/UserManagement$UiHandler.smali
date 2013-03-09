.class Lcom/htc/WifiRouter/UserManagement$UiHandler;
.super Landroid/os/Handler;
.source "UserManagement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/WifiRouter/UserManagement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/WifiRouter/UserManagement;


# direct methods
.method constructor <init>(Lcom/htc/WifiRouter/UserManagement;)V
    .locals 0
    .parameter

    .prologue
    .line 1151
    iput-object p1, p0, Lcom/htc/WifiRouter/UserManagement$UiHandler;->this$0:Lcom/htc/WifiRouter/UserManagement;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 1154
    iget-object v1, p0, Lcom/htc/WifiRouter/UserManagement$UiHandler;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->mMaxCount:Lcom/htc/widget/HtcSpinner;
    invoke-static {v1}, Lcom/htc/WifiRouter/UserManagement;->access$1200(Lcom/htc/WifiRouter/UserManagement;)Lcom/htc/widget/HtcSpinner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcSpinner;->getSelectedView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1155
    iget-object v1, p0, Lcom/htc/WifiRouter/UserManagement$UiHandler;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->mMaxCount:Lcom/htc/widget/HtcSpinner;
    invoke-static {v1}, Lcom/htc/WifiRouter/UserManagement;->access$1200(Lcom/htc/WifiRouter/UserManagement;)Lcom/htc/widget/HtcSpinner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcSpinner;->getSelectedView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    .line 1156
    .local v0, T1:Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 1157
    iget-object v1, p0, Lcom/htc/WifiRouter/UserManagement$UiHandler;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->mWifiApState:I
    invoke-static {v1}, Lcom/htc/WifiRouter/UserManagement;->access$900(Lcom/htc/WifiRouter/UserManagement;)I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/WifiRouter/UserManagement$UiHandler;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->mWifiApState:I
    invoke-static {v1}, Lcom/htc/WifiRouter/UserManagement;->access$900(Lcom/htc/WifiRouter/UserManagement;)I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    .line 1158
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1166
    .end local v0           #T1:Landroid/widget/TextView;
    :cond_1
    :goto_0
    return-void

    .line 1160
    .restart local v0       #T1:Landroid/widget/TextView;
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 1164
    .end local v0           #T1:Landroid/widget/TextView;
    :cond_3
    const-wide/16 v1, 0x96

    invoke-virtual {p0, v3, v1, v2}, Lcom/htc/WifiRouter/UserManagement$UiHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
