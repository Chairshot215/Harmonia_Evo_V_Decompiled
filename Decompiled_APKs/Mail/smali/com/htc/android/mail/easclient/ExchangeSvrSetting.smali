.class public Lcom/htc/android/mail/easclient/ExchangeSvrSetting;
.super Landroid/app/Activity;
.source "ExchangeSvrSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/easclient/ExchangeSvrSetting$TestServerThread;,
        Lcom/htc/android/mail/easclient/ExchangeSvrSetting$AutoDiscoverThread;,
        Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;
    }
.end annotation


# static fields
.field private static final AccountProviderUri:Landroid/net/Uri; = null

.field public static final BACK_TO_PROVIDER:I = 0xc8

.field public static final CFG_RESULT_CANCELED:I = 0xc8

.field public static final CFG_RESULT_DELETE_ACCOUNT:I = 0x66

.field public static final CFG_RESULT_SAVED:I = 0x65

.field private static final CMD_REMOVE_SVR:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final DIALOG_ACCOUNT_SIZE_LIMIT:I = 0x1c

.field private static final DIALOG_AUTO_DISCOVER_FAIL:I = 0xf

.field private static final DIALOG_CANNOT_REMOVE_WHILE_SYNC:I = 0x19

.field private static final DIALOG_CREATE_ACCOUNT_ACCOUNT_EXIST:I = 0x1b

.field private static final DIALOG_ERROR_NO_NETWORK:I = 0x1a

.field private static final DIALOG_PROGRESS_AUTO_DISCOVER:I = 0x1

.field private static final DIALOG_PROGRESS_DELETE_ACCOUNT:I = 0x3

.field private static final DIALOG_PROGRESS_TEST_SERVER:I = 0x2

.field private static final DIALOG_TEST_ABORT:I = 0xd

.field private static final DIALOG_TEST_AUTHENTICATION_FAIL:I = 0xb

.field private static final DIALOG_TEST_FAIL:I = 0xe

.field private static final DIALOG_TEST_HTTP_SC_403:I = 0xc

.field private static final DIALOG_TEST_NO_SERVER:I = 0xa

.field private static final ERROR_COLOR:I = -0x10000

.field private static GOOD_COLOR:I = 0x0

.field private static final MESSAGE_AUTO_COMPLETE_SETUP:I = 0x6

.field private static final MESSAGE_END_AUTO_DISCOVER:I = 0x1

.field private static final MESSAGE_END_CANCEL_CERTIFICATE:I = 0x5

.field private static final MESSAGE_END_SAVE_KEYSTORE:I = 0x4

.field private static final MESSAGE_END_TEST_SERVER:I = 0x2

.field public static mRequestCode:I

.field public static mToDefaultAccountListScreen:I

.field public static mToEASC:I

.field public static mToExchangeSvrSetting:I

.field public static mToMail:I

.field public static mToMailWheel:I

.field public static mToWizard:I

.field private static mTopActivity:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

.field private static tmpAccount:Ljava/lang/String;

.field private static tmpDomain:Ljava/lang/String;

.field private static tmpEmailAddr:Ljava/lang/String;

.field private static tmpPasswd:Ljava/lang/String;

.field private static tmpServerAddr:Ljava/lang/String;

.field private static tmpUseSSL:Ljava/lang/Boolean;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private accountId:J

.field private chkShowPwd:Landroid/widget/CheckBox;

.field private chkUseSSL:Landroid/widget/CheckBox;

.field private editDomain:Landroid/widget/EditText;

.field private editEmailAddr:Landroid/widget/AutoCompleteTextView;

.field private editPassword:Landroid/widget/EditText;

.field private editSvrName:Landroid/widget/EditText;

.field private editUserName:Landroid/widget/EditText;

.field emailFocusChange:Landroid/view/View$OnFocusChangeListener;

.field public gotoSettingListener:Landroid/content/DialogInterface$OnClickListener;

.field private mBackupManager:Landroid/app/backup/BackupManager;

.field private mBindingService:Z

.field private mCallingActivity:I

.field private mContext:Landroid/content/Context;

.field mCurrentDialog:Landroid/app/Dialog;

.field private mDefaultSSLCheck:Z

.field private mDeleteDialog:Lcom/htc/android/mail/easclient/EASProgressDialog;

.field private mEASAccountInfo:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

.field private mFromWhere:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mInstanceStateBundle:Landroid/os/Bundle;

.field private mIsExchangeSaved:Z

.field private mIsTaskApExist:Z

.field private mIsWizard:Z

.field private mLastDialog:Lcom/htc/android/mail/easclient/EASProgressDialog;

.field private mMailHeader:Lcom/htc/android/mail/widget/TextMailHeaderBar1;

.field private mNextButton:Lcom/htc/android/mail/widget/MailFooterBarButton;

.field private mPasswordWatcher:Landroid/text/TextWatcher;

.field private mPrevButton:Lcom/htc/android/mail/widget/MailFooterBarButton;

.field private mProgressStatus:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

.field private mRes:Landroid/content/res/Resources;

.field private mSchedule:I

.field private mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

.field private mSvcConnection:Landroid/content/ServiceConnection;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private showPwd:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 94
    sget-boolean v0, Lcom/htc/android/mail/Mail;->EAS_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->DEBUG:Z

    .line 103
    const/high16 v0, -0x100

    sput v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->GOOD_COLOR:I

    .line 139
    const/16 v0, 0x64

    sput v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mRequestCode:I

    .line 140
    const/16 v0, 0x6c

    sput v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mToWizard:I

    .line 141
    const/16 v0, 0x6e

    sput v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mToMail:I

    .line 142
    const/16 v0, 0x6f

    sput v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mToEASC:I

    .line 143
    const/16 v0, 0x70

    sput v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mToMailWheel:I

    .line 144
    const/16 v0, 0x71

    sput v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mToExchangeSvrSetting:I

    .line 145
    const/16 v0, 0x72

    sput v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mToDefaultAccountListScreen:I

    .line 146
    const-string v0, "content://com.htc.accounts/accounts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->AccountProviderUri:Landroid/net/Uri;

    .line 155
    sput-object v1, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mTopActivity:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    .line 156
    sput-object v1, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->tmpEmailAddr:Ljava/lang/String;

    .line 157
    sput-object v1, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->tmpPasswd:Ljava/lang/String;

    .line 158
    sput-object v1, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->tmpServerAddr:Ljava/lang/String;

    .line 159
    sput-object v1, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->tmpAccount:Ljava/lang/String;

    .line 160
    sput-object v1, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->tmpDomain:Ljava/lang/String;

    .line 161
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->tmpUseSSL:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 90
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 93
    const-string v0, "ExchangeSvrSetting"

    iput-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->TAG:Ljava/lang/String;

    .line 127
    iput-object v2, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mMailHeader:Lcom/htc/android/mail/widget/TextMailHeaderBar1;

    .line 148
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->accountId:J

    .line 149
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mCallingActivity:I

    .line 151
    iput-boolean v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mIsWizard:Z

    .line 152
    iput-boolean v3, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mDefaultSSLCheck:Z

    .line 153
    iput-object v2, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mInstanceStateBundle:Landroid/os/Bundle;

    .line 154
    sget-object v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;->AUTO_DISCOVER:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    iput-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mProgressStatus:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    .line 162
    iput-object v2, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mContext:Landroid/content/Context;

    .line 163
    iput v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mSchedule:I

    .line 164
    iput-boolean v3, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mBindingService:Z

    .line 165
    iput-boolean v3, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mIsTaskApExist:Z

    .line 166
    iput-object v2, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mLastDialog:Lcom/htc/android/mail/easclient/EASProgressDialog;

    .line 167
    iput-object v2, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mDeleteDialog:Lcom/htc/android/mail/easclient/EASProgressDialog;

    .line 172
    iput-boolean v3, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mIsExchangeSaved:Z

    .line 173
    iput-object v2, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mEASAccountInfo:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

    .line 183
    new-instance v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$1;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$1;-><init>(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)V

    iput-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mSvcConnection:Landroid/content/ServiceConnection;

    .line 664
    iput-object v2, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mCurrentDialog:Landroid/app/Dialog;

    .line 1131
    new-instance v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$8;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$8;-><init>(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)V

    iput-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->emailFocusChange:Landroid/view/View$OnFocusChangeListener;

    .line 1303
    new-instance v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$9;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$9;-><init>(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)V

    iput-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mTextWatcher:Landroid/text/TextWatcher;

    .line 1316
    new-instance v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$10;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$10;-><init>(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)V

    iput-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mPasswordWatcher:Landroid/text/TextWatcher;

    .line 1334
    new-instance v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$11;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$11;-><init>(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)V

    iput-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->showPwd:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 1469
    new-instance v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$12;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$12;-><init>(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)V

    iput-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mHandler:Landroid/os/Handler;

    .line 1925
    new-instance v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$13;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$13;-><init>(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)V

    iput-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->gotoSettingListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 90
    sget-boolean v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Lcom/htc/android/mail/eassvc/pim/IEASService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->tmpServerAddr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    sput-object p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->tmpServerAddr:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;Lcom/htc/android/mail/eassvc/pim/IEASService;)Lcom/htc/android/mail/eassvc/pim/IEASService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editSvrName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->tmpDomain:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    sput-object p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->tmpDomain:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editDomain:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->tmpAccount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    sput-object p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->tmpAccount:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editUserName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1600()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->tmpUseSSL:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$1602(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    sput-object p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->tmpUseSSL:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->chkUseSSL:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mFromWhere:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mCallingActivity:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mInstanceStateBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mSchedule:I

    return v0
.end method

.method static synthetic access$2100(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mIsTaskApExist:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mIsTaskApExist:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mEASAccountInfo:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->accountId:J

    return-wide v0
.end method

.method static synthetic access$2502(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mBindingService:Z

    return p1
.end method

.method static synthetic access$2600()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->AccountProviderUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mProgressStatus:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->checkNextBtnEnable()V

    return-void
.end method

.method static synthetic access$302(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;)Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mProgressStatus:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->showPassword(Z)V

    return-void
.end method

.method static synthetic access$3200()Lcom/htc/android/mail/easclient/ExchangeSvrSetting;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mTopActivity:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 90
    invoke-direct/range {p0 .. p6}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->save_pref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$3400(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mIsExchangeSaved:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->save_pref()V

    return-void
.end method

.method static synthetic access$3600(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->saveLogin()V

    return-void
.end method

.method static synthetic access$3700(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/app/backup/BackupManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mBackupManager:Landroid/app/backup/BackupManager;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Lcom/htc/android/mail/widget/MailFooterBarButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mNextButton:Lcom/htc/android/mail/widget/MailFooterBarButton;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mIsWizard:Z

    return v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->tmpEmailAddr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    sput-object p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->tmpEmailAddr:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/widget/AutoCompleteTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->tmpPasswd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    sput-object p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->tmpPasswd:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->reLayout()V

    return-void
.end method

.method private final checkAddress(IIZ)Z
    .locals 10
    .parameter "labelId"
    .parameter "fieldId"
    .parameter "markError"

    .prologue
    const/16 v9, 0x40

    const/4 v6, 0x1

    const/high16 v8, -0x1

    .line 1238
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1239
    .local v2, label:Landroid/widget/TextView;
    invoke-virtual {p0, p2}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1240
    .local v1, field:Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1243
    .local v5, text:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 1244
    if-eqz p3, :cond_0

    .line 1245
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1246
    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    .line 1266
    :cond_0
    :goto_0
    return v6

    .line 1250
    :cond_1
    const-string v7, "(.+)@(.+)"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 1252
    .local v4, p:Ljava/util/regex/Pattern;
    invoke-virtual {v5, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1253
    .local v0, atPos:I
    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 1255
    .local v3, m:Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ne v0, v7, :cond_2

    .line 1258
    sget v6, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->GOOD_COLOR:I

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1259
    const/4 v6, 0x0

    goto :goto_0

    .line 1262
    :cond_2
    if-eqz p3, :cond_0

    .line 1263
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1264
    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    goto :goto_0
.end method

.method private final checkDomain(IIZ)Z
    .locals 8
    .parameter "labelId"
    .parameter "fieldId"
    .parameter "markError"

    .prologue
    const/4 v6, 0x0

    .line 1211
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1212
    .local v2, label:Landroid/widget/TextView;
    invoke-virtual {p0, p2}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1213
    .local v1, field:Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1215
    .local v5, text:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/mail/Regex;->getInstance()Lcom/htc/android/mail/Regex;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/htc/android/mail/Regex;->getPattern(I)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 1217
    .local v3, m:Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1218
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    .line 1219
    .local v4, start:I
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    .line 1225
    .local v0, end:I
    if-nez v4, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v0, v7, :cond_0

    .line 1226
    sget v7, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->GOOD_COLOR:I

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1234
    .end local v0           #end:I
    .end local v4           #start:I
    :goto_0
    return v6

    .line 1230
    :cond_0
    if-eqz p3, :cond_1

    .line 1231
    const/high16 v6, -0x1

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1232
    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    .line 1234
    :cond_1
    const/4 v6, 0x1

    goto :goto_0
.end method

.method private final checkEmpty(IIZ)Z
    .locals 3
    .parameter "labelId"
    .parameter "fieldId"
    .parameter "markError"

    .prologue
    .line 1195
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1196
    .local v1, label:Landroid/widget/TextView;
    invoke-virtual {p0, p2}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1198
    .local v0, field:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 1199
    if-eqz p3, :cond_0

    .line 1200
    const/high16 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1201
    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 1203
    :cond_0
    const/4 v2, 0x1

    .line 1206
    :goto_0
    return v2

    .line 1205
    :cond_1
    sget v2, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->GOOD_COLOR:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1206
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkItsLife()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1903
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mProgressStatus:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    sget-object v3, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;->SETTING:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-wide v3, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->accountId:J

    invoke-interface {v2, v3, v4}, Lcom/htc/android/mail/eassvc/pim/IEASService;->getAccountInfo(J)Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1904
    const-string v2, "ExchangeSvrSetting"

    iget-wide v3, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->accountId:J

    const-string v5, "account does NOT exist!!!!!"

    invoke-static {v2, v3, v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1911
    :goto_0
    return v1

    .line 1907
    :catch_0
    move-exception v0

    .line 1908
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1911
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private checkNetworkAccess()Z
    .locals 1

    .prologue
    .line 1918
    invoke-static {p0}, Lcom/htc/android/mail/MailCommon;->checkNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1919
    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->showDialog(I)V

    .line 1920
    const/4 v0, 0x0

    .line 1922
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkNextBtnEnable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 494
    invoke-direct {p0, v2}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->hasErrors(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mProgressStatus:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    sget-object v1, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;->CREATE_FULL_SETTING:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    if-ne v0, v1, :cond_0

    .line 495
    iget-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mNextButton:Lcom/htc/android/mail/widget/MailFooterBarButton;

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/widget/MailFooterBarButton;->enableButton(Z)V

    .line 498
    :goto_0
    return-void

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mNextButton:Lcom/htc/android/mail/widget/MailFooterBarButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/MailFooterBarButton;->enableButton(Z)V

    goto :goto_0
.end method

.method private final checkUserName(IIZ)Z
    .locals 10
    .parameter "labelId"
    .parameter "fieldId"
    .parameter "markError"

    .prologue
    const/4 v6, 0x1

    const/high16 v9, -0x1

    .line 1270
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1271
    .local v2, label:Landroid/widget/TextView;
    invoke-virtual {p0, p2}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1272
    .local v1, field:Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1275
    .local v5, text:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 1276
    if-eqz p3, :cond_0

    .line 1277
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1278
    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    .line 1300
    :cond_0
    :goto_0
    return v6

    .line 1283
    :cond_1
    invoke-static {}, Lcom/htc/android/mail/Regex;->getInstance()Lcom/htc/android/mail/Regex;

    move-result-object v7

    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Lcom/htc/android/mail/Regex;->getPattern(I)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 1285
    .local v3, m:Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1286
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    .line 1287
    .local v4, start:I
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    .line 1290
    .local v0, end:I
    if-nez v4, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v0, v7, :cond_2

    .line 1291
    sget v6, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->GOOD_COLOR:I

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1292
    const/4 v6, 0x0

    goto :goto_0

    .line 1296
    .end local v0           #end:I
    .end local v4           #start:I
    :cond_2
    if-eqz p3, :cond_0

    .line 1297
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1298
    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    goto :goto_0
.end method

.method private getSyncSettingFromCustomization(Landroid/os/Bundle;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V
    .locals 12
    .parameter "bundle"
    .parameter "exAccount"

    .prologue
    .line 1841
    sget-boolean v7, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "ExchangeSvrSetting"

    iget-wide v8, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->accountId:J

    const-string v10, "getSyncSettingFromCustomization"

    invoke-static {v7, v8, v9, v10}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1842
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_3

    .line 1843
    :cond_1
    sget-boolean v7, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->DEBUG:Z

    if-eqz v7, :cond_2

    const-string v7, "ExchangeSvrSetting"

    iget-wide v8, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->accountId:J

    const-string v10, "getSyncSettingFromCustomization: parameter is null, return"

    invoke-static {v7, v8, v9, v10}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1893
    :cond_2
    :goto_0
    return-void

    .line 1847
    :cond_3
    const/4 v6, 0x1

    .line 1849
    .local v6, useSSL:I
    :try_start_0
    const-string v7, "eas_sync_option"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 1850
    .local v5, syncOption:Landroid/os/Bundle;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/os/Bundle;->size()I

    move-result v7

    if-gtz v7, :cond_7

    .line 1851
    :cond_4
    sget-boolean v7, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->DEBUG:Z

    if-eqz v7, :cond_5

    const-string v7, "ExchangeSvrSetting"

    iget-wide v8, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->accountId:J

    const-string v10, "getSyncSettingFromCustomization: Can\'t retrieve bundle, return"

    invoke-static {v7, v8, v9, v10}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1852
    :cond_5
    const/4 v7, 0x1

    iput-boolean v7, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->requireSSL:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1887
    .end local v5           #syncOption:Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 1888
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1889
    const/4 v6, 0x1

    .line 1891
    .end local v0           #e:Ljava/lang/Exception;
    :goto_1
    sget-boolean v7, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->DEBUG:Z

    if-eqz v7, :cond_6

    const-string v7, "ExchangeSvrSetting"

    iget-wide v8, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->accountId:J

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cust_EASOption :use_ssl>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v8, v9, v10}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1892
    :cond_6
    sget-boolean v7, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->DEBUG:Z

    if-eqz v7, :cond_2

    const-string v7, "ExchangeSvrSetting"

    iget-wide v8, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->accountId:J

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cust_EASOption :syncSchedulePeakOn>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mSchedule:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v8, v9, v10}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0

    .line 1856
    .restart local v5       #syncOption:Landroid/os/Bundle;
    :cond_7
    :try_start_1
    const-string v4, "plenty_set"

    .line 1857
    .local v4, key_plenty:Ljava/lang/String;
    const-string v3, ""

    .line 1859
    .local v3, key_now:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    invoke-virtual {v5}, Landroid/os/Bundle;->size()I

    move-result v7

    if-ge v1, v7, :cond_a

    .line 1860
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1861
    invoke-virtual {v5, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 1863
    .local v2, key:Landroid/os/Bundle;
    const-string v7, "use_ssl"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    if-nez v7, :cond_8

    .line 1865
    :try_start_2
    const-string v7, "use_ssl"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v6

    .line 1872
    :cond_8
    :goto_3
    :try_start_3
    const-string v7, "syncSchedulePeakOn"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v7

    if-nez v7, :cond_9

    .line 1874
    :try_start_4
    const-string v7, "syncSchedulePeakOn"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mSchedule:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1859
    :cond_9
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1866
    :catch_1
    move-exception v0

    .line 1867
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1868
    const/4 v6, 0x1

    goto :goto_3

    .line 1875
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 1876
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1877
    const/4 v7, 0x1

    iput v7, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mSchedule:I

    goto :goto_4

    .line 1882
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #key:Landroid/os/Bundle;
    :cond_a
    if-eqz v6, :cond_b

    .line 1883
    const/4 v7, 0x1

    iput-boolean v7, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->requireSSL:Z

    goto/16 :goto_1

    .line 1885
    :cond_b
    const/4 v7, 0x0

    iput-boolean v7, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->requireSSL:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1
.end method

.method private final hasErrors(Z)Z
    .locals 3
    .parameter "markError"

    .prologue
    .line 1180
    const/4 v0, 0x0

    .line 1182
    .local v0, hasErrors:Z
    const v1, 0x7f09016c

    const v2, 0x7f09016d

    invoke-direct {p0, v1, v2, p1}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->checkAddress(IIZ)Z

    move-result v0

    .line 1183
    const v1, 0x7f090178

    const v2, 0x7f090179

    invoke-direct {p0, v1, v2, p1}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->checkEmpty(IIZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1184
    iget-object v1, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mProgressStatus:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    sget-object v2, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;->AUTO_DISCOVER:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    if-eq v1, v2, :cond_0

    .line 1186
    const v1, 0x7f090175

    const v2, 0x7f090176

    invoke-direct {p0, v1, v2, p1}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->checkEmpty(IIZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1188
    const v1, 0x7f09016f

    const v2, 0x7f090170

    invoke-direct {p0, v1, v2, p1}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->checkEmpty(IIZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1191
    :cond_0
    return v0
.end method

.method private initLayout()V
    .locals 7

    .prologue
    const/16 v6, 0x941

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, -0x100

    .line 864
    const v2, 0x7f030045

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->setContentView(I)V

    .line 865
    const v2, 0x7f09006e

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/widget/TextMailHeaderBar1;

    iput-object v2, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mMailHeader:Lcom/htc/android/mail/widget/TextMailHeaderBar1;

    .line 870
    const v2, 0x7f09016d

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/AutoCompleteTextView;

    iput-object v2, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    .line 871
    const v2, 0x7f090170

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editSvrName:Landroid/widget/EditText;

    .line 872
    const v2, 0x7f090176

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editUserName:Landroid/widget/EditText;

    .line 873
    const v2, 0x7f090179

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editPassword:Landroid/widget/EditText;

    .line 874
    const v2, 0x7f090173

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editDomain:Landroid/widget/EditText;

    .line 876
    const v2, 0x7f09017a

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->chkUseSSL:Landroid/widget/CheckBox;

    .line 877
    iget-boolean v2, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mDefaultSSLCheck:Z

    if-ne v2, v5, :cond_0

    .line 878
    iget-object v2, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->chkUseSSL:Landroid/widget/CheckBox;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 882
    :goto_0
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->load_pref()V

    .line 883
    const/4 v1, 0x0

    .line 884
    .local v1, tv:Landroid/widget/TextView;
    const v2, 0x7f09016c

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #tv:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 885
    .restart local v1       #tv:Landroid/widget/TextView;
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 886
    const v2, 0x7f09016f

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #tv:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 887
    .restart local v1       #tv:Landroid/widget/TextView;
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 888
    const v2, 0x7f090175

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #tv:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 889
    .restart local v1       #tv:Landroid/widget/TextView;
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 890
    const v2, 0x7f090178

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #tv:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 891
    .restart local v1       #tv:Landroid/widget/TextView;
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 892
    const v2, 0x7f090172

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #tv:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 893
    .restart local v1       #tv:Landroid/widget/TextView;
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 895
    const v2, 0x7f09006f

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/widget/MailFooterBar2Btn;

    .line 896
    .local v0, footerBar:Lcom/htc/android/mail/widget/MailFooterBar2Btn;
    invoke-virtual {v0}, Lcom/htc/android/mail/widget/MailFooterBar2Btn;->getLeftButton()Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mPrevButton:Lcom/htc/android/mail/widget/MailFooterBarButton;

    .line 897
    invoke-virtual {v0}, Lcom/htc/android/mail/widget/MailFooterBar2Btn;->getRightButton()Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mNextButton:Lcom/htc/android/mail/widget/MailFooterBarButton;

    .line 898
    iget-object v2, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mPrevButton:Lcom/htc/android/mail/widget/MailFooterBarButton;

    invoke-virtual {v2, p0}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 899
    iget-object v2, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mNextButton:Lcom/htc/android/mail/widget/MailFooterBarButton;

    invoke-virtual {v2, p0}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 900
    iget-object v2, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mNextButton:Lcom/htc/android/mail/widget/MailFooterBarButton;

    invoke-virtual {v2, v4}, Lcom/htc/android/mail/widget/MailFooterBarButton;->enableButton(Z)V

    .line 902
    iget-object v2, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    iget-object v3, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 903
    iget-object v2, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editSvrName:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 904
    iget-object v2, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editDomain:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 905
    iget-object v2, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editUserName:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 906
    iget-object v2, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editPassword:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mPasswordWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 907
    iget-object v2, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editPassword:Landroid/widget/EditText;

    sget-object v3, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v2, v3}, Lcom/htc/android/mail/MailAccountUI;->setTypeface(Landroid/widget/EditText;Landroid/graphics/Typeface;)V

    .line 908
    iget-object v2, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    iget-object v3, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->emailFocusChange:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 909
    iget-object v2, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    const v3, 0x10021

    invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    .line 912
    iget-object v2, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editSvrName:Landroid/widget/EditText;

    new-instance v3, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$7;

    invoke-direct {v3, p0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$7;-><init>(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 920
    iget-object v2, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editSvrName:Landroid/widget/EditText;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 922
    iget-object v2, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editDomain:Landroid/widget/EditText;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 925
    const v2, 0x7f090087

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->chkShowPwd:Landroid/widget/CheckBox;

    .line 927
    iget-object v2, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->chkShowPwd:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->showPwd:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 929
    return-void

    .line 880
    .end local v0           #footerBar:Lcom/htc/android/mail/widget/MailFooterBar2Btn;
    .end local v1           #tv:Landroid/widget/TextView;
    :cond_0
    iget-object v2, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->chkUseSSL:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0
.end method

.method private initSyncSetting(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V
    .locals 6
    .parameter "exAccount"

    .prologue
    .line 1827
    sget-boolean v2, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ExchangeSvrSetting"

    const-string v3, "initSyncSetting"

    invoke-static {v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1828
    :cond_0
    new-instance v1, Lcom/htc/android/mail/HtcMailCustomization;

    invoke-direct {v1}, Lcom/htc/android/mail/HtcMailCustomization;-><init>()V

    .line 1829
    .local v1, mailcustom:Lcom/htc/android/mail/HtcMailCustomization;
    iget-object v2, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/HtcMailCustomization;->getMailCustomizationData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 1830
    .local v0, bdlCustom:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 1831
    invoke-direct {p0, v0, p1}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->getSyncSettingFromCustomization(Landroid/os/Bundle;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V

    .line 1837
    :goto_0
    return-void

    .line 1834
    :cond_1
    sget-boolean v2, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "ExchangeSvrSetting"

    iget-wide v3, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->accountId:J

    const-string v5, "initSyncSetting - getMailCustomizationData return null bundle"

    invoke-static {v2, v3, v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1835
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->requireSSL:Z

    goto :goto_0
.end method

.method private isSettingEmpty()Z
    .locals 3

    .prologue
    .line 1162
    const/4 v0, 0x0

    .line 1163
    .local v0, isEmpty:Z
    iget-object v1, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 1164
    const/4 v0, 0x1

    .line 1165
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1166
    const/4 v0, 0x1

    .line 1167
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mProgressStatus:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    sget-object v2, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;->AUTO_DISCOVER:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    if-eq v1, v2, :cond_3

    .line 1168
    iget-object v1, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editSvrName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 1169
    const/4 v0, 0x1

    .line 1170
    :cond_2
    iget-object v1, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editUserName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 1171
    const/4 v0, 0x1

    .line 1174
    :cond_3
    if-eqz v0, :cond_4

    .line 1175
    const/4 v1, 0x1

    .line 1177
    :goto_0
    return v1

    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private load_pref()V
    .locals 9

    .prologue
    .line 1726
    const-string v6, "EASSetupWizard"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1727
    .local v2, preferences:Landroid/content/SharedPreferences;
    const-string v6, "mailAddress"

    const-string v7, ""

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1728
    .local v1, email:Ljava/lang/String;
    const-string v6, "serverName"

    const-string v7, ""

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1729
    .local v3, svrName:Ljava/lang/String;
    const-string v6, "userName"

    const-string v7, ""

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1730
    .local v4, userName:Ljava/lang/String;
    const-string v6, "password"

    const-string v7, ""

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1731
    .local v5, userPass:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/android/mail/eassvc/util/AccountUtil;->decodePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1732
    const-string v6, "doamin"

    const-string v7, ""

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1734
    .local v0, domain:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1736
    iget-object v6, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v6, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1737
    iget-object v6, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editSvrName:Landroid/widget/EditText;

    invoke-virtual {v6, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1738
    iget-object v6, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editUserName:Landroid/widget/EditText;

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1739
    iget-object v6, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editPassword:Landroid/widget/EditText;

    invoke-virtual {v6, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1740
    iget-object v6, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editDomain:Landroid/widget/EditText;

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1741
    iget-object v6, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->chkUseSSL:Landroid/widget/CheckBox;

    const-string v7, "useSSL"

    iget-boolean v8, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mDefaultSSLCheck:Z

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1742
    sget-object v6, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;->CREATE_FULL_SETTING:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    iput-object v6, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mProgressStatus:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    .line 1744
    :cond_0
    return-void
.end method

.method private reLayout()V
    .locals 19

    .prologue
    .line 931
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->isFinishing()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 932
    const-string v14, "ExchangeSvrSetting"

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->accountId:J

    const-string v17, "activity finishing"

    invoke-static/range {v14 .. v17}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1114
    :cond_0
    :goto_0
    return-void

    .line 936
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editSvrName:Landroid/widget/EditText;

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editUserName:Landroid/widget/EditText;

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editPassword:Landroid/widget/EditText;

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editDomain:Landroid/widget/EditText;

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->chkUseSSL:Landroid/widget/CheckBox;

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->chkShowPwd:Landroid/widget/CheckBox;

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mPrevButton:Lcom/htc/android/mail/widget/MailFooterBarButton;

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mNextButton:Lcom/htc/android/mail/widget/MailFooterBarButton;

    if-nez v14, :cond_3

    .line 939
    :cond_2
    const-string v14, "ExchangeSvrSetting"

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->accountId:J

    const-string v17, "widget is null"

    invoke-static/range {v14 .. v17}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0

    .line 943
    :cond_3
    const v14, 0x7f09016c

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 944
    .local v10, tvEmailAddr:Landroid/widget/TextView;
    const v14, 0x7f09016f

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 945
    .local v12, tvSvrName:Landroid/widget/TextView;
    const v14, 0x7f090175

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 946
    .local v13, tvUsername:Landroid/widget/TextView;
    const v14, 0x7f090172

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 947
    .local v9, tvDomain:Landroid/widget/TextView;
    const v14, 0x7f090178

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 949
    .local v11, tvPassword:Landroid/widget/TextView;
    const v14, 0x7f09016e

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 950
    .local v5, line1_above_serverName:Landroid/view/View;
    const v14, 0x7f090171

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 951
    .local v6, line2_above_domain:Landroid/view/View;
    const v14, 0x7f090174

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 952
    .local v7, line3_above_userName:Landroid/view/View;
    const v14, 0x7f090177

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 955
    .local v8, line4_above_password:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v14}, Landroid/widget/AutoCompleteTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 956
    .local v2, editEmailParam:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x0

    .line 958
    .local v3, editFieldMarginTop:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mProgressStatus:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    sget-object v15, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;->AUTO_DISCOVER:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    if-ne v14, v15, :cond_c

    .line 959
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v14}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 960
    const/16 v14, 0x8

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 961
    const/16 v14, 0x8

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 962
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->chkShowPwd:Landroid/widget/CheckBox;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 963
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->chkShowPwd:Landroid/widget/CheckBox;

    invoke-virtual {v14}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->showPassword(Z)V

    .line 964
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/AutoCompleteTextView;->setVisibility(I)V

    .line 965
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    const v15, 0x7f0b0273

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 966
    const/16 v14, 0x8

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 967
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editSvrName:Landroid/widget/EditText;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setVisibility(I)V

    .line 968
    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 969
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editUserName:Landroid/widget/EditText;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setVisibility(I)V

    .line 970
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editPassword:Landroid/widget/EditText;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setVisibility(I)V

    .line 971
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editPassword:Landroid/widget/EditText;

    const v15, 0x7f0b0276

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 972
    const/16 v14, 0x8

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 973
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editDomain:Landroid/widget/EditText;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setVisibility(I)V

    .line 974
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->chkUseSSL:Landroid/widget/CheckBox;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 975
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mPrevButton:Lcom/htc/android/mail/widget/MailFooterBarButton;

    sget-object v15, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v14, v15}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 976
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mPrevButton:Lcom/htc/android/mail/widget/MailFooterBarButton;

    const v15, 0x7f0b006a

    invoke-virtual {v14, v15}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(I)V

    .line 978
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mPrevButton:Lcom/htc/android/mail/widget/MailFooterBarButton;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v14 .. v18}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 979
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mNextButton:Lcom/htc/android/mail/widget/MailFooterBarButton;

    sget-object v15, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v14, v15}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 980
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mNextButton:Lcom/htc/android/mail/widget/MailFooterBarButton;

    const v15, 0x7f0b0280

    invoke-virtual {v14, v15}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(I)V

    .line 981
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mNextButton:Lcom/htc/android/mail/widget/MailFooterBarButton;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v14 .. v18}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 982
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editPassword:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getId()I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/AutoCompleteTextView;->setNextFocusDownId(I)V

    .line 983
    const/16 v14, 0x8

    invoke-virtual {v5, v14}, Landroid/view/View;->setVisibility(I)V

    .line 984
    const/16 v14, 0x8

    invoke-virtual {v6, v14}, Landroid/view/View;->setVisibility(I)V

    .line 985
    const/16 v14, 0x8

    invoke-virtual {v7, v14}, Landroid/view/View;->setVisibility(I)V

    .line 986
    const/4 v14, 0x0

    invoke-virtual {v8, v14}, Landroid/view/View;->setVisibility(I)V

    .line 988
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f080051

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v3, v14

    .line 989
    iget v14, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v15, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget v0, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v2, v14, v3, v15, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 990
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v14, v2}, Landroid/widget/AutoCompleteTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 991
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editPassword:Landroid/widget/EditText;

    invoke-virtual {v14, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1080
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mInstanceStateBundle:Landroid/os/Bundle;

    if-eqz v14, :cond_5

    .line 1081
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mInstanceStateBundle:Landroid/os/Bundle;

    const-string v16, "EmailAddr"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1082
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editSvrName:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mInstanceStateBundle:Landroid/os/Bundle;

    const-string v16, "SvrName"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1083
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editUserName:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mInstanceStateBundle:Landroid/os/Bundle;

    const-string v16, "UserName"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1084
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editPassword:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mInstanceStateBundle:Landroid/os/Bundle;

    const-string v16, "Password"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1085
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editDomain:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mInstanceStateBundle:Landroid/os/Bundle;

    const-string v16, "Domain"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1086
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->chkUseSSL:Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mInstanceStateBundle:Landroid/os/Bundle;

    const-string v16, "UseSSL"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1087
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->chkShowPwd:Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mInstanceStateBundle:Landroid/os/Bundle;

    const-string v16, "showPwd"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1090
    :cond_5
    invoke-static {}, Lcom/htc/android/mail/Mail;->isEnableHuxRestoreExchangeSettings()Z

    move-result v14

    if-eqz v14, :cond_b

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mIsExchangeSaved:Z

    if-nez v14, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mEASAccountInfo:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

    if-eqz v14, :cond_b

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mCallingActivity:I

    const/16 v15, 0x61

    if-ne v14, v15, :cond_b

    .line 1093
    sget-boolean v14, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v14, :cond_6

    const-string v14, "ExchangeSvrSetting"

    const-string v15, "account restore"

    invoke-static {v14, v15}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mEASAccountInfo:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

    iget-object v14, v14, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->email:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_7

    .line 1095
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mEASAccountInfo:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

    iget-object v15, v15, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->email:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1097
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mEASAccountInfo:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

    iget-object v14, v14, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->server:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_8

    .line 1098
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editSvrName:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mEASAccountInfo:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

    iget-object v15, v15, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->server:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1100
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mEASAccountInfo:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

    iget-object v14, v14, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->user:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_9

    .line 1101
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editUserName:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mEASAccountInfo:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

    iget-object v15, v15, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->user:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1103
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mEASAccountInfo:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

    iget-object v14, v14, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->domain:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 1104
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editDomain:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mEASAccountInfo:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

    iget-object v15, v15, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->domain:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1106
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->chkUseSSL:Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mEASAccountInfo:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

    iget-boolean v15, v15, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->secureFlag:Z

    invoke-virtual {v14, v15}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1108
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mProgressStatus:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    sget-object v15, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;->AUTO_DISCOVER:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    if-ne v14, v15, :cond_b

    .line 1109
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editPassword:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->requestFocus()Z

    .line 1113
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->checkNextBtnEnable()V

    goto/16 :goto_0

    .line 994
    :cond_c
    const/4 v4, 0x0

    .line 997
    .local v4, exAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    if-eqz v14, :cond_0

    .line 1001
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->accountId:J

    invoke-interface/range {v14 .. v16}, Lcom/htc/android/mail/eassvc/pim/IEASService;->getAccountInfo(J)Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1006
    :goto_2
    sget v14, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->GOOD_COLOR:I

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1007
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1008
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1009
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->chkShowPwd:Landroid/widget/CheckBox;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1010
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->showPassword(Z)V

    .line 1011
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->chkShowPwd:Landroid/widget/CheckBox;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1012
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/AutoCompleteTextView;->setVisibility(I)V

    .line 1013
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    const v15, 0x7f0b0278

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 1014
    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1015
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editSvrName:Landroid/widget/EditText;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1016
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1017
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editUserName:Landroid/widget/EditText;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1018
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editPassword:Landroid/widget/EditText;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1019
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editPassword:Landroid/widget/EditText;

    const v15, 0x7f0b027b

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1020
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editSvrName:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getId()I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/AutoCompleteTextView;->setNextFocusDownId(I)V

    .line 1023
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f080054

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v3, v14

    .line 1024
    iget v14, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v15, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget v0, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v2, v14, v3, v15, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1025
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editPassword:Landroid/widget/EditText;

    invoke-virtual {v14, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1026
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v14, v2}, Landroid/widget/AutoCompleteTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1028
    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Landroid/view/View;->setVisibility(I)V

    .line 1029
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Landroid/view/View;->setVisibility(I)V

    .line 1030
    const/4 v14, 0x0

    invoke-virtual {v7, v14}, Landroid/view/View;->setVisibility(I)V

    .line 1031
    const/4 v14, 0x0

    invoke-virtual {v8, v14}, Landroid/view/View;->setVisibility(I)V

    .line 1033
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mProgressStatus:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    sget-object v15, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;->SETTING:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    if-ne v14, v15, :cond_f

    .line 1034
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editPassword:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->requestFocus()Z

    .line 1038
    iget-object v14, v4, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->domainName:Ljava/lang/String;

    if-eqz v14, :cond_d

    iget-object v14, v4, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->domainName:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 1039
    :cond_d
    const/16 v14, 0x8

    invoke-virtual {v6, v14}, Landroid/view/View;->setVisibility(I)V

    .line 1040
    const/16 v14, 0x8

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1041
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editDomain:Landroid/widget/EditText;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1044
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mMailHeader:Lcom/htc/android/mail/widget/TextMailHeaderBar1;

    const v15, 0x7f0b029a

    invoke-virtual {v14, v15}, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->setTitle(I)V

    .line 1045
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mPrevButton:Lcom/htc/android/mail/widget/MailFooterBarButton;

    sget-object v15, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v14, v15}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1046
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mPrevButton:Lcom/htc/android/mail/widget/MailFooterBarButton;

    const v15, 0x7f0b027f

    invoke-virtual {v14, v15}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(I)V

    .line 1047
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mNextButton:Lcom/htc/android/mail/widget/MailFooterBarButton;

    const v15, 0x7f0b027e

    invoke-virtual {v14, v15}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(I)V

    .line 1048
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mPrevButton:Lcom/htc/android/mail/widget/MailFooterBarButton;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v14 .. v18}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1049
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mNextButton:Lcom/htc/android/mail/widget/MailFooterBarButton;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v14 .. v18}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1059
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->chkUseSSL:Landroid/widget/CheckBox;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1060
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mPrevButton:Lcom/htc/android/mail/widget/MailFooterBarButton;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setVisibility(I)V

    .line 1061
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mProgressStatus:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    sget-object v15, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;->SETTING:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    if-ne v14, v15, :cond_10

    .line 1062
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    iget-object v15, v4, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->emailAddress:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1063
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editSvrName:Landroid/widget/EditText;

    iget-object v15, v4, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->serverName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1064
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editDomain:Landroid/widget/EditText;

    iget-object v15, v4, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->domainName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1065
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editUserName:Landroid/widget/EditText;

    iget-object v15, v4, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->userName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1066
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editPassword:Landroid/widget/EditText;

    iget-object v15, v4, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->password:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1067
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->chkUseSSL:Landroid/widget/CheckBox;

    iget-boolean v15, v4, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->requireSSL:Z

    invoke-virtual {v14, v15}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1068
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->setSettingEditable(Z)V

    goto/16 :goto_1

    .line 1002
    :catch_0
    move-exception v1

    .line 1003
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2

    .line 1051
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_f
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Landroid/view/View;->setVisibility(I)V

    .line 1052
    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1053
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editDomain:Landroid/widget/EditText;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1054
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mPrevButton:Lcom/htc/android/mail/widget/MailFooterBarButton;

    sget-object v15, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v14, v15}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1055
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mPrevButton:Lcom/htc/android/mail/widget/MailFooterBarButton;

    const v15, 0x7f0b0281

    invoke-virtual {v14, v15}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(I)V

    .line 1056
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mNextButton:Lcom/htc/android/mail/widget/MailFooterBarButton;

    const v15, 0x7f0b0280

    invoke-virtual {v14, v15}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(I)V

    goto/16 :goto_3

    .line 1069
    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mProgressStatus:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    sget-object v15, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;->CREATE_FULL_SETTING:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    if-ne v14, v15, :cond_4

    .line 1074
    sget-short v14, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v15, 0x10

    if-ne v14, v15, :cond_4

    .line 1075
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->chkUseSSL:Landroid/widget/CheckBox;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_1
.end method

.method private removePrefSetting()V
    .locals 4

    .prologue
    .line 1747
    const-string v2, "EASSetupWizard"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1748
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1749
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 1750
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1751
    return-void
.end method

.method private saveLogin()V
    .locals 5

    .prologue
    .line 1758
    :try_start_0
    new-instance v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    invoke-direct {v0}, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;-><init>()V

    .line 1759
    .local v0, config:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    iget-object v2, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->emailAddress:Ljava/lang/String;

    .line 1760
    iget-object v2, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editSvrName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->serverName:Ljava/lang/String;

    .line 1761
    iget-object v2, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editDomain:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->domainName:Ljava/lang/String;

    .line 1762
    iget-object v2, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editUserName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->userName:Ljava/lang/String;

    .line 1763
    iget-object v2, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->password:Ljava/lang/String;

    .line 1764
    iget-object v2, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->chkUseSSL:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->requireSSL:Z

    .line 1766
    iget-object v2, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-wide v3, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->accountId:J

    invoke-interface {v2, v3, v4, v0}, Lcom/htc/android/mail/eassvc/pim/IEASService;->updateAccountInfo(JLcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1772
    .end local v0           #config:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    :goto_0
    return-void

    .line 1769
    :catch_0
    move-exception v1

    .line 1770
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private save_pref()V
    .locals 5

    .prologue
    .line 1699
    const-string v3, "EASSetupWizard"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1700
    .local v2, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1701
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "mailAddress"

    iget-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1702
    const-string v3, "serverName"

    iget-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editSvrName:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1703
    const-string v3, "userName"

    iget-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editUserName:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1704
    iget-object v3, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/mail/eassvc/util/AccountUtil;->encodePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1705
    .local v1, encodedPassword:Ljava/lang/String;
    const-string v3, "password"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1706
    const-string v3, "doamin"

    iget-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editDomain:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1707
    const-string v3, "useSSL"

    iget-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->chkUseSSL:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1708
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1709
    iget-object v3, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->updateEmailAddrToPublicAccount(Ljava/lang/String;)V

    .line 1710
    return-void
.end method

.method private save_pref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .parameter "email"
    .parameter "server"
    .parameter "account"
    .parameter "password"
    .parameter "domain"
    .parameter "useSSL"

    .prologue
    .line 1712
    const-string v3, "EASSetupWizard"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1713
    .local v2, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1714
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "mailAddress"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1715
    const-string v3, "serverName"

    invoke-interface {v0, v3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1716
    const-string v3, "userName"

    invoke-interface {v0, v3, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1717
    iget-object v3, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/mail/eassvc/util/AccountUtil;->encodePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1718
    .local v1, encodedPassword:Ljava/lang/String;
    const-string v3, "password"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1719
    const-string v3, "doamin"

    invoke-interface {v0, v3, p5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1720
    const-string v3, "useSSL"

    invoke-interface {v0, v3, p6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1721
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1722
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->updateEmailAddrToPublicAccount(Ljava/lang/String;)V

    .line 1723
    return-void
.end method

.method private setSettingEditable(Z)V
    .locals 1
    .parameter "bEnabled"

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setEnabled(Z)V

    .line 1118
    iget-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setClickable(Z)V

    .line 1119
    iget-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setFocusable(Z)V

    .line 1120
    iget-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editSvrName:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1121
    iget-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editSvrName:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setClickable(Z)V

    .line 1122
    iget-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editSvrName:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1123
    iget-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editDomain:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1124
    iget-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editDomain:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setClickable(Z)V

    .line 1125
    iget-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editDomain:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1126
    iget-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editUserName:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1127
    iget-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editUserName:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setClickable(Z)V

    .line 1128
    iget-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editUserName:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1129
    return-void
.end method

.method private showPassword(Z)V
    .locals 2
    .parameter "showPass"

    .prologue
    .line 1354
    if-eqz p1, :cond_1

    .line 1355
    iget-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editPassword:Landroid/widget/EditText;

    const/16 v1, 0x91

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 1360
    :goto_0
    iget-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 1361
    iget-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editPassword:Landroid/widget/EditText;

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v0, v1}, Lcom/htc/android/mail/MailAccountUI;->setTypeface(Landroid/widget/EditText;Landroid/graphics/Typeface;)V

    .line 1363
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1364
    return-void

    .line 1358
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editPassword:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 816
    sget-boolean v2, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ExchangeSvrSetting"

    iget-wide v3, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->accountId:J

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onActivityResult("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 817
    :cond_0
    sget v2, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mRequestCode:I

    if-ne p1, v2, :cond_1

    .line 818
    const/16 v2, 0xc8

    if-ne p2, v2, :cond_2

    .line 837
    :cond_1
    :goto_0
    const v2, 0x7f090074

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 838
    .local v1, screen:Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 839
    return-void

    .line 820
    .end local v1           #screen:Landroid/widget/LinearLayout;
    :cond_2
    const/16 v2, 0x65

    if-ne p2, v2, :cond_4

    .line 821
    invoke-virtual {p0, p2, p3}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->setResult(ILandroid/content/Intent;)V

    .line 822
    const-string v2, "account"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 823
    .local v0, account:Landroid/accounts/Account;
    if-nez v0, :cond_3

    .line 824
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->setAuthenticatorCancel()V

    .line 828
    :goto_1
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->finish()V

    goto :goto_0

    .line 826
    :cond_3
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->setAuenticatorResult(Landroid/accounts/Account;)V

    goto :goto_1

    .line 829
    .end local v0           #account:Landroid/accounts/Account;
    :cond_4
    sget v2, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mToExchangeSvrSetting:I

    if-eq p2, v2, :cond_1

    .line 832
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->setAuthenticatorCancel()V

    .line 833
    invoke-virtual {p0, p2, p3}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->setResult(ILandroid/content/Intent;)V

    .line 834
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14
    .parameter "v"

    .prologue
    .line 679
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mInstanceStateBundle:Landroid/os/Bundle;

    .line 681
    iget-object v11, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mNextButton:Lcom/htc/android/mail/widget/MailFooterBarButton;

    if-ne p1, v11, :cond_8

    .line 683
    iget-object v11, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mProgressStatus:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    sget-object v12, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;->SETTING:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    if-ne v11, v12, :cond_3

    .line 685
    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->hasErrors(Z)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 686
    new-instance v11, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v11, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v12, 0x7f0b0088

    invoke-virtual {v11, v12}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0b028e

    invoke-virtual {v11, v12}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0b0291

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0b027f

    new-instance v13, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$6;

    invoke-direct {v13, p0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$6;-><init>(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)V

    invoke-virtual {v11, v12, v13}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 795
    :cond_0
    :goto_0
    return-void

    .line 701
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->checkNetworkAccess()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 703
    new-instance v6, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$TestServerThread;

    const/4 v11, 0x0

    invoke-direct {v6, p0, v11}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$TestServerThread;-><init>(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;Lcom/htc/android/mail/easclient/ExchangeSvrSetting$1;)V

    .line 704
    .local v6, mTestServerThread:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$TestServerThread;
    iget-object v11, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$TestServerThread;->setEndMessage(Landroid/os/Message;)V

    .line 705
    invoke-virtual {v6}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$TestServerThread;->start()V

    .line 706
    const/4 v11, 0x2

    invoke-virtual {p0, v11}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->showDialog(I)V

    .line 732
    .end local v6           #mTestServerThread:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$TestServerThread;
    :cond_2
    iget-object v11, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mProgressStatus:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    sget-object v12, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;->AUTO_DISCOVER:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    if-ne v11, v12, :cond_6

    .line 733
    iget-object v11, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v11}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 734
    .local v2, email:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/android/mail/easclient/ServerInformation;->getServerInfoByMail(Ljava/lang/String;)Lcom/htc/android/mail/easclient/ServerInformation;

    move-result-object v7

    .line 735
    .local v7, serverItem:Lcom/htc/android/mail/easclient/ServerInformation;
    if-eqz v7, :cond_5

    .line 736
    invoke-static {v2, v7}, Lcom/htc/android/mail/easclient/ServerInformation;->getAccountName(Ljava/lang/String;Lcom/htc/android/mail/easclient/ServerInformation;)Ljava/lang/String;

    move-result-object v10

    .line 737
    .local v10, userName:Ljava/lang/String;
    iget-object v8, v7, Lcom/htc/android/mail/easclient/ServerInformation;->serverAddress:Ljava/lang/String;

    .line 738
    .local v8, sveName:Ljava/lang/String;
    iget-object v1, v7, Lcom/htc/android/mail/easclient/ServerInformation;->domain:Ljava/lang/String;

    .line 739
    .local v1, domain:Ljava/lang/String;
    iget-boolean v9, v7, Lcom/htc/android/mail/easclient/ServerInformation;->useSSL:Z

    .line 740
    .local v9, useSSL:Z
    iget-object v11, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editUserName:Landroid/widget/EditText;

    invoke-virtual {v11, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 741
    iget-object v11, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editSvrName:Landroid/widget/EditText;

    invoke-virtual {v11, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 742
    iget-object v11, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editDomain:Landroid/widget/EditText;

    invoke-virtual {v11, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 743
    iget-object v11, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->chkUseSSL:Landroid/widget/CheckBox;

    invoke-virtual {v11, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 744
    new-instance v6, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$TestServerThread;

    const/4 v11, 0x0

    invoke-direct {v6, p0, v11}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$TestServerThread;-><init>(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;Lcom/htc/android/mail/easclient/ExchangeSvrSetting$1;)V

    .line 745
    .restart local v6       #mTestServerThread:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$TestServerThread;
    iget-object v11, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$TestServerThread;->setEndMessage(Landroid/os/Message;)V

    .line 746
    invoke-virtual {v6}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$TestServerThread;->start()V

    .line 747
    const/4 v11, 0x2

    invoke-virtual {p0, v11}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->showDialog(I)V

    goto :goto_0

    .line 707
    .end local v1           #domain:Ljava/lang/String;
    .end local v2           #email:Ljava/lang/String;
    .end local v6           #mTestServerThread:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$TestServerThread;
    .end local v7           #serverItem:Lcom/htc/android/mail/easclient/ServerInformation;
    .end local v8           #sveName:Ljava/lang/String;
    .end local v9           #useSSL:Z
    .end local v10           #userName:Ljava/lang/String;
    :cond_3
    iget-object v11, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mProgressStatus:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    sget-object v12, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;->CREATE_FULL_SETTING:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    if-ne v11, v12, :cond_4

    .line 708
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->checkNetworkAccess()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 710
    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->hasErrors(Z)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 711
    new-instance v11, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v11, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v12, 0x7f0b0088

    invoke-virtual {v11, v12}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0b028e

    invoke-virtual {v11, v12}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0b0291

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_0

    .line 719
    :cond_4
    iget-object v11, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mProgressStatus:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    sget-object v12, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;->AUTO_DISCOVER:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    if-ne v11, v12, :cond_2

    .line 720
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->checkNetworkAccess()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 722
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->hasErrors(Z)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 723
    new-instance v11, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v11, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v12, 0x1080027

    invoke-virtual {v11, v12}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0b005a

    invoke-virtual {p0, v12}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0b008f

    invoke-virtual {p0, v12}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0b0291

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_0

    .line 751
    .restart local v2       #email:Ljava/lang/String;
    .restart local v7       #serverItem:Lcom/htc/android/mail/easclient/ServerInformation;
    :cond_5
    iget-object v11, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->emailFocusChange:Landroid/view/View$OnFocusChangeListener;

    iget-object v12, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 753
    iget-object v11, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->chkUseSSL:Landroid/widget/CheckBox;

    iget-boolean v12, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mDefaultSSLCheck:Z

    invoke-virtual {v11, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 754
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->getBaseContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "input_method"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    .line 755
    .local v4, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v11, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editPassword:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 756
    new-instance v5, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$AutoDiscoverThread;

    const/4 v11, 0x0

    invoke-direct {v5, p0, v11}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$AutoDiscoverThread;-><init>(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;Lcom/htc/android/mail/easclient/ExchangeSvrSetting$1;)V

    .line 757
    .local v5, mAutoDiscoverThread:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$AutoDiscoverThread;
    iget-object v11, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$AutoDiscoverThread;->setEndMessage(Landroid/os/Message;)V

    .line 758
    invoke-virtual {v5}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$AutoDiscoverThread;->start()V

    .line 759
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->showDialog(I)V

    goto/16 :goto_0

    .line 760
    .end local v2           #email:Ljava/lang/String;
    .end local v4           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v5           #mAutoDiscoverThread:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$AutoDiscoverThread;
    .end local v7           #serverItem:Lcom/htc/android/mail/easclient/ServerInformation;
    :cond_6
    iget-object v11, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mProgressStatus:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    sget-object v12, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;->CREATE_FULL_SETTING:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    if-ne v11, v12, :cond_0

    .line 761
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->getBaseContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "input_method"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    .line 762
    .restart local v4       #imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v4, :cond_7

    .line 763
    iget-object v11, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v11}, Landroid/widget/AutoCompleteTextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 764
    iget-object v11, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editSvrName:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 765
    iget-object v11, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editUserName:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 766
    iget-object v11, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editPassword:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 767
    iget-object v11, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editDomain:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 769
    :cond_7
    new-instance v6, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$TestServerThread;

    const/4 v11, 0x0

    invoke-direct {v6, p0, v11}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$TestServerThread;-><init>(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;Lcom/htc/android/mail/easclient/ExchangeSvrSetting$1;)V

    .line 770
    .restart local v6       #mTestServerThread:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$TestServerThread;
    iget-object v11, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$TestServerThread;->setEndMessage(Landroid/os/Message;)V

    .line 771
    invoke-virtual {v6}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$TestServerThread;->start()V

    .line 772
    const/4 v11, 0x2

    invoke-virtual {p0, v11}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->showDialog(I)V

    goto/16 :goto_0

    .line 774
    .end local v4           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v6           #mTestServerThread:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$TestServerThread;
    :cond_8
    iget-object v11, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mPrevButton:Lcom/htc/android/mail/widget/MailFooterBarButton;

    if-ne p1, v11, :cond_0

    .line 775
    iget-object v11, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mProgressStatus:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    sget-object v12, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;->CREATE_FULL_SETTING:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    if-ne v11, v12, :cond_9

    .line 776
    sget-object v11, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;->AUTO_DISCOVER:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    iput-object v11, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mProgressStatus:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    .line 777
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->reLayout()V

    goto/16 :goto_0

    .line 778
    :cond_9
    iget-object v11, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mProgressStatus:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    sget-object v12, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;->SETTING:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    if-ne v11, v12, :cond_a

    .line 779
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->finish()V

    goto/16 :goto_0

    .line 781
    :cond_a
    iget-object v11, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mProgressStatus:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    sget-object v12, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;->AUTO_DISCOVER:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    if-ne v11, v12, :cond_c

    .line 783
    sget-object v11, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;->CREATE_FULL_SETTING:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    iput-object v11, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mProgressStatus:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    .line 784
    iget-object v11, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v11}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 785
    .local v3, emailAddr:Ljava/lang/String;
    const-string v11, "@"

    invoke-virtual {v3, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 786
    .local v0, atPos:I
    if-gez v0, :cond_b

    .line 787
    iget-object v11, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editSvrName:Landroid/widget/EditText;

    const-string v12, ""

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 788
    iget-object v11, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editUserName:Landroid/widget/EditText;

    const-string v12, ""

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 790
    :cond_b
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->reLayout()V

    goto/16 :goto_0

    .line 792
    .end local v0           #atPos:I
    .end local v3           #emailAddr:Ljava/lang/String;
    :cond_c
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->finish()V

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 10
    .parameter "newConfig"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 465
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 466
    sget-boolean v3, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "ExchangeSvrSetting"

    iget-wide v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->accountId:J

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- onConfigurationChanged: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 473
    :cond_0
    iget-object v3, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mCurrentDialog:Landroid/app/Dialog;

    if-nez v3, :cond_2

    .line 490
    :cond_1
    :goto_0
    return-void

    .line 475
    :cond_2
    iget-object v3, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mCurrentDialog:Landroid/app/Dialog;

    check-cast v3, Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 476
    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 478
    const v3, 0x7f09018d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 479
    .local v1, issue_layout:Landroid/widget/LinearLayout;
    const v3, 0x7f090190

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 480
    .local v0, expires_layout:Landroid/widget/LinearLayout;
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 483
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v8, :cond_3

    .line 484
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 485
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_0

    .line 486
    :cond_3
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 487
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 488
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 297
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 298
    sget-boolean v4, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "ExchangeSvrSetting"

    const-string v7, "onCreate()"

    invoke-static {v4, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :cond_0
    iput-object p0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mContext:Landroid/content/Context;

    .line 301
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mRes:Landroid/content/res/Resources;

    .line 303
    invoke-virtual {p0, v6}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->requestWindowFeature(I)Z

    .line 305
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v7, 0x20806a9

    invoke-virtual {v4, v7}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 307
    new-instance v4, Landroid/app/backup/BackupManager;

    iget-object v7, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mContext:Landroid/content/Context;

    invoke-direct {v4, v7}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mBackupManager:Landroid/app/backup/BackupManager;

    .line 309
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 310
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_5

    .line 311
    const-string v4, "intent.eas.from_where"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mFromWhere:Ljava/lang/String;

    .line 312
    const-string v4, "CallingActivity"

    const/4 v7, -0x1

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mCallingActivity:I

    .line 313
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 314
    .local v3, uri:Landroid/net/Uri;
    if-eqz v3, :cond_1

    .line 315
    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->accountId:J

    .line 317
    :cond_1
    sget-boolean v4, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "ExchangeSvrSetting"

    iget-wide v7, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->accountId:J

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mFromWhere: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mFromWhere:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v7, v8, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 318
    :cond_2
    sget-boolean v4, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "ExchangeSvrSetting"

    iget-wide v7, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->accountId:J

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mCallingActivity: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mCallingActivity:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v7, v8, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 319
    :cond_3
    const-string v4, "intent.eas.mode.wizard"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mIsWizard:Z

    .line 320
    iget-boolean v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mIsWizard:Z

    if-nez v4, :cond_5

    iget-wide v7, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->accountId:J

    const-wide/16 v9, 0x0

    cmp-long v4, v7, v9

    if-gez v4, :cond_5

    .line 321
    const-string v4, "ExchangeSvrSetting"

    iget-wide v5, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->accountId:J

    const-string v7, "Error! not setupWizard and account < 0"

    invoke-static {v4, v5, v6, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->finish()V

    .line 398
    .end local v3           #uri:Landroid/net/Uri;
    :cond_4
    :goto_0
    return-void

    .line 327
    :cond_5
    invoke-static {}, Lcom/htc/android/mail/Mail;->isEnableHuxRestoreExchangeSettings()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 328
    iget-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/android/mail/Account;->getIsExchangeSaved(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mIsExchangeSaved:Z

    .line 329
    iget-boolean v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mIsExchangeSaved:Z

    if-nez v4, :cond_6

    iget v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mCallingActivity:I

    const/16 v7, 0x61

    if-ne v4, v7, :cond_6

    .line 330
    iget-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/android/mail/Account;->getExchangeSetting(Landroid/content/Context;)Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mEASAccountInfo:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

    .line 332
    :cond_6
    sget-boolean v4, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v4, :cond_7

    .line 333
    const-string v7, "ExchangeSvrSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isExchangeSaved:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v8, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mIsExchangeSaved:Z

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ", "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mEASAccountInfo:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

    if-nez v4, :cond_b

    move v4, v5

    :goto_1
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :cond_7
    iget-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mFromWhere:Ljava/lang/String;

    if-nez v4, :cond_8

    .line 338
    const-string v4, "extra.eas.from.easc"

    iput-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mFromWhere:Ljava/lang/String;

    .line 341
    :cond_8
    iget-boolean v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mIsWizard:Z

    if-eqz v4, :cond_9

    .line 342
    iget-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/android/mail/eassvc/util/AccountUtil;->deleteAccountInfo(Landroid/content/Context;)V

    .line 345
    :cond_9
    new-instance v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    invoke-direct {v1}, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;-><init>()V

    .line 346
    .local v1, exAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    invoke-direct {p0, v1}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->initSyncSetting(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V

    .line 347
    iget-boolean v4, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->requireSSL:Z

    if-nez v4, :cond_c

    .line 348
    iput-boolean v5, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mDefaultSSLCheck:Z

    .line 352
    :goto_2
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->initLayout()V

    .line 354
    new-instance v0, Ljava/lang/Thread;

    new-instance v4, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$2;

    invoke-direct {v4, p0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$2;-><init>(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)V

    invoke-direct {v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 390
    .local v0, autoCompleteQueryThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 391
    invoke-virtual {p0, v5}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->setVisible(Z)V

    .line 392
    iput-boolean v6, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mBindingService:Z

    .line 393
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v7, "com.htc.android.mail.eassvc.EASAppSvc"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mSvcConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v4, v5, v7, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 395
    sget-boolean v4, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->DEBUG:Z

    if-eqz v4, :cond_a

    const-string v4, "ExchangeSvrSetting"

    iget-wide v5, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->accountId:J

    const-string v7, "Fail to bind EAS AppSvc!"

    invoke-static {v4, v5, v6, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 396
    :cond_a
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->finish()V

    goto/16 :goto_0

    .end local v0           #autoCompleteQueryThread:Ljava/lang/Thread;
    .end local v1           #exAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    :cond_b
    move v4, v6

    .line 333
    goto :goto_1

    .line 350
    .restart local v1       #exAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    :cond_c
    iput-boolean v6, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mDefaultSSLCheck:Z

    goto :goto_2
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11
    .parameter "id"
    .parameter "args"

    .prologue
    .line 537
    iget-wide v2, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->accountId:J

    iget-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/htc/android/mail/easclient/CertificateUtil;->handleCreateDialog(Landroid/app/Activity;IJLjava/lang/String;Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v9

    .line 538
    .local v9, certDialog:Landroid/app/Dialog;
    if-eqz v9, :cond_0

    move-object v10, v9

    .line 661
    :goto_0
    return-object v10

    .line 541
    :cond_0
    const/4 v10, 0x0

    .line 542
    .local v10, dialog:Lcom/htc/android/mail/easclient/EASProgressDialog;
    packed-switch p1, :pswitch_data_0

    .line 661
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v10

    goto :goto_0

    .line 544
    :pswitch_1
    new-instance v10, Lcom/htc/android/mail/easclient/EASProgressDialog;

    .end local v10           #dialog:Lcom/htc/android/mail/easclient/EASProgressDialog;
    invoke-direct {v10, p0}, Lcom/htc/android/mail/easclient/EASProgressDialog;-><init>(Landroid/content/Context;)V

    .line 545
    .restart local v10       #dialog:Lcom/htc/android/mail/easclient/EASProgressDialog;
    sget-object v0, Lcom/htc/android/mail/easclient/EASProgressDialog$DialogAction;->AUTO_DISCOVER:Lcom/htc/android/mail/easclient/EASProgressDialog$DialogAction;

    invoke-virtual {v10, v0}, Lcom/htc/android/mail/easclient/EASProgressDialog;->setDialog(Lcom/htc/android/mail/easclient/EASProgressDialog$DialogAction;)V

    .line 546
    new-instance v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$3;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$3;-><init>(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)V

    invoke-virtual {v10, v0}, Lcom/htc/android/mail/easclient/EASProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    .line 559
    :pswitch_2
    new-instance v10, Lcom/htc/android/mail/easclient/EASProgressDialog;

    .end local v10           #dialog:Lcom/htc/android/mail/easclient/EASProgressDialog;
    invoke-direct {v10, p0}, Lcom/htc/android/mail/easclient/EASProgressDialog;-><init>(Landroid/content/Context;)V

    .line 560
    .restart local v10       #dialog:Lcom/htc/android/mail/easclient/EASProgressDialog;
    sget-object v0, Lcom/htc/android/mail/easclient/EASProgressDialog$DialogAction;->TEST_SERVER:Lcom/htc/android/mail/easclient/EASProgressDialog$DialogAction;

    invoke-virtual {v10, v0}, Lcom/htc/android/mail/easclient/EASProgressDialog;->setDialog(Lcom/htc/android/mail/easclient/EASProgressDialog$DialogAction;)V

    .line 561
    new-instance v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$4;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$4;-><init>(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)V

    invoke-virtual {v10, v0}, Lcom/htc/android/mail/easclient/EASProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    .line 574
    :pswitch_3
    new-instance v10, Lcom/htc/android/mail/easclient/EASProgressDialog;

    .end local v10           #dialog:Lcom/htc/android/mail/easclient/EASProgressDialog;
    invoke-direct {v10, p0}, Lcom/htc/android/mail/easclient/EASProgressDialog;-><init>(Landroid/content/Context;)V

    .line 575
    .restart local v10       #dialog:Lcom/htc/android/mail/easclient/EASProgressDialog;
    sget-object v0, Lcom/htc/android/mail/easclient/EASProgressDialog$DialogAction;->DELETE_ACCOUNT:Lcom/htc/android/mail/easclient/EASProgressDialog$DialogAction;

    invoke-virtual {v10, v0}, Lcom/htc/android/mail/easclient/EASProgressDialog;->setDialog(Lcom/htc/android/mail/easclient/EASProgressDialog$DialogAction;)V

    .line 576
    new-instance v8, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$5;

    invoke-direct {v8, p0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$5;-><init>(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)V

    .line 582
    .local v8, callback:Lcom/htc/android/mail/easclient/EASProgressDialog$DialogCallback;
    invoke-virtual {v10, v8}, Lcom/htc/android/mail/easclient/EASProgressDialog;->setCallback(Lcom/htc/android/mail/easclient/EASProgressDialog$DialogCallback;)V

    goto :goto_0

    .line 585
    .end local v8           #callback:Lcom/htc/android/mail/easclient/EASProgressDialog$DialogCallback;
    :pswitch_4
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0088

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b028b

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0291

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v10

    goto :goto_0

    .line 593
    :pswitch_5
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0088

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0287

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0291

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v10

    goto/16 :goto_0

    .line 601
    :pswitch_6
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

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

    move-result-object v10

    goto/16 :goto_0

    .line 609
    :pswitch_7
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0088

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b028a

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0291

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v10

    goto/16 :goto_0

    .line 617
    :pswitch_8
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0088

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0288

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0291

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v10

    goto/16 :goto_0

    .line 624
    :pswitch_9
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0088

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0286

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0291

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v10

    goto/16 :goto_0

    .line 632
    :pswitch_a
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b005a

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b01bd

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->getString(I)Ljava/lang/String;

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

    move-result-object v10

    goto/16 :goto_0

    .line 639
    :pswitch_b
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b01c2

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b01c1

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0167

    iget-object v2, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->gotoSettingListener:Landroid/content/DialogInterface$OnClickListener;

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

    move-result-object v10

    goto/16 :goto_0

    .line 647
    :pswitch_c
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0088

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b02db

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0291

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v6

    .local v6, accExistDialog:Lcom/htc/widget/HtcAlertDialog;
    move-object v10, v6

    .line 652
    goto/16 :goto_0

    .line 654
    .end local v6           #accExistDialog:Lcom/htc/widget/HtcAlertDialog;
    :pswitch_d
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0088

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b02dc

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0291

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v7

    .local v7, accLimitDialog:Lcom/htc/widget/HtcAlertDialog;
    move-object v10, v7

    .line 659
    goto/16 :goto_0

    .line 542
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 402
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 403
    sget-boolean v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ExchangeSvrSetting"

    iget-wide v1, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->accountId:J

    const-string v3, "Exchange server setting destroy"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 404
    :cond_0
    sput-object v4, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mTopActivity:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    .line 405
    iput-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    .line 407
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mSvcConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 408
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mSvcConnection:Landroid/content/ServiceConnection;

    .line 409
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    :goto_0
    return-void

    .line 410
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 799
    packed-switch p1, :pswitch_data_0

    .line 812
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 801
    :pswitch_0
    sget-boolean v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "ExchangeSvrSetting"

    iget-wide v1, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->accountId:J

    const-string v3, "onKeyDown(): KeyEvent.back"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 802
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mProgressStatus:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    sget-object v1, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;->CREATE_FULL_SETTING:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    if-ne v0, v1, :cond_2

    .line 803
    sget-object v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;->AUTO_DISCOVER:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    iput-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mProgressStatus:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    .line 804
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->reLayout()V

    .line 805
    const/4 v0, 0x1

    goto :goto_1

    .line 806
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mProgressStatus:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    sget-object v1, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;->AUTO_DISCOVER:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    if-ne v0, v1, :cond_0

    .line 807
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->setResult(I)V

    .line 808
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->setAuthenticatorCancel()V

    goto :goto_0

    .line 799
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 460
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 461
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 666
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 667
    instance-of v0, p2, Lcom/htc/android/mail/easclient/EASProgressDialog;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 668
    check-cast v0, Lcom/htc/android/mail/easclient/EASProgressDialog;

    iput-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mLastDialog:Lcom/htc/android/mail/easclient/EASProgressDialog;

    .line 671
    :cond_0
    iput-object p2, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mCurrentDialog:Landroid/app/Dialog;

    .line 672
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "inState"

    .prologue
    .line 518
    invoke-virtual {p1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    iput-object v2, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mInstanceStateBundle:Landroid/os/Bundle;

    .line 519
    const-string v2, "ProgressStatus"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 520
    .local v1, progress:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;->valueOf(Ljava/lang/String;)Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mProgressStatus:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    .line 521
    const-string v2, "CallingActivity"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mCallingActivity:I

    .line 522
    const-string v2, "schedule"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mSchedule:I

    .line 523
    const-string v2, "isTaskAPExist"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mIsTaskApExist:Z

    .line 524
    invoke-static {}, Lcom/htc/android/mail/Mail;->isEnableHuxRestoreExchangeSettings()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 525
    const-string v2, "mIsExchangeSaved"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mIsExchangeSaved:Z

    .line 526
    const-string v2, "mEASAccountInfo"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 527
    .local v0, obj:Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    .line 528
    check-cast v0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

    .end local v0           #obj:Landroid/os/Parcelable;
    iput-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mEASAccountInfo:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

    .line 531
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->reLayout()V

    .line 532
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 417
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 418
    sput-object p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mTopActivity:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    .line 419
    iget-object v1, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    if-eqz v1, :cond_3

    .line 422
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mProgressStatus:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    sget-object v2, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;->SETTING:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    if-eq v1, v2, :cond_0

    .line 424
    iget-object v1, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mLastDialog:Lcom/htc/android/mail/easclient/EASProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mLastDialog:Lcom/htc/android/mail/easclient/EASProgressDialog;

    invoke-virtual {v1}, Lcom/htc/android/mail/easclient/EASProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 425
    iget-object v1, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    invoke-interface {v1}, Lcom/htc/android/mail/eassvc/pim/IEASService;->getProgressing()I

    move-result v0

    .line 426
    .local v0, progressing:I
    iget-object v1, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mLastDialog:Lcom/htc/android/mail/easclient/EASProgressDialog;

    iget-object v1, v1, Lcom/htc/android/mail/easclient/EASProgressDialog;->mAction:Lcom/htc/android/mail/easclient/EASProgressDialog$DialogAction;

    sget-object v2, Lcom/htc/android/mail/easclient/EASProgressDialog$DialogAction;->AUTO_DISCOVER:Lcom/htc/android/mail/easclient/EASProgressDialog$DialogAction;

    if-ne v1, v2, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 428
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->finish()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    .end local v0           #progressing:I
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->checkItsLife()Z

    move-result v1

    if-nez v1, :cond_1

    .line 449
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->finish()V

    .line 455
    :cond_1
    return-void

    .line 430
    .restart local v0       #progressing:I
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mLastDialog:Lcom/htc/android/mail/easclient/EASProgressDialog;

    iget-object v1, v1, Lcom/htc/android/mail/easclient/EASProgressDialog;->mAction:Lcom/htc/android/mail/easclient/EASProgressDialog$DialogAction;

    sget-object v2, Lcom/htc/android/mail/easclient/EASProgressDialog$DialogAction;->TEST_SERVER:Lcom/htc/android/mail/easclient/EASProgressDialog$DialogAction;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 432
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->finish()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 436
    .end local v0           #progressing:I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 438
    :cond_3
    iget-boolean v1, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mBindingService:Z

    if-nez v1, :cond_0

    .line 440
    iput-boolean v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mBindingService:Z

    .line 441
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.android.mail.eassvc.EASAppSvc"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mSvcConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 443
    sget-boolean v1, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "ExchangeSvrSetting"

    iget-wide v2, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->accountId:J

    const-string v4, "Fail to bind EAS AppSvc!"

    invoke-static {v1, v2, v3, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 444
    :cond_4
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->finish()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 503
    const-string v0, "EmailAddr"

    iget-object v1, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const-string v0, "SvrName"

    iget-object v1, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editSvrName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const-string v0, "UserName"

    iget-object v1, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editUserName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const-string v0, "Password"

    iget-object v1, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    const-string v0, "Domain"

    iget-object v1, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editDomain:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    const-string v0, "UseSSL"

    iget-object v1, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->chkUseSSL:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 509
    const-string v0, "showPwd"

    iget-object v1, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->chkShowPwd:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 510
    const-string v0, "ProgressStatus"

    iget-object v1, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mProgressStatus:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    invoke-virtual {v1}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    const-string v0, "CallingActivity"

    iget v1, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mCallingActivity:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 512
    const-string v0, "schedule"

    iget v1, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mSchedule:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 513
    const-string v0, "isTaskAPExist"

    iget-boolean v1, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mIsTaskApExist:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 514
    return-void
.end method

.method setAuenticatorResult(Landroid/accounts/Account;)V
    .locals 4
    .parameter "account"

    .prologue
    .line 842
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 843
    .local v1, result:Landroid/os/Bundle;
    const-string v2, "authAccount"

    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    const-string v2, "accountType"

    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "accountAuthenticatorResponse"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountAuthenticatorResponse;

    .line 847
    .local v0, callback:Landroid/accounts/AccountAuthenticatorResponse;
    if-eqz v0, :cond_0

    .line 848
    invoke-virtual {v0, v1}, Landroid/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    .line 849
    :cond_0
    return-void
.end method

.method setAuthenticatorCancel()V
    .locals 3

    .prologue
    .line 851
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "accountAuthenticatorResponse"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountAuthenticatorResponse;

    .line 853
    .local v0, callback:Landroid/accounts/AccountAuthenticatorResponse;
    if-nez v0, :cond_0

    .line 854
    const-string v1, "ExchangeSvrSetting"

    const-string v2, "No callback IBinder"

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    :goto_0
    return-void

    .line 856
    :cond_0
    const/16 v1, 0x190

    const-string v2, "User canceled"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public updateEmailAddrToPublicAccount(Ljava/lang/String;)V
    .locals 12
    .parameter "account"

    .prologue
    .line 1775
    sget-boolean v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ExchangeSvrSetting"

    iget-wide v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->accountId:J

    const-string v1, "> updateEmailAddrToPublicAccount"

    invoke-static {v0, v4, v5, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1776
    :cond_0
    const/4 v6, 0x0

    .line 1778
    .local v6, accountExist:Z
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    .line 1779
    :cond_1
    const-string v0, "ExchangeSvrSetting"

    iget-wide v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->accountId:J

    const-string v1, "update email address: account is empty"

    invoke-static {v0, v4, v5, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1824
    :cond_2
    :goto_0
    return-void

    .line 1784
    :cond_3
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_account"

    aput-object v1, v2, v0

    .line 1787
    .local v2, projection:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_account=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1788
    .local v3, where:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1790
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->AccountProviderUri:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1800
    :goto_1
    if-eqz v7, :cond_5

    .line 1802
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-lez v0, :cond_4

    .line 1803
    const/4 v6, 0x1

    .line 1807
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1811
    :cond_5
    if-nez v6, :cond_6

    .line 1812
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1813
    .local v10, values:Landroid/content/ContentValues;
    const-string v0, "_account"

    invoke-virtual {v10, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1814
    const/4 v9, 0x0

    .line 1816
    .local v9, newuri:Landroid/net/Uri;
    :try_start_2
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->AccountProviderUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v9

    .line 1820
    :goto_2
    sget-boolean v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "ExchangeSvrSetting"

    iget-wide v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->accountId:J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Inserted URI: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v5, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1823
    .end local v9           #newuri:Landroid/net/Uri;
    .end local v10           #values:Landroid/content/ContentValues;
    :cond_6
    sget-boolean v0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "ExchangeSvrSetting"

    iget-wide v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->accountId:J

    const-string v1, "< updateEmailAddrToPublicAccount"

    invoke-static {v0, v4, v5, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0

    .line 1795
    :catch_0
    move-exception v8

    .line 1796
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1807
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1817
    .restart local v9       #newuri:Landroid/net/Uri;
    .restart local v10       #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v8

    .line 1818
    .restart local v8       #e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method
