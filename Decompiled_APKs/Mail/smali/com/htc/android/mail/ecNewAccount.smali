.class public Lcom/htc/android/mail/ecNewAccount;
.super Landroid/app/Activity;
.source "ecNewAccount.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/ecNewAccount$insertAccountTask;
    }
.end annotation


# static fields
.field public static final ACCOUNTLIST_CALLING:I = 0x5b

.field public static final ACCOUNTLIST_NEW_ACCOUNT_FAIL:I = 0x65

.field public static final ACCOUNTLIST_NEW_ACCOUNT_OK:I = 0x68

.field public static final ACCOUNT_AND_SYNC:I = 0x60

.field public static final ACTION_SILDER_STATE:Ljava/lang/String; = "com.htc.launcher.ThemeChooser.action.silder_change"

.field public static final BACK_TO_PROVIDER:I = 0xc8

.field public static final COMPOSE_CALLING:I = 0x5a

.field public static final COMPOSE_NEW_ACCOUNT_FAIL:I = 0x64

.field public static final COMPOSE_NEW_ACCOUNT_OK:I = 0x67

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static final EXTRA_SILDER_STATE:Ljava/lang/String; = "silder_state"

.field public static final HUX_RESTORE_EXCHANGE_ACCT_CALLING:I = 0x61

.field public static final HUX_RESTORE_EXCHANGE_ACCT_OK:I = 0x6e

.field public static final MAILLIST_CALLING:I = 0x5c

.field public static final MAILLIST_NEW_ACCOUNT_FAIL:I = 0x66

.field public static final MAILLIST_NEW_ACCOUNT_OK:I = 0x69

.field public static final MAILTAB_CALLING:I = 0x5f

.field public static final MAILTAB_NEW_ACCOUNT_OK:I = 0x6d

.field public static final MAILWHEEL_CALLING:I = 0x5d

.field public static final MAILWHEEL_NEW_ACCOUNT_OK:I = 0x6b

.field public static final OOBE_CALLING:I = 0x5e

.field public static final OOBE_NEW_ACCOUNT_OK:I = 0x6c

.field private static final TAG:Ljava/lang/String; = "ecNewAccount"

.field public static final TRANSFER_TO_MAILLIST:I = 0x6a

.field private static providerStr:Ljava/lang/String;


# instance fields
.field public DiffDomainListener:Landroid/content/DialogInterface$OnClickListener;

.field public NoNetworkGoStep4Listener:Landroid/content/DialogInterface$OnClickListener;

.field private UI:Lcom/htc/android/mail/MailAccountUI;

.field private cmd:Ljava/lang/String;

.field private confirmSaveAccountEvent:Landroid/content/DialogInterface$OnClickListener;

.field public gotoSettingListener:Landroid/content/DialogInterface$OnClickListener;

.field private mBackupManager:Landroid/app/backup/BackupManager;

.field mHandler:Landroid/os/Handler;

.field mIntentfilter:Landroid/content/IntentFilter;

.field private mIsDestroyed:Z

.field private mOnForeground:Z

.field private mWeakHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private m_uri:Landroid/net/Uri;

.field private stopCheckAccountListener:Landroid/content/DialogInterface$OnKeyListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/ecNewAccount;->DEBUG:Z

    .line 47
    const-string v0, ""

    sput-object v0, Lcom/htc/android/mail/ecNewAccount;->providerStr:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    iput-object v2, p0, Lcom/htc/android/mail/ecNewAccount;->m_uri:Landroid/net/Uri;

    .line 81
    new-instance v0, Lcom/htc/android/mail/MailAccountUI;

    invoke-direct {v0}, Lcom/htc/android/mail/MailAccountUI;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    .line 83
    iput-object v2, p0, Lcom/htc/android/mail/ecNewAccount;->mIntentfilter:Landroid/content/IntentFilter;

    .line 84
    iput-boolean v3, p0, Lcom/htc/android/mail/ecNewAccount;->mOnForeground:Z

    .line 87
    new-instance v0, Lcom/htc/android/mail/MailRequestHandler;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/MailRequestHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->mHandler:Landroid/os/Handler;

    .line 88
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/htc/android/mail/ecNewAccount;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->mWeakHandler:Ljava/lang/ref/WeakReference;

    .line 89
    iput-boolean v3, p0, Lcom/htc/android/mail/ecNewAccount;->mIsDestroyed:Z

    .line 111
    iput-object v2, p0, Lcom/htc/android/mail/ecNewAccount;->cmd:Ljava/lang/String;

    .line 456
    new-instance v0, Lcom/htc/android/mail/ecNewAccount$3;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/ecNewAccount$3;-><init>(Lcom/htc/android/mail/ecNewAccount;)V

    iput-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->NoNetworkGoStep4Listener:Landroid/content/DialogInterface$OnClickListener;

    .line 469
    new-instance v0, Lcom/htc/android/mail/ecNewAccount$4;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/ecNewAccount$4;-><init>(Lcom/htc/android/mail/ecNewAccount;)V

    iput-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->DiffDomainListener:Landroid/content/DialogInterface$OnClickListener;

    .line 483
    new-instance v0, Lcom/htc/android/mail/ecNewAccount$5;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/ecNewAccount$5;-><init>(Lcom/htc/android/mail/ecNewAccount;)V

    iput-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->stopCheckAccountListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 502
    new-instance v0, Lcom/htc/android/mail/ecNewAccount$6;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/ecNewAccount$6;-><init>(Lcom/htc/android/mail/ecNewAccount;)V

    iput-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->gotoSettingListener:Landroid/content/DialogInterface$OnClickListener;

    .line 532
    new-instance v0, Lcom/htc/android/mail/ecNewAccount$7;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/ecNewAccount$7;-><init>(Lcom/htc/android/mail/ecNewAccount;)V

    iput-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->confirmSaveAccountEvent:Landroid/content/DialogInterface$OnClickListener;

    .line 632
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/mail/ecNewAccount;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/htc/android/mail/ecNewAccount;->btnFncL()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/android/mail/ecNewAccount;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/htc/android/mail/ecNewAccount;->btnFncR()V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/htc/android/mail/ecNewAccount;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/htc/android/mail/ecNewAccount;)Lcom/htc/android/mail/MailAccountUI;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/android/mail/ecNewAccount;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/htc/android/mail/ecNewAccount;->doSaveAccount()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/android/mail/ecNewAccount;Landroid/net/Uri;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/android/mail/ecNewAccount;->processAccountCreatedProcedure(Landroid/net/Uri;J)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/android/mail/ecNewAccount;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/htc/android/mail/ecNewAccount;->setResultAndClose(J)V

    return-void
.end method

.method private btnFncL()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 177
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget v0, v0, Lcom/htc/android/mail/MailAccountUI;->curNewAccountStep:I

    packed-switch v0, :pswitch_data_0

    .line 217
    :goto_0
    return-void

    .line 189
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/android/mail/MailAccountUI;->smartLogin:Z

    .line 190
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iput v2, v0, Lcom/htc/android/mail/MailAccountUI;->curNewAccountStep:I

    .line 191
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailAccountUI;->setScreen2()V

    .line 192
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailAccountUI;->checkScreen2()V

    .line 193
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailAccountUI;->updateScreen()V

    goto :goto_0

    .line 197
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iput v1, v0, Lcom/htc/android/mail/MailAccountUI;->curNewAccountStep:I

    .line 198
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailAccountUI;->updateScreen()V

    goto :goto_0

    .line 202
    :pswitch_2
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iput v2, v0, Lcom/htc/android/mail/MailAccountUI;->curNewAccountStep:I

    .line 203
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailAccountUI;->checkScreen2()V

    .line 204
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailAccountUI;->updateScreen()V

    goto :goto_0

    .line 208
    :pswitch_3
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-boolean v0, v0, Lcom/htc/android/mail/MailAccountUI;->smartLogin:Z

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iput v1, v0, Lcom/htc/android/mail/MailAccountUI;->curNewAccountStep:I

    .line 214
    :goto_1
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailAccountUI;->updateScreen()V

    goto :goto_0

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    const/4 v1, 0x3

    iput v1, v0, Lcom/htc/android/mail/MailAccountUI;->curNewAccountStep:I

    .line 212
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailAccountUI;->checkScreen3()V

    goto :goto_1

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private btnFncR()V
    .locals 5

    .prologue
    const/16 v4, 0xf

    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 230
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget v0, v0, Lcom/htc/android/mail/MailAccountUI;->curNewAccountStep:I

    packed-switch v0, :pswitch_data_0

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 233
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/android/mail/ecNewAccount;->checkNetworkAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailAccountUI;->checkScreen1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailAccountUI;->checkSameEmailAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    invoke-virtual {p0, v4}, Lcom/htc/android/mail/ecNewAccount;->showDialog(I)V

    goto :goto_0

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-object v0, v0, Lcom/htc/android/mail/MailAccountUI;->okAddr:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-object v0, v0, Lcom/htc/android/mail/MailAccountUI;->okPwd:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-object v0, v0, Lcom/htc/android/mail/MailAccountUI;->okAddr:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI;->mEmailAddress:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-object v0, v0, Lcom/htc/android/mail/MailAccountUI;->okPwd:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 261
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iput v3, v0, Lcom/htc/android/mail/MailAccountUI;->curNewAccountStep:I

    .line 262
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailAccountUI;->updateScreen()V

    goto :goto_0

    .line 265
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, p0, Lcom/htc/android/mail/ecNewAccount;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, p0, v1}, Lcom/htc/android/mail/MailAccountUI;->verifySmart(Landroid/content/Context;Ljava/lang/ref/WeakReference;)V

    goto :goto_0

    .line 268
    :pswitch_1
    sget-boolean v0, Lcom/htc/android/mail/ecNewAccount;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "ecNewAccount"

    const-string v1, "NEW_ACCOUNT_STEP_2>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_3
    invoke-direct {p0}, Lcom/htc/android/mail/ecNewAccount;->checkNetworkAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailAccountUI;->checkSameEmailAddress()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 273
    invoke-virtual {p0, v4}, Lcom/htc/android/mail/ecNewAccount;->showDialog(I)V

    goto/16 :goto_0

    .line 277
    :cond_4
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI;->mPort:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailAccountUI;->checkPortNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    sget-boolean v0, Lcom/htc/android/mail/ecNewAccount;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "ecNewAccount"

    const-string v1, "checkAccountWithPop3>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :cond_5
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailAccountUI;->ifVerifyScreen2()Z

    move-result v0

    if-ne v0, v2, :cond_6

    .line 288
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, p0, Lcom/htc/android/mail/ecNewAccount;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, p0, v1}, Lcom/htc/android/mail/MailAccountUI;->checkAccountWithPop3(Landroid/content/Context;Ljava/lang/ref/WeakReference;)V

    goto/16 :goto_0

    .line 290
    :cond_6
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    const/4 v1, 0x3

    iput v1, v0, Lcom/htc/android/mail/MailAccountUI;->curNewAccountStep:I

    .line 291
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailAccountUI;->setScreen3()V

    .line 292
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailAccountUI;->checkScreen3()V

    .line 293
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailAccountUI;->updateScreen()V

    goto/16 :goto_0

    .line 297
    :pswitch_2
    sget-boolean v0, Lcom/htc/android/mail/ecNewAccount;->DEBUG:Z

    if-eqz v0, :cond_7

    const-string v0, "ecNewAccount"

    const-string v1, "NEW_ACCOUNT_STEP_3>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_7
    invoke-direct {p0}, Lcom/htc/android/mail/ecNewAccount;->checkNetworkAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI;->mOutPort:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailAccountUI;->checkPortNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    sget-boolean v0, Lcom/htc/android/mail/ecNewAccount;->DEBUG:Z

    if-eqz v0, :cond_8

    const-string v0, "ecNewAccount"

    const-string v1, "checkAccountWithSmtp>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_8
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI;->mProtocol:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v1}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v1

    iput v1, v0, Lcom/htc/android/mail/MailAccountUI;->mProtocolValue:I

    .line 309
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailAccountUI;->ifVerifyScreen3()Z

    move-result v0

    if-ne v0, v2, :cond_9

    .line 310
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, p0, Lcom/htc/android/mail/ecNewAccount;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, p0, v1}, Lcom/htc/android/mail/MailAccountUI;->checkAccountWithSmtp(Landroid/content/Context;Ljava/lang/ref/WeakReference;)V

    goto/16 :goto_0

    .line 312
    :cond_9
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iput v3, v0, Lcom/htc/android/mail/MailAccountUI;->curNewAccountStep:I

    .line 313
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailAccountUI;->checkScreen4()V

    .line 314
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailAccountUI;->updateScreen()V

    goto/16 :goto_0

    .line 319
    :pswitch_3
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailAccountUI;->checkSameAccountName()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 320
    invoke-virtual {p0}, Lcom/htc/android/mail/ecNewAccount;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 321
    sget-boolean v0, Lcom/htc/android/mail/ecNewAccount;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ecNewAccount"

    const-string v1, "return in finish>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 324
    :cond_a
    iget-boolean v0, p0, Lcom/htc/android/mail/ecNewAccount;->mIsDestroyed:Z

    if-eqz v0, :cond_b

    .line 325
    sget-boolean v0, Lcom/htc/android/mail/ecNewAccount;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ecNewAccount"

    const-string v1, "return in mIsDestroyed>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 328
    :cond_b
    invoke-virtual {p0, v2}, Lcom/htc/android/mail/ecNewAccount;->showDialog(I)V

    goto/16 :goto_0

    .line 330
    :cond_c
    invoke-direct {p0}, Lcom/htc/android/mail/ecNewAccount;->doSaveAccount()V

    goto/16 :goto_0

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private checkNetworkAccess()Z
    .locals 1

    .prologue
    .line 222
    invoke-static {p0}, Lcom/htc/android/mail/MailCommon;->checkNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/ecNewAccount;->showDialog(I)V

    .line 224
    const/4 v0, 0x0

    .line 226
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private doSaveAccount()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 560
    sget-boolean v1, Lcom/htc/android/mail/ecNewAccount;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ecNewAccount"

    const-string v2, "doSaveAccount new>"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI;->mDefaultChkbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 562
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->resetDefaultAccount()V

    .line 565
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/mail/ecNewAccount;->m_uri:Landroid/net/Uri;

    .line 566
    const/4 v0, 0x0

    .line 567
    .local v0, accountValues:Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-boolean v1, v1, Lcom/htc/android/mail/MailAccountUI;->smartLogin:Z

    if-eqz v1, :cond_4

    .line 568
    iget-object v1, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v1}, Lcom/htc/android/mail/MailAccountUI;->gatherSmartValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 574
    :goto_0
    const-string v1, "_peakonfrequency"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2

    .line 575
    const-string v1, "_peakonfrequency"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 578
    :cond_2
    sget-boolean v1, Lcom/htc/android/mail/ecNewAccount;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "ecNewAccount"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VerifyAccount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget v3, v3, Lcom/htc/android/mail/MailAccountUI;->VerifyAccount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    :cond_3
    const-string v1, "AccountVerify"

    iget-object v2, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget v2, v2, Lcom/htc/android/mail/MailAccountUI;->VerifyAccount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 581
    new-instance v1, Lcom/htc/android/mail/ecNewAccount$insertAccountTask;

    invoke-direct {v1, p0, p0}, Lcom/htc/android/mail/ecNewAccount$insertAccountTask;-><init>(Lcom/htc/android/mail/ecNewAccount;Lcom/htc/android/mail/ecNewAccount;)V

    new-array v2, v4, [Landroid/content/ContentValues;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/ecNewAccount$insertAccountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 582
    return-void

    .line 570
    :cond_4
    iget-object v1, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v1, v4}, Lcom/htc/android/mail/MailAccountUI;->gatherValues(Z)Landroid/content/ContentValues;

    move-result-object v0

    goto :goto_0
.end method

.method private processAccountCreatedProcedure(Landroid/net/Uri;J)V
    .locals 6
    .parameter "uri"
    .parameter "aid"

    .prologue
    const/4 v5, 0x0

    .line 690
    invoke-virtual {p0}, Lcom/htc/android/mail/ecNewAccount;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/mail/Mail;->setServicesEnabled(Landroid/content/Context;)V

    .line 693
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 694
    .local v2, result:Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/htc/android/mail/ecNewAccount;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "accountAuthenticatorResponse"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountAuthenticatorResponse;

    .line 696
    .local v0, callback:Landroid/accounts/AccountAuthenticatorResponse;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    .line 698
    :cond_0
    const v3, 0x7f0b008c

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 700
    iget-object v3, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget v3, v3, Lcom/htc/android/mail/MailAccountUI;->mCallingActivity:I

    if-gez v3, :cond_1

    .line 701
    iget-object v3, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    const/16 v4, 0x5d

    iput v4, v3, Lcom/htc/android/mail/MailAccountUI;->mCallingActivity:I

    .line 703
    :cond_1
    sget-object v3, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-virtual {v3}, Lcom/htc/android/mail/MailEventBroadcaster;->setAccountChange()V

    .line 704
    sget-object v3, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-virtual {v3, p2, p3}, Lcom/htc/android/mail/MailEventBroadcaster;->setAccountID(J)V

    .line 705
    sget-object v3, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-virtual {p0}, Lcom/htc/android/mail/ecNewAccount;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/MailEventBroadcaster;->flush(Landroid/content/Context;)V

    .line 708
    iget-object v3, p0, Lcom/htc/android/mail/ecNewAccount;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v3}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 709
    sget-boolean v3, Lcom/htc/android/mail/ecNewAccount;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "ecNewAccount"

    const-string v4, "BackupManager.dataChanged()"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    :cond_2
    iget-object v3, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-object v4, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-object v4, v4, Lcom/htc/android/mail/MailAccountUI;->mEmailAddress:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/MailAccountUI;->updateEmailAddrToPublicAccount(Ljava/lang/String;)V

    .line 713
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.launcher.ThemeChooser.action.silder_change"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 714
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "silder_state"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 715
    invoke-virtual {p0, v1}, Lcom/htc/android/mail/ecNewAccount;->sendBroadcast(Landroid/content/Intent;)V

    .line 716
    return-void
.end method

.method private setResultAndClose(J)V
    .locals 3
    .parameter "aid"

    .prologue
    .line 539
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 540
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "AccountId"

    long-to-int v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 541
    const-string v1, "AccountName"

    iget-object v2, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-object v2, v2, Lcom/htc/android/mail/MailAccountUI;->mDesc:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 542
    iget-object v1, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget v1, v1, Lcom/htc/android/mail/MailAccountUI;->mCallingActivity:I

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_0

    .line 543
    const/16 v1, 0x67

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/ecNewAccount;->setResult(I)V

    .line 556
    :goto_0
    invoke-virtual {p0}, Lcom/htc/android/mail/ecNewAccount;->finish()V

    .line 557
    return-void

    .line 544
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget v1, v1, Lcom/htc/android/mail/MailAccountUI;->mCallingActivity:I

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_1

    .line 545
    const/16 v1, 0x68

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/ecNewAccount;->setResult(I)V

    goto :goto_0

    .line 547
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget v1, v1, Lcom/htc/android/mail/MailAccountUI;->mCallingActivity:I

    const/16 v2, 0x5c

    if-ne v1, v2, :cond_2

    .line 548
    const/16 v1, 0x69

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/ecNewAccount;->setResult(I)V

    goto :goto_0

    .line 550
    :cond_2
    iget-object v1, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget v1, v1, Lcom/htc/android/mail/MailAccountUI;->mCallingActivity:I

    const/16 v2, 0x5f

    if-ne v1, v2, :cond_3

    .line 551
    const/16 v1, 0x6d

    invoke-virtual {p0, v1, v0}, Lcom/htc/android/mail/ecNewAccount;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 554
    :cond_3
    const/16 v1, 0x6b

    invoke-virtual {p0, v1, v0}, Lcom/htc/android/mail/ecNewAccount;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public backScreen()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 606
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget v0, v0, Lcom/htc/android/mail/MailAccountUI;->curNewAccountStep:I

    packed-switch v0, :pswitch_data_0

    .line 629
    :goto_0
    return-void

    .line 608
    :pswitch_0
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/ecNewAccount;->setResult(I)V

    .line 609
    invoke-virtual {p0}, Lcom/htc/android/mail/ecNewAccount;->finish()V

    goto :goto_0

    .line 612
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iput v1, v0, Lcom/htc/android/mail/MailAccountUI;->curNewAccountStep:I

    .line 613
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailAccountUI;->updateScreen()V

    goto :goto_0

    .line 616
    :pswitch_2
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    const/4 v1, 0x2

    iput v1, v0, Lcom/htc/android/mail/MailAccountUI;->curNewAccountStep:I

    .line 617
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailAccountUI;->updateScreen()V

    goto :goto_0

    .line 620
    :pswitch_3
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-boolean v0, v0, Lcom/htc/android/mail/MailAccountUI;->smartLogin:Z

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iput v1, v0, Lcom/htc/android/mail/MailAccountUI;->curNewAccountStep:I

    .line 626
    :goto_1
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailAccountUI;->updateScreen()V

    goto :goto_0

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    const/4 v1, 0x3

    iput v1, v0, Lcom/htc/android/mail/MailAccountUI;->curNewAccountStep:I

    .line 624
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailAccountUI;->checkScreen3()V

    goto :goto_1

    .line 606
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 513
    const/16 v0, 0x32

    if-ne p1, v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget v0, v0, Lcom/htc/android/mail/MailAccountUI;->curNewAccountStep:I

    packed-switch v0, :pswitch_data_0

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 517
    :pswitch_0
    sget-boolean v0, Lcom/htc/android/mail/ecNewAccount;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ecNewAccount"

    const-string v1, "onActivityResult > NEW_ACCOUNT_STEP_1"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 521
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailAccountUI;->checkScreen2()V

    goto :goto_0

    .line 524
    :pswitch_2
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailAccountUI;->checkScreen3()V

    goto :goto_0

    .line 515
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/4 v9, 0x1

    .line 114
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 115
    sget-boolean v5, Lcom/htc/android/mail/ecNewAccount;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "Jerry"

    const-string v6, "ecNewAccount on Create>"

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_0
    invoke-virtual {p0, v9}, Lcom/htc/android/mail/ecNewAccount;->requestWindowFeature(I)Z

    .line 117
    const v5, 0x7f030012

    invoke-virtual {p0, v5}, Lcom/htc/android/mail/ecNewAccount;->setContentView(I)V

    .line 120
    invoke-virtual {p0}, Lcom/htc/android/mail/ecNewAccount;->getWindow()Landroid/view/Window;

    move-result-object v5

    const v6, 0x20806a9

    invoke-virtual {v5, v6}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 122
    new-instance v5, Landroid/app/backup/BackupManager;

    invoke-direct {v5, p0}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/htc/android/mail/ecNewAccount;->mBackupManager:Landroid/app/backup/BackupManager;

    .line 124
    invoke-virtual {p0}, Lcom/htc/android/mail/ecNewAccount;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 125
    .local v3, extras:Landroid/os/Bundle;
    if-eqz v3, :cond_4

    .line 127
    const-string v5, "_domain"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, _domain:Ljava/lang/String;
    const-string v5, "_id"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 129
    .local v1, _providerid:J
    const-string v5, "provider"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/htc/android/mail/ecNewAccount;->providerStr:Ljava/lang/String;

    .line 132
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 135
    iget-object v5, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iput-object v0, v5, Lcom/htc/android/mail/MailAccountUI;->mOri_domain:Ljava/lang/String;

    .line 141
    .end local v0           #_domain:Ljava/lang/String;
    .end local v1           #_providerid:J
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    sget-object v6, Lcom/htc/android/mail/ecNewAccount;->providerStr:Ljava/lang/String;

    iput-object v6, v5, Lcom/htc/android/mail/MailAccountUI;->titleString:Ljava/lang/String;

    .line 142
    iget-object v5, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v5, p0}, Lcom/htc/android/mail/MailAccountUI;->CreateAccountUI(Landroid/app/Activity;)Z

    .line 143
    invoke-virtual {p0}, Lcom/htc/android/mail/ecNewAccount;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 145
    .local v4, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {p0}, Lcom/htc/android/mail/ecNewAccount;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "CallingActivity"

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Lcom/htc/android/mail/MailAccountUI;->mCallingActivity:I

    .line 148
    iget-object v5, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget v5, v5, Lcom/htc/android/mail/MailAccountUI;->mCallingActivity:I

    const/16 v6, 0x5e

    if-ne v5, v6, :cond_2

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x78

    if-ne v5, v6, :cond_2

    .line 149
    const/4 v5, 0x5

    invoke-virtual {p0, v5}, Lcom/htc/android/mail/ecNewAccount;->setRequestedOrientation(I)V

    .line 153
    :cond_2
    iget-object v5, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-object v5, v5, Lcom/htc/android/mail/MailAccountUI;->btnL:Lcom/htc/android/mail/widget/MailFooterBarButton;

    new-instance v6, Lcom/htc/android/mail/ecNewAccount$1;

    invoke-direct {v6, p0}, Lcom/htc/android/mail/ecNewAccount$1;-><init>(Lcom/htc/android/mail/ecNewAccount;)V

    invoke-virtual {v5, v6}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v5, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-object v5, v5, Lcom/htc/android/mail/MailAccountUI;->btnR:Lcom/htc/android/mail/widget/MailFooterBarButton;

    new-instance v6, Lcom/htc/android/mail/ecNewAccount$2;

    invoke-direct {v6, p0}, Lcom/htc/android/mail/ecNewAccount$2;-><init>(Lcom/htc/android/mail/ecNewAccount;)V

    invoke-virtual {v5, v6}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v5, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v5}, Lcom/htc/android/mail/MailAccountUI;->checkScreen2()V

    .line 166
    iget-object v5, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v5}, Lcom/htc/android/mail/MailAccountUI;->checkScreen4()V

    .line 167
    iget-object v5, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iput v9, v5, Lcom/htc/android/mail/MailAccountUI;->curNewAccountStep:I

    .line 168
    iget-object v5, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v5}, Lcom/htc/android/mail/MailAccountUI;->updateScreen()V

    .line 170
    iget-object v5, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-object v5, v5, Lcom/htc/android/mail/MailAccountUI;->mEmailAddress:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v5}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 171
    sget-object v5, Lcom/htc/android/mail/ecNewAccount;->providerStr:Ljava/lang/String;

    const-string v6, "other"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 172
    iget-object v5, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    sget-object v6, Lcom/htc/android/mail/ecNewAccount;->providerStr:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/htc/android/mail/MailAccountUI;->setDesc(Ljava/lang/String;)V

    .line 174
    :cond_3
    return-void

    .line 138
    .end local v4           #intent:Landroid/content/Intent;
    :cond_4
    iget-object v5, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    const-string v6, ""

    iput-object v6, v5, Lcom/htc/android/mail/MailAccountUI;->mOri_domain:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter "id"

    .prologue
    const v6, 0x1080027

    const/4 v5, 0x0

    const v3, 0x7f0b0291

    const v2, 0x7f0b005a

    const/4 v4, 0x1

    .line 347
    packed-switch p1, :pswitch_data_0

    .line 453
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 349
    :pswitch_1
    const v1, 0x7f090084

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/ecNewAccount;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 350
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/ecNewAccount;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b00e2

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/ecNewAccount;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 357
    :pswitch_2
    const v1, 0x7f09007d

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/ecNewAccount;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 358
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/ecNewAccount;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b00e1

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/ecNewAccount;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 366
    :pswitch_3
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 367
    .local v0, dialog:Lcom/htc/app/HtcProgressDialog;
    const v1, 0x7f0b00de

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/ecNewAccount;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 368
    invoke-virtual {v0, v4}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 369
    invoke-virtual {v0, v4}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 370
    iget-object v1, p0, Lcom/htc/android/mail/ecNewAccount;->stopCheckAccountListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto/16 :goto_0

    .line 374
    .end local v0           #dialog:Lcom/htc/app/HtcProgressDialog;
    :pswitch_4
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 375
    .restart local v0       #dialog:Lcom/htc/app/HtcProgressDialog;
    const v1, 0x7f0b00df

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/ecNewAccount;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 376
    invoke-virtual {v0, v4}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 377
    invoke-virtual {v0, v4}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 378
    iget-object v1, p0, Lcom/htc/android/mail/ecNewAccount;->stopCheckAccountListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto/16 :goto_0

    .line 381
    .end local v0           #dialog:Lcom/htc/app/HtcProgressDialog;
    :pswitch_5
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/ecNewAccount;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b01c0

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/ecNewAccount;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b01aa

    iget-object v3, p0, Lcom/htc/android/mail/ecNewAccount;->NoNetworkGoStep4Listener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 389
    :pswitch_6
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/ecNewAccount;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b01bd

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/ecNewAccount;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/ecNewAccount;->DiffDomainListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v3, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 396
    :pswitch_7
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 397
    .restart local v0       #dialog:Lcom/htc/app/HtcProgressDialog;
    const v1, 0x7f0b00e0

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/ecNewAccount;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 398
    invoke-virtual {v0, v4}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 399
    invoke-virtual {v0, v4}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 400
    iget-object v1, p0, Lcom/htc/android/mail/ecNewAccount;->stopCheckAccountListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto/16 :goto_0

    .line 404
    .end local v0           #dialog:Lcom/htc/app/HtcProgressDialog;
    :pswitch_8
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/ecNewAccount;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b00dd

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/ecNewAccount;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 412
    :pswitch_9
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/ecNewAccount;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b00dc

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/ecNewAccount;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b008e

    invoke-virtual {v1, v2, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/ecNewAccount;->confirmSaveAccountEvent:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v3, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 421
    :pswitch_a
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/ecNewAccount;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b00db

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/ecNewAccount;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 429
    :pswitch_b
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b01c2

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/ecNewAccount;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b01c1

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/ecNewAccount;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0167

    iget-object v3, p0, Lcom/htc/android/mail/ecNewAccount;->gotoSettingListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b008e

    invoke-virtual {v1, v2, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 438
    :pswitch_c
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/ecNewAccount;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b008f

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/ecNewAccount;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 445
    :pswitch_d
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/ecNewAccount;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b01ca

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/ecNewAccount;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 347
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_4
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method protected final onDestroy()V
    .locals 2

    .prologue
    .line 599
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 600
    sget-boolean v0, Lcom/htc/android/mail/ecNewAccount;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ecNewAccount"

    const-string v1, "onDestroy>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/ecNewAccount;->mIsDestroyed:Z

    .line 602
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v0, p0}, Lcom/htc/android/mail/MailAccountUI;->cancelRequest(Landroid/content/Context;)V

    .line 603
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 338
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 339
    invoke-virtual {p0}, Lcom/htc/android/mail/ecNewAccount;->backScreen()V

    .line 340
    const/4 v0, 0x1

    .line 342
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 586
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 587
    sget-boolean v0, Lcom/htc/android/mail/ecNewAccount;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ecNewAccount"

    const-string v1, "onPause>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/ecNewAccount;->mOnForeground:Z

    .line 589
    return-void
.end method

.method protected final onResume()V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 100
    sget-boolean v0, Lcom/htc/android/mail/ecNewAccount;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Jerry"

    const-string v1, "ecNewAccount on Resume>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/ecNewAccount;->mOnForeground:Z

    .line 104
    iget-object v0, p0, Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget v0, v0, Lcom/htc/android/mail/MailAccountUI;->mCallingActivity:I

    const/16 v1, 0x5e

    if-ne v0, v1, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x78

    if-ne v0, v1, :cond_1

    .line 105
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/ecNewAccount;->setRequestedOrientation(I)V

    .line 109
    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 93
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 94
    sget-boolean v0, Lcom/htc/android/mail/ecNewAccount;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ecNewAccount"

    const-string v1, "onStart> "

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 593
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 594
    sget-boolean v0, Lcom/htc/android/mail/ecNewAccount;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ecNewAccount"

    const-string v1, "onStop>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    :cond_0
    return-void
.end method
