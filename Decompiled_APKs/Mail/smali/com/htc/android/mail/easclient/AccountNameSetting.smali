.class public Lcom/htc/android/mail/easclient/AccountNameSetting;
.super Landroid/app/Activity;
.source "AccountNameSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/easclient/AccountNameSetting$PostProfileTask;,
        Lcom/htc/android/mail/easclient/AccountNameSetting$CreateAccountThread;
    }
.end annotation


# static fields
.field public static final CALLING_FROM_WIDGET:I = 0x5e

.field public static final CFG_RESULT_CANCELED:I = 0x64

.field public static final CFG_RESULT_SAVED:I = 0x65

.field private static final CREATE_ACCOUNT_ACCOUNT_NAME_EXIST:I = 0x8

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final DIALOG_ACCOUNT_SIZE_LIMIT:I = 0x6

.field private static final DIALOG_CREATE_ACCOUNT:I = 0x1

.field private static final DIALOG_CREATE_ACCOUNT_ACCOUNT_EXIST:I = 0x5

.field private static final DIALOG_CREATE_ACCOUNT_FAIL:I = 0x2

.field private static final DIALOG_CREATE_ACCOUNT_STORAGE_FULL:I = 0x3

.field private static final DIALOG_CREATE_AUTHENTICATION_FAIL:I = 0x7

.field private static final DIALOG_ERROR_NO_NETWORK:I = 0x4

.field private static final MESSAGE_CERTIFICATE_ERROR:I = 0x2

.field private static final MESSAGE_CREATE_ACCOUNT_DONE:I = 0x1

.field private static final MESSAGE_CREATE_ACCOUNT_FAIL:I = 0x0

.field private static final MESSAGE_END_CANCEL_CERTIFICATE:I = 0x6

.field private static final MESSAGE_END_SAVE_KEYSTORE:I = 0x5

.field private static final REQUEST_CODE_CONFIRM:I = 0x1

.field private static mCreateFail:Z

.field private static final sCreaeteAccountLock:Ljava/lang/Object;


# instance fields
.field private AccountNameIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final TAG:Ljava/lang/String;

.field private accountId:J

.field private accountPattern:Ljava/lang/String;

.field bContinueCreateAccount:Z

.field private bRegIMEReceiver:Z

.field private defaultAccountName:Ljava/lang/String;

.field public gotoSettingListener:Landroid/content/DialogInterface$OnClickListener;

.field private mAccountHandler:Landroid/os/Handler;

.field private mCallingActivity:I

.field private mContext:Landroid/content/Context;

.field mCreateAccThread:Lcom/htc/android/mail/easclient/AccountNameSetting$CreateAccountThread;

.field private mEASAccountInfo:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

.field private mEditAccountName:Landroid/widget/EditText;

.field private mFromWhere:Ljava/lang/String;

.field private mIsDestroy:Z

.field private mIsExchangeSaved:Z

.field private mNextButton:Lcom/htc/android/mail/widget/MailFooterBarButton;

.field private mOldSipHeight:I

.field private mPrevButton:Lcom/htc/android/mail/widget/MailFooterBarButton;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSIPUpScreenMinHeight:I

.field private mScreenMinHeight:I

.field private mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

.field private mSipIntentFilter:Landroid/content/IntentFilter;

.field private mSvcConnection:Landroid/content/ServiceConnection;

.field mSystemAccount:Landroid/accounts/Account;

.field private mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    sget-boolean v0, Lcom/htc/android/mail/Mail;->EAS_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/easclient/AccountNameSetting;->DEBUG:Z

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/android/mail/easclient/AccountNameSetting;->sCreaeteAccountLock:Ljava/lang/Object;

    .line 100
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mCreateFail:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 70
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 73
    const-string v0, "AccountNameSetting"

    iput-object v0, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->TAG:Ljava/lang/String;

    .line 95
    iput-object v2, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mContext:Landroid/content/Context;

    .line 97
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->accountId:J

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mCallingActivity:I

    .line 99
    iput-boolean v3, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mIsDestroy:Z

    .line 101
    iput-boolean v3, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->bContinueCreateAccount:Z

    .line 102
    iput-object v2, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mCreateAccThread:Lcom/htc/android/mail/easclient/AccountNameSetting$CreateAccountThread;

    .line 103
    iput-object v2, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mSystemAccount:Landroid/accounts/Account;

    .line 104
    iput v3, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mScreenMinHeight:I

    .line 105
    iput v3, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mSIPUpScreenMinHeight:I

    .line 106
    iput v3, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mOldSipHeight:I

    .line 107
    iput-object v2, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mSipIntentFilter:Landroid/content/IntentFilter;

    .line 108
    iput-boolean v3, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->bRegIMEReceiver:Z

    .line 111
    iput-boolean v3, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mIsExchangeSaved:Z

    .line 112
    iput-object v2, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mEASAccountInfo:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

    .line 118
    new-instance v0, Lcom/htc/android/mail/easclient/AccountNameSetting$1;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/easclient/AccountNameSetting$1;-><init>(Lcom/htc/android/mail/easclient/AccountNameSetting;)V

    iput-object v0, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mSvcConnection:Landroid/content/ServiceConnection;

    .line 262
    new-instance v0, Lcom/htc/android/mail/easclient/AccountNameSetting$2;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/easclient/AccountNameSetting$2;-><init>(Lcom/htc/android/mail/easclient/AccountNameSetting;)V

    iput-object v0, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 304
    new-instance v0, Lcom/htc/android/mail/easclient/AccountNameSetting$3;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/easclient/AccountNameSetting$3;-><init>(Lcom/htc/android/mail/easclient/AccountNameSetting;)V

    iput-object v0, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mTextWatcher:Landroid/text/TextWatcher;

    .line 506
    new-instance v0, Lcom/htc/android/mail/easclient/AccountNameSetting$5;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/easclient/AccountNameSetting$5;-><init>(Lcom/htc/android/mail/easclient/AccountNameSetting;)V

    iput-object v0, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->gotoSettingListener:Landroid/content/DialogInterface$OnClickListener;

    .line 677
    new-instance v0, Lcom/htc/android/mail/easclient/AccountNameSetting$6;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/easclient/AccountNameSetting$6;-><init>(Lcom/htc/android/mail/easclient/AccountNameSetting;)V

    iput-object v0, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mAccountHandler:Landroid/os/Handler;

    .line 905
    iput-object v2, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->defaultAccountName:Ljava/lang/String;

    .line 906
    iput-object v2, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->accountPattern:Ljava/lang/String;

    .line 907
    iput-object v2, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->AccountNameIdList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 70
    sget-boolean v0, Lcom/htc/android/mail/easclient/AccountNameSetting;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/android/mail/easclient/AccountNameSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mIsDestroy:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/android/mail/easclient/AccountNameSetting;)Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/AccountNameSetting;->getAccountInfo()Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/android/mail/easclient/AccountNameSetting;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->AccountNameIdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/htc/android/mail/easclient/AccountNameSetting;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->AccountNameIdList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/htc/android/mail/easclient/AccountNameSetting;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/htc/android/mail/easclient/AccountNameSetting;->defaultAccountNum(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/android/mail/easclient/AccountNameSetting;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mEditAccountName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/android/mail/easclient/AccountNameSetting;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->defaultAccountName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/android/mail/easclient/AccountNameSetting;)Lcom/htc/android/mail/eassvc/pim/IEASService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/android/mail/easclient/AccountNameSetting;Lcom/htc/android/mail/eassvc/pim/IEASService;)Lcom/htc/android/mail/eassvc/pim/IEASService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    return-object p1
.end method

.method static synthetic access$400(Lcom/htc/android/mail/easclient/AccountNameSetting;)Lcom/htc/android/mail/widget/MailFooterBarButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mNextButton:Lcom/htc/android/mail/widget/MailFooterBarButton;

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 70
    sget-boolean v0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mCreateFail:Z

    return v0
.end method

.method static synthetic access$502(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    sput-boolean p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mCreateFail:Z

    return p0
.end method

.method static synthetic access$600(Lcom/htc/android/mail/easclient/AccountNameSetting;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mAccountHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/android/mail/easclient/AccountNameSetting;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/htc/android/mail/easclient/AccountNameSetting;->setResultValue(J)V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/android/mail/easclient/AccountNameSetting;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkNetworkAccess()Z
    .locals 1

    .prologue
    .line 297
    invoke-static {p0}, Lcom/htc/android/mail/MailCommon;->checkNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/AccountNameSetting;->showDialog(I)V

    .line 299
    const/4 v0, 0x0

    .line 301
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private defaultAccountNum(Ljava/lang/String;)I
    .locals 6
    .parameter "desc"

    .prologue
    .line 974
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 975
    const/4 v0, 0x0

    .line 996
    :cond_0
    :goto_0
    return v0

    .line 977
    :cond_1
    const/4 v0, 0x0

    .line 979
    .local v0, defaultAccountNum:I
    iget-object v5, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->defaultAccountName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 980
    const/4 v0, 0x1

    goto :goto_0

    .line 983
    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->accountPattern:Ljava/lang/String;

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 984
    .local v3, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 985
    .local v2, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 986
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 987
    .local v4, strDefaultNum:Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 988
    const-string v4, "1"

    .line 990
    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 992
    .end local v2           #matcher:Ljava/util/regex/Matcher;
    .end local v3           #pattern:Ljava/util/regex/Pattern;
    .end local v4           #strDefaultNum:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 993
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private fillDefaultAccountName()V
    .locals 8

    .prologue
    .line 873
    const/4 v0, 0x0

    .line 875
    .local v0, defaultName:Ljava/lang/String;
    :try_start_0
    const-string v5, "EASSetupWizard"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/htc/android/mail/easclient/AccountNameSetting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 876
    .local v4, preferences:Landroid/content/SharedPreferences;
    if-eqz v4, :cond_0

    .line 877
    const-string v5, "mailAddress"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 878
    .local v2, emailAddr:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 879
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 880
    const-string v5, "@"

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 881
    .local v3, index:I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 882
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 891
    .end local v2           #emailAddr:Ljava/lang/String;
    .end local v3           #index:I
    .end local v4           #preferences:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 892
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/AccountNameSetting;->fillEASDefaultAccountName()V

    .line 898
    :goto_1
    return-void

    .line 886
    :catch_0
    move-exception v1

    .line 887
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 888
    const/4 v0, 0x0

    goto :goto_0

    .line 894
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    sget-boolean v5, Lcom/htc/android/mail/easclient/AccountNameSetting;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "AccountNameSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fillDefaultAccountName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    :cond_2
    iget-object v5, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mEditAccountName:Landroid/widget/EditText;

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 896
    iget-object v5, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mEditAccountName:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->selectAll()V

    goto :goto_1
.end method

.method private fillEASDefaultAccountName()V
    .locals 2

    .prologue
    .line 909
    sget-boolean v0, Lcom/htc/android/mail/easclient/AccountNameSetting;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AccountNameSetting"

    const-string v1, "fillEASDefaultAccountName"

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/mail/easclient/AccountNameSetting$7;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/easclient/AccountNameSetting$7;-><init>(Lcom/htc/android/mail/easclient/AccountNameSetting;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 971
    return-void
.end method

.method private getAccountInfo()Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 618
    new-instance v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    invoke-direct {v0}, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;-><init>()V

    .line 619
    .local v0, exAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    const-string v2, "EASSetupWizard"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/htc/android/mail/easclient/AccountNameSetting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 620
    .local v1, preferences:Landroid/content/SharedPreferences;
    const-string v2, "mailAddress"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->emailAddress:Ljava/lang/String;

    .line 621
    const-string v2, "serverName"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->serverName:Ljava/lang/String;

    .line 622
    const-string v2, "doamin"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->domainName:Ljava/lang/String;

    .line 623
    const-string v2, "userName"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->userName:Ljava/lang/String;

    .line 624
    const-string v2, "password"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->password:Ljava/lang/String;

    .line 625
    iget-object v2, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->password:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/android/mail/eassvc/util/AccountUtil;->decodePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->password:Ljava/lang/String;

    .line 626
    const-string v2, "useSSL"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->requireSSL:Z

    .line 627
    return-object v0
.end method

.method private initLayout()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 214
    const v3, 0x7f030010

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/easclient/AccountNameSetting;->setContentView(I)V

    .line 216
    const v3, 0x7f09006f

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/easclient/AccountNameSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/widget/MailFooterBar2Btn;

    .line 217
    .local v1, footerBar:Lcom/htc/android/mail/widget/MailFooterBar2Btn;
    invoke-virtual {v1}, Lcom/htc/android/mail/widget/MailFooterBar2Btn;->getLeftButton()Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mPrevButton:Lcom/htc/android/mail/widget/MailFooterBarButton;

    .line 218
    iget-object v3, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mPrevButton:Lcom/htc/android/mail/widget/MailFooterBarButton;

    invoke-virtual {v3, p0}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v3, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mPrevButton:Lcom/htc/android/mail/widget/MailFooterBarButton;

    const v4, 0x7f0b0281

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(I)V

    .line 220
    invoke-virtual {v1}, Lcom/htc/android/mail/widget/MailFooterBar2Btn;->getRightButton()Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mNextButton:Lcom/htc/android/mail/widget/MailFooterBarButton;

    .line 221
    iget-object v3, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mNextButton:Lcom/htc/android/mail/widget/MailFooterBarButton;

    invoke-virtual {v3, p0}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object v3, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mNextButton:Lcom/htc/android/mail/widget/MailFooterBarButton;

    const v4, 0x7f0b0282

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(I)V

    .line 223
    iget-object v3, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mNextButton:Lcom/htc/android/mail/widget/MailFooterBarButton;

    invoke-virtual {v3, v5}, Lcom/htc/android/mail/widget/MailFooterBarButton;->enableButton(Z)V

    .line 225
    const-string v3, "EASSetupWizard"

    invoke-virtual {p0, v3, v5}, Lcom/htc/android/mail/easclient/AccountNameSetting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 226
    .local v2, preferences:Landroid/content/SharedPreferences;
    const-string v3, "mailAddress"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, emailAddr:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/mail/Mail;->isEnableHuxRestoreExchangeSettings()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mIsExchangeSaved:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mEASAccountInfo:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

    if-eqz v3, :cond_0

    .line 230
    iget-object v3, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mEASAccountInfo:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

    iget-object v3, v3, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->nickName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 231
    iget-object v3, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mEASAccountInfo:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

    iget-object v0, v3, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->nickName:Ljava/lang/String;

    .line 235
    :cond_0
    const v3, 0x7f090076

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/easclient/AccountNameSetting;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mEditAccountName:Landroid/widget/EditText;

    .line 236
    iget-object v3, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mEditAccountName:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 237
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/AccountNameSetting;->fillDefaultAccountName()V

    .line 238
    return-void
.end method

.method private isPrefExist()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 321
    const-string v3, "EASSetupWizard"

    invoke-virtual {p0, v3, v2}, Lcom/htc/android/mail/easclient/AccountNameSetting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 322
    .local v1, preferences:Landroid/content/SharedPreferences;
    const-string v3, "mailAddress"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, email:Ljava/lang/String;
    if-nez v0, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private setIntentDataforResult(JLandroid/content/Intent;)V
    .locals 4
    .parameter "accountId"
    .parameter "intent"

    .prologue
    .line 328
    sget-boolean v1, Lcom/htc/android/mail/easclient/AccountNameSetting;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "AccountNameSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setIntentDataforResult(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :cond_0
    if-nez p3, :cond_2

    .line 330
    sget-boolean v1, Lcom/htc/android/mail/easclient/AccountNameSetting;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "AccountNameSetting"

    const-string v2, "setIntentDataforResult(): intent is null, return"

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :cond_1
    :goto_0
    return-void

    .line 334
    :cond_2
    sget-object v1, Lcom/htc/android/mail/eassvc/pim/EASMail;->EASACCOUNTS_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 335
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 336
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 337
    const-string v1, "_isExchange"

    const/4 v2, 0x1

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 338
    const-string v1, "provider"

    const-string v2, "Exchange"

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    const-string v1, "protocol"

    const/4 v2, 0x4

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 340
    const-string v1, "AccountId"

    long-to-int v2, p1

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 341
    const-string v1, "AccountName"

    const-string v2, "Exchange"

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    sget-boolean v1, Lcom/htc/android/mail/easclient/AccountNameSetting;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "AccountNameSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EXCHG URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setIntentResult(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    const/16 v2, 0x6a

    .line 379
    sget-boolean v0, Lcom/htc/android/mail/easclient/AccountNameSetting;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AccountNameSetting"

    const-string v1, "setIntentResult()"

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    :cond_0
    if-nez p1, :cond_2

    .line 381
    sget-boolean v0, Lcom/htc/android/mail/easclient/AccountNameSetting;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "AccountNameSetting"

    const-string v1, "setIntentResult(): intent is null, return"

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    :cond_1
    :goto_0
    return-void

    .line 385
    :cond_2
    iget v0, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mCallingActivity:I

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_4

    .line 386
    sget-boolean v0, Lcom/htc/android/mail/easclient/AccountNameSetting;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "AccountNameSetting"

    const-string v1, "mCallingActivity = ACCOUNT"

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    :cond_3
    invoke-virtual {p0, v2, p1}, Lcom/htc/android/mail/easclient/AccountNameSetting;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 388
    :cond_4
    iget v0, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mCallingActivity:I

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_6

    .line 389
    sget-boolean v0, Lcom/htc/android/mail/easclient/AccountNameSetting;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "AccountNameSetting"

    const-string v1, "mCallingActivity = COMPOSE"

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    :cond_5
    const/16 v0, 0x67

    invoke-virtual {p0, v0, p1}, Lcom/htc/android/mail/easclient/AccountNameSetting;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 391
    :cond_6
    iget v0, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mCallingActivity:I

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_8

    .line 392
    sget-boolean v0, Lcom/htc/android/mail/easclient/AccountNameSetting;->DEBUG:Z

    if-eqz v0, :cond_7

    const-string v0, "AccountNameSetting"

    const-string v1, "mCallingActivity = MAILLIST"

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :cond_7
    invoke-virtual {p0, v2, p1}, Lcom/htc/android/mail/easclient/AccountNameSetting;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 394
    :cond_8
    iget v0, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mCallingActivity:I

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_a

    .line 395
    sget-boolean v0, Lcom/htc/android/mail/easclient/AccountNameSetting;->DEBUG:Z

    if-eqz v0, :cond_9

    const-string v0, "AccountNameSetting"

    const-string v1, "mCallingActivity = MAILWHEEL"

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    :cond_9
    const/16 v0, 0x6b

    invoke-virtual {p0, v0, p1}, Lcom/htc/android/mail/easclient/AccountNameSetting;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 397
    :cond_a
    iget v0, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mCallingActivity:I

    const/16 v1, 0x5f

    if-ne v0, v1, :cond_c

    .line 398
    sget-boolean v0, Lcom/htc/android/mail/easclient/AccountNameSetting;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "AccountNameSetting"

    const-string v1, "mCallingActivity = MAILWHEEL"

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    :cond_b
    const/16 v0, 0x6d

    invoke-virtual {p0, v0, p1}, Lcom/htc/android/mail/easclient/AccountNameSetting;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 400
    :cond_c
    iget v0, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mCallingActivity:I

    const/16 v1, 0x61

    if-ne v0, v1, :cond_f

    invoke-static {}, Lcom/htc/android/mail/Mail;->isEnableHuxRestoreExchangeSettings()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 402
    sget-boolean v0, Lcom/htc/android/mail/easclient/AccountNameSetting;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "AccountNameSetting"

    const-string v1, "mCallingActivity = HUX_RESTORE_EXCHANGE_ACCT_CALLING"

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :cond_d
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_e

    const-string v0, "AccountNameSetting"

    const-string v1, "setIsExchangeSaved"

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    :cond_e
    iget-object v0, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/htc/android/mail/Account;->setIsExchangeSaved(Landroid/content/Context;Z)V

    .line 405
    const/16 v0, 0x6e

    invoke-virtual {p0, v0, p1}, Lcom/htc/android/mail/easclient/AccountNameSetting;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 406
    :cond_f
    iget v0, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mCallingActivity:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    .line 407
    sget-boolean v0, Lcom/htc/android/mail/easclient/AccountNameSetting;->DEBUG:Z

    if-eqz v0, :cond_10

    const-string v0, "AccountNameSetting"

    const-string v1, "mCallingActivity = -1, to default - AccountListScreen"

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    :cond_10
    const-string v0, "com.htc.android.mail"

    const-string v1, "com.htc.android.mail.MailListTab"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    sget v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mToDefaultAccountListScreen:I

    invoke-virtual {p0, v0, p1}, Lcom/htc/android/mail/easclient/AccountNameSetting;->setResult(ILandroid/content/Intent;)V

    .line 410
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/easclient/AccountNameSetting;->startActivity(Landroid/content/Intent;)V

    .line 411
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/AccountNameSetting;->finish()V

    goto/16 :goto_0

    .line 413
    :cond_11
    sget-boolean v0, Lcom/htc/android/mail/easclient/AccountNameSetting;->DEBUG:Z

    if-eqz v0, :cond_12

    const-string v0, "AccountNameSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDefault: MAILLIST_NEW_ACCOUNT("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mCallingActivity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    :cond_12
    const/16 v0, 0x65

    invoke-virtual {p0, v0, p1}, Lcom/htc/android/mail/easclient/AccountNameSetting;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private setResultValue(J)V
    .locals 4
    .parameter "accountId"

    .prologue
    .line 346
    sget-boolean v1, Lcom/htc/android/mail/easclient/AccountNameSetting;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "AccountNameSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setResultValue(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 348
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mSystemAccount:Landroid/accounts/Account;

    if-eqz v1, :cond_1

    .line 349
    const-string v1, "account"

    iget-object v2, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mSystemAccount:Landroid/accounts/Account;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 351
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mFromWhere:Ljava/lang/String;

    const-string v2, "extra.eas.from.mail"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 368
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 369
    invoke-direct {p0, p1, p2, v0}, Lcom/htc/android/mail/easclient/AccountNameSetting;->setIntentDataforResult(JLandroid/content/Intent;)V

    .line 370
    invoke-direct {p0, v0}, Lcom/htc/android/mail/easclient/AccountNameSetting;->setIntentResult(Landroid/content/Intent;)V

    .line 375
    :cond_2
    :goto_0
    return-void

    .line 372
    :cond_3
    iget-object v1, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mFromWhere:Ljava/lang/String;

    const-string v2, "extra.eas.from.easc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 373
    const/16 v1, 0x65

    invoke-virtual {p0, v1, v0}, Lcom/htc/android/mail/easclient/AccountNameSetting;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public addSystemAccount(Landroid/content/Context;Landroid/accounts/AccountManagerCallback;)V
    .locals 22
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 630
    .local p2, callback:Landroid/accounts/AccountManagerCallback;,"Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/easclient/AccountNameSetting;->isPrefExist()Z

    move-result v1

    if-nez v1, :cond_0

    .line 631
    const/16 v1, 0xc8

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/easclient/AccountNameSetting;->setResult(I)V

    .line 632
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/easclient/AccountNameSetting;->finish()V

    .line 675
    :goto_0
    return-void

    .line 636
    :cond_0
    const-string v1, "EASSetupWizard"

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/easclient/AccountNameSetting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 637
    .local v16, preferences:Landroid/content/SharedPreferences;
    const-string v1, "mailAddress"

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 638
    .local v10, emailAddr:Ljava/lang/String;
    const-string v1, "serverName"

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 639
    .local v18, serverName:Ljava/lang/String;
    const-string v1, "doamin"

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 640
    .local v9, domainName:Ljava/lang/String;
    const-string v1, "userName"

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 641
    .local v20, username:Ljava/lang/String;
    const-string v1, "password"

    const-string v2, ""

    move-object/from16 v0, v16

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 642
    .local v15, password:Ljava/lang/String;
    invoke-static {v15}, Lcom/htc/android/mail/eassvc/util/AccountUtil;->decodePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 643
    const-string v1, "useSSL"

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 644
    .local v17, requireSSL:Z
    const-string v1, "isContactChecked"

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 645
    .local v12, enableContact:Z
    const-string v1, "isCalendarChecked"

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 646
    .local v11, enableCalendar:Z
    const-string v1, "isMailChecked"

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 647
    .local v13, enableMail:Z
    const-string v1, "isTaskChecked"

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 648
    .local v14, enableTask:Z
    const-string v1, "schedule"

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 649
    .local v19, syncSchedule:I
    sget-boolean v1, Lcom/htc/android/mail/easclient/AccountNameSetting;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "AccountNameSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "schedule: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    :cond_1
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 652
    .local v5, options:Landroid/os/Bundle;
    const-string v1, "emailAddr"

    invoke-virtual {v5, v1, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    const-string v1, "serverAddr"

    move-object/from16 v0, v18

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    const-string v1, "domain"

    invoke-virtual {v5, v1, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const-string v1, "username"

    move-object/from16 v0, v20

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    const-string v1, "password"

    invoke-virtual {v5, v1, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    const-string v1, "useSSL"

    move/from16 v0, v17

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 658
    const-string v1, "syncContacts"

    invoke-virtual {v5, v1, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 659
    const-string v1, "syncCalendar"

    invoke-virtual {v5, v1, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 660
    const-string v1, "syncMail"

    invoke-virtual {v5, v1, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 661
    const-string v1, "syncTasks"

    invoke-virtual {v5, v1, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 662
    const-string v1, "displayName"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mEditAccountName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    const-string v1, "syncSchedule"

    move/from16 v0, v19

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 665
    new-instance v1, Landroid/accounts/Account;

    const-string v2, "com.htc.android.mail.eas"

    invoke-direct {v1, v10, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mSystemAccount:Landroid/accounts/Account;

    .line 669
    sget-object v21, Lcom/htc/android/mail/easclient/AccountNameSetting;->sCreaeteAccountLock:Ljava/lang/Object;

    monitor-enter v21

    .line 670
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.htc.android.mail.eas"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v7, p2

    invoke-virtual/range {v1 .. v8}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 674
    monitor-exit v21

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSipHeight()I
    .locals 1

    .prologue
    .line 614
    iget v0, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mOldSipHeight:I

    return v0
.end method

.method hideIME()V
    .locals 3

    .prologue
    .line 822
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/AccountNameSetting;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 823
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 824
    iget-object v1, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mEditAccountName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 826
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mPrevButton:Lcom/htc/android/mail/widget/MailFooterBarButton;

    if-ne p1, v0, :cond_1

    .line 283
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/AccountNameSetting;->setResult(I)V

    .line 284
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/AccountNameSetting;->hideIME()V

    .line 285
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/AccountNameSetting;->finish()V

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mNextButton:Lcom/htc/android/mail/widget/MailFooterBarButton;

    if-ne p1, v0, :cond_0

    .line 287
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/AccountNameSetting;->checkNetworkAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/AccountNameSetting;->hideIME()V

    .line 290
    new-instance v0, Lcom/htc/android/mail/easclient/AccountNameSetting$CreateAccountThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/android/mail/easclient/AccountNameSetting$CreateAccountThread;-><init>(Lcom/htc/android/mail/easclient/AccountNameSetting;Lcom/htc/android/mail/easclient/AccountNameSetting$1;)V

    iput-object v0, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mCreateAccThread:Lcom/htc/android/mail/easclient/AccountNameSetting$CreateAccountThread;

    .line 291
    iget-object v0, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mCreateAccThread:Lcom/htc/android/mail/easclient/AccountNameSetting$CreateAccountThread;

    invoke-virtual {v0}, Lcom/htc/android/mail/easclient/AccountNameSetting$CreateAccountThread;->start()V

    .line 292
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/AccountNameSetting;->showDialog(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 136
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 137
    sget-boolean v3, Lcom/htc/android/mail/easclient/AccountNameSetting;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "AccountNameSetting"

    const-string v6, "onCreate()"

    invoke-static {v3, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_0
    iput-object p0, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mContext:Landroid/content/Context;

    .line 140
    invoke-virtual {p0, v5}, Lcom/htc/android/mail/easclient/AccountNameSetting;->requestWindowFeature(I)Z

    .line 143
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/AccountNameSetting;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v6, 0x20806a9

    invoke-virtual {v3, v6}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 145
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/AccountNameSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 146
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_3

    .line 147
    const-string v3, "intent.eas.from_where"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mFromWhere:Ljava/lang/String;

    .line 148
    const-string v3, "CallingActivity"

    const/4 v6, -0x1

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mCallingActivity:I

    .line 149
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/AccountNameSetting;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 150
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_1

    .line 151
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->accountId:J

    .line 153
    :cond_1
    sget-boolean v3, Lcom/htc/android/mail/easclient/AccountNameSetting;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "AccountNameSetting"

    iget-wide v6, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->accountId:J

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mFromWhere: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mFromWhere:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mCallingActivity: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mCallingActivity:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v6, v7, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 155
    :cond_2
    invoke-static {}, Lcom/htc/android/mail/Mail;->isEnableHuxRestoreExchangeSettings()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 156
    const-string v3, "mIsExchangeSaved"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mIsExchangeSaved:Z

    .line 157
    const-string v3, "mEASAccountInfo"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

    iput-object v3, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mEASAccountInfo:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

    .line 158
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v3, :cond_3

    .line 159
    const-string v6, "AccountNameSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isExchangeSaved:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v7, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mIsExchangeSaved:Z

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v3, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mEASAccountInfo:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

    if-nez v3, :cond_7

    move v3, v4

    :goto_0
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .end local v2           #uri:Landroid/net/Uri;
    :cond_3
    iget-object v3, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mFromWhere:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 165
    const-string v3, "extra.eas.from.easc"

    iput-object v3, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mFromWhere:Ljava/lang/String;

    .line 167
    :cond_4
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "HTC_IME_CURRENT_STATE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mSipIntentFilter:Landroid/content/IntentFilter;

    .line 176
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/AccountNameSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08005a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mScreenMinHeight:I

    .line 177
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x91

    if-ne v3, v4, :cond_8

    .line 178
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/AccountNameSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08005d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mSIPUpScreenMinHeight:I

    .line 183
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->AccountNameIdList:Ljava/util/ArrayList;

    .line 184
    const v3, 0x7f0b03c6

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/easclient/AccountNameSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->defaultAccountName:Ljava/lang/String;

    .line 185
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->defaultAccountName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )(\\d{0,2})"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->accountPattern:Ljava/lang/String;

    .line 187
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/AccountNameSetting;->initLayout()V

    .line 189
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 190
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v3, "intent.eas.password_setup.finish"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/AccountNameSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 192
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/AccountNameSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.htc.android.mail.eassvc.EASAppSvc"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mSvcConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 194
    sget-boolean v3, Lcom/htc/android/mail/easclient/AccountNameSetting;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "AccountNameSetting"

    const-string v4, "Fail to bind EAS AppSvc! "

    invoke-static {v3, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_5
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/AccountNameSetting;->finish()V

    .line 197
    :cond_6
    return-void

    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    .restart local v2       #uri:Landroid/net/Uri;
    :cond_7
    move v3, v5

    .line 159
    goto/16 :goto_0

    .line 180
    .end local v2           #uri:Landroid/net/Uri;
    :cond_8
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/AccountNameSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08005c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mSIPUpScreenMinHeight:I

    goto :goto_1
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11
    .parameter "id"
    .parameter "args"

    .prologue
    .line 420
    sget-boolean v0, Lcom/htc/android/mail/easclient/AccountNameSetting;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AccountNameSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateDialog("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :cond_0
    const-string v0, "EASSetupWizard"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/mail/easclient/AccountNameSetting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 422
    .local v9, preferences:Landroid/content/SharedPreferences;
    const-string v0, "mailAddress"

    const/4 v1, 0x0

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 423
    .local v4, emailAddr:Ljava/lang/String;
    const-wide/16 v2, -0x1

    move-object v0, p0

    move v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/htc/android/mail/easclient/CertificateUtil;->handleCreateDialog(Landroid/app/Activity;IJLjava/lang/String;Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v7

    .line 424
    .local v7, certDialog:Landroid/app/Dialog;
    if-eqz v7, :cond_1

    move-object v8, v7

    .line 503
    :goto_0
    return-object v8

    .line 427
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 503
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v8

    goto :goto_0

    .line 429
    :pswitch_0
    new-instance v10, Lcom/htc/android/mail/easclient/EASProgressDialog;

    invoke-direct {v10, p0}, Lcom/htc/android/mail/easclient/EASProgressDialog;-><init>(Landroid/content/Context;)V

    .line 430
    .local v10, progressDialog:Lcom/htc/android/mail/easclient/EASProgressDialog;
    sget-object v0, Lcom/htc/android/mail/easclient/EASProgressDialog$DialogAction;->CREATE_ACCOUNT:Lcom/htc/android/mail/easclient/EASProgressDialog$DialogAction;

    invoke-virtual {v10, v0}, Lcom/htc/android/mail/easclient/EASProgressDialog;->setDialog(Lcom/htc/android/mail/easclient/EASProgressDialog$DialogAction;)V

    .line 431
    new-instance v6, Lcom/htc/android/mail/easclient/AccountNameSetting$4;

    invoke-direct {v6, p0}, Lcom/htc/android/mail/easclient/AccountNameSetting$4;-><init>(Lcom/htc/android/mail/easclient/AccountNameSetting;)V

    .line 448
    .local v6, callback:Lcom/htc/android/mail/easclient/EASProgressDialog$DialogCallback;
    invoke-virtual {v10, v6}, Lcom/htc/android/mail/easclient/EASProgressDialog;->setCallback(Lcom/htc/android/mail/easclient/EASProgressDialog$DialogCallback;)V

    .line 449
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mCreateFail:Z

    move-object v8, v10

    .line 450
    goto :goto_0

    .line 452
    .end local v6           #callback:Lcom/htc/android/mail/easclient/EASProgressDialog$DialogCallback;
    .end local v10           #progressDialog:Lcom/htc/android/mail/easclient/EASProgressDialog;
    :pswitch_1
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0088

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0290

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/easclient/AccountNameSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0291

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    .line 457
    .local v8, dialog:Landroid/app/Dialog;
    goto :goto_0

    .line 459
    .end local v8           #dialog:Landroid/app/Dialog;
    :pswitch_2
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0088

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b01f7

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/easclient/AccountNameSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0291

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    .line 464
    .restart local v8       #dialog:Landroid/app/Dialog;
    goto :goto_0

    .line 466
    .end local v8           #dialog:Landroid/app/Dialog;
    :pswitch_3
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b01c2

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/easclient/AccountNameSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b01c1

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/easclient/AccountNameSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0167

    iget-object v2, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->gotoSettingListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b008e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    goto/16 :goto_0

    .line 474
    :pswitch_4
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0088

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b02db

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/easclient/AccountNameSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0291

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    .line 479
    .restart local v8       #dialog:Landroid/app/Dialog;
    goto/16 :goto_0

    .line 481
    .end local v8           #dialog:Landroid/app/Dialog;
    :pswitch_5
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0088

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b02dc

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/easclient/AccountNameSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0291

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    .line 486
    .restart local v8       #dialog:Landroid/app/Dialog;
    goto/16 :goto_0

    .line 488
    .end local v8           #dialog:Landroid/app/Dialog;
    :pswitch_6
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0088

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0289

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0291

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    goto/16 :goto_0

    .line 495
    :pswitch_7
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b005a

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b00e1

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/easclient/AccountNameSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0291

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    goto/16 :goto_0

    .line 427
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 200
    sget-boolean v0, Lcom/htc/android/mail/easclient/AccountNameSetting;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AccountNameSetting"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/android/mail/easclient/AccountNameSetting;->removeDialog(I)V

    .line 202
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 203
    iput-boolean v2, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mIsDestroy:Z

    .line 205
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/AccountNameSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 206
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/AccountNameSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mSvcConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mSvcConnection:Landroid/content/ServiceConnection;

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 573
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 574
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/AccountNameSetting;->setResult(I)V

    .line 575
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/AccountNameSetting;->finish()V

    .line 576
    const/4 v0, 0x1

    .line 579
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 585
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 593
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 596
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 597
    sget-boolean v0, Lcom/htc/android/mail/easclient/AccountNameSetting;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AccountNameSetting"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    :cond_0
    iget-boolean v0, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->bContinueCreateAccount:Z

    if-eqz v0, :cond_1

    .line 599
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/AccountNameSetting;->removeDialog(I)V

    .line 600
    iget-object v0, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->mNextButton:Lcom/htc/android/mail/widget/MailFooterBarButton;

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/AccountNameSetting;->onClick(Landroid/view/View;)V

    .line 601
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/easclient/AccountNameSetting;->bContinueCreateAccount:Z

    .line 608
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/AccountNameSetting;->isPrefExist()Z

    move-result v0

    if-nez v0, :cond_2

    .line 609
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/AccountNameSetting;->setResult(I)V

    .line 610
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/AccountNameSetting;->finish()V

    .line 612
    :cond_2
    return-void
.end method
