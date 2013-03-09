.class public Lcom/htc/android/mail/huxservice/HuxAddAccount;
.super Lcom/htc/android/mail/huxservice/HuxSetAccountBase;
.source "HuxAddAccount.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/huxservice/HuxAddAccount$HuxAddAccountRequestHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HuxAddAccount"


# instance fields
.field protected proceedAddAccountListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;-><init>()V

    .line 139
    new-instance v0, Lcom/htc/android/mail/huxservice/HuxAddAccount$1;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/huxservice/HuxAddAccount$1;-><init>(Lcom/htc/android/mail/huxservice/HuxAddAccount;)V

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxAddAccount;->proceedAddAccountListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method protected backScreen()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUI:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    iget v0, v0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiCurrentScreen:I

    sparse-switch v0, :sswitch_data_0

    .line 96
    :goto_0
    return-void

    .line 90
    :sswitch_0
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/huxservice/HuxAddAccount;->setResult(I)V

    .line 91
    invoke-virtual {p0}, Lcom/htc/android/mail/huxservice/HuxAddAccount;->finish()V

    goto :goto_0

    .line 87
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x14 -> :sswitch_0
    .end sparse-switch
.end method

.method protected btnFncL()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUI:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    iget v0, v0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiCurrentScreen:I

    sparse-switch v0, :sswitch_data_0

    .line 106
    :goto_0
    return-void

    .line 103
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/android/mail/huxservice/HuxAddAccount;->backScreen()V

    goto :goto_0

    .line 100
    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_0
        0x1e -> :sswitch_0
    .end sparse-switch
.end method

.method protected btnFncR()V
    .locals 7

    .prologue
    const/16 v3, 0x64

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 109
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUI:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    iget v1, v1, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiCurrentScreen:I

    sparse-switch v1, :sswitch_data_0

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 111
    :sswitch_0
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUI:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiEmailAddr:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mEmailAddr:Ljava/lang/String;

    .line 112
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUI:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/mail/util/ParseMachine;->parseHuxPwd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mPassword:Ljava/lang/String;

    .line 113
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mProviderStr:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/htc/android/mail/huxservice/HUXUTIL;->getEndpointId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mEndPointId:I

    .line 114
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mEmailAddr:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mPassword:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/htc/android/mail/huxservice/HuxAddAccount;->checkEmailAndPwd(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    const-string v1, "MSN"

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mProviderStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    const/16 v1, 0x6d

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/huxservice/HuxAddAccount;->showDialog(I)V

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/android/mail/huxservice/HuxAddAccount;->showDialog(I)V

    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, body:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mEmailAddr:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mPassword:Ljava/lang/String;

    iget v3, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mEndPointId:I

    iget v4, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUserEndPointId:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/htc/android/mail/huxservice/HUXUTIL;->gen_endpoint(Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    .line 123
    new-instance v1, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostEndpointTask;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostEndpointTask;-><init>(Lcom/htc/android/mail/huxservice/HuxSetAccountBase;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v5

    aput-object v0, v2, v6

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostEndpointTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 128
    .end local v0           #body:Ljava/lang/String;
    :sswitch_1
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUI:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    invoke-virtual {v1, v6, v3}, Lcom/htc/android/mail/huxservice/HuxAccountUI;->showDialog(ZI)V

    .line 130
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUI:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiDefaultChkbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 131
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mEmailAddr:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mDefaultAccountEmailAddr:Ljava/lang/String;

    .line 134
    :cond_2
    new-instance v1, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$DoSaveHuxAccountAndCloseTask;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$DoSaveHuxAccountAndCloseTask;-><init>(Lcom/htc/android/mail/huxservice/HuxSetAccountBase;)V

    new-array v2, v6, [Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$DoSaveHuxAccountAndCloseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 109
    nop

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_0
        0x1e -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->onCreate(Landroid/os/Bundle;)V

    .line 27
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HuxAddAccount"

    const-string v1, "onCreate> "

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_0
    new-instance v0, Lcom/htc/android/mail/huxservice/HuxAddAccount$HuxAddAccountRequestHandler;

    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p0}, Lcom/htc/android/mail/huxservice/HuxAddAccount$HuxAddAccountRequestHandler;-><init>(Lcom/htc/android/mail/huxservice/HuxAddAccount;Landroid/content/Context;Lcom/htc/android/mail/huxservice/HuxSetAccountBase;)V

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mRequestHandler:Lcom/htc/android/mail/huxservice/HuxSetAccountBase$HuxRequestHandler;

    .line 30
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mRequestHandler:Lcom/htc/android/mail/huxservice/HuxSetAccountBase$HuxRequestHandler;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    .line 32
    invoke-virtual {p0}, Lcom/htc/android/mail/huxservice/HuxAddAccount;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mIntent:Landroid/content/Intent;

    .line 33
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mIntent:Landroid/content/Intent;

    const-string v1, "provider"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mProviderStr:Ljava/lang/String;

    .line 34
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mIntent:Landroid/content/Intent;

    const-string v1, "providerDesc"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mProviderDesc:Ljava/lang/String;

    .line 35
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mIntent:Landroid/content/Intent;

    const-string v1, "CallingActivity"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mCallingActivity:I

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mProviderDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - Sign in"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mProviderTitle:Ljava/lang/String;

    .line 38
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "HuxAddAccount"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "provider="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mProviderStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " CallingActivity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mCallingActivity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_1
    new-instance v0, Lcom/htc/android/mail/huxservice/HuxAccountUI;

    const/16 v1, 0x14

    invoke-direct {v0, p0, v1}, Lcom/htc/android/mail/huxservice/HuxAccountUI;-><init>(Lcom/htc/android/mail/huxservice/HuxSetAccountBase;I)V

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUI:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    .line 41
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 3
    .parameter "id"
    .parameter "dialog"
    .parameter "args"

    .prologue
    .line 76
    invoke-super {p0, p1, p2, p3}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 77
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HuxAddAccount"

    const-string v1, "onPrepareDialog()"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 83
    .end local p2
    :goto_0
    return-void

    .line 80
    .restart local p2
    :pswitch_0
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    const/4 v0, -0x1

    const v1, 0x7f0b0291

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/huxservice/HuxAddAccount;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxAddAccount;->proceedAddAccountListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p2, v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch 0x6d
        :pswitch_0
    .end packed-switch
.end method
