.class public Lcom/htc/htcmailwidgets/MailAccountOption;
.super Landroid/app/Activity;
.source "MailAccountOption.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;,
        Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter;
    }
.end annotation


# static fields
.field private static final ADD_NEW_ACCOUNT:I = 0x100

.field private static final DELAY_TIME_ASSIGN_NEW_ACCOUNT:J = 0x3e8L

.field private static final MSG_AUTO_ASSIGN_NEW_ACCOUNT:I = 0x5003

.field private static final MSG_BASE:I = 0x5000

.field private static final MSG_QUERY_ACCOUNT_INFO:I = 0x5001

.field private static final MSG_REQUERY_ACCOUNT_INFO:I = 0x5002

.field public static final UNKNOWN_ACCOUNT:J = -0x9L


# instance fields
.field private bChangeAccount:Z

.field private bInitialize:Z

.field private bSense20:Z

.field private bSense35:Z

.field private mAccountActivity:Landroid/app/Activity;

.field private mAccountAdapter:Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter;

.field private mAccountDescs:[Ljava/lang/String;

.field private mAccountInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htcmailwidgets/MailUtils$Account;",
            ">;"
        }
    .end annotation
.end field

.field private mAccountList:Lcom/htc/widget/HtcListView;

.field private mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

.field private mHandler:Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;

.field private mIntent:Landroid/content/Intent;

.field private mNewCreatedAccount:Lcom/htc/htcmailwidgets/MailUtils$Account;

.field private mOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field private mOption:I

.field private mRequestCode:I

.field private mResolution:I

.field private mbHasNewAccount:Z

.field private singleProvider:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    iput v1, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mOption:I

    .line 44
    iput-object v2, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mAccountActivity:Landroid/app/Activity;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mAccountInfo:Ljava/util/ArrayList;

    .line 48
    iput-object v2, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mIntent:Landroid/content/Intent;

    .line 51
    iput-boolean v1, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->bSense20:Z

    .line 52
    iput-boolean v1, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->bSense35:Z

    .line 54
    iput-boolean v1, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->bInitialize:Z

    .line 68
    iput v3, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mRequestCode:I

    .line 69
    iput-boolean v1, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mbHasNewAccount:Z

    .line 70
    iput-object v2, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mNewCreatedAccount:Lcom/htc/htcmailwidgets/MailUtils$Account;

    .line 71
    iput-boolean v1, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->bChangeAccount:Z

    .line 73
    iput v3, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mResolution:I

    .line 167
    new-instance v0, Lcom/htc/htcmailwidgets/MailAccountOption$1;

    invoke-direct {v0, p0}, Lcom/htc/htcmailwidgets/MailAccountOption$1;-><init>(Lcom/htc/htcmailwidgets/MailAccountOption;)V

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 39
    return-void
.end method

.method static synthetic access$002(Lcom/htc/htcmailwidgets/MailAccountOption;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mOption:I

    return p1
.end method

.method static synthetic access$100(Lcom/htc/htcmailwidgets/MailAccountOption;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/htcmailwidgets/MailAccountOption;Lcom/htc/htcmailwidgets/MailUtils$Account;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/htc/htcmailwidgets/MailAccountOption;->isAccountExist(Lcom/htc/htcmailwidgets/MailUtils$Account;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/htc/htcmailwidgets/MailAccountOption;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/htcmailwidgets/MailAccountOption;)Lcom/htc/htcmailwidgets/MailUtils$Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mNewCreatedAccount:Lcom/htc/htcmailwidgets/MailUtils$Account;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/htc/htcmailwidgets/MailAccountOption;Lcom/htc/htcmailwidgets/MailUtils$Account;)Lcom/htc/htcmailwidgets/MailUtils$Account;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mNewCreatedAccount:Lcom/htc/htcmailwidgets/MailUtils$Account;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/htc/htcmailwidgets/MailAccountOption;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->bChangeAccount:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/htcmailwidgets/MailAccountOption;)Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mHandler:Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/htcmailwidgets/MailAccountOption;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mAccountInfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/htcmailwidgets/MailAccountOption;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mAccountInfo:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Lcom/htc/htcmailwidgets/MailAccountOption;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mResolution:I

    return v0
.end method

.method static synthetic access$500(Lcom/htc/htcmailwidgets/MailAccountOption;)[Lcom/htc/htcmailwidgets/MailUtils$Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/htcmailwidgets/MailAccountOption;[Lcom/htc/htcmailwidgets/MailUtils$Account;)[Lcom/htc/htcmailwidgets/MailUtils$Account;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    return-object p1
.end method

.method static synthetic access$600(Lcom/htc/htcmailwidgets/MailAccountOption;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mAccountActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/htcmailwidgets/MailAccountOption;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/htcmailwidgets/MailAccountOption;->chooseOption()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/htc/htcmailwidgets/MailAccountOption;)Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mAccountAdapter:Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/htcmailwidgets/MailAccountOption;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mbHasNewAccount:Z

    return v0
.end method

.method static synthetic access$902(Lcom/htc/htcmailwidgets/MailAccountOption;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mbHasNewAccount:Z

    return p1
.end method

.method private chooseEmptyAccount()V
    .locals 4

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailAccountOption;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 354
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ACCOUNT_ID"

    const-wide/16 v2, -0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 355
    const-string v1, "ACCOUNT_NAME"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    const-string v1, "ACCOUNT_PROTOCOL"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    const-string v1, "ACCOUNT_DEFAULTFOLDER"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/htc/htcmailwidgets/MailAccountOption;->setResult(ILandroid/content/Intent;)V

    .line 359
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailAccountOption;->finish()V

    .line 360
    return-void
.end method

.method private chooseOption()I
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 296
    const/4 v0, 0x0

    .line 297
    .local v0, dlg:Lcom/htc/widget/HtcAlertDialog;
    const/4 v2, 0x0

    .line 299
    .local v2, hwnd:Landroid/view/Window;
    iget-object v6, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    array-length v6, v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 300
    iput v5, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mOption:I

    .line 301
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailAccountOption;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 302
    .local v4, intent:Landroid/content/Intent;
    const-string v6, "ACCOUNT_ID"

    iget-object v7, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    aget-object v7, v7, v5

    iget-wide v7, v7, Lcom/htc/htcmailwidgets/MailUtils$Account;->id:J

    invoke-virtual {v4, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 303
    const-string v6, "ACCOUNT_NAME"

    iget-object v7, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    aget-object v7, v7, v5

    iget-object v7, v7, Lcom/htc/htcmailwidgets/MailUtils$Account;->desc:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    const-string v6, "ACCOUNT_PROTOCOL"

    iget-object v7, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    aget-object v7, v7, v5

    iget v7, v7, Lcom/htc/htcmailwidgets/MailUtils$Account;->protocol:I

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 305
    const-string v6, "ACCOUNT_DEFAULTFOLDER"

    iget-object v7, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    aget-object v7, v7, v5

    iget v7, v7, Lcom/htc/htcmailwidgets/MailUtils$Account;->defaultfolderid:I

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 306
    const/4 v6, -0x1

    invoke-virtual {p0, v6, v4}, Lcom/htc/htcmailwidgets/MailAccountOption;->setResult(ILandroid/content/Intent;)V

    .line 307
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailAccountOption;->finish()V

    .line 349
    .end local v4           #intent:Landroid/content/Intent;
    :goto_0
    return v5

    .line 310
    :cond_0
    iget-object v6, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    array-length v6, v6

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mAccountDescs:[Ljava/lang/String;

    .line 311
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v6, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    array-length v6, v6

    if-ge v3, v6, :cond_1

    .line 312
    iget-object v6, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mAccountDescs:[Ljava/lang/String;

    iget-object v7, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    aget-object v7, v7, v3

    iget-object v7, v7, Lcom/htc/htcmailwidgets/MailUtils$Account;->desc:Ljava/lang/String;

    aput-object v7, v6, v3

    .line 311
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 314
    :cond_1
    new-instance v6, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v6, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f080002

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mAccountDescs:[Ljava/lang/String;

    new-instance v8, Lcom/htc/htcmailwidgets/MailAccountOption$3;

    invoke-direct {v8, p0}, Lcom/htc/htcmailwidgets/MailAccountOption$3;-><init>(Lcom/htc/htcmailwidgets/MailAccountOption;)V

    invoke-virtual {v6, v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/htc/htcmailwidgets/MailAccountOption$2;

    invoke-direct {v7, p0}, Lcom/htc/htcmailwidgets/MailAccountOption$2;-><init>(Lcom/htc/htcmailwidgets/MailAccountOption;)V

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 334
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 336
    if-eqz v2, :cond_2

    .line 340
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 341
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    const/4 v0, 0x0

    .line 349
    :cond_2
    iget v5, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mOption:I

    goto :goto_0

    .line 342
    :catch_0
    move-exception v1

    .line 344
    .local v1, e:Ljava/lang/RuntimeException;
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailAccountOption;->finish()V

    goto :goto_0
.end method

.method private isAccountExist(Lcom/htc/htcmailwidgets/MailUtils$Account;)Z
    .locals 6
    .parameter "account"

    .prologue
    const/4 v1, 0x0

    .line 498
    iget-object v4, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mAccountInfo:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 520
    :cond_0
    :goto_0
    return v1

    .line 501
    :cond_1
    iget-object v4, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mAccountInfo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 503
    .local v3, size:I
    if-eqz v3, :cond_0

    .line 507
    const/4 v1, 0x0

    .line 508
    .local v1, bFind:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 509
    iget-object v4, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mAccountInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htcmailwidgets/MailUtils$Account;

    .line 510
    .local v0, acc:Lcom/htc/htcmailwidgets/MailUtils$Account;
    iget-object v4, v0, Lcom/htc/htcmailwidgets/MailUtils$Account;->email:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 508
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 512
    :cond_2
    iget-object v4, v0, Lcom/htc/htcmailwidgets/MailUtils$Account;->email:Ljava/lang/String;

    iget-object v5, p1, Lcom/htc/htcmailwidgets/MailUtils$Account;->email:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 513
    const/4 v1, 0x1

    goto :goto_2

    .line 515
    :cond_3
    const/4 v1, 0x0

    .line 516
    goto :goto_0
.end method

.method private launchNewAccount()V
    .locals 12

    .prologue
    .line 364
    const/4 v6, 0x1

    .line 365
    .local v6, ADD_ACCOUNT:I
    const-string v11, "_provider = \'Exchange\' and _del!=1"

    .line 366
    .local v11, str:Ljava/lang/String;
    const/4 v7, 0x0

    .line 368
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    invoke-static {p0, v11}, Lcom/htc/htcmailwidgets/MailUtils;->IsAccountExisted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 369
    sget-object v1, Lcom/htc/htcmailwidgets/MailUtils;->sProvidersURI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "_provider != \'Exchange ActiveSync\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/htcmailwidgets/MailAccountOption;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 374
    :goto_0
    if-eqz v7, :cond_3

    .line 375
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->singleProvider:Z

    .line 376
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    const-string v0, "_provider"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 378
    .local v10, providerStr:Ljava/lang/String;
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 379
    .local v9, intent:Landroid/content/Intent;
    const/high16 v0, 0x1000

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 380
    const-string v0, "com.htc.android.mail"

    const-string v1, "com.htc.android.mail.ecNewAccount"

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    const-string v0, "provider"

    invoke-virtual {v9, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    const-string v0, "_domain"

    const-string v1, "_domain"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    const-string v0, "_providerid"

    const-string v1, "_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v9, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 384
    const-string v0, "CallingActivity"

    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailAccountOption;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "CallingActivity"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 385
    const/4 v0, 0x1

    invoke-virtual {p0, v9, v0}, Lcom/htc/htcmailwidgets/MailAccountOption;->startActivityForResult(Landroid/content/Intent;I)V

    .line 390
    .end local v9           #intent:Landroid/content/Intent;
    .end local v10           #providerStr:Ljava/lang/String;
    :cond_0
    :goto_1
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 391
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 393
    :cond_1
    const/4 v7, 0x0

    .line 400
    :goto_2
    return-void

    .line 371
    :cond_2
    sget-object v1, Lcom/htc/htcmailwidgets/MailUtils;->sProvidersURI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/htcmailwidgets/MailAccountOption;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    goto :goto_0

    .line 388
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->singleProvider:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 394
    :catch_0
    move-exception v8

    .line 395
    .local v8, e:Ljava/lang/Exception;
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 396
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 398
    :cond_4
    const/4 v7, 0x0

    goto :goto_2
.end method

.method private releaseData()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mAccountInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mAccountInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 164
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mAccountInfo:Ljava/util/ArrayList;

    .line 165
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 525
    iput p1, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mRequestCode:I

    .line 526
    const-string v0, "Option"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resultCode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", is singleProvider:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->singleProvider:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->singleProvider:Z

    if-eqz v0, :cond_1

    :cond_0
    if-nez p3, :cond_2

    const/16 v0, 0x100

    if-ne p1, v0, :cond_2

    .line 531
    :cond_1
    :goto_0
    return-void

    .line 530
    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/htc/htcmailwidgets/MailAccountOption;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const v11, 0x7f080002

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 78
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0, v8}, Lcom/htc/htcmailwidgets/MailAccountOption;->requestWindowFeature(I)Z

    .line 82
    const-string v7, "window"

    invoke-virtual {p0, v7}, Lcom/htc/htcmailwidgets/MailAccountOption;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 83
    .local v0, WinManager:Landroid/view/WindowManager;
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 84
    .local v3, metrics:Landroid/util/DisplayMetrics;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 85
    iget v7, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v10, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v7, v10}, Lcom/htc/htcmailwidgets/Components;->getResolution(II)I

    move-result v7

    iput v7, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mResolution:I

    .line 88
    invoke-static {}, Lcom/htc/htcmailwidgets/MailUtils;->getSenseVersion()I

    move-result v7

    const/4 v10, 0x3

    if-lt v7, v10, :cond_4

    invoke-static {}, Lcom/htc/htcmailwidgets/MailUtils;->getSenseVersion()I

    move-result v7

    const/4 v10, 0x5

    if-gt v7, v10, :cond_4

    move v7, v8

    :goto_0
    iput-boolean v7, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->bSense20:Z

    .line 89
    invoke-static {}, Lcom/htc/htcmailwidgets/MailUtils;->getSenseVersion()I

    move-result v7

    const/4 v10, 0x6

    if-lt v7, v10, :cond_5

    move v7, v8

    :goto_1
    iput-boolean v7, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->bSense35:Z

    .line 90
    iget-boolean v7, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->bSense20:Z

    if-nez v7, :cond_0

    iget-boolean v7, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->bSense35:Z

    if-eqz v7, :cond_1

    .line 91
    :cond_0
    const/high16 v7, 0x7f03

    invoke-virtual {p0, v7}, Lcom/htc/htcmailwidgets/MailAccountOption;->setContentView(I)V

    .line 95
    :cond_1
    iget-object v7, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mHandler:Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;

    if-nez v7, :cond_2

    .line 96
    iget-object v7, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mHandler:Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;

    if-nez v7, :cond_2

    .line 97
    new-instance v4, Landroid/os/HandlerThread;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MailAccountOption("

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ")-DataHandler"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v10, 0xa

    invoke-direct {v4, v7, v10}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 98
    .local v4, thread:Landroid/os/HandlerThread;
    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 99
    new-instance v7, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-direct {v7, p0, v10}, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;-><init>(Lcom/htc/htcmailwidgets/MailAccountOption;Landroid/os/Looper;)V

    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mHandler:Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;

    .line 103
    .end local v4           #thread:Landroid/os/HandlerThread;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailAccountOption;->getIntent()Landroid/content/Intent;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mIntent:Landroid/content/Intent;

    .line 105
    iget-object v7, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, action:Ljava/lang/String;
    if-nez v1, :cond_6

    .line 107
    iput-boolean v9, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->bChangeAccount:Z

    .line 112
    :cond_3
    :goto_2
    iput-object p0, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mAccountActivity:Landroid/app/Activity;

    .line 114
    iget-boolean v7, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->bSense20:Z

    if-nez v7, :cond_7

    iget-boolean v7, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->bSense35:Z

    if-nez v7, :cond_7

    .line 115
    iget-object v7, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mHandler:Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;

    const/16 v8, 0x5001

    invoke-virtual {v7, v8}, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;->sendEmptyMessage(I)Z

    .line 159
    :goto_3
    return-void

    .end local v1           #action:Ljava/lang/String;
    :cond_4
    move v7, v9

    .line 88
    goto :goto_0

    :cond_5
    move v7, v9

    .line 89
    goto :goto_1

    .line 109
    .restart local v1       #action:Ljava/lang/String;
    :cond_6
    const-string v7, "ChangeAccountOption"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 110
    iput-boolean v8, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->bChangeAccount:Z

    goto :goto_2

    .line 119
    :cond_7
    iget-boolean v7, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->bSense20:Z

    if-eqz v7, :cond_b

    .line 120
    const v7, 0x2020053

    invoke-virtual {p0, v7}, Lcom/htc/htcmailwidgets/MailAccountOption;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 121
    .local v5, title:Landroid/widget/TextView;
    const v7, 0x2020054

    invoke-virtual {p0, v7}, Lcom/htc/htcmailwidgets/MailAccountOption;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 123
    .local v6, title_shadow:Landroid/widget/TextView;
    if-eqz v5, :cond_8

    if-eqz v6, :cond_8

    .line 124
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(I)V

    .line 125
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(I)V

    .line 132
    .end local v5           #title:Landroid/widget/TextView;
    .end local v6           #title_shadow:Landroid/widget/TextView;
    :cond_8
    :goto_4
    const v7, 0x7f0a0001

    invoke-virtual {p0, v7}, Lcom/htc/htcmailwidgets/MailAccountOption;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/widget/HtcListView;

    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mAccountList:Lcom/htc/widget/HtcListView;

    .line 134
    iget-boolean v7, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->bSense35:Z

    if-nez v7, :cond_9

    .line 135
    iget-object v7, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mAccountList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcListView;->setRoundedCornerEnabled(Z)V

    .line 137
    :cond_9
    iget-object v7, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mAccountList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v7, v9}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 138
    iget-object v7, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mAccountList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 140
    iget-object v7, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mAccountList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcListView;->setChoiceMode(I)V

    .line 142
    new-instance v7, Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter;

    iget-object v9, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mAccountActivity:Landroid/app/Activity;

    const v10, 0x209007e

    invoke-direct {v7, p0, v9, v10}, Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter;-><init>(Lcom/htc/htcmailwidgets/MailAccountOption;Landroid/content/Context;I)V

    iput-object v7, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mAccountAdapter:Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter;

    .line 143
    iget-object v7, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mAccountList:Lcom/htc/widget/HtcListView;

    iget-object v9, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mAccountAdapter:Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter;

    invoke-virtual {v7, v9}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 144
    iget-object v7, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mAccountList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcListView;->setLongClickable(Z)V

    .line 145
    iget-object v7, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mAccountList:Lcom/htc/widget/HtcListView;

    iget-object v9, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v7, v9}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 147
    iget v7, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mResolution:I

    const/4 v9, 0x4

    if-ne v7, v9, :cond_a

    .line 148
    iget-object v7, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mAccountList:Lcom/htc/widget/HtcListView;

    const v9, -0xd0d0e

    invoke-virtual {v7, v9}, Lcom/htc/widget/HtcListView;->setBackgroundColor(I)V

    .line 150
    :cond_a
    iget-object v7, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mAccountList:Lcom/htc/widget/HtcListView;

    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailAccountOption;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x2080700

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/htc/widget/HtcListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 151
    iget-object v7, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mAccountAdapter:Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter;

    iget-object v9, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mAccountInfo:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter;->changeAdapter(Ljava/util/ArrayList;)V

    .line 153
    iput-boolean v8, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->bInitialize:Z

    goto/16 :goto_3

    .line 127
    :cond_b
    iget-boolean v7, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->bSense35:Z

    if-eqz v7, :cond_8

    .line 128
    const/high16 v7, 0x7f0a

    invoke-virtual {p0, v7}, Lcom/htc/htcmailwidgets/MailAccountOption;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/htcmailwidgets/TextHeaderBar;

    .line 129
    .local v2, headerbar:Lcom/htc/htcmailwidgets/TextHeaderBar;
    invoke-virtual {v2, v11}, Lcom/htc/htcmailwidgets/TextHeaderBar;->setTitle(I)V

    goto :goto_4
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 550
    invoke-direct {p0}, Lcom/htc/htcmailwidgets/MailAccountOption;->releaseData()V

    .line 552
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mHandler:Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;

    if-eqz v1, :cond_1

    .line 553
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mHandler:Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;

    const/16 v2, 0x5001

    invoke-virtual {v1, v2}, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;->removeMessages(I)V

    .line 554
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mHandler:Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;

    const/16 v2, 0x5002

    invoke-virtual {v1, v2}, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;->removeMessages(I)V

    .line 555
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mHandler:Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;

    const/16 v2, 0x5003

    invoke-virtual {v1, v2}, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;->removeMessages(I)V

    .line 556
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mHandler:Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;

    invoke-virtual {v1}, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 557
    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 558
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 559
    const/4 v0, 0x0

    .line 561
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mHandler:Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;

    .line 564
    .end local v0           #looper:Landroid/os/Looper;
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 565
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 569
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 570
    const/4 v0, 0x1

    .line 571
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 535
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 536
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 539
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mHandler:Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->bInitialize:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->bSense20:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->bSense35:Z

    if-eqz v0, :cond_1

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailAccountOption;->mHandler:Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;

    const/16 v1, 0x5002

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;->sendEmptyMessage(I)Z

    .line 542
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 543
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 546
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 547
    return-void
.end method
