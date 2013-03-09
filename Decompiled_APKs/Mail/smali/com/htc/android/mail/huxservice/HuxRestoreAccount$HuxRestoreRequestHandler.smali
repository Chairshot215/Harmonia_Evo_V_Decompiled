.class public Lcom/htc/android/mail/huxservice/HuxRestoreAccount$HuxRestoreRequestHandler;
.super Lcom/htc/android/mail/huxservice/HuxSetAccountBase$HuxRequestHandler;
.source "HuxRestoreAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/huxservice/HuxRestoreAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HuxRestoreRequestHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/huxservice/HuxRestoreAccount;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/huxservice/HuxRestoreAccount;Landroid/content/Context;Lcom/htc/android/mail/huxservice/HuxSetAccountBase;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "target"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/htc/android/mail/huxservice/HuxRestoreAccount$HuxRestoreRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxRestoreAccount;

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$HuxRequestHandler;-><init>(Lcom/htc/android/mail/huxservice/HuxSetAccountBase;Landroid/content/Context;Lcom/htc/android/mail/huxservice/HuxSetAccountBase;)V

    .line 64
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "message"

    .prologue
    const v11, 0x7f0b03cf

    const/16 v10, 0x12

    const/16 v9, 0x10

    const/4 v5, 0x0

    const/4 v3, -0x1

    .line 68
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "HuxRestoreAccount"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$HuxRequestHandler;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    .line 71
    .local v7, target:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 72
    :cond_1
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "HuxRestoreAccount"

    const-string v2, "target is null"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_2
    :goto_0
    return-void

    .line 76
    :cond_3
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 109
    :cond_4
    :goto_1
    invoke-super {p0, p1}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$HuxRequestHandler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 78
    :pswitch_0
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 79
    .local v6, key:I
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 81
    .local v8, val:Ljava/lang/Object;
    const/4 v1, 0x3

    if-eq v6, v1, :cond_5

    const/4 v1, 0x5

    if-ne v6, v1, :cond_6

    .line 84
    :cond_5
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxRestoreAccount$HuxRestoreRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxRestoreAccount;

    iget-object v1, v1, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/htc/android/mail/huxservice/HuxProvController;->huxAccountChangeNotify(Landroid/content/Context;Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxRestoreAccount$HuxRestoreRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxRestoreAccount;

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxRestoreAccount$HuxRestoreRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxRestoreAccount;

    iget-object v2, v2, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/huxservice/HuxRestoreAccount;->doExchangeSettinsUpdate(Landroid/content/Context;)V

    goto :goto_0

    .line 88
    :cond_6
    if-eq v6, v9, :cond_7

    const/16 v1, 0x13

    if-eq v6, v1, :cond_7

    if-ne v6, v10, :cond_4

    .line 92
    :cond_7
    if-ne v6, v10, :cond_9

    .line 93
    new-instance v0, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;

    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxRestoreAccount$HuxRestoreRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxRestoreAccount;

    iget-object v1, v1, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mProfileInfo:Lcom/htc/android/mail/huxservice/HUXUTIL$ProfileInfo;

    iget-object v1, v1, Lcom/htc/android/mail/huxservice/HUXUTIL$ProfileInfo;->exchangeInfo:Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;

    iget-object v1, v1, Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;->exchangeEmail:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxRestoreAccount$HuxRestoreRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxRestoreAccount;

    invoke-virtual {v2, v11}, Lcom/htc/android/mail/huxservice/HuxRestoreAccount;->getString(I)Ljava/lang/String;

    move-result-object v2

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 97
    .local v0, exchangeAccount:Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxRestoreAccount$HuxRestoreRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxRestoreAccount;

    iget-object v1, v1, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUserEndPointInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    .end local v0           #exchangeAccount:Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;
    :cond_8
    :goto_2
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxRestoreAccount$HuxRestoreRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxRestoreAccount;

    iget-object v1, v1, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUI:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxRestoreAccount$HuxRestoreRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxRestoreAccount;

    iget-object v2, v2, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUserEndPointInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/huxservice/HuxAccountUI;->setDefaultAccountListAdapter(Ljava/util/ArrayList;)V

    .line 106
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxRestoreAccount$HuxRestoreRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxRestoreAccount;

    iget-object v1, v1, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUI:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/huxservice/HuxAccountUI;->setCurrentScreen(I)V

    goto :goto_1

    .line 98
    :cond_9
    if-ne v6, v9, :cond_8

    .line 99
    new-instance v0, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;

    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxRestoreAccount$HuxRestoreRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxRestoreAccount;

    iget-object v1, v1, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mExchangeAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxRestoreAccount$HuxRestoreRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxRestoreAccount;

    invoke-virtual {v2, v11}, Lcom/htc/android/mail/huxservice/HuxRestoreAccount;->getString(I)Ljava/lang/String;

    move-result-object v2

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 102
    .restart local v0       #exchangeAccount:Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxRestoreAccount$HuxRestoreRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxRestoreAccount;

    iget-object v1, v1, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUserEndPointInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 76
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
