.class Lcom/htc/android/mail/easclient/ExchangeSvrSetting$12;
.super Landroid/os/Handler;
.source "ExchangeSvrSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/easclient/ExchangeSvrSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 1469
    iput-object p1, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$12;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 24
    .parameter "msg"

    .prologue
    .line 1473
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$12;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    invoke-virtual {v3}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1474
    const-string v3, "ExchangeSvrSetting"

    const-string v20, "handleMessage: activity is already finish."

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Lcom/htc/android/mail/eassvc/util/EASLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1692
    :cond_0
    :goto_0
    return-void

    .line 1477
    :cond_1
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1480
    :pswitch_1
    const/4 v12, 0x0

    .line 1481
    .local v12, bundle:Landroid/os/Bundle;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_2

    .line 1482
    const/16 v17, 0x12c

    .line 1487
    .local v17, retVal:I
    :goto_1
    const/16 v3, -0x14

    move/from16 v0, v17

    if-ne v0, v3, :cond_3

    .line 1488
    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1489
    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->removeDialog(I)V

    .line 1490
    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    const/16 v20, 0x1b

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->showDialog(I)V

    goto :goto_0

    .line 1484
    .end local v17           #retVal:I
    :cond_2
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v12           #bundle:Landroid/os/Bundle;
    check-cast v12, Landroid/os/Bundle;

    .line 1485
    .restart local v12       #bundle:Landroid/os/Bundle;
    const-string v3, "return"

    const/16 v20, 0x12c

    move/from16 v0, v20

    invoke-virtual {v12, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v17

    .restart local v17       #retVal:I
    goto :goto_1

    .line 1493
    :cond_3
    const/16 v3, -0x15

    move/from16 v0, v17

    if-ne v0, v3, :cond_4

    .line 1494
    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1495
    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->removeDialog(I)V

    .line 1496
    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    const/16 v20, 0x1c

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->showDialog(I)V

    goto :goto_0

    .line 1499
    :cond_4
    const/16 v3, -0xb

    move/from16 v0, v17

    if-ne v0, v3, :cond_5

    .line 1500
    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->removeDialog(I)V

    goto :goto_0

    .line 1502
    :cond_5
    const/4 v3, 0x1

    move/from16 v0, v17

    if-eq v0, v3, :cond_6

    const/16 v3, 0x131

    move/from16 v0, v17

    if-ne v0, v3, :cond_12

    .line 1503
    :cond_6
    const-string v3, "email"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1504
    .local v4, emailAddr:Ljava/lang/String;
    const-string v3, "server"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1505
    .local v15, exchangeUrl:Ljava/lang/String;
    const-string v3, "://"

    invoke-virtual {v15, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v15, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1506
    .local v5, hostname:Ljava/lang/String;
    const/4 v3, 0x0

    const-string v20, "/"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v5, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1507
    const-string v3, "domain"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1508
    .local v8, domain:Ljava/lang/String;
    const-string v3, "account"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1509
    .local v6, account:Ljava/lang/String;
    const-string v3, "password"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1510
    .local v7, password:Ljava/lang/String;
    const/16 v3, 0x131

    move/from16 v0, v17

    if-ne v0, v3, :cond_8

    .line 1511
    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$000()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "ExchangeSvrSetting"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$12;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->accountId:J
    invoke-static/range {v20 .. v20}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$2400(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)J

    move-result-wide v20

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "certificate error:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-wide/from16 v0, v20

    move-object/from16 v2, v22

    invoke-static {v3, v0, v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1513
    :cond_7
    :try_start_0
    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1514
    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->removeDialog(I)V

    .line 1515
    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$12;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    invoke-static/range {v20 .. v20}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$100(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$12;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-object/from16 v21, v0

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mHandler:Landroid/os/Handler;
    invoke-static/range {v21 .. v21}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$2700(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/os/Handler;

    move-result-object v21

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$12;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mHandler:Landroid/os/Handler;
    invoke-static/range {v22 .. v22}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$2700(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/os/Handler;

    move-result-object v22

    const/16 v23, 0x5

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v3, v0, v1, v2}, Lcom/htc/android/mail/easclient/CertificateUtil;->showCertificateInvalid(Landroid/app/Activity;Lcom/htc/android/mail/eassvc/pim/IEASService;Landroid/os/Message;Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1520
    :catch_0
    move-exception v13

    .line 1521
    .local v13, e:Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "ExchangeSvrSetting"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$12;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->accountId:J
    invoke-static/range {v20 .. v20}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$2400(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)J

    move-result-wide v20

    invoke-virtual {v13}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-wide/from16 v0, v20

    move-object/from16 v2, v22

    invoke-static {v3, v0, v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    goto/16 :goto_0

    .line 1525
    .end local v13           #e:Ljava/lang/IllegalArgumentException;
    :cond_8
    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$000()Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "ExchangeSvrSetting"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$12;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->accountId:J
    invoke-static/range {v20 .. v20}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$2400(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)J

    move-result-wide v20

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "---> autodiscover get server="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-wide/from16 v0, v20

    move-object/from16 v2, v22

    invoke-static {v3, v0, v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1526
    :cond_9
    const-string v3, "https"

    invoke-virtual {v15, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    .line 1527
    .local v9, useSSL:Z
    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editEmailAddr:Landroid/widget/AutoCompleteTextView;
    invoke-static {v3}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$600(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/widget/AutoCompleteTextView;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1528
    :cond_a
    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editSvrName:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$1100(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1529
    :cond_b
    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->chkUseSSL:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$1700(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1534
    :cond_c
    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editUserName:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$1500(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1535
    :cond_d
    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editPassword:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$800(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1536
    :cond_e
    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editDomain:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$1300(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1541
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$12;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #calls: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->save_pref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static/range {v3 .. v9}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3300(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1543
    :try_start_1
    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    if-eqz v3, :cond_10

    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->removeDialog(I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1548
    :cond_10
    :goto_2
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 1549
    .local v16, intentNextPage:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$12;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    const-class v20, Lcom/htc/android/mail/easclient/SynchronizationSetting;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1550
    const-string v3, "intent.eas.from_where"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$12;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mFromWhere:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$1800(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1551
    const-string v3, "CallingActivity"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$12;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mCallingActivity:I
    invoke-static/range {v20 .. v20}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$1900(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)I

    move-result v20

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1552
    const-string v3, "schedule"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$12;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mSchedule:I
    invoke-static/range {v20 .. v20}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$2000(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)I

    move-result v20

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1553
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$12;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$12;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$2200(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->isTaskApExist(Landroid/content/Context;)Z

    move-result v20

    move/from16 v0, v20

    #setter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mIsTaskApExist:Z
    invoke-static {v3, v0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$2102(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;Z)Z

    .line 1554
    const-string v3, "isTaskAPExist"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$12;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mIsTaskApExist:Z
    invoke-static/range {v20 .. v20}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$2100(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Z

    move-result v20

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1556
    invoke-static {}, Lcom/htc/android/mail/Mail;->isEnableHuxRestoreExchangeSettings()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1557
    const-string v3, "mIsExchangeSaved"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$12;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mIsExchangeSaved:Z
    invoke-static/range {v20 .. v20}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3400(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Z

    move-result v20

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1558
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$12;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mEASAccountInfo:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;
    invoke-static {v3}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$2300(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 1559
    const-string v3, "mEASAccountInfo"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$12;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mEASAccountInfo:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;
    invoke-static/range {v20 .. v20}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$2300(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1562
    :cond_11
    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    sget v20, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mRequestCode:I

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1544
    .end local v16           #intentNextPage:Landroid/content/Intent;
    :catch_1
    move-exception v13

    .line 1545
    .restart local v13       #e:Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$000()Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v3, "ExchangeSvrSetting"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$12;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->accountId:J
    invoke-static/range {v20 .. v20}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$2400(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)J

    move-result-wide v20

    invoke-virtual {v13}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-wide/from16 v0, v20

    move-object/from16 v2, v22

    invoke-static {v3, v0, v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    goto/16 :goto_2

    .line 1565
    .end local v4           #emailAddr:Ljava/lang/String;
    .end local v5           #hostname:Ljava/lang/String;
    .end local v6           #account:Ljava/lang/String;
    .end local v7           #password:Ljava/lang/String;
    .end local v8           #domain:Ljava/lang/String;
    .end local v9           #useSSL:Z
    .end local v13           #e:Ljava/lang/IllegalArgumentException;
    .end local v15           #exchangeUrl:Ljava/lang/String;
    :cond_12
    if-eqz v12, :cond_14

    .line 1566
    const-string v3, "errorCode"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 1567
    .local v14, errorCode:I
    const/16 v3, 0x191

    if-ne v14, v3, :cond_14

    .line 1569
    :try_start_2
    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    if-eqz v3, :cond_13

    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->removeDialog(I)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1573
    :cond_13
    :goto_3
    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    const/16 v20, 0xf

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->showDialog(I)V

    goto/16 :goto_0

    .line 1570
    :catch_2
    move-exception v13

    .line 1571
    .restart local v13       #e:Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$000()Z

    move-result v3

    if-eqz v3, :cond_13

    const-string v3, "ExchangeSvrSetting"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$12;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->accountId:J
    invoke-static/range {v20 .. v20}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$2400(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)J

    move-result-wide v20

    invoke-virtual {v13}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-wide/from16 v0, v20

    move-object/from16 v2, v22

    invoke-static {v3, v0, v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_3

    .line 1578
    .end local v13           #e:Ljava/lang/IllegalArgumentException;
    .end local v14           #errorCode:I
    :cond_14
    :try_start_3
    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    if-eqz v3, :cond_15

    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->removeDialog(I)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1582
    :cond_15
    :goto_4
    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1583
    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    sget-object v20, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;->CREATE_FULL_SETTING:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    move-object/from16 v0, v20

    #setter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mProgressStatus:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;
    invoke-static {v3, v0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$302(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;)Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    .line 1584
    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    #calls: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->reLayout()V
    invoke-static {v3}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$900(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)V

    .line 1585
    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editSvrName:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$1100(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 1586
    new-instance v3, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$12$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$12$1;-><init>(Lcom/htc/android/mail/easclient/ExchangeSvrSetting$12;)V

    const-wide/16 v20, 0x12c

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v3, v1, v2}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$12;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1579
    :catch_3
    move-exception v13

    .line 1580
    .restart local v13       #e:Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$000()Z

    move-result v3

    if-eqz v3, :cond_15

    const-string v3, "ExchangeSvrSetting"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$12;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->accountId:J
    invoke-static/range {v20 .. v20}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$2400(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)J

    move-result-wide v20

    invoke-virtual {v13}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-wide/from16 v0, v20

    move-object/from16 v2, v22

    invoke-static {v3, v0, v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_4

    .line 1594
    .end local v12           #bundle:Landroid/os/Bundle;
    .end local v13           #e:Ljava/lang/IllegalArgumentException;
    .end local v17           #retVal:I
    :pswitch_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    .line 1595
    .local v19, testResult:I
    sparse-switch v19, :sswitch_data_0

    .line 1659
    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    if-eqz v3, :cond_16

    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    const/16 v20, 0xe

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->showDialog(I)V

    .line 1664
    :cond_16
    :goto_5
    :sswitch_0
    :try_start_4
    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->removeDialog(I)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 1665
    :catch_4
    move-exception v13

    .line 1666
    .restart local v13       #e:Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "ExchangeSvrSetting"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$12;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->accountId:J
    invoke-static/range {v20 .. v20}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$2400(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)J

    move-result-wide v20

    invoke-virtual {v13}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-wide/from16 v0, v20

    move-object/from16 v2, v22

    invoke-static {v3, v0, v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    goto/16 :goto_0

    .line 1600
    .end local v13           #e:Ljava/lang/IllegalArgumentException;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$12;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mProgressStatus:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;
    invoke-static {v3}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$300(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    move-result-object v3

    sget-object v20, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;->CREATE_FULL_SETTING:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    move-object/from16 v0, v20

    if-eq v3, v0, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$12;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mProgressStatus:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;
    invoke-static {v3}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$300(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    move-result-object v3

    sget-object v20, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;->AUTO_DISCOVER:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    move-object/from16 v0, v20

    if-ne v3, v0, :cond_1a

    .line 1601
    :cond_17
    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    if-eqz v3, :cond_18

    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    #calls: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->save_pref()V
    invoke-static {v3}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3500(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)V

    .line 1602
    :cond_18
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 1603
    .restart local v16       #intentNextPage:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$12;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    const-class v20, Lcom/htc/android/mail/easclient/SynchronizationSetting;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1604
    const-string v3, "intent.eas.from_where"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$12;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mFromWhere:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$1800(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1605
    const-string v3, "CallingActivity"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$12;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mCallingActivity:I
    invoke-static/range {v20 .. v20}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$1900(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)I

    move-result v20

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1606
    const-string v3, "schedule"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$12;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mSchedule:I
    invoke-static/range {v20 .. v20}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$2000(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)I

    move-result v20

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1607
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$12;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$12;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$2200(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->isTaskApExist(Landroid/content/Context;)Z

    move-result v20

    move/from16 v0, v20

    #setter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mIsTaskApExist:Z
    invoke-static {v3, v0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$2102(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;Z)Z

    .line 1608
    const-string v3, "isTaskAPExist"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$12;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mIsTaskApExist:Z
    invoke-static/range {v20 .. v20}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$2100(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Z

    move-result v20

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1610
    invoke-static {}, Lcom/htc/android/mail/Mail;->isEnableHuxRestoreExchangeSettings()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1611
    const-string v3, "mIsExchangeSaved"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$12;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mIsExchangeSaved:Z
    invoke-static/range {v20 .. v20}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3400(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Z

    move-result v20

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1612
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$12;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mEASAccountInfo:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;
    invoke-static {v3}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$2300(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

    move-result-object v3

    if-eqz v3, :cond_19

    .line 1613
    const-string v3, "mEASAccountInfo"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$12;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mEASAccountInfo:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;
    invoke-static/range {v20 .. v20}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$2300(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1616
    :cond_19
    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    if-eqz v3, :cond_16

    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    sget v20, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mRequestCode:I

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_5

    .line 1618
    .end local v16           #intentNextPage:Landroid/content/Intent;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$12;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mProgressStatus:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;
    invoke-static {v3}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$300(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    move-result-object v3

    sget-object v20, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;->SETTING:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    move-object/from16 v0, v20

    if-ne v3, v0, :cond_16

    .line 1619
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$12;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #calls: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->saveLogin()V
    invoke-static {v3}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3600(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)V

    .line 1620
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$12;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mBackupManager:Landroid/app/backup/BackupManager;
    invoke-static {v3}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3700(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/app/backup/BackupManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 1621
    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$000()Z

    move-result v3

    if-eqz v3, :cond_1b

    const-string v3, "ExchangeSvrSetting"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$12;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->accountId:J
    invoke-static/range {v20 .. v20}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$2400(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)J

    move-result-wide v20

    const-string v22, "BackupManager.dataChanged()"

    move-wide/from16 v0, v20

    move-object/from16 v2, v22

    invoke-static {v3, v0, v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1623
    :cond_1b
    new-instance v18, Landroid/content/Intent;

    const-string v3, "com.htc.android.mail.intent.startSync"

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1624
    .local v18, service:Landroid/content/Intent;
    const-string v3, "com.htc.android.mail"

    const-string v20, "com.htc.android.mail.eassvc.EASAppSvc"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1625
    const-string v3, "accountId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$12;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->accountId:J
    invoke-static/range {v20 .. v20}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$2400(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1626
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$12;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1627
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$12;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    invoke-virtual {v3}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->finish()V

    goto/16 :goto_5

    .line 1631
    .end local v18           #service:Landroid/content/Intent;
    :sswitch_2
    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    if-eqz v3, :cond_1c

    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->showDialog(I)V

    .line 1632
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$12;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editSvrName:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$1100(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_5

    .line 1635
    :sswitch_3
    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    if-eqz v3, :cond_16

    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    const/16 v20, 0xb

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->showDialog(I)V

    goto/16 :goto_5

    .line 1638
    :sswitch_4
    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    if-eqz v3, :cond_16

    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    const/16 v20, 0xc

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->showDialog(I)V

    goto/16 :goto_5

    .line 1641
    :sswitch_5
    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    if-eqz v3, :cond_16

    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    const/16 v20, 0xd

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->showDialog(I)V

    goto/16 :goto_5

    .line 1644
    :sswitch_6
    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 1645
    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$12;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    invoke-static/range {v20 .. v20}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$100(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$12;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-object/from16 v21, v0

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mHandler:Landroid/os/Handler;
    invoke-static/range {v21 .. v21}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$2700(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/os/Handler;

    move-result-object v21

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v3, v0, v1, v2}, Lcom/htc/android/mail/easclient/CertificateUtil;->showCertificateInvalid(Landroid/app/Activity;Lcom/htc/android/mail/eassvc/pim/IEASService;Landroid/os/Message;Landroid/os/Message;)V

    goto/16 :goto_5

    .line 1652
    :sswitch_7
    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    if-eqz v3, :cond_16

    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    const/16 v20, 0x1b

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->showDialog(I)V

    goto/16 :goto_5

    .line 1655
    :sswitch_8
    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    if-eqz v3, :cond_16

    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    const/16 v20, 0x1c

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->showDialog(I)V

    goto/16 :goto_5

    .line 1672
    .end local v19           #testResult:I
    :pswitch_3
    :try_start_5
    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    if-eqz v3, :cond_1d

    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    const/16 v20, 0x12c

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->removeDialog(I)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1676
    :cond_1d
    :goto_6
    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v3

    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-result-object v20

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mNextButton:Lcom/htc/android/mail/widget/MailFooterBarButton;
    invoke-static/range {v20 .. v20}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3800(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->onClick(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1673
    :catch_5
    move-exception v13

    .line 1674
    .restart local v13       #e:Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$000()Z

    move-result v3

    if-eqz v3, :cond_1d

    const-string v3, "ExchangeSvrSetting"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$12;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->accountId:J
    invoke-static/range {v20 .. v20}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$2400(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)J

    move-result-wide v20

    invoke-virtual {v13}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-wide/from16 v0, v20

    move-object/from16 v2, v22

    invoke-static {v3, v0, v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_6

    .line 1680
    .end local v13           #e:Ljava/lang/IllegalArgumentException;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$12;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$2700(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/os/Handler;

    move-result-object v3

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1683
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$12;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editEmailAddr:Landroid/widget/AutoCompleteTextView;
    invoke-static {v3}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$600(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/widget/AutoCompleteTextView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1684
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Ljava/util/ArrayList;

    .line 1685
    .local v11, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v10, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$12;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    const v20, 0x2090080

    move/from16 v0, v20

    invoke-direct {v10, v3, v0, v11}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1687
    .local v10, MailAddr_adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$12;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editEmailAddr:Landroid/widget/AutoCompleteTextView;
    invoke-static {v3}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$600(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/widget/AutoCompleteTextView;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1688
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$12;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editEmailAddr:Landroid/widget/AutoCompleteTextView;
    invoke-static {v3}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$600(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/widget/AutoCompleteTextView;

    move-result-object v3

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    goto/16 :goto_0

    .line 1477
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 1595
    :sswitch_data_0
    .sparse-switch
        -0x15 -> :sswitch_8
        -0x14 -> :sswitch_7
        -0xb -> :sswitch_0
        -0x6 -> :sswitch_6
        -0x5 -> :sswitch_4
        -0x4 -> :sswitch_5
        -0x2 -> :sswitch_3
        -0x1 -> :sswitch_2
        0x0 -> :sswitch_1
    .end sparse-switch
.end method
