.class Lcom/htc/dmc/HtcDMC$12;
.super Landroid/os/Handler;
.source "HtcDMC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dmc/HtcDMC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dmc/HtcDMC;


# direct methods
.method constructor <init>(Lcom/htc/dmc/HtcDMC;)V
    .locals 0
    .parameter

    .prologue
    .line 3457
    iput-object p1, p0, Lcom/htc/dmc/HtcDMC$12;->this$0:Lcom/htc/dmc/HtcDMC;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private showError(I)V
    .locals 7
    .parameter "errType"

    .prologue
    const/4 v6, 0x2

    .line 3596
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$12;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mHeaderText:Lcom/htc/widget/HeaderBarText;
    invoke-static {v1}, Lcom/htc/dmc/HtcDMC;->access$100(Lcom/htc/dmc/HtcDMC;)Lcom/htc/widget/HeaderBarText;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$12;->this$0:Lcom/htc/dmc/HtcDMC;

    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$12;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mszListIndex:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/dmc/HtcDMC;->access$1100(Lcom/htc/dmc/HtcDMC;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/htc/dmc/HtcDMC;->makeDynInfoString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftText(Ljava/lang/String;)V

    .line 3597
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$12;->this$0:Lcom/htc/dmc/HtcDMC;

    #calls: Lcom/htc/dmc/HtcDMC;->isWifiEnabled()Z
    invoke-static {v1}, Lcom/htc/dmc/HtcDMC;->access$5000(Lcom/htc/dmc/HtcDMC;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3601
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$12;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mHeaderText:Lcom/htc/widget/HeaderBarText;
    invoke-static {v1}, Lcom/htc/dmc/HtcDMC;->access$100(Lcom/htc/dmc/HtcDMC;)Lcom/htc/widget/HeaderBarText;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$12;->this$0:Lcom/htc/dmc/HtcDMC;

    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$12;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mszListIndex:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/dmc/HtcDMC;->access$1100(Lcom/htc/dmc/HtcDMC;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/htc/dmc/HtcDMC;->access$800()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080025

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/dmc/HtcDMC;->makeDynInfoString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftText(Ljava/lang/String;)V

    .line 3602
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$12;->this$0:Lcom/htc/dmc/HtcDMC;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/htc/dmc/HtcDMC;->showDialog(I)V

    .line 3604
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$12;->this$0:Lcom/htc/dmc/HtcDMC;

    #calls: Lcom/htc/dmc/HtcDMC;->setDMCLine(I)V
    invoke-static {v1, v6}, Lcom/htc/dmc/HtcDMC;->access$2300(Lcom/htc/dmc/HtcDMC;I)V

    .line 3638
    :goto_0
    return-void

    .line 3609
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 3611
    :pswitch_0
    const-string v1, "[HtcDMC]"

    const-string v2, "DMR disconnected"

    invoke-static {v1, v2}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3615
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$12;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mHeaderText:Lcom/htc/widget/HeaderBarText;
    invoke-static {v1}, Lcom/htc/dmc/HtcDMC;->access$100(Lcom/htc/dmc/HtcDMC;)Lcom/htc/widget/HeaderBarText;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$12;->this$0:Lcom/htc/dmc/HtcDMC;

    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$12;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mszListIndex:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/dmc/HtcDMC;->access$1100(Lcom/htc/dmc/HtcDMC;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/htc/dmc/HtcDMC;->access$800()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080039

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/dmc/HtcDMC;->makeDynInfoString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftText(Ljava/lang/String;)V

    .line 3617
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$12;->this$0:Lcom/htc/dmc/HtcDMC;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DMR"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$12;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurCookie:I
    invoke-static {v3}, Lcom/htc/dmc/HtcDMC;->access$500(Lcom/htc/dmc/HtcDMC;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Lcom/htc/dmc/HtcDMC;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3619
    .local v0, prefDMR:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3621
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$12;->this$0:Lcom/htc/dmc/HtcDMC;

    #calls: Lcom/htc/dmc/HtcDMC;->setDMCLine(I)V
    invoke-static {v1, v6}, Lcom/htc/dmc/HtcDMC;->access$2300(Lcom/htc/dmc/HtcDMC;I)V

    goto :goto_0

    .line 3625
    .end local v0           #prefDMR:Landroid/content/SharedPreferences;
    :pswitch_1
    const-string v1, "[HtcDMC]"

    const-string v2, "DMS timeout"

    invoke-static {v1, v2}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3629
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$12;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mHeaderText:Lcom/htc/widget/HeaderBarText;
    invoke-static {v1}, Lcom/htc/dmc/HtcDMC;->access$100(Lcom/htc/dmc/HtcDMC;)Lcom/htc/widget/HeaderBarText;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$12;->this$0:Lcom/htc/dmc/HtcDMC;

    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$12;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mszListIndex:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/dmc/HtcDMC;->access$1100(Lcom/htc/dmc/HtcDMC;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/htc/dmc/HtcDMC;->access$800()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080030

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/dmc/HtcDMC;->makeDynInfoString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftText(Ljava/lang/String;)V

    .line 3631
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$12;->this$0:Lcom/htc/dmc/HtcDMC;

    #calls: Lcom/htc/dmc/HtcDMC;->setDMCLine(I)V
    invoke-static {v1, v6}, Lcom/htc/dmc/HtcDMC;->access$2300(Lcom/htc/dmc/HtcDMC;I)V

    goto/16 :goto_0

    .line 3635
    :pswitch_2
    const-string v1, "[HtcDMC]"

    const-string v2, "DMS disconnected"

    invoke-static {v1, v2}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3609
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const v10, 0x7f08003b

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3461
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 3592
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 3463
    :sswitch_1
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$12;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mDMCItemInfo:Lcom/htc/dmc/HtcDMC$DMCItemInfo;
    invoke-static {v3}, Lcom/htc/dmc/HtcDMC;->access$3800(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dmc/HtcDMC$DMCItemInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->refreshInfo()V

    .line 3464
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$12;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mDMCItemInfo:Lcom/htc/dmc/HtcDMC$DMCItemInfo;
    invoke-static {v3}, Lcom/htc/dmc/HtcDMC;->access$3800(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dmc/HtcDMC$DMCItemInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->refreshListIndex()V

    goto :goto_0

    .line 3467
    :sswitch_2
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$12;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mDMCItemInfo:Lcom/htc/dmc/HtcDMC$DMCItemInfo;
    invoke-static {v3}, Lcom/htc/dmc/HtcDMC;->access$3800(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dmc/HtcDMC$DMCItemInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->refreshAlbumArt()V

    goto :goto_0

    .line 3470
    :sswitch_3
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$12;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mDMCItemInfo:Lcom/htc/dmc/HtcDMC$DMCItemInfo;
    invoke-static {v3}, Lcom/htc/dmc/HtcDMC;->access$3800(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dmc/HtcDMC$DMCItemInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->refreshListIndex()V

    goto :goto_0

    .line 3473
    :sswitch_4
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$12;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;
    invoke-static {v3}, Lcom/htc/dmc/HtcDMC;->access$2400(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dmc/HtcDMC$DMCStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/dmc/HtcDMC$DMCStatus;->refreshTime()V

    goto :goto_0

    .line 3476
    :sswitch_5
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$12;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;
    invoke-static {v3}, Lcom/htc/dmc/HtcDMC;->access$2400(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dmc/HtcDMC$DMCStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/dmc/HtcDMC$DMCStatus;->checkState()V

    .line 3477
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$12;->this$0:Lcom/htc/dmc/HtcDMC;

    invoke-virtual {v3, v6}, Lcom/htc/dmc/HtcDMC;->UIRefreshPlayState(Z)V

    goto :goto_0

    .line 3480
    :sswitch_6
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$12;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;
    invoke-static {v3}, Lcom/htc/dmc/HtcDMC;->access$2400(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dmc/HtcDMC$DMCStatus;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/htc/dmc/HtcDMC$DMCStatus;->refreshRS(I)V

    goto :goto_0

    .line 3483
    :sswitch_7
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$12;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;
    invoke-static {v3}, Lcom/htc/dmc/HtcDMC;->access$2400(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dmc/HtcDMC$DMCStatus;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/htc/dmc/HtcDMC$DMCStatus;->refreshRS(I)V

    goto :goto_0

    .line 3486
    :sswitch_8
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$12;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;
    invoke-static {v3}, Lcom/htc/dmc/HtcDMC;->access$2400(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dmc/HtcDMC$DMCStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/dmc/HtcDMC$DMCStatus;->refreshVolume()V

    goto :goto_0

    .line 3489
    :sswitch_9
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 3490
    .local v1, bdR:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$12;->this$0:Lcom/htc/dmc/HtcDMC;

    const-string v4, "arg0"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/htc/dmc/HtcDMC;->mCurDMRName:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/htc/dmc/HtcDMC;->access$4702(Lcom/htc/dmc/HtcDMC;Ljava/lang/String;)Ljava/lang/String;

    .line 3491
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$12;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurDMRName:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/dmc/HtcDMC;->access$4700(Lcom/htc/dmc/HtcDMC;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 3492
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$12;->this$0:Lcom/htc/dmc/HtcDMC;

    const-string v4, ""

    #setter for: Lcom/htc/dmc/HtcDMC;->mCurDMRName:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/htc/dmc/HtcDMC;->access$4702(Lcom/htc/dmc/HtcDMC;Ljava/lang/String;)Ljava/lang/String;

    .line 3495
    :cond_1
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$12;->this$0:Lcom/htc/dmc/HtcDMC;

    #calls: Lcom/htc/dmc/HtcDMC;->setDMCLine(I)V
    invoke-static {v3, v7}, Lcom/htc/dmc/HtcDMC;->access$2300(Lcom/htc/dmc/HtcDMC;I)V

    goto/16 :goto_0

    .line 3500
    .end local v1           #bdR:Landroid/os/Bundle;
    :sswitch_a
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$12;->this$0:Lcom/htc/dmc/HtcDMC;

    #calls: Lcom/htc/dmc/HtcDMC;->DMCPreparePlaying()Z
    invoke-static {v3}, Lcom/htc/dmc/HtcDMC;->access$2200(Lcom/htc/dmc/HtcDMC;)Z

    goto/16 :goto_0

    .line 3505
    :sswitch_b
    const-string v3, "[HtcDMC]"

    const-string v4, "DMR Request timeout"

    invoke-static {v3, v4}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3506
    invoke-direct {p0, v7}, Lcom/htc/dmc/HtcDMC$12;->showError(I)V

    goto/16 :goto_0

    .line 3510
    :sswitch_c
    const-string v3, "[HtcDMC]"

    const-string v4, "DMR Request waiting..."

    invoke-static {v3, v4}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3511
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$12;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mHeaderText:Lcom/htc/widget/HeaderBarText;
    invoke-static {v3}, Lcom/htc/dmc/HtcDMC;->access$100(Lcom/htc/dmc/HtcDMC;)Lcom/htc/widget/HeaderBarText;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/dmc/HtcDMC$12;->this$0:Lcom/htc/dmc/HtcDMC;

    iget-object v5, p0, Lcom/htc/dmc/HtcDMC$12;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mszListIndex:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/dmc/HtcDMC;->access$1100(Lcom/htc/dmc/HtcDMC;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/htc/dmc/HtcDMC;->access$800()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f08002f

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/htc/dmc/HtcDMC;->makeDynInfoString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3514
    :sswitch_d
    const-string v3, "[HtcDMC]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DMR Removed - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3515
    invoke-direct {p0, v6}, Lcom/htc/dmc/HtcDMC$12;->showError(I)V

    goto/16 :goto_0

    .line 3519
    :sswitch_e
    const-string v3, "[HtcDMC]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DMS Removed - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3520
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$12;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurSource:I
    invoke-static {v3}, Lcom/htc/dmc/HtcDMC;->access$1300(Lcom/htc/dmc/HtcDMC;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 3522
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$12;->this$0:Lcom/htc/dmc/HtcDMC;

    invoke-virtual {v3, v8}, Lcom/htc/dmc/HtcDMC;->showDialog(I)V

    goto/16 :goto_0

    .line 3526
    :sswitch_f
    const-string v3, "[HtcDMC]"

    const-string v4, "Showing details..."

    invoke-static {v3, v4}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3527
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$12;->this$0:Lcom/htc/dmc/HtcDMC;

    iget-object v4, p0, Lcom/htc/dmc/HtcDMC$12;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;
    invoke-static {v4}, Lcom/htc/dmc/HtcDMC;->access$4100(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dlnainterface/DLNAContentItemDetails;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/dmc/HtcDMC;->LaunchDetails(Lcom/htc/dlnainterface/DLNAContentItemDetails;)V

    goto/16 :goto_0

    .line 3531
    :sswitch_10
    const-string v3, "[HtcDMC]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CtrlErr - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3533
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 3534
    .local v0, bdN:Landroid/os/Bundle;
    const-string v3, "arg0"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3536
    .local v2, errMsg:Ljava/lang/String;
    iget v3, p1, Landroid/os/Message;->arg1:I

    sparse-switch v3, :sswitch_data_1

    .line 3574
    const-string v3, "[HtcDMC]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ML Error ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3539
    :sswitch_11
    invoke-direct {p0, v6}, Lcom/htc/dmc/HtcDMC$12;->showError(I)V

    goto/16 :goto_0

    .line 3542
    :sswitch_12
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$12;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurSource:I
    invoke-static {v3}, Lcom/htc/dmc/HtcDMC;->access$1300(Lcom/htc/dmc/HtcDMC;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 3544
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$12;->this$0:Lcom/htc/dmc/HtcDMC;

    invoke-virtual {v3, v8}, Lcom/htc/dmc/HtcDMC;->showDialog(I)V

    goto/16 :goto_0

    .line 3548
    :sswitch_13
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$12;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mOncePlayed:Z
    invoke-static {v3}, Lcom/htc/dmc/HtcDMC;->access$2700(Lcom/htc/dmc/HtcDMC;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3549
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$12;->this$0:Lcom/htc/dmc/HtcDMC;

    invoke-virtual {v3, v9}, Lcom/htc/dmc/HtcDMC;->showDialog(I)V

    goto/16 :goto_0

    .line 3551
    :cond_2
    invoke-static {}, Lcom/htc/dmc/HtcDMC;->access$800()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/dmc/HtcDMC$12;->this$0:Lcom/htc/dmc/HtcDMC;

    invoke-virtual {v4, v10}, Lcom/htc/dmc/HtcDMC;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 3553
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$12;->this$0:Lcom/htc/dmc/HtcDMC;

    #calls: Lcom/htc/dmc/HtcDMC;->setDMCLine(I)V
    invoke-static {v3, v7}, Lcom/htc/dmc/HtcDMC;->access$2300(Lcom/htc/dmc/HtcDMC;I)V

    goto/16 :goto_0

    .line 3558
    :sswitch_14
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$12;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mOncePlayed:Z
    invoke-static {v3}, Lcom/htc/dmc/HtcDMC;->access$2700(Lcom/htc/dmc/HtcDMC;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3559
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$12;->this$0:Lcom/htc/dmc/HtcDMC;

    invoke-virtual {v3, v9}, Lcom/htc/dmc/HtcDMC;->showDialog(I)V

    goto/16 :goto_0

    .line 3561
    :cond_3
    invoke-static {}, Lcom/htc/dmc/HtcDMC;->access$800()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/dmc/HtcDMC$12;->this$0:Lcom/htc/dmc/HtcDMC;

    invoke-virtual {v4, v10}, Lcom/htc/dmc/HtcDMC;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 3566
    :sswitch_15
    invoke-static {}, Lcom/htc/dmc/HtcDMC;->access$800()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/htc/dmc/HtcDMC;->access$800()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080031

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 3569
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$12;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;
    invoke-static {v3}, Lcom/htc/dmc/HtcDMC;->access$2400(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dmc/HtcDMC$DMCStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/dmc/HtcDMC$DMCStatus;->refreshTime()V

    goto/16 :goto_0

    .line 3580
    .end local v0           #bdN:Landroid/os/Bundle;
    .end local v2           #errMsg:Ljava/lang/String;
    :sswitch_16
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$12;->this$0:Lcom/htc/dmc/HtcDMC;

    invoke-virtual {v3, v8}, Lcom/htc/dmc/HtcDMC;->DMRPowerOff(I)V

    goto/16 :goto_0

    .line 3584
    :sswitch_17
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$12;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mVolumeDialog:Landroid/app/Dialog;
    invoke-static {v3}, Lcom/htc/dmc/HtcDMC;->access$4800(Lcom/htc/dmc/HtcDMC;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3585
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$12;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mVolumeDialog:Landroid/app/Dialog;
    invoke-static {v3}, Lcom/htc/dmc/HtcDMC;->access$4800(Lcom/htc/dmc/HtcDMC;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    .line 3589
    :sswitch_18
    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$12;->this$0:Lcom/htc/dmc/HtcDMC;

    #setter for: Lcom/htc/dmc/HtcDMC;->mVolSetBlocked:Z
    invoke-static {v3, v6}, Lcom/htc/dmc/HtcDMC;->access$4902(Lcom/htc/dmc/HtcDMC;Z)Z

    goto/16 :goto_0

    .line 3461
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_7
        0x7 -> :sswitch_8
        0x8 -> :sswitch_9
        0x9 -> :sswitch_a
        0x64 -> :sswitch_10
        0x66 -> :sswitch_16
        0x67 -> :sswitch_d
        0x68 -> :sswitch_b
        0x69 -> :sswitch_c
        0x6a -> :sswitch_e
        0x6b -> :sswitch_f
        0xc9 -> :sswitch_17
        0xca -> :sswitch_18
    .end sparse-switch

    .line 3536
    :sswitch_data_1
    .sparse-switch
        -0x13e -> :sswitch_0
        -0x13a -> :sswitch_15
        -0x134 -> :sswitch_14
        -0x12d -> :sswitch_12
        -0x12c -> :sswitch_11
        0x2 -> :sswitch_11
        0x2c0 -> :sswitch_13
        0x2ca -> :sswitch_13
        0x2cc -> :sswitch_14
    .end sparse-switch
.end method
