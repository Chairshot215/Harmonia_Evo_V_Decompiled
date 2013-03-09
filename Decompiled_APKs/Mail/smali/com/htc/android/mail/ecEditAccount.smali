.class public Lcom/htc/android/mail/ecEditAccount;
.super Landroid/app/Activity;
.source "ecEditAccount.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/ecEditAccount$RequestHandler;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ecEditAccount"


# instance fields
.field private UI:Lcom/htc/android/mail/MailAccountUI;

.field private confirmChangeAccountEvent:Landroid/content/DialogInterface$OnClickListener;

.field private confirmChangeAccountEventInStep1:Landroid/content/DialogInterface$OnClickListener;

.field private confirmSaveAccountEvent:Landroid/content/DialogInterface$OnClickListener;

.field public gotoSettingListener:Landroid/content/DialogInterface$OnClickListener;

.field private mAccountId:J

.field private mDelCurrentAccount:Z

.field mHandler:Lcom/htc/android/mail/ecEditAccount$RequestHandler;

.field mIntentfilter:Landroid/content/IntentFilter;

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

.field private orgEmailAddr:Ljava/lang/String;

.field private orgInServerDomain:Ljava/lang/String;

.field private orgProtocol:I

.field private stopCheckAccountListener:Landroid/content/DialogInterface$OnKeyListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/ecEditAccount;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 83
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/android/mail/ecEditAccount;->mAccountId:J

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/mail/ecEditAccount;->orgProtocol:I

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/ecEditAccount;->orgEmailAddr:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/ecEditAccount;->orgInServerDomain:Ljava/lang/String;

    .line 88
    iput-boolean v2, p0, Lcom/htc/android/mail/ecEditAccount;->mDelCurrentAccount:Z

    .line 92
    new-instance v0, Lcom/htc/android/mail/MailAccountUI;

    invoke-direct {v0}, Lcom/htc/android/mail/MailAccountUI;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/ecEditAccount;->mIntentfilter:Landroid/content/IntentFilter;

    .line 94
    iput-boolean v2, p0, Lcom/htc/android/mail/ecEditAccount;->mOnForeground:Z

    .line 620
    new-instance v0, Lcom/htc/android/mail/ecEditAccount$3;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/ecEditAccount$3;-><init>(Lcom/htc/android/mail/ecEditAccount;)V

    iput-object v0, p0, Lcom/htc/android/mail/ecEditAccount;->confirmChangeAccountEvent:Landroid/content/DialogInterface$OnClickListener;

    .line 637
    new-instance v0, Lcom/htc/android/mail/ecEditAccount$4;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/ecEditAccount$4;-><init>(Lcom/htc/android/mail/ecEditAccount;)V

    iput-object v0, p0, Lcom/htc/android/mail/ecEditAccount;->confirmChangeAccountEventInStep1:Landroid/content/DialogInterface$OnClickListener;

    .line 653
    new-instance v0, Lcom/htc/android/mail/ecEditAccount$5;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/ecEditAccount$5;-><init>(Lcom/htc/android/mail/ecEditAccount;)V

    iput-object v0, p0, Lcom/htc/android/mail/ecEditAccount;->gotoSettingListener:Landroid/content/DialogInterface$OnClickListener;

    .line 683
    new-instance v0, Lcom/htc/android/mail/ecEditAccount$6;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/ecEditAccount$6;-><init>(Lcom/htc/android/mail/ecEditAccount;)V

    iput-object v0, p0, Lcom/htc/android/mail/ecEditAccount;->stopCheckAccountListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 703
    new-instance v0, Lcom/htc/android/mail/ecEditAccount$7;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/ecEditAccount$7;-><init>(Lcom/htc/android/mail/ecEditAccount;)V

    iput-object v0, p0, Lcom/htc/android/mail/ecEditAccount;->confirmSaveAccountEvent:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 78
    sget-boolean v0, Lcom/htc/android/mail/ecEditAccount;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/android/mail/ecEditAccount;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/htc/android/mail/ecEditAccount;->btnFncL()V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/android/mail/ecEditAccount;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/htc/android/mail/ecEditAccount;->doSaveAccount()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/htc/android/mail/ecEditAccount;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/htc/android/mail/ecEditAccount;->btnFncR()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/android/mail/ecEditAccount;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/htc/android/mail/ecEditAccount;->mDelCurrentAccount:Z

    return v0
.end method

.method static synthetic access$302(Lcom/htc/android/mail/ecEditAccount;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/htc/android/mail/ecEditAccount;->mDelCurrentAccount:Z

    return p1
.end method

.method static synthetic access$402(Lcom/htc/android/mail/ecEditAccount;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/htc/android/mail/ecEditAccount;->orgProtocol:I

    return p1
.end method

.method static synthetic access$500(Lcom/htc/android/mail/ecEditAccount;)Lcom/htc/android/mail/MailAccountUI;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/android/mail/ecEditAccount;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/android/mail/ecEditAccount;->mWeakHandler:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/android/mail/ecEditAccount;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/htc/android/mail/ecEditAccount;->goStep2()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/android/mail/ecEditAccount;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/htc/android/mail/ecEditAccount;->doUpdateAccount()V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/android/mail/ecEditAccount;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/htc/android/mail/ecEditAccount;->mAccountId:J

    return-wide v0
.end method

.method private final bind()V
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v9, 0x0

    .line 232
    iget-wide v3, p0, Lcom/htc/android/mail/ecEditAccount;->mAccountId:J

    invoke-static {v3, v4}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v7

    .line 234
    .local v7, mAccount:Lcom/htc/android/mail/Account;
    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getInServer()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/ecEditAccount;->orgInServerDomain:Ljava/lang/String;

    .line 236
    iget-object v1, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI;->mProtocol:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    .line 237
    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v1

    iput v1, p0, Lcom/htc/android/mail/ecEditAccount;->orgProtocol:I

    .line 239
    iget-object v1, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI;->mServer:Landroid/widget/EditText;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getInServer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v1, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI;->mOutServer:Landroid/widget/EditText;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getOutServer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v1, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI;->mName:Landroid/widget/EditText;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 243
    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/ecEditAccount;->orgEmailAddr:Ljava/lang/String;

    .line 244
    iget-object v1, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI;->mEmailAddress:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v1, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI;->mEmailAddress:Landroid/widget/AutoCompleteTextView;

    const v3, 0x2020003

    invoke-virtual {v1, v3}, Landroid/widget/AutoCompleteTextView;->setNextFocusDownId(I)V

    .line 247
    iget-object v1, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI;->mInPassword:Landroid/widget/EditText;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v1, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI;->mOutPassword:Landroid/widget/EditText;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getOutpassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v1, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI;->mInUsername:Landroid/widget/EditText;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v1, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI;->mOutUsername:Landroid/widget/EditText;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getOutuserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v1, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI;->mDesc:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/htc/android/mail/ecEditAccount;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/htc/android/mail/Account;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v1, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI;->mSecurityIn:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getUseSSLin()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    .line 253
    iget-object v1, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI;->mSecurityOut:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getUseSSLout()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    .line 254
    iget-object v1, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI;->mRequireLogin:Landroid/widget/CheckBox;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->needSmtpauth()I

    move-result v3

    if-ne v3, v0, :cond_3

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 255
    iget-object v0, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->needSmtpauth()I

    move-result v1

    iput v1, v0, Lcom/htc/android/mail/MailAccountUI;->screen3requirelogin:I

    .line 256
    iget-object v0, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getProvider()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/android/mail/MailAccountUI;->providerStr:Ljava/lang/String;

    .line 257
    iget-object v0, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getProviderGroup()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/android/mail/MailAccountUI;->providerGroupStr:Ljava/lang/String;

    .line 258
    iget-object v0, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getProviderid()I

    move-result v1

    int-to-long v3, v1

    iput-wide v3, v0, Lcom/htc/android/mail/MailAccountUI;->mProviderId:J

    .line 260
    iget-object v0, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getUserName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/android/mail/MailAccountUI;->screen2name:Ljava/lang/String;

    .line 261
    iget-object v0, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getPassword()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/android/mail/MailAccountUI;->screen2pwd:Ljava/lang/String;

    .line 262
    iget-object v0, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getInServer()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/android/mail/MailAccountUI;->screen2pop:Ljava/lang/String;

    .line 263
    iget-object v0, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getInPort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/android/mail/MailAccountUI;->screen2port:Ljava/lang/String;

    .line 264
    iget-object v0, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getOutuserName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/android/mail/MailAccountUI;->screen3name:Ljava/lang/String;

    .line 265
    iget-object v0, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getOutpassword()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/android/mail/MailAccountUI;->screen3pwd:Ljava/lang/String;

    .line 266
    iget-object v0, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getOutServer()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/android/mail/MailAccountUI;->screen3srv:Ljava/lang/String;

    .line 267
    iget-object v0, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getOutPort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/android/mail/MailAccountUI;->screen3port:Ljava/lang/String;

    .line 268
    iget-object v0, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-object v0, v0, Lcom/htc/android/mail/MailAccountUI;->mPort:Landroid/widget/EditText;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getInPort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v0, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-object v0, v0, Lcom/htc/android/mail/MailAccountUI;->mOutPort:Landroid/widget/EditText;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getOutPort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 271
    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->isDefaultaccount()I

    move-result v0

    if-lez v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v0, v9}, Lcom/htc/android/mail/MailAccountUI;->setDefultChkBoxEnable(Z)V

    .line 278
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/mail/ecEditAccount;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/htc/android/mail/MailProvider;->AccountVerify:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Lcom/htc/android/mail/ecEditAccount;->mAccountId:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 281
    .local v6, c:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/htc/android/mail/ecEditAccount;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "doCheck"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 282
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    const-string v1, "AccountVerify"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/htc/android/mail/MailAccountUI;->VerifyAccount:I

    .line 289
    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 291
    :cond_2
    new-instance v8, Lcom/htc/android/mail/SMTPAccountErrorNotification;

    invoke-direct {v8, p0}, Lcom/htc/android/mail/SMTPAccountErrorNotification;-><init>(Landroid/content/Context;)V

    .line 292
    .local v8, notify:Lcom/htc/android/mail/SMTPAccountErrorNotification;
    iget-wide v0, p0, Lcom/htc/android/mail/ecEditAccount;->mAccountId:J

    invoke-virtual {v8, v0, v1}, Lcom/htc/android/mail/SMTPAccountErrorNotification;->clearNotificationInLine(J)I

    .line 293
    return-void

    .end local v6           #c:Landroid/database/Cursor;
    .end local v8           #notify:Lcom/htc/android/mail/SMTPAccountErrorNotification;
    :cond_3
    move v0, v9

    .line 254
    goto/16 :goto_0

    .line 286
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_4
    iget-object v0, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iput v9, v0, Lcom/htc/android/mail/MailAccountUI;->VerifyAccount:I

    goto :goto_1
.end method

.method private btnFncL()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 299
    iget-object v0, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget v0, v0, Lcom/htc/android/mail/MailAccountUI;->curNewAccountStep:I

    packed-switch v0, :pswitch_data_0

    .line 325
    :goto_0
    return-void

    .line 301
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/android/mail/ecEditAccount;->finish()V

    goto :goto_0

    .line 305
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iput v1, v0, Lcom/htc/android/mail/MailAccountUI;->curNewAccountStep:I

    .line 306
    iget-object v0, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailAccountUI;->updateScreen()V

    goto :goto_0

    .line 310
    :pswitch_2
    iget-object v0, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    const/4 v1, 0x2

    iput v1, v0, Lcom/htc/android/mail/MailAccountUI;->curNewAccountStep:I

    .line 311
    iget-object v0, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailAccountUI;->checkScreen2()V

    .line 312
    iget-object v0, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailAccountUI;->updateScreen()V

    goto :goto_0

    .line 316
    :pswitch_3
    iget-object v0, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-boolean v0, v0, Lcom/htc/android/mail/MailAccountUI;->smartLogin:Z

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iput v1, v0, Lcom/htc/android/mail/MailAccountUI;->curNewAccountStep:I

    .line 322
    :goto_1
    iget-object v0, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailAccountUI;->updateScreen()V

    goto :goto_0

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    const/4 v1, 0x3

    iput v1, v0, Lcom/htc/android/mail/MailAccountUI;->curNewAccountStep:I

    .line 320
    iget-object v0, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailAccountUI;->checkScreen3()V

    goto :goto_1

    .line 299
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private btnFncR()V
    .locals 8

    .prologue
    const/16 v7, 0x40

    const/4 v6, 0x1

    .line 337
    iget-object v4, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget v4, v4, Lcom/htc/android/mail/MailAccountUI;->curNewAccountStep:I

    packed-switch v4, :pswitch_data_0

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 341
    :pswitch_0
    iget-object v4, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v4}, Lcom/htc/android/mail/MailAccountUI;->checkScreen1()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 344
    iget-object v4, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v4}, Lcom/htc/android/mail/MailAccountUI;->checkSameEmailAddress()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 345
    const/16 v4, 0xf

    invoke-virtual {p0, v4}, Lcom/htc/android/mail/ecEditAccount;->showDialog(I)V

    goto :goto_0

    .line 349
    :cond_1
    iget-object v4, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-object v4, v4, Lcom/htc/android/mail/MailAccountUI;->mEmailAddress:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 350
    .local v1, newEmailAddr:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/android/mail/ecEditAccount;->orgEmailAddr:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_2

    .line 351
    const/16 v4, 0x13

    invoke-virtual {p0, v4}, Lcom/htc/android/mail/ecEditAccount;->showDialog(I)V

    goto :goto_0

    .line 355
    :cond_2
    invoke-direct {p0}, Lcom/htc/android/mail/ecEditAccount;->goStep2()V

    goto :goto_0

    .line 360
    .end local v1           #newEmailAddr:Ljava/lang/String;
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/android/mail/ecEditAccount;->checkNetworkAccess()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 363
    iget-object v4, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-object v5, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-object v5, v5, Lcom/htc/android/mail/MailAccountUI;->mPort:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/android/mail/MailAccountUI;->checkPortNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 367
    iget-object v4, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-object v4, v4, Lcom/htc/android/mail/MailAccountUI;->mServer:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 368
    .local v2, str:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-object v4, v4, Lcom/htc/android/mail/MailAccountUI;->mInUsername:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 370
    .local v3, str1:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-object v4, v4, Lcom/htc/android/mail/MailAccountUI;->mInEmailAddress:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 373
    .restart local v1       #newEmailAddr:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-object v4, v4, Lcom/htc/android/mail/MailAccountUI;->mEmailAddress:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/htc/android/mail/ecEditAccount;->orgEmailAddr:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_5

    .line 375
    invoke-virtual {v1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 376
    .local v0, atPos:I
    if-eqz v1, :cond_3

    if-ltz v0, :cond_3

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v0, v4, :cond_4

    .line 377
    :cond_3
    const/16 v4, 0x11

    invoke-virtual {p0, v4}, Lcom/htc/android/mail/ecEditAccount;->showDialog(I)V

    goto/16 :goto_0

    .line 380
    :cond_4
    iget-object v4, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-object v4, v4, Lcom/htc/android/mail/MailAccountUI;->mEmailAddress:Landroid/widget/AutoCompleteTextView;

    iget-object v5, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-object v5, v5, Lcom/htc/android/mail/MailAccountUI;->mInEmailAddress:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v5}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    const/16 v4, 0x9

    invoke-virtual {p0, v4}, Lcom/htc/android/mail/ecEditAccount;->showDialog(I)V

    goto/16 :goto_0

    .line 384
    .end local v0           #atPos:I
    :cond_5
    iget-object v4, p0, Lcom/htc/android/mail/ecEditAccount;->orgInServerDomain:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_6

    .line 386
    const/16 v4, 0xb

    invoke-virtual {p0, v4}, Lcom/htc/android/mail/ecEditAccount;->showDialog(I)V

    goto/16 :goto_0

    .line 388
    :cond_6
    iget-object v4, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-object v4, v4, Lcom/htc/android/mail/MailAccountUI;->screen2name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_7

    .line 390
    const/16 v4, 0xa

    invoke-virtual {p0, v4}, Lcom/htc/android/mail/ecEditAccount;->showDialog(I)V

    goto/16 :goto_0

    .line 392
    :cond_7
    iget-object v4, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-object v4, v4, Lcom/htc/android/mail/MailAccountUI;->mProtocol:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v4}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v4

    iget v5, p0, Lcom/htc/android/mail/ecEditAccount;->orgProtocol:I

    if-eq v4, v5, :cond_8

    .line 394
    const/16 v4, 0xc

    invoke-virtual {p0, v4}, Lcom/htc/android/mail/ecEditAccount;->showDialog(I)V

    goto/16 :goto_0

    .line 397
    :cond_8
    iget-object v4, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v4}, Lcom/htc/android/mail/MailAccountUI;->ifVerifyScreen2()Z

    move-result v4

    if-ne v4, v6, :cond_9

    .line 398
    iget-object v4, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-object v5, p0, Lcom/htc/android/mail/ecEditAccount;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4, p0, v5}, Lcom/htc/android/mail/MailAccountUI;->checkAccountWithPop3(Landroid/content/Context;Ljava/lang/ref/WeakReference;)V

    goto/16 :goto_0

    .line 400
    :cond_9
    iget-object v4, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    const/4 v5, 0x3

    iput v5, v4, Lcom/htc/android/mail/MailAccountUI;->curNewAccountStep:I

    .line 402
    iget-object v4, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v4}, Lcom/htc/android/mail/MailAccountUI;->checkScreen3()V

    .line 403
    iget-object v4, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v4}, Lcom/htc/android/mail/MailAccountUI;->updateScreen()V

    goto/16 :goto_0

    .line 412
    .end local v1           #newEmailAddr:Ljava/lang/String;
    .end local v2           #str:Ljava/lang/String;
    .end local v3           #str1:Ljava/lang/String;
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/android/mail/ecEditAccount;->checkNetworkAccess()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 415
    iget-object v4, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-object v5, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-object v5, v5, Lcom/htc/android/mail/MailAccountUI;->mOutPort:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/android/mail/MailAccountUI;->checkPortNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 420
    iget-object v4, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-object v5, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-object v5, v5, Lcom/htc/android/mail/MailAccountUI;->mProtocol:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v5}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v5

    iput v5, v4, Lcom/htc/android/mail/MailAccountUI;->mProtocolValue:I

    .line 421
    iget-object v4, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v4}, Lcom/htc/android/mail/MailAccountUI;->ifVerifyScreen3()Z

    move-result v4

    if-ne v4, v6, :cond_a

    .line 422
    iget-object v4, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-object v5, p0, Lcom/htc/android/mail/ecEditAccount;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4, p0, v5}, Lcom/htc/android/mail/MailAccountUI;->checkAccountWithSmtp(Landroid/content/Context;Ljava/lang/ref/WeakReference;)V

    goto/16 :goto_0

    .line 424
    :cond_a
    iget-object v4, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    const/4 v5, 0x4

    iput v5, v4, Lcom/htc/android/mail/MailAccountUI;->curNewAccountStep:I

    .line 425
    iget-object v4, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v4}, Lcom/htc/android/mail/MailAccountUI;->checkScreen4()V

    .line 426
    iget-object v4, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v4}, Lcom/htc/android/mail/MailAccountUI;->updateScreen()V

    goto/16 :goto_0

    .line 430
    :pswitch_3
    iget-object v4, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v4}, Lcom/htc/android/mail/MailAccountUI;->checkSameAccountName()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 431
    invoke-virtual {p0, v6}, Lcom/htc/android/mail/ecEditAccount;->showDialog(I)V

    goto/16 :goto_0

    .line 433
    :cond_b
    invoke-direct {p0}, Lcom/htc/android/mail/ecEditAccount;->doUpdateAccount()V

    goto/16 :goto_0

    .line 337
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
    .line 328
    invoke-static {p0}, Lcom/htc/android/mail/MailCommon;->checkNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/ecEditAccount;->showDialog(I)V

    .line 330
    const/4 v0, 0x0

    .line 332
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private doSaveAccount()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 715
    const-string v4, "ecEditAccount"

    const-string v5, "doSaveAccount edit>"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    iget-object v4, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-object v4, v4, Lcom/htc/android/mail/MailAccountUI;->mDefaultChkbox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 717
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->resetDefaultAccount()V

    .line 720
    :cond_0
    const/4 v2, 0x0

    .line 721
    .local v2, uri:Landroid/net/Uri;
    const/4 v0, 0x0

    .line 722
    .local v0, accountValues:Landroid/content/ContentValues;
    iget-object v4, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-boolean v4, v4, Lcom/htc/android/mail/MailAccountUI;->smartLogin:Z

    if-eqz v4, :cond_2

    .line 723
    iget-object v4, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v4}, Lcom/htc/android/mail/MailAccountUI;->gatherSmartValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 728
    :goto_0
    sget-boolean v4, Lcom/htc/android/mail/ecEditAccount;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "ecEditAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VerifyAccount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget v6, v6, Lcom/htc/android/mail/MailAccountUI;->VerifyAccount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    :cond_1
    const-string v4, "AccountVerify"

    iget-object v5, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget v5, v5, Lcom/htc/android/mail/MailAccountUI;->VerifyAccount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 731
    invoke-static {p0, v0}, Lcom/htc/android/mail/Account;->applyBatchAccountToDatabases(Landroid/content/Context;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 733
    const-string v4, "ecEditAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doSaveAccount edit>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    if-nez v2, :cond_3

    .line 735
    const/4 v3, 0x0

    .line 757
    :goto_1
    return v3

    .line 725
    :cond_2
    iget-object v4, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v4, v3}, Lcom/htc/android/mail/MailAccountUI;->gatherValues(Z)Landroid/content/ContentValues;

    move-result-object v0

    goto :goto_0

    .line 738
    :cond_3
    new-instance v4, Lcom/htc/android/mail/ecEditAccount$8;

    invoke-direct {v4, p0}, Lcom/htc/android/mail/ecEditAccount$8;-><init>(Lcom/htc/android/mail/ecEditAccount;)V

    invoke-virtual {p0, v4}, Lcom/htc/android/mail/ecEditAccount;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 746
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/android/mail/ecEditAccount;->mAccountId:J

    .line 747
    sget-boolean v4, Lcom/htc/android/mail/ecEditAccount;->DEBUG:Z

    if-eqz v4, :cond_4

    const-string v4, "ecEditAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " SetAccountID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    :cond_4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 751
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "accountId"

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 752
    const/4 v4, 0x4

    invoke-virtual {p0, v4, v1}, Lcom/htc/android/mail/ecEditAccount;->setResult(ILandroid/content/Intent;)V

    .line 755
    iget-wide v4, p0, Lcom/htc/android/mail/ecEditAccount;->mAccountId:J

    invoke-static {v4, v5}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->refresh()V

    .line 756
    invoke-virtual {p0}, Lcom/htc/android/mail/ecEditAccount;->finish()V

    goto :goto_1
.end method

.method private final doUpdateAccount()V
    .locals 2

    .prologue
    .line 765
    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/ecEditAccount;->showDialog(I)V

    .line 766
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/mail/ecEditAccount$9;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/ecEditAccount$9;-><init>(Lcom/htc/android/mail/ecEditAccount;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 828
    .local v0, runinBG:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 832
    return-void
.end method

.method private goStep2()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 645
    iget-object v0, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iput-boolean v2, v0, Lcom/htc/android/mail/MailAccountUI;->smartLogin:Z

    .line 646
    iget-object v0, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    const/4 v1, 0x2

    iput v1, v0, Lcom/htc/android/mail/MailAccountUI;->curNewAccountStep:I

    .line 647
    iget-object v0, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailAccountUI;->setScreen2()V

    .line 648
    iget-object v0, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailAccountUI;->checkScreen2()V

    .line 649
    iget-object v0, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailAccountUI;->updateScreen()V

    .line 650
    iget-object v0, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-object v0, v0, Lcom/htc/android/mail/MailAccountUI;->btnL:Lcom/htc/android/mail/widget/MailFooterBarButton;

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setVisibility(I)V

    .line 651
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 664
    const/16 v0, 0x32

    if-ne p1, v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget v0, v0, Lcom/htc/android/mail/MailAccountUI;->curNewAccountStep:I

    packed-switch v0, :pswitch_data_0

    .line 680
    :cond_0
    :goto_0
    return-void

    .line 668
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailAccountUI;->checkScreen1()Z

    goto :goto_0

    .line 671
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailAccountUI;->checkScreen2()V

    goto :goto_0

    .line 674
    :pswitch_2
    iget-object v0, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailAccountUI;->checkScreen3()V

    goto :goto_0

    .line 666
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 128
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 130
    invoke-virtual {p0, v3}, Lcom/htc/android/mail/ecEditAccount;->requestWindowFeature(I)Z

    .line 131
    const v1, 0x7f030012

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/ecEditAccount;->setContentView(I)V

    .line 134
    invoke-virtual {p0}, Lcom/htc/android/mail/ecEditAccount;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x20806a9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 136
    invoke-virtual {p0}, Lcom/htc/android/mail/ecEditAccount;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 137
    .local v0, uri:Landroid/net/Uri;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 138
    :cond_0
    iput-boolean v4, p0, Lcom/htc/android/mail/ecEditAccount;->mOnForeground:Z

    .line 139
    invoke-virtual {p0}, Lcom/htc/android/mail/ecEditAccount;->finish()V

    .line 174
    :goto_0
    return-void

    .line 143
    :cond_1
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/android/mail/ecEditAccount;->mAccountId:J

    .line 144
    iget-wide v1, p0, Lcom/htc/android/mail/ecEditAccount;->mAccountId:J

    invoke-static {v1, v2}, Lcom/htc/android/mail/Account;->checkIfAccountExists(J)Z

    move-result v1

    if-nez v1, :cond_2

    .line 145
    iput-boolean v4, p0, Lcom/htc/android/mail/ecEditAccount;->mOnForeground:Z

    .line 146
    invoke-virtual {p0}, Lcom/htc/android/mail/ecEditAccount;->finish()V

    goto :goto_0

    .line 150
    :cond_2
    new-instance v1, Lcom/htc/android/mail/ecEditAccount$RequestHandler;

    invoke-direct {v1, p0, p0}, Lcom/htc/android/mail/ecEditAccount$RequestHandler;-><init>(Landroid/content/Context;Lcom/htc/android/mail/ecEditAccount;)V

    iput-object v1, p0, Lcom/htc/android/mail/ecEditAccount;->mHandler:Lcom/htc/android/mail/ecEditAccount$RequestHandler;

    .line 151
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/htc/android/mail/ecEditAccount;->mHandler:Lcom/htc/android/mail/ecEditAccount$RequestHandler;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/htc/android/mail/ecEditAccount;->mWeakHandler:Ljava/lang/ref/WeakReference;

    .line 153
    iget-object v1, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iput-boolean v3, v1, Lcom/htc/android/mail/MailAccountUI;->mInEditMode:Z

    .line 154
    iget-object v1, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v1, p0}, Lcom/htc/android/mail/MailAccountUI;->CreateAccountUI(Landroid/app/Activity;)Z

    .line 155
    iget-object v1, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI;->btnL:Lcom/htc/android/mail/widget/MailFooterBarButton;

    new-instance v2, Lcom/htc/android/mail/ecEditAccount$1;

    invoke-direct {v2, p0}, Lcom/htc/android/mail/ecEditAccount$1;-><init>(Lcom/htc/android/mail/ecEditAccount;)V

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v1, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI;->btnR:Lcom/htc/android/mail/widget/MailFooterBarButton;

    new-instance v2, Lcom/htc/android/mail/ecEditAccount$2;

    invoke-direct {v2, p0}, Lcom/htc/android/mail/ecEditAccount$2;-><init>(Lcom/htc/android/mail/ecEditAccount;)V

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    invoke-direct {p0}, Lcom/htc/android/mail/ecEditAccount;->bind()V

    .line 169
    iget-object v1, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v1}, Lcom/htc/android/mail/MailAccountUI;->checkScreen2()V

    .line 170
    iget-object v1, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v1}, Lcom/htc/android/mail/MailAccountUI;->checkScreen4()V

    .line 171
    iget-object v1, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    iput v3, v1, Lcom/htc/android/mail/MailAccountUI;->curNewAccountStep:I

    .line 172
    iget-object v1, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v1}, Lcom/htc/android/mail/MailAccountUI;->updateScreen()V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f0b0291

    const v6, 0x7f0b005a

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 452
    packed-switch p1, :pswitch_data_0

    .line 617
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 457
    :pswitch_1
    const/4 v2, 0x4

    new-array v1, v2, [Ljava/lang/String;

    const v2, 0x7f0b0076

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/ecEditAccount;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    const v2, 0x7f0b0077

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/ecEditAccount;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const v3, 0x7f0b0078

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/ecEditAccount;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const v3, 0x7f0b0079

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/ecEditAccount;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 462
    .local v1, msg:[Ljava/lang/String;
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v6}, Lcom/htc/android/mail/ecEditAccount;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    add-int/lit8 v3, p1, -0x9

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b008e

    invoke-virtual {v2, v3, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/ecEditAccount;->confirmChangeAccountEvent:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v7, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 470
    .end local v1           #msg:[Ljava/lang/String;
    :pswitch_2
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v6}, Lcom/htc/android/mail/ecEditAccount;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0076

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b008e

    invoke-virtual {v2, v3, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/ecEditAccount;->confirmChangeAccountEventInStep1:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v7, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 477
    :pswitch_3
    const v2, 0x7f090084

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/ecEditAccount;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 478
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0, v6}, Lcom/htc/android/mail/ecEditAccount;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b00e2

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/ecEditAccount;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 515
    :pswitch_4
    const v2, 0x7f09007d

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/ecEditAccount;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 516
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v6}, Lcom/htc/android/mail/ecEditAccount;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b00e1

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/ecEditAccount;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 524
    :pswitch_5
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 525
    .local v0, dialog:Lcom/htc/app/HtcProgressDialog;
    const v2, 0x7f0b00de

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/ecEditAccount;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 526
    invoke-virtual {v0, v4}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 527
    invoke-virtual {v0, v4}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 528
    iget-object v2, p0, Lcom/htc/android/mail/ecEditAccount;->stopCheckAccountListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto/16 :goto_0

    .line 532
    .end local v0           #dialog:Lcom/htc/app/HtcProgressDialog;
    :pswitch_6
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 533
    .restart local v0       #dialog:Lcom/htc/app/HtcProgressDialog;
    const v2, 0x7f0b00df

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/ecEditAccount;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 534
    invoke-virtual {v0, v4}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 535
    invoke-virtual {v0, v4}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 536
    iget-object v2, p0, Lcom/htc/android/mail/ecEditAccount;->stopCheckAccountListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto/16 :goto_0

    .line 539
    .end local v0           #dialog:Lcom/htc/app/HtcProgressDialog;
    :pswitch_7
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v6}, Lcom/htc/android/mail/ecEditAccount;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b01c0

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/ecEditAccount;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 546
    :pswitch_8
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v6}, Lcom/htc/android/mail/ecEditAccount;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b01bd

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/ecEditAccount;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 553
    :pswitch_9
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 554
    .restart local v0       #dialog:Lcom/htc/app/HtcProgressDialog;
    const v2, 0x7f0b00e0

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/ecEditAccount;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 555
    invoke-virtual {v0, v4}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 556
    invoke-virtual {v0, v4}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 557
    iget-object v2, p0, Lcom/htc/android/mail/ecEditAccount;->stopCheckAccountListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto/16 :goto_0

    .line 561
    .end local v0           #dialog:Lcom/htc/app/HtcProgressDialog;
    :pswitch_a
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v6}, Lcom/htc/android/mail/ecEditAccount;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b00dd

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/ecEditAccount;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 569
    :pswitch_b
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v6}, Lcom/htc/android/mail/ecEditAccount;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b00dc

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/ecEditAccount;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b008e

    invoke-virtual {v2, v3, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/ecEditAccount;->confirmSaveAccountEvent:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v7, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 578
    :pswitch_c
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v6}, Lcom/htc/android/mail/ecEditAccount;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b00db

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/ecEditAccount;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 586
    :pswitch_d
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 587
    .restart local v0       #dialog:Lcom/htc/app/HtcProgressDialog;
    const v2, 0x7f0b028d

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/ecEditAccount;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 588
    invoke-virtual {v0, v4}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 589
    invoke-virtual {v0, v8}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    goto/16 :goto_0

    .line 593
    .end local v0           #dialog:Lcom/htc/app/HtcProgressDialog;
    :pswitch_e
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b01c2

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/ecEditAccount;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b01c1

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/ecEditAccount;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0167

    iget-object v4, p0, Lcom/htc/android/mail/ecEditAccount;->gotoSettingListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b008e

    invoke-virtual {v2, v3, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 603
    :pswitch_f
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v6}, Lcom/htc/android/mail/ecEditAccount;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b008f

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/ecEditAccount;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 610
    :pswitch_10
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v6}, Lcom/htc/android/mail/ecEditAccount;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b01ca

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/ecEditAccount;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 452
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_6
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_d
        :pswitch_0
        :pswitch_3
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_2
    .end packed-switch
.end method

.method protected final onDestroy()V
    .locals 1

    .prologue
    .line 710
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 711
    iget-object v0, p0, Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v0, p0}, Lcom/htc/android/mail/MailAccountUI;->cancelRequest(Landroid/content/Context;)V

    .line 712
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 441
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 443
    invoke-direct {p0}, Lcom/htc/android/mail/ecEditAccount;->btnFncL()V

    .line 444
    const/4 v0, 0x1

    .line 446
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
    .line 178
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 179
    sget-boolean v0, Lcom/htc/android/mail/ecEditAccount;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ecEditAccount"

    const-string v1, "onPause>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/ecEditAccount;->mOnForeground:Z

    .line 181
    return-void
.end method

.method protected final onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 185
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 187
    invoke-virtual {p0}, Lcom/htc/android/mail/ecEditAccount;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 188
    .local v0, uri:Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 189
    iput-boolean v3, p0, Lcom/htc/android/mail/ecEditAccount;->mOnForeground:Z

    .line 190
    invoke-virtual {p0}, Lcom/htc/android/mail/ecEditAccount;->finish()V

    .line 211
    :goto_0
    return-void

    .line 194
    :cond_0
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/android/mail/ecEditAccount;->mAccountId:J

    .line 195
    iget-wide v1, p0, Lcom/htc/android/mail/ecEditAccount;->mAccountId:J

    invoke-static {v1, v2}, Lcom/htc/android/mail/Account;->checkIfAccountExists(J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 196
    iput-boolean v3, p0, Lcom/htc/android/mail/ecEditAccount;->mOnForeground:Z

    .line 197
    invoke-virtual {p0}, Lcom/htc/android/mail/ecEditAccount;->finish()V

    goto :goto_0

    .line 201
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/android/mail/ecEditAccount;->mOnForeground:Z

    goto :goto_0
.end method
