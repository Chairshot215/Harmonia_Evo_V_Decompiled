.class Lcom/htc/android/mail/easclient/ExchangeSvrSetting$TestServerThread;
.super Ljava/lang/Thread;
.source "ExchangeSvrSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/easclient/ExchangeSvrSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TestServerThread"
.end annotation


# instance fields
.field endMessage:Landroid/os/Message;

.field private mIsRunning:Z

.field svc:Lcom/htc/android/mail/eassvc/pim/IEASService;

.field final synthetic this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;


# direct methods
.method private constructor <init>(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)V
    .locals 1
    .parameter

    .prologue
    .line 1405
    iput-object p1, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$TestServerThread;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1406
    iget-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$TestServerThread;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    invoke-static {v0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$100(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$TestServerThread;->svc:Lcom/htc/android/mail/eassvc/pim/IEASService;

    .line 1407
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$TestServerThread;->mIsRunning:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;Lcom/htc/android/mail/easclient/ExchangeSvrSetting$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1405
    invoke-direct {p0, p1}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$TestServerThread;-><init>(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)V

    return-void
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    .prologue
    .line 1461
    iget-boolean v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$TestServerThread;->mIsRunning:Z

    return v0
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1411
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$TestServerThread;->mIsRunning:Z

    .line 1412
    iget-object v3, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$TestServerThread;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editEmailAddr:Landroid/widget/AutoCompleteTextView;
    invoke-static {v3}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$600(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/widget/AutoCompleteTextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$502(Ljava/lang/String;)Ljava/lang/String;

    .line 1413
    iget-object v3, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$TestServerThread;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editSvrName:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$1100(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$1002(Ljava/lang/String;)Ljava/lang/String;

    .line 1414
    iget-object v3, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$TestServerThread;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editDomain:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$1300(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$1202(Ljava/lang/String;)Ljava/lang/String;

    .line 1415
    iget-object v3, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$TestServerThread;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editUserName:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$1500(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$1402(Ljava/lang/String;)Ljava/lang/String;

    .line 1416
    iget-object v3, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$TestServerThread;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editPassword:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$800(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$702(Ljava/lang/String;)Ljava/lang/String;

    .line 1417
    new-instance v3, Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$TestServerThread;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->chkUseSSL:Landroid/widget/CheckBox;
    invoke-static {v4}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$1700(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v3}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$1602(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1419
    const/16 v2, -0xb

    .line 1420
    .local v2, ret:I
    :try_start_0
    iget-object v3, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$TestServerThread;->svc:Lcom/htc/android/mail/eassvc/pim/IEASService;

    if-eqz v3, :cond_0

    .line 1421
    new-instance v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    invoke-direct {v1}, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;-><init>()V

    .line 1422
    .local v1, exAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    iget-object v3, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$TestServerThread;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->accountId:J
    invoke-static {v3}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$2400(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    .line 1423
    iget-object v3, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$TestServerThread;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editEmailAddr:Landroid/widget/AutoCompleteTextView;
    invoke-static {v3}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$600(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/widget/AutoCompleteTextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->emailAddress:Ljava/lang/String;

    .line 1424
    iget-object v3, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$TestServerThread;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editSvrName:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$1100(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->serverName:Ljava/lang/String;

    .line 1425
    iget-object v3, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$TestServerThread;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editDomain:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$1300(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->domainName:Ljava/lang/String;

    .line 1426
    iget-object v3, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$TestServerThread;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editUserName:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$1500(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->userName:Ljava/lang/String;

    .line 1427
    iget-object v3, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$TestServerThread;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editPassword:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$800(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->password:Ljava/lang/String;

    .line 1428
    iget-object v3, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$TestServerThread;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->chkUseSSL:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$1700(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    iput-boolean v3, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->requireSSL:Z

    .line 1429
    iget-object v3, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$TestServerThread;->svc:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$TestServerThread;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->accountId:J
    invoke-static {v4}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$2400(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)J

    move-result-wide v4

    invoke-interface {v3, v1, v4, v5}, Lcom/htc/android/mail/eassvc/pim/IEASService;->testServer(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;J)I

    move-result v2

    .line 1431
    .end local v1           #exAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    :cond_0
    iget-object v3, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$TestServerThread;->endMessage:Landroid/os/Message;

    iput v2, v3, Landroid/os/Message;->arg1:I

    .line 1432
    iget-object v3, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$TestServerThread;->endMessage:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1438
    :goto_0
    invoke-static {v6}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$502(Ljava/lang/String;)Ljava/lang/String;

    .line 1439
    invoke-static {v6}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$1002(Ljava/lang/String;)Ljava/lang/String;

    .line 1440
    invoke-static {v6}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$1202(Ljava/lang/String;)Ljava/lang/String;

    .line 1441
    invoke-static {v6}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$1402(Ljava/lang/String;)Ljava/lang/String;

    .line 1442
    invoke-static {v6}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$702(Ljava/lang/String;)Ljava/lang/String;

    .line 1443
    invoke-static {v6}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$1602(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1445
    iput-object v6, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$TestServerThread;->svc:Lcom/htc/android/mail/eassvc/pim/IEASService;

    .line 1446
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$TestServerThread;->mIsRunning:Z

    .line 1447
    return-void

    .line 1433
    :catch_0
    move-exception v0

    .line 1434
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$TestServerThread;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->accountId:J
    invoke-static {v3}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$2400(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v3, v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 1435
    iget-object v3, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$TestServerThread;->endMessage:Landroid/os/Message;

    const/4 v4, -0x3

    iput v4, v3, Landroid/os/Message;->arg1:I

    .line 1436
    iget-object v3, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$TestServerThread;->endMessage:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setEndMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 1465
    iput-object p1, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$TestServerThread;->endMessage:Landroid/os/Message;

    .line 1466
    return-void
.end method

.method public stopTest()V
    .locals 2

    .prologue
    .line 1450
    iget-object v1, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$TestServerThread;->svc:Lcom/htc/android/mail/eassvc/pim/IEASService;

    if-eqz v1, :cond_0

    .line 1452
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$TestServerThread;->svc:Lcom/htc/android/mail/eassvc/pim/IEASService;

    invoke-interface {v1}, Lcom/htc/android/mail/eassvc/pim/IEASService;->StopTestServer()V

    .line 1453
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$TestServerThread;->svc:Lcom/htc/android/mail/eassvc/pim/IEASService;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1458
    :cond_0
    :goto_0
    return-void

    .line 1454
    :catch_0
    move-exception v0

    .line 1455
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
