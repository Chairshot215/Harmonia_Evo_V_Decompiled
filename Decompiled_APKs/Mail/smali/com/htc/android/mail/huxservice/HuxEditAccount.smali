.class public Lcom/htc/android/mail/huxservice/HuxEditAccount;
.super Lcom/htc/android/mail/huxservice/HuxSetAccountBase;
.source "HuxEditAccount.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/huxservice/HuxEditAccount$UpdateAccountTask;,
        Lcom/htc/android/mail/huxservice/HuxEditAccount$HuxEditAccountRequestHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HuxEditAccount"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;-><init>()V

    .line 126
    return-void
.end method

.method static synthetic access$100(Lcom/htc/android/mail/huxservice/HuxEditAccount;)Landroid/content/ContentValues;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/htc/android/mail/huxservice/HuxEditAccount;->gatherEditAcctValues()Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method private gatherEditAcctValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 119
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 120
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "_name"

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUI:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    iget-object v2, v2, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiEditYourName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v1, "_desc"

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUI:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    iget-object v2, v2, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiEditAccountName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "HuxEditAccount"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ContentValues:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected backScreen()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUI:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    iget v0, v0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiCurrentScreen:I

    sparse-switch v0, :sswitch_data_0

    .line 90
    :goto_0
    return-void

    .line 87
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/android/mail/huxservice/HuxEditAccount;->finish()V

    goto :goto_0

    .line 84
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x28 -> :sswitch_0
    .end sparse-switch
.end method

.method protected btnFncL()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUI:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    iget v0, v0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiCurrentScreen:I

    packed-switch v0, :pswitch_data_0

    .line 99
    :goto_0
    return-void

    .line 96
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/android/mail/huxservice/HuxEditAccount;->backScreen()V

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
    .end packed-switch
.end method

.method protected btnFncR()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 102
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUI:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    iget v0, v0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiCurrentScreen:I

    packed-switch v0, :pswitch_data_0

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 104
    :pswitch_0
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/huxservice/HuxEditAccount;->showDialog(I)V

    .line 105
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUI:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    iget-object v0, v0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiUpdatePwd:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUI:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    iget-object v0, v0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiEditPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/huxservice/HuxEditAccount;->checkValidPwd(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    new-instance v0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$UpdateEndpointTask;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$UpdateEndpointTask;-><init>(Lcom/htc/android/mail/huxservice/HuxSetAccountBase;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mAccount:Lcom/htc/android/mail/Account;

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUI:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    iget-object v3, v3, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiEditPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/mail/util/ParseMachine;->parseHuxPwd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$UpdateEndpointTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 112
    :cond_1
    new-instance v0, Lcom/htc/android/mail/huxservice/HuxEditAccount$UpdateAccountTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/android/mail/huxservice/HuxEditAccount$UpdateAccountTask;-><init>(Lcom/htc/android/mail/huxservice/HuxEditAccount;Lcom/htc/android/mail/huxservice/HuxEditAccount$1;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/huxservice/HuxEditAccount$UpdateAccountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 29
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HuxEditAccount"

    const-string v1, "onCreate> "

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->onCreate(Landroid/os/Bundle;)V

    .line 32
    new-instance v0, Lcom/htc/android/mail/huxservice/HuxEditAccount$HuxEditAccountRequestHandler;

    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p0}, Lcom/htc/android/mail/huxservice/HuxEditAccount$HuxEditAccountRequestHandler;-><init>(Lcom/htc/android/mail/huxservice/HuxEditAccount;Landroid/content/Context;Lcom/htc/android/mail/huxservice/HuxSetAccountBase;)V

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mRequestHandler:Lcom/htc/android/mail/huxservice/HuxSetAccountBase$HuxRequestHandler;

    .line 33
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mRequestHandler:Lcom/htc/android/mail/huxservice/HuxSetAccountBase$HuxRequestHandler;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    .line 35
    invoke-virtual {p0}, Lcom/htc/android/mail/huxservice/HuxEditAccount;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mIntent:Landroid/content/Intent;

    .line 36
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUri:Landroid/net/Uri;

    .line 37
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mAccountId:J

    .line 38
    iget-wide v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mAccountId:J

    invoke-static {v0, v1}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mAccount:Lcom/htc/android/mail/Account;

    .line 39
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mEmailAddr:Ljava/lang/String;

    .line 41
    const v0, 0x7f0b029a

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/huxservice/HuxEditAccount;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mProviderTitle:Ljava/lang/String;

    .line 43
    new-instance v0, Lcom/htc/android/mail/huxservice/HuxAccountUI;

    const/16 v1, 0x28

    invoke-direct {v0, p0, v1}, Lcom/htc/android/mail/huxservice/HuxAccountUI;-><init>(Lcom/htc/android/mail/huxservice/HuxSetAccountBase;I)V

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUI:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    .line 45
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/mail/huxservice/HuxEditAccount$1;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/huxservice/HuxEditAccount$1;-><init>(Lcom/htc/android/mail/huxservice/HuxEditAccount;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 51
    return-void
.end method
