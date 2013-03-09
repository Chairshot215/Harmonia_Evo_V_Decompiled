.class Lcom/htc/android/mail/easclient/ExchangeSvrSetting$AutoDiscoverThread;
.super Ljava/lang/Thread;
.source "ExchangeSvrSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/easclient/ExchangeSvrSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoDiscoverThread"
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
    .line 1369
    iput-object p1, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$AutoDiscoverThread;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1370
    iget-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$AutoDiscoverThread;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    invoke-static {v0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$100(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$AutoDiscoverThread;->svc:Lcom/htc/android/mail/eassvc/pim/IEASService;

    .line 1372
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$AutoDiscoverThread;->mIsRunning:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;Lcom/htc/android/mail/easclient/ExchangeSvrSetting$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1369
    invoke-direct {p0, p1}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$AutoDiscoverThread;-><init>(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)V

    return-void
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    .prologue
    .line 1397
    iget-boolean v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$AutoDiscoverThread;->mIsRunning:Z

    return v0
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1375
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$AutoDiscoverThread;->mIsRunning:Z

    .line 1376
    iget-object v6, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$AutoDiscoverThread;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editEmailAddr:Landroid/widget/AutoCompleteTextView;
    invoke-static {v6}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$600(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/widget/AutoCompleteTextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$502(Ljava/lang/String;)Ljava/lang/String;

    .line 1377
    iget-object v6, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$AutoDiscoverThread;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editPassword:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$800(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$702(Ljava/lang/String;)Ljava/lang/String;

    .line 1378
    const/4 v3, 0x0

    .line 1379
    .local v3, exchangeURL:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1381
    .local v5, result:Landroid/os/Bundle;
    :try_start_0
    iget-object v6, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$AutoDiscoverThread;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editEmailAddr:Landroid/widget/AutoCompleteTextView;
    invoke-static {v6}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$600(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/widget/AutoCompleteTextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1382
    .local v2, emailAddr:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$AutoDiscoverThread;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editUserName:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$1500(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1383
    .local v0, account:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$AutoDiscoverThread;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editPassword:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$800(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1384
    .local v4, password:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$AutoDiscoverThread;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    invoke-static {v6}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$100(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v2, v7, v0, v4}, Lcom/htc/android/mail/eassvc/pim/IEASService;->autoDiscover(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1388
    .end local v0           #account:Ljava/lang/String;
    .end local v2           #emailAddr:Ljava/lang/String;
    .end local v4           #password:Ljava/lang/String;
    :goto_0
    invoke-static {v9}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$502(Ljava/lang/String;)Ljava/lang/String;

    .line 1389
    invoke-static {v9}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$702(Ljava/lang/String;)Ljava/lang/String;

    .line 1390
    iget-object v6, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$AutoDiscoverThread;->endMessage:Landroid/os/Message;

    iput-object v5, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1391
    iget-object v6, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$AutoDiscoverThread;->endMessage:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 1392
    iput-object v9, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$AutoDiscoverThread;->svc:Lcom/htc/android/mail/eassvc/pim/IEASService;

    .line 1393
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$AutoDiscoverThread;->mIsRunning:Z

    .line 1394
    return-void

    .line 1385
    :catch_0
    move-exception v1

    .line 1386
    .local v1, e:Ljava/lang/Exception;
    iget-object v6, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$AutoDiscoverThread;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->accountId:J
    invoke-static {v6}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$2400(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)J

    move-result-wide v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v6, v7, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0
.end method

.method public setEndMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 1401
    iput-object p1, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$AutoDiscoverThread;->endMessage:Landroid/os/Message;

    .line 1402
    return-void
.end method
