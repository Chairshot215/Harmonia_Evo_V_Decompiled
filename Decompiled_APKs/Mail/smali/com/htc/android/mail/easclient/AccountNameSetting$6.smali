.class Lcom/htc/android/mail/easclient/AccountNameSetting$6;
.super Landroid/os/Handler;
.source "AccountNameSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/easclient/AccountNameSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/AccountNameSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 677
    iput-object p1, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$6;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    .line 681
    iget-object v9, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$6;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    invoke-virtual {v9}, Lcom/htc/android/mail/easclient/AccountNameSetting;->isFinishing()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 682
    const-string v9, "AccountNameSetting"

    const-string v10, "handleMessage: activity is already finish."

    invoke-static {v9, v10}, Lcom/htc/android/mail/eassvc/util/EASLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    :cond_0
    :goto_0
    return-void

    .line 685
    :cond_1
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 687
    :pswitch_1
    iget v9, p1, Landroid/os/Message;->arg1:I

    const/16 v10, -0xb

    if-eq v9, v10, :cond_2

    .line 688
    iget-object v9, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$6;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/htc/android/mail/easclient/AccountNameSetting;->removeDialog(I)V

    .line 690
    :cond_2
    iget-object v9, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$6;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    #getter for: Lcom/htc/android/mail/easclient/AccountNameSetting;->mIsDestroy:Z
    invoke-static {v9}, Lcom/htc/android/mail/easclient/AccountNameSetting;->access$100(Lcom/htc/android/mail/easclient/AccountNameSetting;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 691
    iget v9, p1, Landroid/os/Message;->arg1:I

    const/4 v10, -0x7

    if-ne v9, v10, :cond_4

    .line 692
    iget-object v9, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$6;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Lcom/htc/android/mail/easclient/AccountNameSetting;->showDialog(I)V

    .line 752
    :cond_3
    :goto_1
    const/4 v9, 0x1

    invoke-static {v9}, Lcom/htc/android/mail/easclient/AccountNameSetting;->access$502(Z)Z

    goto :goto_0

    .line 693
    :cond_4
    iget v9, p1, Landroid/os/Message;->arg1:I

    const/16 v10, -0x14

    if-ne v9, v10, :cond_5

    .line 694
    iget-object v9, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$6;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Lcom/htc/android/mail/easclient/AccountNameSetting;->showDialog(I)V

    goto :goto_1

    .line 695
    :cond_5
    iget v9, p1, Landroid/os/Message;->arg1:I

    const/16 v10, -0x16

    if-ne v9, v10, :cond_6

    .line 696
    iget-object v9, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$6;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    const/4 v10, 0x7

    invoke-virtual {v9, v10}, Lcom/htc/android/mail/easclient/AccountNameSetting;->showDialog(I)V

    goto :goto_1

    .line 697
    :cond_6
    iget v9, p1, Landroid/os/Message;->arg1:I

    const/16 v10, -0xc

    if-ne v9, v10, :cond_7

    .line 698
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 700
    .local v1, accountId:J
    :try_start_0
    iget-object v9, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$6;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    #getter for: Lcom/htc/android/mail/easclient/AccountNameSetting;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/htc/android/mail/easclient/AccountNameSetting;->access$800(Lcom/htc/android/mail/easclient/AccountNameSetting;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v1, v2}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->readProvisionData(Landroid/content/Context;J)Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    move-result-object v8

    .line 701
    .local v8, provisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 702
    .local v6, intent:Landroid/content/Intent;
    iget-object v9, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$6;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    #getter for: Lcom/htc/android/mail/easclient/AccountNameSetting;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/htc/android/mail/easclient/AccountNameSetting;->access$800(Lcom/htc/android/mail/easclient/AccountNameSetting;)Landroid/content/Context;

    move-result-object v9

    const-class v10, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 703
    const-string v9, "provisionDoc"

    invoke-virtual {v6, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 704
    iget-object v9, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$6;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    invoke-virtual {v9, v6}, Lcom/htc/android/mail/easclient/AccountNameSetting;->startActivity(Landroid/content/Intent;)V

    .line 705
    iget-object v9, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$6;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    #getter for: Lcom/htc/android/mail/easclient/AccountNameSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    invoke-static {v9}, Lcom/htc/android/mail/easclient/AccountNameSetting;->access$200(Lcom/htc/android/mail/easclient/AccountNameSetting;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-result-object v9

    invoke-interface {v9}, Lcom/htc/android/mail/eassvc/pim/IEASService;->isAnyAccountProvision()Z

    move-result v4

    .line 706
    .local v4, anyProvision:Z
    if-nez v4, :cond_3

    .line 707
    iget-object v9, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$6;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    #getter for: Lcom/htc/android/mail/easclient/AccountNameSetting;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/htc/android/mail/easclient/AccountNameSetting;->access$800(Lcom/htc/android/mail/easclient/AccountNameSetting;)Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->disableEASAdmin(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 709
    .end local v4           #anyProvision:Z
    .end local v6           #intent:Landroid/content/Intent;
    .end local v8           #provisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;
    :catch_0
    move-exception v5

    .line 710
    .local v5, e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 712
    .end local v1           #accountId:J
    .end local v5           #e:Ljava/lang/Exception;
    :cond_7
    iget v9, p1, Landroid/os/Message;->arg1:I

    const/16 v10, -0xb

    if-eq v9, v10, :cond_8

    iget v9, p1, Landroid/os/Message;->arg1:I

    const/16 v10, -0xd

    if-eq v9, v10, :cond_8

    iget v9, p1, Landroid/os/Message;->arg1:I

    const/16 v10, -0xe

    if-ne v9, v10, :cond_9

    .line 715
    :cond_8
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 717
    .restart local v1       #accountId:J
    :try_start_1
    iget-object v9, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$6;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    #getter for: Lcom/htc/android/mail/easclient/AccountNameSetting;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/htc/android/mail/easclient/AccountNameSetting;->access$800(Lcom/htc/android/mail/easclient/AccountNameSetting;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v1, v2}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->readProvisionData(Landroid/content/Context;J)Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    move-result-object v8

    .line 718
    .restart local v8       #provisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;
    iget-object v9, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$6;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    #getter for: Lcom/htc/android/mail/easclient/AccountNameSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    invoke-static {v9}, Lcom/htc/android/mail/easclient/AccountNameSetting;->access$200(Lcom/htc/android/mail/easclient/AccountNameSetting;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-result-object v9

    invoke-interface {v9, v1, v2}, Lcom/htc/android/mail/eassvc/pim/IEASService;->getAccountInfo(J)Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-result-object v0

    .line 720
    .local v0, account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    iput-wide v1, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    .line 721
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 722
    .restart local v6       #intent:Landroid/content/Intent;
    iget-object v9, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$6;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    #getter for: Lcom/htc/android/mail/easclient/AccountNameSetting;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/htc/android/mail/easclient/AccountNameSetting;->access$800(Lcom/htc/android/mail/easclient/AccountNameSetting;)Landroid/content/Context;

    move-result-object v9

    const-class v10, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 723
    const-string v9, "accountInfo"

    invoke-virtual {v6, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 724
    const-string v9, "provisionDoc"

    invoke-virtual {v6, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 725
    iget-object v9, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$6;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    invoke-virtual {v9, v6}, Lcom/htc/android/mail/easclient/AccountNameSetting;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 726
    .end local v0           #account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    .end local v6           #intent:Landroid/content/Intent;
    .end local v8           #provisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;
    :catch_1
    move-exception v5

    .line 727
    .restart local v5       #e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 744
    .end local v1           #accountId:J
    .end local v5           #e:Ljava/lang/Exception;
    :cond_9
    iget v9, p1, Landroid/os/Message;->arg1:I

    const/16 v10, -0x15

    if-ne v9, v10, :cond_a

    .line 745
    iget-object v9, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$6;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    const/4 v10, 0x6

    invoke-virtual {v9, v10}, Lcom/htc/android/mail/easclient/AccountNameSetting;->showDialog(I)V

    goto/16 :goto_1

    .line 746
    :cond_a
    iget v9, p1, Landroid/os/Message;->arg1:I

    const/16 v10, -0x17

    if-ne v9, v10, :cond_b

    .line 747
    iget-object v9, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$6;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/htc/android/mail/easclient/AccountNameSetting;->showDialog(I)V

    goto/16 :goto_1

    .line 749
    :cond_b
    iget-object v9, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$6;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/htc/android/mail/easclient/AccountNameSetting;->showDialog(I)V

    goto/16 :goto_1

    .line 757
    :pswitch_2
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 758
    .restart local v1       #accountId:J
    const/4 v7, 0x0

    .line 759
    .local v7, mailAccount:Lcom/htc/android/mail/Account;
    invoke-static {v1, v2}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v7

    .line 760
    if-eqz v7, :cond_d

    .line 761
    const/4 v9, -0x1

    invoke-virtual {v7, v9}, Lcom/htc/android/mail/Account;->setDelStatus(I)V

    .line 765
    :goto_2
    iget-object v9, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$6;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    #getter for: Lcom/htc/android/mail/easclient/AccountNameSetting;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/htc/android/mail/easclient/AccountNameSetting;->access$800(Lcom/htc/android/mail/easclient/AccountNameSetting;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/htc/android/mail/MailCommon;->setMailShortcutState(Landroid/content/Context;)V

    .line 766
    sget-object v9, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-virtual {v9}, Lcom/htc/android/mail/MailEventBroadcaster;->setAccountChange()V

    .line 767
    sget-object v9, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-virtual {v9, v1, v2}, Lcom/htc/android/mail/MailEventBroadcaster;->setAccountID(J)V

    .line 768
    sget-object v9, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    iget-object v10, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$6;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    invoke-virtual {v10}, Lcom/htc/android/mail/easclient/AccountNameSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/android/mail/MailEventBroadcaster;->flush(Landroid/content/Context;)V

    .line 770
    invoke-static {}, Lcom/htc/android/mail/easclient/AccountNameSetting;->access$000()Z

    move-result v9

    if-eqz v9, :cond_c

    const-string v9, "AccountNameSetting"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "create account done: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    :cond_c
    iget-object v9, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$6;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    #calls: Lcom/htc/android/mail/easclient/AccountNameSetting;->setResultValue(J)V
    invoke-static {v9, v1, v2}, Lcom/htc/android/mail/easclient/AccountNameSetting;->access$700(Lcom/htc/android/mail/easclient/AccountNameSetting;J)V

    .line 777
    invoke-static {}, Lcom/htc/android/mail/Mail;->isEnableHuxRestoreExchangeSettings()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 779
    iget-object v9, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$6;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    #getter for: Lcom/htc/android/mail/easclient/AccountNameSetting;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/htc/android/mail/easclient/AccountNameSetting;->access$800(Lcom/htc/android/mail/easclient/AccountNameSetting;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/htc/android/mail/Account;->getIsExchangeSaved(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_e

    .line 780
    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, v1, v2}, Ljava/lang/Long;-><init>(J)V

    .line 781
    .local v3, accountLongID:Ljava/lang/Long;
    new-instance v9, Lcom/htc/android/mail/easclient/AccountNameSetting$PostProfileTask;

    iget-object v10, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$6;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Lcom/htc/android/mail/easclient/AccountNameSetting$PostProfileTask;-><init>(Lcom/htc/android/mail/easclient/AccountNameSetting;Lcom/htc/android/mail/easclient/AccountNameSetting$1;)V

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Long;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-virtual {v9, v10}, Lcom/htc/android/mail/easclient/AccountNameSetting$PostProfileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 763
    .end local v3           #accountLongID:Ljava/lang/Long;
    :cond_d
    const-string v9, "AccountNameSetting"

    const-string v10, "enable account failed"

    invoke-static {v9, v10}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 784
    :cond_e
    iget-object v9, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$6;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    #calls: Lcom/htc/android/mail/easclient/AccountNameSetting;->getAccountInfo()Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    invoke-static {v9}, Lcom/htc/android/mail/easclient/AccountNameSetting;->access$1100(Lcom/htc/android/mail/easclient/AccountNameSetting;)Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    .line 790
    :cond_f
    iget-object v9, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$6;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    #getter for: Lcom/htc/android/mail/easclient/AccountNameSetting;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/htc/android/mail/easclient/AccountNameSetting;->access$800(Lcom/htc/android/mail/easclient/AccountNameSetting;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/htc/android/mail/eassvc/util/AccountUtil;->deleteAccountInfo(Landroid/content/Context;)V

    .line 792
    iget-object v9, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$6;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    invoke-virtual {v9}, Lcom/htc/android/mail/easclient/AccountNameSetting;->finish()V

    goto/16 :goto_0

    .line 796
    .end local v1           #accountId:J
    .end local v7           #mailAccount:Lcom/htc/android/mail/Account;
    :pswitch_3
    iget-object v9, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$6;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    #getter for: Lcom/htc/android/mail/easclient/AccountNameSetting;->mIsDestroy:Z
    invoke-static {v9}, Lcom/htc/android/mail/easclient/AccountNameSetting;->access$100(Lcom/htc/android/mail/easclient/AccountNameSetting;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 797
    iget-object v9, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$6;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/htc/android/mail/easclient/AccountNameSetting;->dismissDialog(I)V

    .line 799
    iget-object v9, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$6;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    iget-object v10, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$6;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    #getter for: Lcom/htc/android/mail/easclient/AccountNameSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    invoke-static {v10}, Lcom/htc/android/mail/easclient/AccountNameSetting;->access$200(Lcom/htc/android/mail/easclient/AccountNameSetting;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-result-object v10

    const/4 v11, 0x5

    invoke-virtual {p0, v11}, Lcom/htc/android/mail/easclient/AccountNameSetting$6;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    const/4 v12, 0x6

    invoke-virtual {p0, v12}, Lcom/htc/android/mail/easclient/AccountNameSetting$6;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-static {v9, v10, v11, v12}, Lcom/htc/android/mail/easclient/CertificateUtil;->showCertificateInvalid(Landroid/app/Activity;Lcom/htc/android/mail/eassvc/pim/IEASService;Landroid/os/Message;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 807
    :pswitch_4
    iget-object v9, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$6;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    #getter for: Lcom/htc/android/mail/easclient/AccountNameSetting;->mIsDestroy:Z
    invoke-static {v9}, Lcom/htc/android/mail/easclient/AccountNameSetting;->access$100(Lcom/htc/android/mail/easclient/AccountNameSetting;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 808
    iget-object v9, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$6;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    const/16 v10, 0x12c

    invoke-virtual {v9, v10}, Lcom/htc/android/mail/easclient/AccountNameSetting;->dismissDialog(I)V

    .line 809
    iget-object v9, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$6;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    iget-object v10, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$6;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    #getter for: Lcom/htc/android/mail/easclient/AccountNameSetting;->mNextButton:Lcom/htc/android/mail/widget/MailFooterBarButton;
    invoke-static {v10}, Lcom/htc/android/mail/easclient/AccountNameSetting;->access$400(Lcom/htc/android/mail/easclient/AccountNameSetting;)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/android/mail/easclient/AccountNameSetting;->onClick(Landroid/view/View;)V

    goto/16 :goto_0

    .line 685
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
