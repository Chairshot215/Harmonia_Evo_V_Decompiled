.class public Lcom/htc/android/mail/MailAccountUI;
.super Ljava/lang/Object;
.source "MailAccountUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/MailAccountUI$QueryHandler;,
        Lcom/htc/android/mail/MailAccountUI$ErrorListener;
    }
.end annotation


# static fields
.field public static final AUTH_FAIL:I = 0x2

.field public static final AUTH_PROGRESS:I = 0x0

.field public static final AccountProviderUri:Landroid/net/Uri; = null

.field public static final CHANGE_MAIL_ADDRESS:I = 0x9

.field public static final CHANGE_MAIL_ADDRESS_IN_STEP_1:I = 0x13

.field public static final CHANGE_PROTOCOL:I = 0xc

.field public static final CHANGE_SERVER:I = 0xb

.field public static final CHANGE_USERNAME:I = 0xa

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static final DIALOG_PROCESSING:I = 0xd

.field public static final DOWNLOAD_MAIL:I = 0xe

.field public static final EMAIL_DOMAIN_ERROR:I = 0x4

.field public static final GO_NETWORK_SETTING:I = 0x32

.field public static final IMAP_PORT:I = 0x8f

.field public static final IMAP_SSL_PORT:I = 0x3e1

.field public static final INVALID_PASSWORD:I = 0x11

.field public static final INVALID_PORT_NUMBER:I = 0x12

.field public static final MailAccountAuth:I = 0x0

.field public static final NEW_ACCOUNT_STEP_1:I = 0x1

.field public static final NEW_ACCOUNT_STEP_2:I = 0x2

.field public static final NEW_ACCOUNT_STEP_3:I = 0x3

.field public static final NEW_ACCOUNT_STEP_4:I = 0x4

.field public static final NONE_AUTH:I = 0x3

.field public static final NO_NETWORK_ACCESS:I = 0x10

.field public static final POP_PORT:I = 0x6e

.field public static final POP_SSL_PORT:I = 0x3e3

.field public static final SAME_ACCOUNT_WARNING:I = 0x1

.field public static final SAME_MAIL_ADDRESS:I = 0xf

.field public static final SMART_LOGIN_FAIL:I = 0x7

.field public static final SMART_LOGIN_IO_FAIL:I = 0x8

.field public static final SMTP_PORT:I = 0x19

.field public static final SMTP_PORT_MAC:I = 0x24b

.field public static final SMTP_SSL_PORT:I = 0x1d1

.field private static final TAG:Ljava/lang/String; = "MailAccountUI"

.field public static final Token_Query_Account:I = 0x12

.field public static final VERIFY_ALL_OK:I = 0x3

.field public static final VERIFY_INCOME_SERVER_OK:I = 0x1

.field public static final VERIFY_INCOMING:I = 0x5

.field public static final VERIFY_OUTGOING:I = 0x6

.field public static final VERIFY_OUTGOING_SERVER_OK:I = 0x2

.field private static sDefaultOutPorts:[Ljava/lang/String;

.field private static final sDefaultPorts:[Ljava/lang/String;

.field private static final sDefaultSSLPorts:[Ljava/lang/String;

.field private static final sProtocols:[Ljava/lang/String;

.field private static sSecurityTypes:[Ljava/lang/String;


# instance fields
.field private final REQUEST_LAYOUT_DELAY_TIME:I

.field public VerifyAccount:I

.field private addressEvent:Landroid/view/View$OnFocusChangeListener;

.field private appendDomainEvent:Landroid/view/View$OnFocusChangeListener;

.field public btnL:Lcom/htc/android/mail/widget/MailFooterBarButton;

.field public btnR:Lcom/htc/android/mail/widget/MailFooterBarButton;

.field cookie:Ljava/lang/Object;

.field curAccount:Lcom/htc/android/mail/Account;

.field curListener:Landroid/content/DialogInterface$OnClickListener;

.field curMessage:Ljava/lang/String;

.field public curNewAccountStep:I

.field curType:I

.field dir:Ljava/lang/String;

.field fileName:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private mBeContinue:Z

.field public mCallingActivity:I

.field private mContext:Landroid/content/Context;

.field public mDefaultChkbox:Landroid/widget/CheckBox;

.field public mDesc:Landroid/widget/EditText;

.field public mDiffDomain:Z

.field private mDoCheck:Z

.field public mEmailAddress:Landroid/widget/AutoCompleteTextView;

.field private mHandler:Landroid/os/Handler;

.field public mInEditMode:Z

.field public mInEmailAddress:Landroid/widget/AutoCompleteTextView;

.field public mInPassword:Landroid/widget/EditText;

.field public mInUsername:Landroid/widget/EditText;

.field private mMailHeader:Lcom/htc/android/mail/widget/TextMailHeaderBar1;

.field public mName:Landroid/widget/EditText;

.field private mOldSipHeight:I

.field private mOnRequireLoginClickListener:Landroid/view/View$OnClickListener;

.field private mOnShowPwdClickListener:Landroid/view/View$OnClickListener;

.field private mOriDesc:Ljava/lang/String;

.field private mOriEmailAddr:Ljava/lang/String;

.field public mOri_domain:Ljava/lang/String;

.field public mOutPassword:Landroid/widget/EditText;

.field public mOutPasswordLabel:Landroid/widget/TextView;

.field public mOutPort:Landroid/widget/EditText;

.field public mOutServer:Landroid/widget/EditText;

.field public mOutUsername:Landroid/widget/EditText;

.field public mOutUsernameLabel:Landroid/widget/TextView;

.field public mPassword:Landroid/widget/EditText;

.field public mPort:Landroid/widget/EditText;

.field public mProtocol:Lcom/htc/widget/HtcSpinner;

.field public mProtocolValue:I

.field public mProviderId:J

.field private mQueryHandler:Lcom/htc/android/mail/MailAccountUI$QueryHandler;

.field private mRequestController:Lcom/htc/android/mail/AbsRequestController;

.field public mRequireLogin:Landroid/widget/CheckBox;

.field private mRes:Landroid/content/res/Resources;

.field mScreen1:Landroid/widget/LinearLayout;

.field public mScreen1Line1:Landroid/view/View;

.field mScreen2:Landroid/widget/LinearLayout;

.field mScreen3:Landroid/widget/LinearLayout;

.field public mScreen3Line2:Landroid/view/View;

.field public mScreen3Line3:Landroid/view/View;

.field mScreen4:Landroid/widget/LinearLayout;

.field public mSecurityIn:Lcom/htc/widget/HtcSpinner;

.field public mSecurityOut:Lcom/htc/widget/HtcSpinner;

.field public mServer:Landroid/widget/EditText;

.field public mServerLabel:Landroid/widget/TextView;

.field private mShowPassword:Landroid/widget/CheckBox;

.field private mSuspendLock:Ljava/lang/Object;

.field public mUserCancelCheck:Z

.field private m_bInvalidMailAddr:Z

.field m_bProtocolItemInit:Z

.field m_bSecureInItemInit:Z

.field m_bSecureOutItemInit:Z

.field public okAddr:Ljava/lang/String;

.field public okPwd:Ljava/lang/String;

.field private protocolSelectListener:Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;

.field public providerGroupStr:Ljava/lang/String;

.field public providerStr:Ljava/lang/String;

.field public screen2name:Ljava/lang/String;

.field public screen2pop:Ljava/lang/String;

.field public screen2port:Ljava/lang/String;

.field public screen2protocol:I

.field public screen2pwd:Ljava/lang/String;

.field public screen2sslin:I

.field public screen3name:Ljava/lang/String;

.field public screen3port:Ljava/lang/String;

.field public screen3pwd:Ljava/lang/String;

.field public screen3requirelogin:I

.field public screen3srv:Ljava/lang/String;

.field public screen3sslout:I

.field private securityin:Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;

.field private securityout:Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;

.field public smartLogin:Z

.field private smart_fail:I

.field private smtpRequireLoginListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field public titleString:Ljava/lang/String;

.field private usernameEvent:Landroid/view/View$OnFocusChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x19

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 99
    const-string v0, "content://com.htc.accounts/accounts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/MailAccountUI;->AccountProviderUri:Landroid/net/Uri;

    .line 152
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "POP"

    aput-object v1, v0, v2

    const-string v1, "APOP"

    aput-object v1, v0, v3

    const-string v1, "IMAP"

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/android/mail/MailAccountUI;->sProtocols:[Ljava/lang/String;

    .line 161
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    const-string v1, "SSL"

    aput-object v1, v0, v3

    const-string v1, "TLS"

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/android/mail/MailAccountUI;->sSecurityTypes:[Ljava/lang/String;

    .line 220
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/MailAccountUI;->DEBUG:Z

    .line 234
    new-array v0, v5, [Ljava/lang/String;

    const/16 v1, 0x6e

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const/16 v1, 0x6e

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0x8f

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/android/mail/MailAccountUI;->sDefaultPorts:[Ljava/lang/String;

    .line 240
    new-array v0, v5, [Ljava/lang/String;

    const/16 v1, 0x3e3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const/16 v1, 0x3e3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0x3e1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/android/mail/MailAccountUI;->sDefaultSSLPorts:[Ljava/lang/String;

    .line 246
    new-array v0, v5, [Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const/16 v1, 0x1d1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/android/mail/MailAccountUI;->sDefaultOutPorts:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object v2, p0, Lcom/htc/android/mail/MailAccountUI;->mContext:Landroid/content/Context;

    .line 104
    iput-object v2, p0, Lcom/htc/android/mail/MailAccountUI;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    .line 106
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mHandler:Landroid/os/Handler;

    .line 117
    iput-boolean v3, p0, Lcom/htc/android/mail/MailAccountUI;->smartLogin:Z

    .line 118
    iput-object v2, p0, Lcom/htc/android/mail/MailAccountUI;->okAddr:Ljava/lang/String;

    .line 119
    iput-object v2, p0, Lcom/htc/android/mail/MailAccountUI;->okPwd:Ljava/lang/String;

    .line 120
    iput-object v2, p0, Lcom/htc/android/mail/MailAccountUI;->screen2name:Ljava/lang/String;

    .line 121
    iput-object v2, p0, Lcom/htc/android/mail/MailAccountUI;->screen2pwd:Ljava/lang/String;

    .line 122
    iput-object v2, p0, Lcom/htc/android/mail/MailAccountUI;->screen2pop:Ljava/lang/String;

    .line 123
    iput-object v2, p0, Lcom/htc/android/mail/MailAccountUI;->screen2port:Ljava/lang/String;

    .line 124
    iput v4, p0, Lcom/htc/android/mail/MailAccountUI;->screen2protocol:I

    .line 125
    iput v4, p0, Lcom/htc/android/mail/MailAccountUI;->screen2sslin:I

    .line 126
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/android/mail/MailAccountUI;->screen3requirelogin:I

    .line 127
    iput-object v2, p0, Lcom/htc/android/mail/MailAccountUI;->screen3name:Ljava/lang/String;

    .line 128
    iput-object v2, p0, Lcom/htc/android/mail/MailAccountUI;->screen3pwd:Ljava/lang/String;

    .line 129
    iput-object v2, p0, Lcom/htc/android/mail/MailAccountUI;->screen3srv:Ljava/lang/String;

    .line 130
    iput-object v2, p0, Lcom/htc/android/mail/MailAccountUI;->screen3port:Ljava/lang/String;

    .line 131
    iput v4, p0, Lcom/htc/android/mail/MailAccountUI;->screen3sslout:I

    .line 132
    iput-object v2, p0, Lcom/htc/android/mail/MailAccountUI;->mOriEmailAddr:Ljava/lang/String;

    .line 133
    iput-object v2, p0, Lcom/htc/android/mail/MailAccountUI;->mOriDesc:Ljava/lang/String;

    .line 136
    iput-boolean v3, p0, Lcom/htc/android/mail/MailAccountUI;->mUserCancelCheck:Z

    .line 138
    iput v3, p0, Lcom/htc/android/mail/MailAccountUI;->mOldSipHeight:I

    .line 139
    const/16 v0, 0xfa

    iput v0, p0, Lcom/htc/android/mail/MailAccountUI;->REQUEST_LAYOUT_DELAY_TIME:I

    .line 141
    iput-object v2, p0, Lcom/htc/android/mail/MailAccountUI;->mMailHeader:Lcom/htc/android/mail/widget/TextMailHeaderBar1;

    .line 149
    iput v3, p0, Lcom/htc/android/mail/MailAccountUI;->VerifyAccount:I

    .line 167
    iput v4, p0, Lcom/htc/android/mail/MailAccountUI;->mProtocolValue:I

    .line 202
    iput-object v2, p0, Lcom/htc/android/mail/MailAccountUI;->mScreen1:Landroid/widget/LinearLayout;

    .line 203
    iput-object v2, p0, Lcom/htc/android/mail/MailAccountUI;->mScreen2:Landroid/widget/LinearLayout;

    .line 204
    iput-object v2, p0, Lcom/htc/android/mail/MailAccountUI;->mScreen3:Landroid/widget/LinearLayout;

    .line 205
    iput-object v2, p0, Lcom/htc/android/mail/MailAccountUI;->mScreen4:Landroid/widget/LinearLayout;

    .line 207
    const-string v0, "Other"

    iput-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->providerStr:Ljava/lang/String;

    .line 208
    const-string v0, "Other"

    iput-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->titleString:Ljava/lang/String;

    .line 210
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/android/mail/MailAccountUI;->mProviderId:J

    .line 212
    iput-boolean v3, p0, Lcom/htc/android/mail/MailAccountUI;->mInEditMode:Z

    .line 214
    iput-boolean v3, p0, Lcom/htc/android/mail/MailAccountUI;->mDoCheck:Z

    .line 216
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mSuspendLock:Ljava/lang/Object;

    .line 221
    iput-boolean v3, p0, Lcom/htc/android/mail/MailAccountUI;->m_bInvalidMailAddr:Z

    .line 223
    iput-boolean v3, p0, Lcom/htc/android/mail/MailAccountUI;->m_bSecureInItemInit:Z

    .line 224
    iput-boolean v3, p0, Lcom/htc/android/mail/MailAccountUI;->m_bSecureOutItemInit:Z

    .line 225
    iput-boolean v3, p0, Lcom/htc/android/mail/MailAccountUI;->m_bProtocolItemInit:Z

    .line 227
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mOri_domain:Ljava/lang/String;

    .line 228
    iput-boolean v3, p0, Lcom/htc/android/mail/MailAccountUI;->mDiffDomain:Z

    .line 229
    iput v4, p0, Lcom/htc/android/mail/MailAccountUI;->mCallingActivity:I

    .line 231
    iput-object v2, p0, Lcom/htc/android/mail/MailAccountUI;->providerGroupStr:Ljava/lang/String;

    .line 252
    new-instance v0, Lcom/htc/android/mail/MailAccountUI$1;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/MailAccountUI$1;-><init>(Lcom/htc/android/mail/MailAccountUI;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->addressEvent:Landroid/view/View$OnFocusChangeListener;

    .line 262
    new-instance v0, Lcom/htc/android/mail/MailAccountUI$2;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/MailAccountUI$2;-><init>(Lcom/htc/android/mail/MailAccountUI;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->appendDomainEvent:Landroid/view/View$OnFocusChangeListener;

    .line 272
    new-instance v0, Lcom/htc/android/mail/MailAccountUI$3;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/MailAccountUI$3;-><init>(Lcom/htc/android/mail/MailAccountUI;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->usernameEvent:Landroid/view/View$OnFocusChangeListener;

    .line 945
    new-instance v0, Lcom/htc/android/mail/MailAccountUI$14;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/MailAccountUI$14;-><init>(Lcom/htc/android/mail/MailAccountUI;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->securityin:Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;

    .line 985
    new-instance v0, Lcom/htc/android/mail/MailAccountUI$15;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/MailAccountUI$15;-><init>(Lcom/htc/android/mail/MailAccountUI;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->securityout:Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;

    .line 1016
    new-instance v0, Lcom/htc/android/mail/MailAccountUI$16;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/MailAccountUI$16;-><init>(Lcom/htc/android/mail/MailAccountUI;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->protocolSelectListener:Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;

    .line 1219
    const-string v0, "signature"

    iput-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->fileName:Ljava/lang/String;

    const-string v0, "//data//data//com.htc.android.mail//databases//"

    iput-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->dir:Ljava/lang/String;

    .line 1400
    iput-object v2, p0, Lcom/htc/android/mail/MailAccountUI;->curAccount:Lcom/htc/android/mail/Account;

    .line 1511
    iput v3, p0, Lcom/htc/android/mail/MailAccountUI;->smart_fail:I

    .line 2119
    iput v3, p0, Lcom/htc/android/mail/MailAccountUI;->curType:I

    .line 2120
    iput-object v2, p0, Lcom/htc/android/mail/MailAccountUI;->curListener:Landroid/content/DialogInterface$OnClickListener;

    .line 2288
    new-instance v0, Lcom/htc/android/mail/MailAccountUI$22;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/MailAccountUI$22;-><init>(Lcom/htc/android/mail/MailAccountUI;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->smtpRequireLoginListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 2313
    new-instance v0, Lcom/htc/android/mail/MailAccountUI$23;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/MailAccountUI$23;-><init>(Lcom/htc/android/mail/MailAccountUI;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mOnRequireLoginClickListener:Landroid/view/View$OnClickListener;

    .line 2336
    new-instance v0, Lcom/htc/android/mail/MailAccountUI$24;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/MailAccountUI$24;-><init>(Lcom/htc/android/mail/MailAccountUI;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mOnShowPwdClickListener:Landroid/view/View$OnClickListener;

    .line 2384
    return-void
.end method

.method private DismissAuthDialog()V
    .locals 2

    .prologue
    .line 1391
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1397
    :goto_0
    return-void

    .line 1393
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1394
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/android/mail/MailAccountUI;Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/htc/android/mail/MailAccountUI;->handleAppendDomain(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/android/mail/MailAccountUI;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/android/mail/MailAccountUI;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/htc/android/mail/MailAccountUI;->mBeContinue:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/htc/android/mail/MailAccountUI;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/htc/android/mail/MailAccountUI;->mBeContinue:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/htc/android/mail/MailAccountUI;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/htc/android/mail/MailAccountUI;->m_bInvalidMailAddr:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/htc/android/mail/MailAccountUI;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/htc/android/mail/MailAccountUI;->m_bInvalidMailAddr:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/htc/android/mail/MailAccountUI;Landroid/content/Context;Lcom/htc/android/mail/Account;Ljava/lang/ref/WeakReference;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/android/mail/MailAccountUI;->checkOutgoing(Landroid/content/Context;Lcom/htc/android/mail/Account;Ljava/lang/ref/WeakReference;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/android/mail/MailAccountUI;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/htc/android/mail/MailAccountUI;->smart_fail:I

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/android/mail/MailAccountUI;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/android/mail/MailAccountUI;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mSuspendLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/android/mail/MailAccountUI;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mShowPassword:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/android/mail/MailAccountUI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/htc/android/mail/MailAccountUI;->mOriEmailAddr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 59
    sget-boolean v0, Lcom/htc/android/mail/MailAccountUI;->DEBUG:Z

    return v0
.end method

.method static synthetic access$402(Lcom/htc/android/mail/MailAccountUI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/htc/android/mail/MailAccountUI;->mOriDesc:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/htc/android/mail/MailAccountUI;->sDefaultOutPorts:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/htc/android/mail/MailAccountUI;->sDefaultPorts:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/htc/android/mail/MailAccountUI;->sDefaultSSLPorts:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/android/mail/MailAccountUI;Landroid/content/Context;Lcom/htc/android/mail/Account;Ljava/lang/ref/WeakReference;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/android/mail/MailAccountUI;->checkIncoming(Landroid/content/Context;Lcom/htc/android/mail/Account;Ljava/lang/ref/WeakReference;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/htc/android/mail/MailAccountUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/htc/android/mail/MailAccountUI;->DismissAuthDialog()V

    return-void
.end method

.method private checkIncoming(Landroid/content/Context;Lcom/htc/android/mail/Account;Ljava/lang/ref/WeakReference;)Z
    .locals 12
    .parameter "context"
    .parameter "src"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/android/mail/Account;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    const/16 v11, 0x66

    const/16 v10, 0x65

    const/16 v9, 0x64

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1915
    sget-boolean v6, Lcom/htc/android/mail/MailAccountUI;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "MailAccountUI"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkIncoming>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1917
    :cond_0
    if-nez p2, :cond_1

    .line 1918
    new-instance v0, Lcom/htc/android/mail/Account;

    new-instance v6, Lcom/htc/android/mail/account/AccountBinder;

    invoke-direct {p0}, Lcom/htc/android/mail/MailAccountUI;->gatherAuthValues()Landroid/os/Bundle;

    move-result-object v7

    invoke-direct {v6, p1, v7}, Lcom/htc/android/mail/account/AccountBinder;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-direct {v0, v6}, Lcom/htc/android/mail/Account;-><init>(Lcom/htc/android/mail/account/IAccount;)V

    .line 1921
    .local v0, account:Lcom/htc/android/mail/Account;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/MailAccountUI;->cancelRequest(Landroid/content/Context;)V

    .line 1922
    iget-object v6, p0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/htc/android/mail/RequestController;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/RequestController;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/mail/MailAccountUI;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    .line 1924
    const/4 v3, 0x0

    .line 1926
    .local v3, result:Z
    :try_start_0
    iget-object v6, p0, Lcom/htc/android/mail/MailAccountUI;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    invoke-virtual {v6, v0, p3}, Lcom/htc/android/mail/AbsRequestController;->checkIncomingAccount(Lcom/htc/android/mail/Account;Ljava/lang/ref/WeakReference;)Z
    :try_end_0
    .catch Lcom/htc/android/mail/exception/AuthorizationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/htc/android/mail/exception/NoTLSSupportException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/htc/android/mail/exception/NoSupportAPOPException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    move-result v3

    .line 1928
    if-eqz v3, :cond_3

    .line 1987
    .end local v3           #result:Z
    :goto_1
    return v3

    .line 1920
    .end local v0           #account:Lcom/htc/android/mail/Account;
    :cond_1
    move-object v0, p2

    .restart local v0       #account:Lcom/htc/android/mail/Account;
    goto :goto_0

    .line 1929
    .restart local v3       #result:Z
    :catch_0
    move-exception v1

    .line 1931
    .local v1, e:Lcom/htc/android/mail/exception/AuthorizationException;
    if-nez p2, :cond_4

    .line 1932
    :try_start_1
    new-instance v6, Lcom/htc/android/mail/exception/AuthorizationException;

    invoke-virtual {v1}, Lcom/htc/android/mail/exception/AuthorizationException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/htc/android/mail/exception/AuthorizationException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/htc/android/mail/exception/AuthorizationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/htc/android/mail/exception/NoTLSSupportException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/htc/android/mail/exception/NoSupportAPOPException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 1940
    .end local v1           #e:Lcom/htc/android/mail/exception/AuthorizationException;
    :catch_1
    move-exception v1

    .line 1941
    .local v1, e:Ljavax/net/ssl/SSLException;
    sget-boolean v5, Lcom/htc/android/mail/MailAccountUI;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "MailAccountUI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "income error>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1942
    :cond_2
    iget-boolean v5, p0, Lcom/htc/android/mail/MailAccountUI;->smartLogin:Z

    if-nez v5, :cond_3

    .line 1943
    iget-object v5, p0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v6, 0x7f0b01be

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/htc/android/mail/MailAccountUI$ErrorListener;

    invoke-direct {v6, p0, v9}, Lcom/htc/android/mail/MailAccountUI$ErrorListener;-><init>(Lcom/htc/android/mail/MailAccountUI;I)V

    invoke-direct {p0, v9, v5, v6}, Lcom/htc/android/mail/MailAccountUI;->showError(ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .end local v1           #e:Ljavax/net/ssl/SSLException;
    :cond_3
    :goto_2
    move v3, v4

    .line 1987
    goto :goto_1

    .line 1934
    .local v1, e:Lcom/htc/android/mail/exception/AuthorizationException;
    :cond_4
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/MailAccountUI;->cancelRequest(Landroid/content/Context;)V

    .line 1935
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/android/mail/MailAccountUI;->getAddrUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/htc/android/mail/Account;->setUserName(Ljava/lang/String;)V

    .line 1936
    iget-object v6, p0, Lcom/htc/android/mail/MailAccountUI;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    invoke-virtual {v6, v0, p3}, Lcom/htc/android/mail/AbsRequestController;->checkIncomingAccount(Lcom/htc/android/mail/Account;Ljava/lang/ref/WeakReference;)Z
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/htc/android/mail/exception/AuthorizationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/htc/android/mail/exception/NoTLSSupportException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/htc/android/mail/exception/NoSupportAPOPException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    move-result v3

    .line 1938
    goto :goto_1

    .line 1945
    .end local v1           #e:Lcom/htc/android/mail/exception/AuthorizationException;
    :catch_2
    move-exception v1

    .line 1946
    .local v1, e:Ljava/io/IOException;
    sget-boolean v6, Lcom/htc/android/mail/MailAccountUI;->DEBUG:Z

    if-eqz v6, :cond_5

    const-string v6, "MailAccountUI"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "income error2>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1947
    :cond_5
    iget-boolean v6, p0, Lcom/htc/android/mail/MailAccountUI;->smartLogin:Z

    if-nez v6, :cond_3

    .line 1948
    const/16 v6, 0x67

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v9, 0x7f0b01bf

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v9, 0x7f0b020a

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/htc/android/mail/MailAccountUI$ErrorListener;

    const/16 v9, 0x67

    invoke-direct {v8, p0, v9}, Lcom/htc/android/mail/MailAccountUI$ErrorListener;-><init>(Lcom/htc/android/mail/MailAccountUI;I)V

    invoke-direct {p0, v6, v7, v8}, Lcom/htc/android/mail/MailAccountUI;->showError(ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1951
    iget-object v6, p0, Lcom/htc/android/mail/MailAccountUI;->mSuspendLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1953
    :try_start_3
    sget-boolean v7, Lcom/htc/android/mail/MailAccountUI;->DEBUG:Z

    if-eqz v7, :cond_6

    const-string v7, "MailAccountUI"

    const-string v8, "before wait()"

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1954
    :cond_6
    iget-object v7, p0, Lcom/htc/android/mail/MailAccountUI;->mSuspendLock:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->wait()V

    .line 1955
    sget-boolean v7, Lcom/htc/android/mail/MailAccountUI;->DEBUG:Z

    if-eqz v7, :cond_7

    const-string v7, "MailAccountUI"

    const-string v8, "after wait()"

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1956
    :cond_7
    iget-boolean v7, p0, Lcom/htc/android/mail/MailAccountUI;->mBeContinue:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    if-ne v7, v5, :cond_8

    .line 1957
    :try_start_4
    monitor-exit v6

    move v3, v5

    goto/16 :goto_1

    .line 1959
    :cond_8
    monitor-exit v6

    move v3, v4

    goto/16 :goto_1

    .line 1961
    :catch_3
    move-exception v2

    .line 1962
    .local v2, ie:Ljava/lang/InterruptedException;
    const-string v5, "MailAccountUI"

    const-string v7, "Interrupted"

    invoke-static {v5, v7, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1964
    monitor-exit v6

    goto/16 :goto_2

    .end local v2           #ie:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 1966
    .local v1, e:Lcom/htc/android/mail/exception/AuthorizationException;
    :catch_4
    move-exception v1

    .line 1967
    sget-boolean v6, Lcom/htc/android/mail/MailAccountUI;->DEBUG:Z

    if-eqz v6, :cond_9

    const-string v6, "MailAccountUI"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "income error3>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1968
    :cond_9
    iget-boolean v6, p0, Lcom/htc/android/mail/MailAccountUI;->smartLogin:Z

    if-eqz v6, :cond_a

    .line 1969
    iput v5, p0, Lcom/htc/android/mail/MailAccountUI;->smart_fail:I

    move v3, v4

    .line 1970
    goto/16 :goto_1

    .line 1972
    :cond_a
    iget-object v5, p0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v6, 0x7f0b01bd

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/htc/android/mail/MailAccountUI$ErrorListener;

    invoke-direct {v6, p0, v11}, Lcom/htc/android/mail/MailAccountUI$ErrorListener;-><init>(Lcom/htc/android/mail/MailAccountUI;I)V

    invoke-direct {p0, v11, v5, v6}, Lcom/htc/android/mail/MailAccountUI;->showError(ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_2

    .line 1974
    .end local v1           #e:Lcom/htc/android/mail/exception/AuthorizationException;
    :catch_5
    move-exception v1

    .line 1975
    .local v1, e:Lcom/htc/android/mail/exception/NoTLSSupportException;
    sget-boolean v5, Lcom/htc/android/mail/MailAccountUI;->DEBUG:Z

    if-eqz v5, :cond_b

    const-string v5, "MailAccountUI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "income error4>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1976
    :cond_b
    iget-boolean v5, p0, Lcom/htc/android/mail/MailAccountUI;->smartLogin:Z

    if-nez v5, :cond_3

    .line 1977
    iget-object v5, p0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v6, 0x7f0b01c3

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/htc/android/mail/MailAccountUI$ErrorListener;

    invoke-direct {v6, p0, v10}, Lcom/htc/android/mail/MailAccountUI$ErrorListener;-><init>(Lcom/htc/android/mail/MailAccountUI;I)V

    invoke-direct {p0, v10, v5, v6}, Lcom/htc/android/mail/MailAccountUI;->showError(ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_2

    .line 1979
    .end local v1           #e:Lcom/htc/android/mail/exception/NoTLSSupportException;
    :catch_6
    move-exception v1

    .line 1980
    .local v1, e:Lcom/htc/android/mail/exception/NoSupportAPOPException;
    sget-boolean v5, Lcom/htc/android/mail/MailAccountUI;->DEBUG:Z

    if-eqz v5, :cond_c

    const-string v5, "MailAccountUI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "income error5>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1981
    :cond_c
    iget-boolean v5, p0, Lcom/htc/android/mail/MailAccountUI;->smartLogin:Z

    if-nez v5, :cond_3

    .line 1982
    const/16 v5, 0x68

    iget-object v6, p0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v7, 0x7f0b01c4

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/htc/android/mail/MailAccountUI$ErrorListener;

    const/16 v8, 0x68

    invoke-direct {v7, p0, v8}, Lcom/htc/android/mail/MailAccountUI$ErrorListener;-><init>(Lcom/htc/android/mail/MailAccountUI;I)V

    invoke-direct {p0, v5, v6, v7}, Lcom/htc/android/mail/MailAccountUI;->showError(ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_2

    .line 1984
    .end local v1           #e:Lcom/htc/android/mail/exception/NoSupportAPOPException;
    :catch_7
    move-exception v1

    .line 1985
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "MailAccountUI"

    const-string v6, "exception"

    invoke-static {v5, v6, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_2
.end method

.method private checkOutgoing(Landroid/content/Context;Lcom/htc/android/mail/Account;Ljava/lang/ref/WeakReference;)Z
    .locals 11
    .parameter "context"
    .parameter "src"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/android/mail/Account;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    const/16 v10, 0xca

    const/16 v9, 0xc9

    const/16 v8, 0xc8

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1998
    if-nez p2, :cond_0

    .line 1999
    new-instance v0, Lcom/htc/android/mail/Account;

    new-instance v6, Lcom/htc/android/mail/account/AccountBinder;

    invoke-direct {p0}, Lcom/htc/android/mail/MailAccountUI;->gatherAuthValues()Landroid/os/Bundle;

    move-result-object v7

    invoke-direct {v6, p1, v7}, Lcom/htc/android/mail/account/AccountBinder;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-direct {v0, v6}, Lcom/htc/android/mail/Account;-><init>(Lcom/htc/android/mail/account/IAccount;)V

    .line 2002
    .local v0, account:Lcom/htc/android/mail/Account;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/MailAccountUI;->cancelRequest(Landroid/content/Context;)V

    .line 2003
    iget-object v6, p0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/htc/android/mail/RequestController;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/RequestController;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/mail/MailAccountUI;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    .line 2007
    const/4 v3, 0x0

    .line 2009
    .local v3, result:Z
    :try_start_0
    iget-object v6, p0, Lcom/htc/android/mail/MailAccountUI;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    invoke-virtual {v6, v0, p3}, Lcom/htc/android/mail/AbsRequestController;->checkOutgoingAccount(Lcom/htc/android/mail/Account;Ljava/lang/ref/WeakReference;)Z
    :try_end_0
    .catch Lcom/htc/android/mail/exception/AuthorizationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/htc/android/mail/exception/SmtpException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Lcom/htc/android/mail/exception/NoSupportAuthException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/htc/android/mail/exception/NoTLSSupportException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lcom/htc/android/mail/exception/InvalidMailAddressException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b

    move-result v3

    .line 2011
    if-eqz v3, :cond_1

    .line 2116
    .end local v3           #result:Z
    :goto_1
    return v3

    .line 2001
    .end local v0           #account:Lcom/htc/android/mail/Account;
    :cond_0
    move-object v0, p2

    .restart local v0       #account:Lcom/htc/android/mail/Account;
    goto :goto_0

    .line 2012
    .restart local v3       #result:Z
    :catch_0
    move-exception v1

    .line 2014
    .local v1, e:Lcom/htc/android/mail/exception/AuthorizationException;
    if-nez p2, :cond_2

    .line 2015
    :try_start_1
    new-instance v6, Lcom/htc/android/mail/exception/AuthorizationException;

    invoke-virtual {v1}, Lcom/htc/android/mail/exception/AuthorizationException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/htc/android/mail/exception/AuthorizationException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/htc/android/mail/exception/SmtpException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Lcom/htc/android/mail/exception/AuthorizationException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lcom/htc/android/mail/exception/NoSupportAuthException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lcom/htc/android/mail/exception/NoTLSSupportException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lcom/htc/android/mail/exception/InvalidMailAddressException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b

    .line 2042
    .end local v1           #e:Lcom/htc/android/mail/exception/AuthorizationException;
    :catch_1
    move-exception v1

    .line 2043
    .local v1, e:Ljavax/net/ssl/SSLException;
    iget-boolean v5, p0, Lcom/htc/android/mail/MailAccountUI;->smartLogin:Z

    if-nez v5, :cond_1

    .line 2044
    iget-object v5, p0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v6, 0x7f0b01c5

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/htc/android/mail/MailAccountUI$ErrorListener;

    invoke-direct {v6, p0, v8}, Lcom/htc/android/mail/MailAccountUI$ErrorListener;-><init>(Lcom/htc/android/mail/MailAccountUI;I)V

    invoke-direct {p0, v8, v5, v6}, Lcom/htc/android/mail/MailAccountUI;->showError(ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .end local v1           #e:Ljavax/net/ssl/SSLException;
    :cond_1
    :goto_2
    move v3, v4

    .line 2116
    goto :goto_1

    .line 2017
    .local v1, e:Lcom/htc/android/mail/exception/AuthorizationException;
    :cond_2
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/MailAccountUI;->cancelRequest(Landroid/content/Context;)V

    .line 2018
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/android/mail/MailAccountUI;->getAddrUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/htc/android/mail/Account;->setOutuserName(Ljava/lang/String;)V

    .line 2019
    iget-object v6, p0, Lcom/htc/android/mail/MailAccountUI;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    invoke-virtual {v6, v0, p3}, Lcom/htc/android/mail/AbsRequestController;->checkOutgoingAccount(Lcom/htc/android/mail/Account;Ljava/lang/ref/WeakReference;)Z

    move-result v3

    .line 2021
    goto :goto_1

    .line 2022
    .end local v1           #e:Lcom/htc/android/mail/exception/AuthorizationException;
    :catch_2
    move-exception v1

    .line 2028
    .local v1, e:Ljava/io/IOException;
    if-nez p2, :cond_3

    .line 2029
    new-instance v6, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/htc/android/mail/exception/SmtpException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Lcom/htc/android/mail/exception/AuthorizationException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lcom/htc/android/mail/exception/NoSupportAuthException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lcom/htc/android/mail/exception/NoTLSSupportException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Lcom/htc/android/mail/exception/InvalidMailAddressException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b

    .line 2047
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 2048
    .restart local v1       #e:Ljava/io/IOException;
    iget-boolean v6, p0, Lcom/htc/android/mail/MailAccountUI;->smartLogin:Z

    if-nez v6, :cond_1

    .line 2049
    const/16 v6, 0xcb

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v9, 0x7f0b01bf

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v9, 0x7f0b020a

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/htc/android/mail/MailAccountUI$ErrorListener;

    const/16 v9, 0xcb

    invoke-direct {v8, p0, v9}, Lcom/htc/android/mail/MailAccountUI$ErrorListener;-><init>(Lcom/htc/android/mail/MailAccountUI;I)V

    invoke-direct {p0, v6, v7, v8}, Lcom/htc/android/mail/MailAccountUI;->showError(ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2054
    iget-object v6, p0, Lcom/htc/android/mail/MailAccountUI;->mSuspendLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2056
    :try_start_3
    iget-object v7, p0, Lcom/htc/android/mail/MailAccountUI;->mSuspendLock:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->wait()V

    .line 2057
    iget-boolean v7, p0, Lcom/htc/android/mail/MailAccountUI;->mBeContinue:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_5

    if-ne v7, v5, :cond_5

    .line 2058
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v3, v5

    goto/16 :goto_1

    .line 2032
    :cond_3
    :try_start_5
    iget-object v6, p0, Lcom/htc/android/mail/MailAccountUI;->providerStr:Ljava/lang/String;

    const-string v7, "Hotmail"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2033
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/MailAccountUI;->cancelRequest(Landroid/content/Context;)V

    .line 2034
    const/16 v6, 0x19

    invoke-virtual {v0, v6}, Lcom/htc/android/mail/Account;->setOutPort(I)V

    .line 2035
    iget-object v6, p0, Lcom/htc/android/mail/MailAccountUI;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    invoke-virtual {v6, v0, p3}, Lcom/htc/android/mail/AbsRequestController;->checkOutgoingAccount(Lcom/htc/android/mail/Account;Ljava/lang/ref/WeakReference;)Z

    move-result v3

    .line 2037
    goto/16 :goto_1

    .line 2039
    :cond_4
    new-instance v6, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_5
    .catch Ljavax/net/ssl/SSLException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lcom/htc/android/mail/exception/SmtpException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Lcom/htc/android/mail/exception/AuthorizationException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Lcom/htc/android/mail/exception/NoSupportAuthException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Lcom/htc/android/mail/exception/NoTLSSupportException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Lcom/htc/android/mail/exception/InvalidMailAddressException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_b

    .line 2067
    .end local v1           #e:Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 2068
    .local v1, e:Lcom/htc/android/mail/exception/SmtpException;
    iget-boolean v5, p0, Lcom/htc/android/mail/MailAccountUI;->smartLogin:Z

    if-nez v5, :cond_1

    .line 2069
    const/16 v5, 0xcd

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v8, 0x7f0b01c6

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/htc/android/mail/exception/SmtpException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {p0, v5, v6, v7}, Lcom/htc/android/mail/MailAccountUI;->showError(ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_2

    .line 2060
    .local v1, e:Ljava/io/IOException;
    :cond_5
    :try_start_6
    monitor-exit v6

    move v3, v4

    goto/16 :goto_1

    .line 2062
    :catch_5
    move-exception v2

    .line 2063
    .local v2, ie:Ljava/lang/InterruptedException;
    const-string v5, "MailAccountUI"

    const-string v7, "Interrupted"

    invoke-static {v5, v7, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2065
    monitor-exit v6

    goto/16 :goto_2

    .end local v2           #ie:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v4

    .line 2074
    .end local v1           #e:Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 2075
    .local v1, e:Lcom/htc/android/mail/exception/AuthorizationException;
    const-string v6, "MailAccountUI"

    const-string v7, "AuthorizationExcepion"

    invoke-static {v6, v7, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2076
    iget-boolean v6, p0, Lcom/htc/android/mail/MailAccountUI;->smartLogin:Z

    if-eqz v6, :cond_6

    .line 2077
    iput v5, p0, Lcom/htc/android/mail/MailAccountUI;->smart_fail:I

    move v3, v4

    .line 2078
    goto/16 :goto_1

    .line 2080
    :cond_6
    iget-object v5, p0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v6, 0x7f0b01bd

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/htc/android/mail/MailAccountUI$ErrorListener;

    invoke-direct {v6, p0, v10}, Lcom/htc/android/mail/MailAccountUI$ErrorListener;-><init>(Lcom/htc/android/mail/MailAccountUI;I)V

    invoke-direct {p0, v10, v5, v6}, Lcom/htc/android/mail/MailAccountUI;->showError(ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_2

    .line 2083
    .end local v1           #e:Lcom/htc/android/mail/exception/AuthorizationException;
    :catch_7
    move-exception v1

    .line 2084
    .local v1, e:Lcom/htc/android/mail/exception/NoSupportAuthException;
    const-string v5, "MailAccountUI"

    const-string v6, "NoSupportAuthException"

    invoke-static {v5, v6, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2085
    const/16 v5, 0xcc

    iget-object v6, p0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v7, 0x7f0b01c7

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/htc/android/mail/MailAccountUI$ErrorListener;

    const/16 v8, 0xcc

    invoke-direct {v7, p0, v8}, Lcom/htc/android/mail/MailAccountUI$ErrorListener;-><init>(Lcom/htc/android/mail/MailAccountUI;I)V

    invoke-direct {p0, v5, v6, v7}, Lcom/htc/android/mail/MailAccountUI;->showError(ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_2

    .line 2088
    .end local v1           #e:Lcom/htc/android/mail/exception/NoSupportAuthException;
    :catch_8
    move-exception v1

    .line 2089
    .local v1, e:Lcom/htc/android/mail/exception/NoTLSSupportException;
    const-string v5, "MailAccountUI"

    const-string v6, "NoTLSSupportException"

    invoke-static {v5, v6, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2090
    iget-boolean v5, p0, Lcom/htc/android/mail/MailAccountUI;->smartLogin:Z

    if-nez v5, :cond_1

    .line 2091
    iget-object v5, p0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v6, 0x7f0b01c8

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/htc/android/mail/MailAccountUI$ErrorListener;

    invoke-direct {v6, p0, v9}, Lcom/htc/android/mail/MailAccountUI$ErrorListener;-><init>(Lcom/htc/android/mail/MailAccountUI;I)V

    invoke-direct {p0, v9, v5, v6}, Lcom/htc/android/mail/MailAccountUI;->showError(ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_2

    .line 2095
    .end local v1           #e:Lcom/htc/android/mail/exception/NoTLSSupportException;
    :catch_9
    move-exception v1

    .line 2097
    .local v1, e:Lcom/htc/android/mail/exception/InvalidMailAddressException;
    sget-boolean v6, Lcom/htc/android/mail/MailAccountUI;->DEBUG:Z

    if-eqz v6, :cond_7

    const-string v6, "MailAccountUI"

    const-string v7, "InvalidMailAddressException"

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2098
    :cond_7
    const/16 v6, 0xd2

    iget-object v7, p0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v8, 0x7f0b01c9

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/htc/android/mail/MailAccountUI$ErrorListener;

    const/16 v9, 0xd2

    invoke-direct {v8, p0, v9}, Lcom/htc/android/mail/MailAccountUI$ErrorListener;-><init>(Lcom/htc/android/mail/MailAccountUI;I)V

    invoke-direct {p0, v6, v7, v8}, Lcom/htc/android/mail/MailAccountUI;->showError(ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2101
    iget-object v6, p0, Lcom/htc/android/mail/MailAccountUI;->mSuspendLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2103
    :try_start_7
    iget-object v7, p0, Lcom/htc/android/mail/MailAccountUI;->mSuspendLock:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->wait()V

    .line 2104
    iget-boolean v7, p0, Lcom/htc/android/mail/MailAccountUI;->mBeContinue:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_a

    if-eqz v7, :cond_8

    :try_start_8
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move v3, v5

    goto/16 :goto_1

    .line 2105
    :cond_8
    const/4 v5, 0x1

    :try_start_9
    iput-boolean v5, p0, Lcom/htc/android/mail/MailAccountUI;->m_bInvalidMailAddr:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_a

    .line 2106
    :try_start_a
    monitor-exit v6

    move v3, v4

    goto/16 :goto_1

    .line 2108
    :catch_a
    move-exception v2

    .line 2109
    .restart local v2       #ie:Ljava/lang/InterruptedException;
    const-string v5, "MailAccountUI"

    const-string v7, "Interrupted"

    invoke-static {v5, v7, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2111
    monitor-exit v6

    goto/16 :goto_2

    .end local v2           #ie:Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v4

    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v4

    .line 2113
    .end local v1           #e:Lcom/htc/android/mail/exception/InvalidMailAddressException;
    :catch_b
    move-exception v1

    .line 2114
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "MailAccountUI"

    const-string v6, "sendmail fail"

    invoke-static {v5, v6, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_2

    .line 2071
    .end local v1           #e:Ljava/lang/Exception;
    :catch_c
    move-exception v5

    goto/16 :goto_2
.end method

.method private checkeAccountWithServer(Landroid/content/Context;Ljava/lang/ref/WeakReference;)V
    .locals 2
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1513
    .local p2, weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 1515
    new-instance v0, Lcom/htc/android/mail/MailAccountUI$19;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/android/mail/MailAccountUI$19;-><init>(Lcom/htc/android/mail/MailAccountUI;Landroid/content/Context;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v0}, Lcom/htc/android/mail/MailAccountUI$19;->start()V

    .line 1593
    return-void
.end method

.method private gatherAuthValues()Landroid/os/Bundle;
    .locals 7

    .prologue
    .line 1061
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1063
    .local v1, bundle:Landroid/os/Bundle;
    const-string v4, "_id"

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1064
    const-string v4, "_protocol"

    iget-object v5, p0, Lcom/htc/android/mail/MailAccountUI;->mProtocol:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v5}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1065
    const-string v4, "_inserver"

    iget-object v5, p0, Lcom/htc/android/mail/MailAccountUI;->mServer:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    const-string v4, "_outserver"

    iget-object v5, p0, Lcom/htc/android/mail/MailAccountUI;->mOutServer:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    :try_start_0
    const-string v4, "_inport"

    iget-object v5, p0, Lcom/htc/android/mail/MailAccountUI;->mPort:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1072
    const-string v4, "_outport"

    iget-object v5, p0, Lcom/htc/android/mail/MailAccountUI;->mOutPort:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1078
    :goto_0
    iget-object v4, p0, Lcom/htc/android/mail/MailAccountUI;->mEmailAddress:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1079
    .local v0, addr:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/android/mail/MailAccountUI;->getAddrDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1080
    .local v2, domain:Ljava/lang/String;
    const-string v4, "htc.com.tao"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "htc.com.tpe"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1081
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/htc/android/mail/MailAccountUI;->mInUsername:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "htc.com"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1082
    const-string v4, "_emailaddress"

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    :goto_1
    const-string v4, "_provider"

    iget-object v5, p0, Lcom/htc/android/mail/MailAccountUI;->providerStr:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    const-string v4, "_providerid"

    iget-wide v5, p0, Lcom/htc/android/mail/MailAccountUI;->mProviderId:J

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1090
    iget-object v4, p0, Lcom/htc/android/mail/MailAccountUI;->providerStr:Ljava/lang/String;

    const-string v5, "Other"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/htc/android/mail/MailAccountUI;->providerStr:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 1091
    :cond_1
    const-string v4, "_username"

    iget-object v5, p0, Lcom/htc/android/mail/MailAccountUI;->mInUsername:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    const-string v4, "_password"

    iget-object v5, p0, Lcom/htc/android/mail/MailAccountUI;->mInPassword:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    const-string v4, "_outusername"

    iget-object v5, p0, Lcom/htc/android/mail/MailAccountUI;->mOutUsername:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    const-string v4, "_outpassword"

    iget-object v5, p0, Lcom/htc/android/mail/MailAccountUI;->mOutPassword:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    :goto_2
    const-string v4, "_useSSLin"

    iget-object v5, p0, Lcom/htc/android/mail/MailAccountUI;->mSecurityIn:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v5}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1104
    const-string v4, "_useSSLout"

    iget-object v5, p0, Lcom/htc/android/mail/MailAccountUI;->mSecurityOut:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v5}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1109
    const-string v5, "_smtpauth"

    iget-object v4, p0, Lcom/htc/android/mail/MailAccountUI;->mRequireLogin:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    :goto_3
    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1110
    return-object v1

    .line 1073
    .end local v0           #addr:Ljava/lang/String;
    .end local v2           #domain:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1074
    .local v3, e:Ljava/lang/NumberFormatException;
    const-string v4, "_inport"

    iget-object v5, p0, Lcom/htc/android/mail/MailAccountUI;->mPort:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->intValue()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1075
    const-string v4, "_outport"

    iget-object v5, p0, Lcom/htc/android/mail/MailAccountUI;->mOutPort:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->intValue()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1084
    .end local v3           #e:Ljava/lang/NumberFormatException;
    .restart local v0       #addr:Ljava/lang/String;
    .restart local v2       #domain:Ljava/lang/String;
    :cond_2
    const-string v4, "_emailaddress"

    iget-object v5, p0, Lcom/htc/android/mail/MailAccountUI;->mEmailAddress:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v5}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1097
    :cond_3
    const-string v4, "_username"

    iget-object v5, p0, Lcom/htc/android/mail/MailAccountUI;->mInUsername:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    const-string v4, "_password"

    iget-object v5, p0, Lcom/htc/android/mail/MailAccountUI;->mInPassword:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    const-string v4, "_outusername"

    iget-object v5, p0, Lcom/htc/android/mail/MailAccountUI;->mOutUsername:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    const-string v4, "_outpassword"

    iget-object v5, p0, Lcom/htc/android/mail/MailAccountUI;->mOutPassword:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1109
    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_3
.end method

.method public static getAddrDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "t"

    .prologue
    .line 694
    if-nez p0, :cond_0

    .line 695
    const-string v1, ""

    .line 704
    :goto_0
    return-object v1

    .line 697
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    .line 698
    :cond_1
    const-string v1, ""

    goto :goto_0

    .line 700
    :cond_2
    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 701
    .local v0, index:I
    if-ltz v0, :cond_3

    .line 702
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 704
    :cond_3
    const-string v1, ""

    goto :goto_0
.end method

.method public static getAddrUsername(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "t"

    .prologue
    .line 709
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 710
    :cond_0
    const-string v1, ""

    .line 716
    :goto_0
    return-object v1

    .line 712
    :cond_1
    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 713
    .local v0, index:I
    if-ltz v0, :cond_2

    .line 714
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 716
    :cond_2
    const-string v1, ""

    goto :goto_0
.end method

.method private handleAppendDomain(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "view"
    .parameter "orgValue"

    .prologue
    const/16 v3, 0x40

    .line 2369
    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI;->mOri_domain:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI;->mOri_domain:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move-object v0, p2

    .line 2381
    :cond_1
    :goto_0
    return-object v0

    .line 2372
    :cond_2
    move-object v0, p2

    .line 2374
    .local v0, value:Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 2375
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI;->mOri_domain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2376
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2377
    :cond_3
    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    .line 2378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI;->mOri_domain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2379
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private initialDefaultOutPorts()V
    .locals 4

    .prologue
    const/16 v3, 0x19

    .line 289
    sget-object v0, Lcom/htc/android/mail/MailAccountUI;->sDefaultOutPorts:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 290
    sget-object v0, Lcom/htc/android/mail/MailAccountUI;->sDefaultOutPorts:[Ljava/lang/String;

    const/4 v1, 0x1

    const/16 v2, 0x1d1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 291
    sget-object v0, Lcom/htc/android/mail/MailAccountUI;->sDefaultOutPorts:[Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 292
    return-void
.end method

.method public static setTypeface(Landroid/widget/EditText;Landroid/graphics/Typeface;)V
    .locals 2
    .parameter "et"
    .parameter "ty"

    .prologue
    .line 2359
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v1, 0x19

    if-ne v0, v1, :cond_0

    .line 2360
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2362
    :cond_0
    return-void
.end method

.method private showError(ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .parameter "type"
    .parameter "message"
    .parameter "listener"

    .prologue
    .line 2123
    iput p1, p0, Lcom/htc/android/mail/MailAccountUI;->curType:I

    .line 2124
    iput-object p3, p0, Lcom/htc/android/mail/MailAccountUI;->curListener:Landroid/content/DialogInterface$OnClickListener;

    .line 2125
    iput-object p2, p0, Lcom/htc/android/mail/MailAccountUI;->curMessage:Ljava/lang/String;

    .line 2126
    invoke-direct {p0}, Lcom/htc/android/mail/MailAccountUI;->DismissAuthDialog()V

    .line 2127
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/htc/android/mail/MailAccountUI$20;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/MailAccountUI$20;-><init>(Lcom/htc/android/mail/MailAccountUI;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2152
    return-void
.end method


# virtual methods
.method public CancelCheckAccount()V
    .locals 1

    .prologue
    .line 1991
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    if-eqz v0, :cond_0

    .line 1992
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    invoke-virtual {v0}, Lcom/htc/android/mail/AbsRequestController;->stopCheckAccount()V

    .line 1994
    :cond_0
    return-void
.end method

.method public CreateAccountUI(Landroid/app/Activity;)Z
    .locals 18
    .parameter "act"

    .prologue
    .line 296
    if-nez p1, :cond_0

    .line 297
    const/4 v2, 0x0

    .line 484
    :goto_0
    return v2

    .line 299
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mContext:Landroid/content/Context;

    .line 300
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mRes:Landroid/content/res/Resources;

    .line 301
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    .line 303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v3, 0x7f09006e

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/widget/TextMailHeaderBar1;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mMailHeader:Lcom/htc/android/mail/widget/TextMailHeaderBar1;

    .line 305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v3, 0x7f090096

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mServerLabel:Landroid/widget/TextView;

    .line 307
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v3, 0x7f090097

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mServer:Landroid/widget/EditText;

    .line 308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mServer:Landroid/widget/EditText;

    const/16 v3, 0x21

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v3, 0x7f090080

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mName:Landroid/widget/EditText;

    .line 311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mName:Landroid/widget/EditText;

    const/16 v3, 0x2911

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v3, 0x7f090083

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mScreen1:Landroid/widget/LinearLayout;

    .line 314
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v3, 0x7f090089

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mScreen2:Landroid/widget/LinearLayout;

    .line 315
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v3, 0x7f09009e

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mScreen3:Landroid/widget/LinearLayout;

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v3, 0x7f09007b

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mScreen4:Landroid/widget/LinearLayout;

    .line 318
    new-instance v14, Lcom/htc/android/mail/MailAccountUI$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/htc/android/mail/MailAccountUI$4;-><init>(Lcom/htc/android/mail/MailAccountUI;)V

    .line 332
    .local v14, watcherScreen1:Landroid/text/TextWatcher;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_account"

    aput-object v3, v6, v2

    .line 333
    .local v6, projection:[Ljava/lang/String;
    new-instance v2, Lcom/htc/android/mail/MailAccountUI$QueryHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/htc/android/mail/MailAccountUI$QueryHandler;-><init>(Lcom/htc/android/mail/MailAccountUI;Landroid/content/ContentResolver;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mQueryHandler:Lcom/htc/android/mail/MailAccountUI$QueryHandler;

    .line 334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mQueryHandler:Lcom/htc/android/mail/MailAccountUI$QueryHandler;

    const/16 v3, 0x12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/MailAccountUI;->cookie:Ljava/lang/Object;

    sget-object v5, Lcom/htc/android/mail/MailAccountUI;->AccountProviderUri:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/htc/android/mail/MailAccountUI$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v3, 0x7f090084

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/AutoCompleteTextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mEmailAddress:Landroid/widget/AutoCompleteTextView;

    .line 337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mEmailAddress:Landroid/widget/AutoCompleteTextView;

    const v3, 0x10021

    invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    .line 339
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/android/mail/MailAccountUI;->mInEditMode:Z

    if-nez v2, :cond_1

    .line 340
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mEmailAddress:Landroid/widget/AutoCompleteTextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailAccountUI;->appendDomainEvent:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 342
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v3, 0x7f09008e

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/AutoCompleteTextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mInEmailAddress:Landroid/widget/AutoCompleteTextView;

    .line 343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mInEmailAddress:Landroid/widget/AutoCompleteTextView;

    const/16 v3, 0x21

    invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    .line 344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mInEmailAddress:Landroid/widget/AutoCompleteTextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailAccountUI;->addressEvent:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 346
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v3, 0x7f090087

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mShowPassword:Landroid/widget/CheckBox;

    .line 347
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mShowPassword:Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailAccountUI;->mOnShowPwdClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/android/mail/MailAccountUI;->mInEditMode:Z

    if-eqz v2, :cond_2

    .line 350
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mShowPassword:Landroid/widget/CheckBox;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v3, 0x7f090088

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 354
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v3, 0x7f09007d

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mDesc:Landroid/widget/EditText;

    .line 355
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mDesc:Landroid/widget/EditText;

    const/16 v3, 0x4911

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 357
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v3, 0x7f090091

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mInUsername:Landroid/widget/EditText;

    .line 358
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mInUsername:Landroid/widget/EditText;

    const/16 v3, 0x21

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 359
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mInUsername:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailAccountUI;->usernameEvent:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 361
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0900a1

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mOutUsernameLabel:Landroid/widget/TextView;

    .line 363
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0900a2

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mOutUsername:Landroid/widget/EditText;

    .line 364
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mOutUsername:Landroid/widget/EditText;

    const/16 v3, 0x21

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v3, 0x7f090094

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mInPassword:Landroid/widget/EditText;

    .line 367
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mInPassword:Landroid/widget/EditText;

    const/16 v3, 0x81

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0900a4

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mOutPasswordLabel:Landroid/widget/TextView;

    .line 371
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0900a5

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mOutPassword:Landroid/widget/EditText;

    .line 372
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mOutPassword:Landroid/widget/EditText;

    const/16 v3, 0x81

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 374
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0900a8

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mOutServer:Landroid/widget/EditText;

    .line 375
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mOutServer:Landroid/widget/EditText;

    const/16 v3, 0x21

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 378
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v3, 0x7f09008b

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcSpinner;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mProtocol:Lcom/htc/widget/HtcSpinner;

    .line 379
    new-instance v10, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v3, 0x7f030047

    sget-object v4, Lcom/htc/android/mail/MailAccountUI;->sProtocols:[Ljava/lang/String;

    invoke-direct {v10, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 382
    .local v10, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v2, 0x20900af

    invoke-virtual {v10, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 383
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mProtocol:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v2, v10}, Lcom/htc/widget/HtcSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 384
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mProtocol:Lcom/htc/widget/HtcSpinner;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailAccountUI;->protocolSelectListener:Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcSpinner;->setOnItemSelectedListener(Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;)V

    .line 386
    sget-object v2, Lcom/htc/android/mail/MailAccountUI;->sSecurityTypes:[Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v5, 0x7f0b0039

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 388
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v3, 0x7f09009a

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcSpinner;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mSecurityIn:Lcom/htc/widget/HtcSpinner;

    .line 389
    new-instance v11, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v3, 0x7f030047

    sget-object v4, Lcom/htc/android/mail/MailAccountUI;->sSecurityTypes:[Ljava/lang/String;

    invoke-direct {v11, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 392
    .local v11, adapter2:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v2, 0x20900af

    invoke-virtual {v11, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 393
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mSecurityIn:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v2, v11}, Lcom/htc/widget/HtcSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 394
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mSecurityIn:Lcom/htc/widget/HtcSpinner;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailAccountUI;->securityin:Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcSpinner;->setOnItemSelectedListener(Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;)V

    .line 397
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v3, 0x7f09009d

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mPort:Landroid/widget/EditText;

    .line 398
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mPort:Landroid/widget/EditText;

    const/16 v3, 0x2002

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 401
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v3, 0x7f09009f

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mRequireLogin:Landroid/widget/CheckBox;

    .line 402
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mRequireLogin:Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailAccountUI;->mOnRequireLoginClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0900ab

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcSpinner;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mSecurityOut:Lcom/htc/widget/HtcSpinner;

    .line 406
    new-instance v12, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v3, 0x7f030047

    sget-object v4, Lcom/htc/android/mail/MailAccountUI;->sSecurityTypes:[Ljava/lang/String;

    invoke-direct {v12, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 409
    .local v12, adapter3:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v2, 0x20900af

    invoke-virtual {v12, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 410
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mSecurityOut:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v2, v12}, Lcom/htc/widget/HtcSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 411
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mSecurityOut:Lcom/htc/widget/HtcSpinner;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailAccountUI;->securityout:Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcSpinner;->setOnItemSelectedListener(Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;)V

    .line 414
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0900ae

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mOutPort:Landroid/widget/EditText;

    .line 415
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mOutPort:Landroid/widget/EditText;

    const/16 v3, 0x2002

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 417
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v3, 0x7f090085

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mPassword:Landroid/widget/EditText;

    .line 418
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v3, 0x7f090086

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mScreen1Line1:Landroid/view/View;

    .line 420
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0900a3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mScreen3Line2:Landroid/view/View;

    .line 421
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0900a6

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mScreen3Line3:Landroid/view/View;

    .line 424
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v3, 0x7f09006f

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/htc/android/mail/widget/MailFooterBar2Btn;

    .line 425
    .local v13, footerBar:Lcom/htc/android/mail/widget/MailFooterBar2Btn;
    invoke-virtual {v13}, Lcom/htc/android/mail/widget/MailFooterBar2Btn;->getLeftButton()Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->btnL:Lcom/htc/android/mail/widget/MailFooterBarButton;

    .line 426
    invoke-virtual {v13}, Lcom/htc/android/mail/widget/MailFooterBar2Btn;->getRightButton()Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->btnR:Lcom/htc/android/mail/widget/MailFooterBarButton;

    .line 428
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/android/mail/MailAccountUI;->mInEditMode:Z

    if-nez v2, :cond_4

    .line 429
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2, v14}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 437
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mShowPassword:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 438
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mPassword:Landroid/widget/EditText;

    const/16 v3, 0x91

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 441
    :cond_3
    new-instance v17, Lcom/htc/android/mail/MailAccountUI$5;

    invoke-direct/range {v17 .. v18}, Lcom/htc/android/mail/MailAccountUI$5;-><init>(Lcom/htc/android/mail/MailAccountUI;)V

    .line 449
    .local v17, watcherScreen4:Landroid/text/TextWatcher;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mName:Landroid/widget/EditText;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 450
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mDesc:Landroid/widget/EditText;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 453
    new-instance v15, Lcom/htc/android/mail/MailAccountUI$6;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/htc/android/mail/MailAccountUI$6;-><init>(Lcom/htc/android/mail/MailAccountUI;)V

    .line 460
    .local v15, watcherScreen2:Landroid/text/TextWatcher;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mServer:Landroid/widget/EditText;

    invoke-virtual {v2, v15}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 461
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mInPassword:Landroid/widget/EditText;

    invoke-virtual {v2, v15}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 462
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mInUsername:Landroid/widget/EditText;

    invoke-virtual {v2, v15}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 463
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mPort:Landroid/widget/EditText;

    invoke-virtual {v2, v15}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 465
    new-instance v16, Lcom/htc/android/mail/MailAccountUI$7;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/android/mail/MailAccountUI$7;-><init>(Lcom/htc/android/mail/MailAccountUI;)V

    .line 472
    .local v16, watcherScreen3:Landroid/text/TextWatcher;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mOutServer:Landroid/widget/EditText;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 473
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mOutPassword:Landroid/widget/EditText;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 474
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mOutUsername:Landroid/widget/EditText;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 475
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mOutPort:Landroid/widget/EditText;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 477
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v3, 0x7f090081

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mDefaultChkbox:Landroid/widget/CheckBox;

    .line 478
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailAccountUI;->checkIfAccount()Z

    move-result v2

    if-nez v2, :cond_5

    .line 479
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/MailAccountUI;->setDefultChkBoxEnable(Z)V

    .line 484
    :goto_2
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 432
    .end local v15           #watcherScreen2:Landroid/text/TextWatcher;
    .end local v16           #watcherScreen3:Landroid/text/TextWatcher;
    .end local v17           #watcherScreen4:Landroid/text/TextWatcher;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mPassword:Landroid/widget/EditText;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 433
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mScreen1Line1:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 434
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->btnR:Lcom/htc/android/mail/widget/MailFooterBarButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/widget/MailFooterBarButton;->enableButton(Z)V

    goto/16 :goto_1

    .line 481
    .restart local v15       #watcherScreen2:Landroid/text/TextWatcher;
    .restart local v16       #watcherScreen3:Landroid/text/TextWatcher;
    .restart local v17       #watcherScreen4:Landroid/text/TextWatcher;
    :cond_5
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/MailAccountUI;->setDefultChkBoxEnable(Z)V

    goto :goto_2
.end method

.method public cancelRequest(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 941
    invoke-static {p1}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v0

    .line 942
    .local v0, accountPool:Lcom/htc/android/mail/AccountPool;
    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/mail/AccountPool;->removeAccount(Landroid/content/Context;J)V

    .line 943
    return-void
.end method

.method public checkAccountWithPop3(Landroid/content/Context;Ljava/lang/ref/WeakReference;)V
    .locals 2
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1402
    .local p2, weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 1403
    new-instance v0, Lcom/htc/android/mail/MailAccountUI$17;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/android/mail/MailAccountUI$17;-><init>(Lcom/htc/android/mail/MailAccountUI;Landroid/content/Context;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v0}, Lcom/htc/android/mail/MailAccountUI$17;->start()V

    .line 1448
    return-void
.end method

.method public checkAccountWithSmtp(Landroid/content/Context;Ljava/lang/ref/WeakReference;)V
    .locals 2
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1450
    .local p2, weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 1452
    new-instance v0, Lcom/htc/android/mail/MailAccountUI$18;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/android/mail/MailAccountUI$18;-><init>(Lcom/htc/android/mail/MailAccountUI;Landroid/content/Context;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v0}, Lcom/htc/android/mail/MailAccountUI$18;->start()V

    .line 1510
    return-void
.end method

.method checkIfAccount()Z
    .locals 2

    .prologue
    .line 1623
    const/4 v0, 0x0

    .line 1624
    .local v0, count:I
    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/android/mail/Util;->getAccountCountPref(Landroid/content/Context;)I

    move-result v0

    .line 1625
    if-lez v0, :cond_0

    .line 1626
    const/4 v1, 0x1

    .line 1628
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public checkPortNumber(Ljava/lang/String;)Z
    .locals 4
    .parameter "portString"

    .prologue
    .line 2426
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2427
    .local v1, port:I
    const/4 v2, 0x1

    .line 2431
    .end local v1           #port:I
    :goto_0
    return v2

    .line 2428
    :catch_0
    move-exception v0

    .line 2429
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2430
    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Landroid/app/Activity;->showDialog(I)V

    .line 2431
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public checkSameAccountName()Z
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 1143
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mDesc:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1145
    .local v8, target:Ljava/lang/String;
    const-string v3, "_desc like ?"

    .line 1146
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    new-array v4, v10, [Ljava/lang/String;

    aput-object v8, v4, v9

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1147
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_0

    move v0, v9

    .line 1166
    :goto_0
    return v0

    .line 1149
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 1150
    .local v7, count:I
    if-lez v7, :cond_2

    .line 1152
    iget-boolean v0, p0, Lcom/htc/android/mail/MailAccountUI;->mInEditMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mOriDesc:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mOriDesc:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1153
    if-le v7, v10, :cond_2

    .line 1154
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 1155
    goto :goto_0

    .line 1159
    :cond_1
    if-lez v7, :cond_2

    .line 1160
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 1161
    goto :goto_0

    .line 1165
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 1166
    goto :goto_0
.end method

.method public checkSameEmailAddress()Z
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 1115
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mEmailAddress:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1117
    .local v8, target:Ljava/lang/String;
    const-string v3, "_emailaddress like ? and _provider != \'Exchange\'"

    .line 1118
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    new-array v4, v10, [Ljava/lang/String;

    aput-object v8, v4, v9

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1119
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_0

    move v0, v9

    .line 1138
    :goto_0
    return v0

    .line 1121
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 1122
    .local v7, count:I
    if-lez v7, :cond_2

    .line 1124
    iget-boolean v0, p0, Lcom/htc/android/mail/MailAccountUI;->mInEditMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mOriEmailAddr:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mOriEmailAddr:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1125
    if-le v7, v10, :cond_2

    .line 1126
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 1127
    goto :goto_0

    .line 1131
    :cond_1
    if-lez v7, :cond_2

    .line 1132
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 1133
    goto :goto_0

    .line 1137
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 1138
    goto :goto_0
.end method

.method public checkScreen1()Z
    .locals 12

    .prologue
    const/16 v11, 0x40

    const/4 v8, 0x1

    const/16 v10, 0x11

    const/4 v7, 0x0

    .line 500
    iget-object v9, p0, Lcom/htc/android/mail/MailAccountUI;->mEmailAddress:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v9}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 501
    .local v0, addr:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/android/mail/MailAccountUI;->mEmailAddress:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0, v9, v0}, Lcom/htc/android/mail/MailAccountUI;->handleAppendDomain(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 503
    const-string v9, "(.+)@(.+)"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 505
    .local v5, p:Ljava/util/regex/Pattern;
    invoke-virtual {v0, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 506
    .local v1, atPos:I
    if-eqz v0, :cond_0

    if-ltz v1, :cond_0

    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-eq v1, v9, :cond_1

    .line 511
    :cond_0
    iget-object v8, p0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8, v10}, Landroid/app/Activity;->showDialog(I)V

    .line 572
    :goto_0
    return v7

    .line 515
    :cond_1
    iget-boolean v9, p0, Lcom/htc/android/mail/MailAccountUI;->mInEditMode:Z

    if-eqz v9, :cond_4

    .line 517
    invoke-virtual {v5, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 518
    .local v4, m:Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_2
    :goto_1
    move v7, v8

    .line 572
    goto :goto_0

    .line 526
    :cond_3
    iget-object v8, p0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8, v10}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 531
    .end local v4           #m:Ljava/util/regex/Matcher;
    :cond_4
    iget-object v9, p0, Lcom/htc/android/mail/MailAccountUI;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 534
    .local v6, pwd:Ljava/lang/String;
    if-eqz v0, :cond_5

    if-nez v6, :cond_6

    .line 539
    :cond_5
    iget-object v8, p0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8, v10}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 544
    :cond_6
    invoke-virtual {v5, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 545
    .restart local v4       #m:Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v9, v8, :cond_8

    .line 559
    iget v7, p0, Lcom/htc/android/mail/MailAccountUI;->curNewAccountStep:I

    if-ne v7, v8, :cond_2

    .line 561
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 562
    invoke-static {v0}, Lcom/htc/android/mail/MailAccountUI;->getAddrDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 563
    .local v2, domain:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/android/mail/MailAccountUI;->mServer:Landroid/widget/EditText;

    invoke-virtual {v7, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 564
    invoke-static {v0}, Lcom/htc/android/mail/MailAccountUI;->getAddrUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 565
    .local v3, emailName:Ljava/lang/String;
    if-eqz v3, :cond_7

    .line 566
    iget-object v7, p0, Lcom/htc/android/mail/MailAccountUI;->mName:Landroid/widget/EditText;

    invoke-virtual {v7, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 568
    :cond_7
    iget-object v7, p0, Lcom/htc/android/mail/MailAccountUI;->mInPassword:Landroid/widget/EditText;

    invoke-virtual {v7, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 555
    .end local v2           #domain:Ljava/lang/String;
    .end local v3           #emailName:Ljava/lang/String;
    :cond_8
    iget-object v8, p0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8, v10}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0
.end method

.method public checkScreen2()V
    .locals 2

    .prologue
    .line 576
    iget v0, p0, Lcom/htc/android/mail/MailAccountUI;->curNewAccountStep:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 600
    :goto_0
    return-void

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/htc/android/mail/MailAccountUI$8;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/MailAccountUI$8;-><init>(Lcom/htc/android/mail/MailAccountUI;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public checkScreen3()V
    .locals 2

    .prologue
    .line 603
    iget v0, p0, Lcom/htc/android/mail/MailAccountUI;->curNewAccountStep:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 628
    :goto_0
    return-void

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/htc/android/mail/MailAccountUI$9;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/MailAccountUI$9;-><init>(Lcom/htc/android/mail/MailAccountUI;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public checkScreen4()V
    .locals 2

    .prologue
    .line 630
    iget v0, p0, Lcom/htc/android/mail/MailAccountUI;->curNewAccountStep:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 656
    :goto_0
    return-void

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/htc/android/mail/MailAccountUI$10;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/MailAccountUI$10;-><init>(Lcom/htc/android/mail/MailAccountUI;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public gatherSmartValues()Landroid/content/ContentValues;
    .locals 27

    .prologue
    .line 1307
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 1308
    .local v19, bundle:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mEmailAddress:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    .line 1309
    .local v18, addr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    .line 1310
    .local v25, pwd:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/htc/android/mail/MailAccountUI;->getAddrDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    .line 1311
    .local v22, domain:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/htc/android/mail/MailAccountUI;->getAddrUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1312
    .local v26, username:Ljava/lang/String;
    const-string v5, "_domain like ?"

    .line 1314
    .local v5, where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/android/mail/MailProvider;->sProviderSettingsURI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v22, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 1315
    .local v20, c:Landroid/database/Cursor;
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v21

    .line 1316
    .local v21, count:I
    const/16 v23, 0x0

    .line 1317
    .local v23, flags:I
    if-lez v21, :cond_8

    .line 1318
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    .line 1319
    const-string v2, "_id"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 1320
    .local v24, mProviderId:I
    const-string v2, "_provider"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1321
    .local v13, _provider:Ljava/lang/String;
    const-string v2, "_providerGroup"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1322
    .local v14, _providerGroup:Ljava/lang/String;
    const-string v2, "_inserver"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1323
    .local v10, _inserver:Ljava/lang/String;
    const-string v2, "_inport"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1324
    .local v8, _inport:I
    const-string v2, "_outserver"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1325
    .local v12, _outserver:Ljava/lang/String;
    const-string v2, "_outport"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1326
    .local v11, _outport:I
    const-string v2, "_inprotocol"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1327
    .local v9, _inprotocol:I
    const-string v2, "_useSSLin"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 1328
    .local v16, _useSSLin:I
    const-string v2, "_useSSLout"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 1329
    .local v17, _useSSLout:I
    const-string v2, "_smtpauth"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 1330
    .local v15, _smtpauth:I
    const-string v2, "htc.com.tao"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "htc.com.tpe"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1331
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "htc.com"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1333
    :cond_1
    sget-boolean v2, Lcom/htc/android/mail/MailAccountUI;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "MailAccountUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mDefaultChkbox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1337
    const-string v2, "_defaultaccount"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1345
    :cond_3
    :goto_0
    const-string v2, "_name"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailAccountUI;->mName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1346
    const-string v2, "_protocol"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1347
    const-string v2, "_inserver"

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1348
    const-string v2, "_inport"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1349
    const-string v2, "_outserver"

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    const-string v2, "_outport"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailAccountUI;->curAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->getOutPort()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1351
    const-string v2, "_emailaddress"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    const-string v2, "_provider"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    const-string v2, "_providerGroup"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1354
    const-string v2, "_providerid"

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1355
    const-string v2, "AOL"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "Mac"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "Hotmail"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1356
    :cond_4
    const-string v2, "_username"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    :goto_1
    const-string v2, "_password"

    invoke-static/range {v25 .. v25}, Lcom/htc/android/mail/Account;->encodePwd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1360
    const-string v2, "Hotmail"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1361
    const-string v2, "_outusername"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    :goto_2
    const-string v2, "_outpassword"

    invoke-static/range {v25 .. v25}, Lcom/htc/android/mail/Account;->encodePwd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    const-string v2, "_useSSLin"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1366
    const-string v2, "_useSSLout"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1367
    const-string v2, "_flags"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1368
    const-string v2, "_desc"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailAccountUI;->mDesc:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    const-string v2, "_smtpauth"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1371
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, v19

    invoke-static {v0, v2}, Lcom/htc/android/mail/MailCommon;->loadMailCommonSettings(Landroid/content/ContentValues;Landroid/content/Context;)Landroid/content/ContentValues;

    .line 1372
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1376
    .end local v8           #_inport:I
    .end local v9           #_inprotocol:I
    .end local v10           #_inserver:Ljava/lang/String;
    .end local v11           #_outport:I
    .end local v12           #_outserver:Ljava/lang/String;
    .end local v13           #_provider:Ljava/lang/String;
    .end local v14           #_providerGroup:Ljava/lang/String;
    .end local v15           #_smtpauth:I
    .end local v16           #_useSSLin:I
    .end local v17           #_useSSLout:I
    .end local v19           #bundle:Landroid/content/ContentValues;
    .end local v24           #mProviderId:I
    :goto_3
    return-object v19

    .line 1339
    .restart local v8       #_inport:I
    .restart local v9       #_inprotocol:I
    .restart local v10       #_inserver:Ljava/lang/String;
    .restart local v11       #_outport:I
    .restart local v12       #_outserver:Ljava/lang/String;
    .restart local v13       #_provider:Ljava/lang/String;
    .restart local v14       #_providerGroup:Ljava/lang/String;
    .restart local v15       #_smtpauth:I
    .restart local v16       #_useSSLin:I
    .restart local v17       #_useSSLout:I
    .restart local v19       #bundle:Landroid/content/ContentValues;
    .restart local v24       #mProviderId:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mDefaultChkbox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1340
    const-string v2, "_defaultaccount"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 1358
    :cond_6
    const-string v2, "_username"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailAccountUI;->curAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->getUserName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1363
    :cond_7
    const-string v2, "_outusername"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailAccountUI;->curAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->getOutuserName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1375
    .end local v8           #_inport:I
    .end local v9           #_inprotocol:I
    .end local v10           #_inserver:Ljava/lang/String;
    .end local v11           #_outport:I
    .end local v12           #_outserver:Ljava/lang/String;
    .end local v13           #_provider:Ljava/lang/String;
    .end local v14           #_providerGroup:Ljava/lang/String;
    .end local v15           #_smtpauth:I
    .end local v16           #_useSSLin:I
    .end local v17           #_useSSLout:I
    .end local v24           #mProviderId:I
    :cond_8
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1376
    const/16 v19, 0x0

    goto :goto_3
.end method

.method public gatherValues(Z)Landroid/content/ContentValues;
    .locals 6
    .parameter "loadCommonSettings"

    .prologue
    const/4 v2, 0x1

    .line 1170
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1172
    .local v1, values:Landroid/content/ContentValues;
    const/4 v0, 0x0

    .line 1174
    .local v0, flags:I
    iget-object v3, p0, Lcom/htc/android/mail/MailAccountUI;->mDefaultChkbox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1175
    const-string v3, "_defaultaccount"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1180
    :cond_0
    :goto_0
    const-string v3, "_protocol"

    iget-object v4, p0, Lcom/htc/android/mail/MailAccountUI;->mProtocol:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v4}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1181
    sget-boolean v3, Lcom/htc/android/mail/MailAccountUI;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "MailAccountUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "protocol is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/MailAccountUI;->mProtocol:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v5}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    :cond_1
    const-string v3, "_inserver"

    iget-object v4, p0, Lcom/htc/android/mail/MailAccountUI;->mServer:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    sget-boolean v3, Lcom/htc/android/mail/MailAccountUI;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "MailAccountUI"

    iget-object v4, p0, Lcom/htc/android/mail/MailAccountUI;->mServer:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    :cond_2
    const-string v3, "_inport"

    iget-object v4, p0, Lcom/htc/android/mail/MailAccountUI;->mPort:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1185
    const-string v3, "_outserver"

    iget-object v4, p0, Lcom/htc/android/mail/MailAccountUI;->mOutServer:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    const-string v3, "_outport"

    iget-object v4, p0, Lcom/htc/android/mail/MailAccountUI;->mOutPort:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1187
    const-string v3, "_name"

    iget-object v4, p0, Lcom/htc/android/mail/MailAccountUI;->mName:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    const-string v3, "_emailaddress"

    iget-object v4, p0, Lcom/htc/android/mail/MailAccountUI;->mEmailAddress:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    const-string v3, "_desc"

    iget-object v4, p0, Lcom/htc/android/mail/MailAccountUI;->mDesc:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    const-string v3, "_provider"

    iget-object v4, p0, Lcom/htc/android/mail/MailAccountUI;->providerStr:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    const-string v3, "_providerid"

    iget-wide v4, p0, Lcom/htc/android/mail/MailAccountUI;->mProviderId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1193
    const-string v3, "_flags"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1194
    const-string v3, "_useSSLin"

    iget-object v4, p0, Lcom/htc/android/mail/MailAccountUI;->mSecurityIn:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v4}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1195
    const-string v3, "_useSSLout"

    iget-object v4, p0, Lcom/htc/android/mail/MailAccountUI;->mSecurityOut:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v4}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1196
    const-string v3, "_smtpauth"

    iget-object v4, p0, Lcom/htc/android/mail/MailAccountUI;->mRequireLogin:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_6

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1197
    const-string v2, "_providerGroup"

    iget-object v3, p0, Lcom/htc/android/mail/MailAccountUI;->providerGroupStr:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI;->providerStr:Ljava/lang/String;

    const-string v3, "Other"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI;->providerStr:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 1200
    :cond_3
    const-string v2, "_username"

    iget-object v3, p0, Lcom/htc/android/mail/MailAccountUI;->mInUsername:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    const-string v2, "_password"

    iget-object v3, p0, Lcom/htc/android/mail/MailAccountUI;->mInPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/mail/Account;->encodePwd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    const-string v2, "_outusername"

    iget-object v3, p0, Lcom/htc/android/mail/MailAccountUI;->mOutUsername:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    const-string v2, "_outpassword"

    iget-object v3, p0, Lcom/htc/android/mail/MailAccountUI;->mOutPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/mail/Account;->encodePwd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    :goto_2
    if-eqz p1, :cond_4

    .line 1212
    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v2}, Lcom/htc/android/mail/MailCommon;->loadMailCommonSettings(Landroid/content/ContentValues;Landroid/content/Context;)Landroid/content/ContentValues;

    .line 1214
    :cond_4
    return-object v1

    .line 1177
    :cond_5
    iget-object v3, p0, Lcom/htc/android/mail/MailAccountUI;->mDefaultChkbox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1178
    const-string v3, "_defaultaccount"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 1196
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1205
    :cond_7
    const-string v2, "_username"

    iget-object v3, p0, Lcom/htc/android/mail/MailAccountUI;->mInUsername:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    const-string v2, "_password"

    iget-object v3, p0, Lcom/htc/android/mail/MailAccountUI;->mInPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/mail/Account;->encodePwd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    const-string v2, "_outusername"

    iget-object v3, p0, Lcom/htc/android/mail/MailAccountUI;->mOutUsername:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    const-string v2, "_outpassword"

    iget-object v3, p0, Lcom/htc/android/mail/MailAccountUI;->mOutPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/mail/Account;->encodePwd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public getSipHeight()I
    .locals 1

    .prologue
    .line 2365
    iget v0, p0, Lcom/htc/android/mail/MailAccountUI;->mOldSipHeight:I

    return v0
.end method

.method public ifVerifyScreen2()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, -0x1

    .line 659
    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI;->screen2name:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI;->screen2pwd:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI;->screen2pop:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI;->screen2port:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/android/mail/MailAccountUI;->screen2protocol:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/htc/android/mail/MailAccountUI;->screen2sslin:I

    if-ne v1, v2, :cond_1

    .line 671
    :cond_0
    :goto_0
    return v0

    .line 661
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI;->screen2name:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI;->mInUsername:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI;->screen2pwd:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI;->mInPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI;->screen2pop:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI;->mServer:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI;->screen2port:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI;->mPort:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/android/mail/MailAccountUI;->screen2protocol:I

    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI;->mProtocol:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v2}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/htc/android/mail/MailAccountUI;->screen2sslin:I

    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI;->mSecurityIn:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v2}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/htc/android/mail/MailAccountUI;->VerifyAccount:I

    and-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_0

    .line 669
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ifVerifyScreen3()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 675
    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI;->screen3name:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI;->screen3pwd:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI;->screen3srv:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI;->screen3port:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/android/mail/MailAccountUI;->screen3sslout:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 686
    :cond_0
    :goto_0
    return v0

    .line 677
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI;->screen3name:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI;->mOutUsername:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI;->screen3pwd:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI;->mOutPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI;->screen3srv:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI;->mOutServer:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI;->screen3port:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI;->mOutPort:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/android/mail/MailAccountUI;->screen3sslout:I

    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI;->mSecurityOut:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v2}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/htc/android/mail/MailAccountUI;->VerifyAccount:I

    and-int/lit8 v1, v1, 0x2

    if-lez v1, :cond_0

    .line 684
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insertMailboxs(J)Z
    .locals 19
    .parameter "accountId"

    .prologue
    .line 1633
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v3

    .line 1634
    .local v3, cp:Landroid/content/IContentProvider;
    sget-boolean v14, Lcom/htc/android/mail/MailAccountUI;->DEBUG:Z

    if-eqz v14, :cond_0

    const-string v14, "MailAccountUI"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "insertMailboxs>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/MailAccountUI;->mProtocolValue:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1635
    :cond_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1636
    .local v11, uriPool:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v9, 0x1

    .line 1639
    .local v9, status:Z
    :try_start_0
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 1641
    .local v12, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/android/mail/MailAccountUI;->mProtocolValue:I

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/android/mail/MailAccountUI;->mProtocolValue:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_a

    .line 1642
    :cond_1
    sget-boolean v14, Lcom/htc/android/mail/MailAccountUI;->DEBUG:Z

    if-eqz v14, :cond_2

    const-string v14, "MailAccountUI"

    const-string v15, "insert box=>POP3"

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1643
    :cond_2
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 1644
    const-string v14, "_undecodename"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v16, 0x7f0b01ce

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1645
    const-string v14, "_decodename"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v16, 0x7f0b01ce

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1646
    const-string v14, "_shortname"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v16, 0x7f0b01ce

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1647
    const-string v14, "_serverfolder"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1648
    const-string v14, "_defaultfolder"

    const v15, 0x7fffffff

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1649
    const-string v14, "_account"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1650
    const-string v14, "_movegroup"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1651
    const-string v14, "_showsender"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1652
    const-string v14, "_default_sync"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1653
    sget-object v14, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    invoke-interface {v3, v14, v12}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 1655
    .local v10, uri:Landroid/net/Uri;
    if-eqz v10, :cond_5

    .line 1656
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1657
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 1658
    const-string v14, "_defaultfolderId"

    invoke-static {v10}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1659
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v15, "_id = \'%d\'"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 1660
    .local v13, where:Ljava/lang/String;
    sget-object v14, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    const/4 v15, 0x0

    invoke-interface {v3, v14, v12, v13, v15}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1665
    .end local v13           #where:Ljava/lang/String;
    :goto_0
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 1666
    const-string v14, "_undecodename"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v16, 0x7f0b01d2

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1667
    const-string v14, "_decodename"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v16, 0x7f0b01d2

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1668
    const-string v14, "_shortname"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v16, 0x7f0b01d2

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1669
    const-string v14, "_serverfolder"

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1670
    const-string v14, "_defaultfolder"

    const v15, 0x7ffffffe

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1671
    const-string v14, "_account"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1672
    const-string v14, "_movegroup"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1673
    const-string v14, "_showsender"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1674
    sget-object v14, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    invoke-interface {v3, v14, v12}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 1676
    if-eqz v10, :cond_6

    .line 1677
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1678
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 1679
    const-string v14, "_trashfolderId"

    invoke-static {v10}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1680
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v15, "_id = \'%d\'"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 1681
    .restart local v13       #where:Ljava/lang/String;
    sget-object v14, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    const/4 v15, 0x0

    invoke-interface {v3, v14, v12, v13, v15}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1686
    .end local v13           #where:Ljava/lang/String;
    :goto_1
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 1687
    const-string v14, "_undecodename"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v16, 0x7f0b01d1

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1688
    const-string v14, "_decodename"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v16, 0x7f0b01d1

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1689
    const-string v14, "_shortname"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v16, 0x7f0b01d1

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1690
    const-string v14, "_serverfolder"

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1691
    const-string v14, "_defaultfolder"

    const v15, 0x7ffffffc

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1692
    const-string v14, "_account"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1693
    const-string v14, "_movegroup"

    const/4 v15, 0x2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1694
    const-string v14, "_showsender"

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1695
    sget-object v14, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    invoke-interface {v3, v14, v12}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 1697
    if-eqz v10, :cond_7

    .line 1698
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1699
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 1700
    const-string v14, "_draftfolderId"

    invoke-static {v10}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1701
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v15, "_id = \'%d\'"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 1702
    .restart local v13       #where:Ljava/lang/String;
    sget-object v14, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    const/4 v15, 0x0

    invoke-interface {v3, v14, v12, v13, v15}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1707
    .end local v13           #where:Ljava/lang/String;
    :goto_2
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 1708
    const-string v14, "_undecodename"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v16, 0x7f0b01d4

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1709
    const-string v14, "_decodename"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v16, 0x7f0b01d4

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1710
    const-string v14, "_shortname"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v16, 0x7f0b01d4

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1711
    const-string v14, "_serverfolder"

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1712
    const-string v14, "_defaultfolder"

    const v15, 0x7ffffffb

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1713
    const-string v14, "_account"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1714
    const-string v14, "_movegroup"

    const/4 v15, 0x2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1715
    const-string v14, "_showsender"

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1716
    sget-object v14, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    invoke-interface {v3, v14, v12}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 1718
    if-eqz v10, :cond_8

    .line 1719
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1720
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 1721
    const-string v14, "_outfolderId"

    invoke-static {v10}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1722
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v15, "_id = \'%d\'"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 1723
    .restart local v13       #where:Ljava/lang/String;
    sget-object v14, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    const/4 v15, 0x0

    invoke-interface {v3, v14, v12, v13, v15}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1728
    .end local v13           #where:Ljava/lang/String;
    :goto_3
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 1729
    const-string v14, "_undecodename"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v16, 0x7f0b01d3

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1730
    const-string v14, "_decodename"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v16, 0x7f0b01d3

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1731
    const-string v14, "_shortname"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v16, 0x7f0b01d3

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1732
    const-string v14, "_serverfolder"

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1733
    const-string v14, "_defaultfolder"

    const v15, 0x7ffffffd

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1734
    const-string v14, "_account"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1735
    const-string v14, "_movegroup"

    const/4 v15, 0x2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1736
    const-string v14, "_showsender"

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1737
    sget-object v14, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    invoke-interface {v3, v14, v12}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 1739
    if-eqz v10, :cond_9

    .line 1740
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1741
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 1742
    const-string v14, "_sentfolderId"

    invoke-static {v10}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1743
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v15, "_id = \'%d\'"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 1744
    .restart local v13       #where:Ljava/lang/String;
    sget-object v14, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    const/4 v15, 0x0

    invoke-interface {v3, v14, v12, v13, v15}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1897
    .end local v10           #uri:Landroid/net/Uri;
    .end local v12           #values:Landroid/content/ContentValues;
    .end local v13           #where:Ljava/lang/String;
    :cond_3
    :goto_4
    if-nez v9, :cond_11

    .line 1898
    const/4 v6, 0x0

    .local v6, i:I
    :goto_5
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v6, v14, :cond_11

    .line 1899
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    .line 1900
    .restart local v10       #uri:Landroid/net/Uri;
    if-eqz v10, :cond_4

    .line 1902
    const/4 v14, 0x0

    const/4 v15, 0x0

    :try_start_1
    invoke-interface {v3, v10, v14, v15}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 1903
    .local v7, ret:I
    sget-boolean v14, Lcom/htc/android/mail/MailAccountUI;->DEBUG:Z

    if-eqz v14, :cond_4

    const-string v14, "MailAccountUI"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "delete:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", result:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 1898
    .end local v7           #ret:I
    :cond_4
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 1662
    .end local v6           #i:I
    .restart local v12       #values:Landroid/content/ContentValues;
    :cond_5
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1683
    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 1704
    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 1725
    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 1746
    :cond_9
    const/4 v9, 0x0

    goto :goto_4

    .line 1749
    .end local v10           #uri:Landroid/net/Uri;
    :cond_a
    :try_start_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/android/mail/MailAccountUI;->mProtocolValue:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_3

    .line 1750
    sget-boolean v14, Lcom/htc/android/mail/MailAccountUI;->DEBUG:Z

    if-eqz v14, :cond_b

    const-string v14, "MailAccountUI"

    const-string v15, "insert box=>IMAP"

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1751
    :cond_b
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 1752
    const-string v14, "_undecodename"

    const-string v15, "INBOX"

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1753
    const-string v14, "_decodename"

    const-string v15, "INBOX"

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1754
    const-string v14, "_shortname"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v16, 0x7f0b01ce

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1755
    const-string v14, "_serverfolder"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1756
    const-string v14, "_defaultfolder"

    const v15, 0x7fffffff

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1757
    const-string v14, "_account"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1758
    const-string v14, "_movegroup"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1759
    const-string v14, "_showsender"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1760
    const-string v14, "_default_sync"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1761
    sget-object v14, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    invoke-interface {v3, v14, v12}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 1763
    .restart local v10       #uri:Landroid/net/Uri;
    if-eqz v10, :cond_c

    .line 1764
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1765
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 1766
    const-string v14, "_defaultfolderId"

    invoke-static {v10}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1767
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v15, "_id = \'%d\'"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 1768
    .restart local v13       #where:Ljava/lang/String;
    sget-object v14, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    const/4 v15, 0x0

    invoke-interface {v3, v14, v12, v13, v15}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1773
    .end local v13           #where:Ljava/lang/String;
    :goto_7
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 1774
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v15, 0x7f0b01d2

    invoke-virtual {v14, v15}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    .line 1777
    .local v1, IMAPStr:Ljava/lang/String;
    :try_start_3
    new-instance v2, Ljava/lang/String;

    const-string v14, "IMAP-mailbox-name"

    invoke-virtual {v1, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    invoke-direct {v2, v14}, Ljava/lang/String;-><init>([B)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Landroid/os/DeadObjectException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .end local v1           #IMAPStr:Ljava/lang/String;
    .local v2, IMAPStr:Ljava/lang/String;
    move-object v1, v2

    .line 1781
    .end local v2           #IMAPStr:Ljava/lang/String;
    .restart local v1       #IMAPStr:Ljava/lang/String;
    :goto_8
    :try_start_4
    const-string v14, "_undecodename"

    invoke-virtual {v12, v14, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1782
    const-string v14, "_decodename"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v16, 0x7f0b01d2

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1783
    const-string v14, "_shortname"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v16, 0x7f0b01d2

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1784
    const-string v14, "_serverfolder"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1785
    const-string v14, "_defaultfolder"

    const v15, 0x7ffffffe

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1786
    const-string v14, "_account"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1787
    const-string v14, "_movegroup"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1788
    const-string v14, "_showsender"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1789
    sget-object v14, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    invoke-interface {v3, v14, v12}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 1791
    if-eqz v10, :cond_d

    .line 1792
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1793
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 1794
    const-string v14, "_trashfolderId"

    invoke-static {v10}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1795
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v15, "_id = \'%d\'"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 1796
    .restart local v13       #where:Ljava/lang/String;
    sget-object v14, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    const/4 v15, 0x0

    invoke-interface {v3, v14, v12, v13, v15}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1801
    .end local v13           #where:Ljava/lang/String;
    :goto_9
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 1802
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v15, 0x7f0b01d1

    invoke-virtual {v14, v15}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v1

    .line 1805
    :try_start_5
    new-instance v2, Ljava/lang/String;

    const-string v14, "IMAP-mailbox-name"

    invoke-virtual {v1, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    invoke-direct {v2, v14}, Ljava/lang/String;-><init>([B)V
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Landroid/os/DeadObjectException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .end local v1           #IMAPStr:Ljava/lang/String;
    .restart local v2       #IMAPStr:Ljava/lang/String;
    move-object v1, v2

    .line 1809
    .end local v2           #IMAPStr:Ljava/lang/String;
    .restart local v1       #IMAPStr:Ljava/lang/String;
    :goto_a
    :try_start_6
    const-string v14, "_undecodename"

    invoke-virtual {v12, v14, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1810
    const-string v14, "_decodename"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v16, 0x7f0b01d1

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1811
    const-string v14, "_shortname"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v16, 0x7f0b01d1

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1812
    const-string v14, "_serverfolder"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1813
    const-string v14, "_defaultfolder"

    const v15, 0x7ffffffc

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1814
    const-string v14, "_account"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1815
    const-string v14, "_movegroup"

    const/4 v15, 0x2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1816
    const-string v14, "_showsender"

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1817
    sget-object v14, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    invoke-interface {v3, v14, v12}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 1819
    if-eqz v10, :cond_e

    .line 1820
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1821
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 1822
    const-string v14, "_draftfolderId"

    invoke-static {v10}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1823
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v15, "_id = \'%d\'"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 1824
    .restart local v13       #where:Ljava/lang/String;
    sget-object v14, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    const/4 v15, 0x0

    invoke-interface {v3, v14, v12, v13, v15}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1829
    .end local v13           #where:Ljava/lang/String;
    :goto_b
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 1830
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v15, 0x7f0b01d4

    invoke-virtual {v14, v15}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_6
    .catch Landroid/os/DeadObjectException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-result-object v1

    .line 1833
    :try_start_7
    new-instance v2, Ljava/lang/String;

    const-string v14, "IMAP-mailbox-name"

    invoke-virtual {v1, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    invoke-direct {v2, v14}, Ljava/lang/String;-><init>([B)V
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Landroid/os/DeadObjectException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .end local v1           #IMAPStr:Ljava/lang/String;
    .restart local v2       #IMAPStr:Ljava/lang/String;
    move-object v1, v2

    .line 1837
    .end local v2           #IMAPStr:Ljava/lang/String;
    .restart local v1       #IMAPStr:Ljava/lang/String;
    :goto_c
    :try_start_8
    const-string v14, "_undecodename"

    invoke-virtual {v12, v14, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1838
    const-string v14, "_decodename"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v16, 0x7f0b01d4

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1839
    const-string v14, "_shortname"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v16, 0x7f0b01d4

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1840
    const-string v14, "_serverfolder"

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1841
    const-string v14, "_defaultfolder"

    const v15, 0x7ffffffb

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1842
    const-string v14, "_account"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1843
    const-string v14, "_movegroup"

    const/4 v15, 0x2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1844
    const-string v14, "_showsender"

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1845
    sget-object v14, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    invoke-interface {v3, v14, v12}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 1847
    if-eqz v10, :cond_f

    .line 1848
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1849
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 1850
    const-string v14, "_outfolderId"

    invoke-static {v10}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1851
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v15, "_id = \'%d\'"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 1852
    .restart local v13       #where:Ljava/lang/String;
    sget-object v14, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    const/4 v15, 0x0

    invoke-interface {v3, v14, v12, v13, v15}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1857
    .end local v13           #where:Ljava/lang/String;
    :goto_d
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 1858
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v15, 0x7f0b01d3

    invoke-virtual {v14, v15}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/DeadObjectException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    move-result-object v1

    .line 1861
    :try_start_9
    new-instance v2, Ljava/lang/String;

    const-string v14, "IMAP-mailbox-name"

    invoke-virtual {v1, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    invoke-direct {v2, v14}, Ljava/lang/String;-><init>([B)V
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Landroid/os/DeadObjectException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .end local v1           #IMAPStr:Ljava/lang/String;
    .restart local v2       #IMAPStr:Ljava/lang/String;
    move-object v1, v2

    .line 1865
    .end local v2           #IMAPStr:Ljava/lang/String;
    .restart local v1       #IMAPStr:Ljava/lang/String;
    :goto_e
    :try_start_a
    const-string v14, "_undecodename"

    invoke-virtual {v12, v14, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1866
    const-string v14, "_decodename"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v16, 0x7f0b01d3

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1867
    const-string v14, "_shortname"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v16, 0x7f0b01d3

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1868
    const-string v14, "_serverfolder"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1869
    const-string v14, "_defaultfolder"

    const v15, 0x7ffffffd

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1870
    const-string v14, "_account"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1871
    const-string v14, "_movegroup"

    const/4 v15, 0x2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1872
    const-string v14, "_showsender"

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1873
    sget-object v14, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    invoke-interface {v3, v14, v12}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 1875
    if-eqz v10, :cond_10

    .line 1876
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1877
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 1878
    const-string v14, "_sentfolderId"

    invoke-static {v10}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1879
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v15, "_id = \'%d\'"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 1880
    .restart local v13       #where:Ljava/lang/String;
    sget-object v14, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    const/4 v15, 0x0

    invoke-interface {v3, v14, v12, v13, v15}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/os/DeadObjectException; {:try_start_a .. :try_end_a} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_4

    .line 1885
    .end local v1           #IMAPStr:Ljava/lang/String;
    .end local v10           #uri:Landroid/net/Uri;
    .end local v12           #values:Landroid/content/ContentValues;
    .end local v13           #where:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 1886
    .local v5, ex:Landroid/os/DeadObjectException;
    invoke-virtual {v5}, Landroid/os/DeadObjectException;->printStackTrace()V

    .line 1887
    const/4 v9, 0x0

    .line 1894
    goto/16 :goto_4

    .line 1770
    .end local v5           #ex:Landroid/os/DeadObjectException;
    .restart local v10       #uri:Landroid/net/Uri;
    .restart local v12       #values:Landroid/content/ContentValues;
    :cond_c
    const/4 v9, 0x0

    goto/16 :goto_7

    .line 1798
    .restart local v1       #IMAPStr:Ljava/lang/String;
    :cond_d
    const/4 v9, 0x0

    goto/16 :goto_9

    .line 1826
    :cond_e
    const/4 v9, 0x0

    goto/16 :goto_b

    .line 1854
    :cond_f
    const/4 v9, 0x0

    goto/16 :goto_d

    .line 1882
    :cond_10
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 1888
    .end local v1           #IMAPStr:Ljava/lang/String;
    .end local v10           #uri:Landroid/net/Uri;
    .end local v12           #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v8

    .line 1889
    .local v8, rex:Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1890
    const/4 v9, 0x0

    .line 1894
    goto/16 :goto_4

    .line 1891
    .end local v8           #rex:Landroid/os/RemoteException;
    :catch_2
    move-exception v4

    .line 1892
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 1893
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 1904
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v6       #i:I
    .restart local v10       #uri:Landroid/net/Uri;
    :catch_3
    move-exception v4

    .line 1905
    .restart local v4       #e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    .line 1911
    .end local v4           #e:Ljava/lang/Exception;
    .end local v6           #i:I
    .end local v10           #uri:Landroid/net/Uri;
    :cond_11
    return v9

    .line 1863
    .restart local v1       #IMAPStr:Ljava/lang/String;
    .restart local v10       #uri:Landroid/net/Uri;
    .restart local v12       #values:Landroid/content/ContentValues;
    :catch_4
    move-exception v14

    goto/16 :goto_e

    .line 1835
    :catch_5
    move-exception v14

    goto/16 :goto_c

    .line 1807
    :catch_6
    move-exception v14

    goto/16 :goto_a

    .line 1779
    :catch_7
    move-exception v14

    goto/16 :goto_8
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 1057
    return-void
.end method

.method public setDefultChkBoxEnable(Z)V
    .locals 5
    .parameter "isEnable"

    .prologue
    const v4, 0x7f090082

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 488
    if-eqz p1, :cond_0

    .line 489
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mDefaultChkbox:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 490
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mDefaultChkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 491
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 497
    :goto_0
    return-void

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mDefaultChkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 494
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mDefaultChkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 495
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 2
    .parameter "providerStr"

    .prologue
    .line 934
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/htc/android/mail/MailAccountUI$13;

    invoke-direct {v1, p0, p1}, Lcom/htc/android/mail/MailAccountUI$13;-><init>(Lcom/htc/android/mail/MailAccountUI;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 938
    return-void
.end method

.method public setScreen2()V
    .locals 12

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 728
    invoke-direct {p0}, Lcom/htc/android/mail/MailAccountUI;->initialDefaultOutPorts()V

    .line 730
    iget-boolean v0, p0, Lcom/htc/android/mail/MailAccountUI;->m_bInvalidMailAddr:Z

    if-eqz v0, :cond_0

    .line 731
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->btnL:Lcom/htc/android/mail/widget/MailFooterBarButton;

    invoke-virtual {v0, v5}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setVisibility(I)V

    .line 733
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mInEmailAddress:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI;->mEmailAddress:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 808
    :goto_0
    return-void

    .line 736
    :cond_0
    iget-boolean v0, p0, Lcom/htc/android/mail/MailAccountUI;->mInEditMode:Z

    if-eqz v0, :cond_7

    .line 737
    const v0, 0x7f0b029a

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/MailAccountUI;->setTitleText(I)V

    .line 741
    :goto_1
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mEmailAddress:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 742
    .local v6, addr:Ljava/lang/String;
    if-nez v6, :cond_1

    .line 743
    const-string v6, ""

    .line 745
    :cond_1
    invoke-static {v6}, Lcom/htc/android/mail/MailAccountUI;->getAddrDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 746
    .local v8, domain:Ljava/lang/String;
    const-string v3, "_domain like ?"

    .line 747
    .local v3, where:Ljava/lang/String;
    const/4 v7, 0x0

    .line 749
    .local v7, c:Landroid/database/Cursor;
    iget-boolean v0, p0, Lcom/htc/android/mail/MailAccountUI;->mInEditMode:Z

    if-nez v0, :cond_5

    .line 756
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 757
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->sProviderSettingsURI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object v8, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 758
    :cond_2
    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_8

    .line 759
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 760
    const-string v0, "_provider"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->providerStr:Ljava/lang/String;

    .line 761
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mServer:Landroid/widget/EditText;

    const-string v1, "_inserver"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 762
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mOutServer:Landroid/widget/EditText;

    const-string v1, "_outserver"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 763
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mProtocol:Lcom/htc/widget/HtcSpinner;

    const-string v1, "_inprotocol"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    .line 768
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mSecurityIn:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcSpinner;->setOnItemSelectedListener(Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;)V

    .line 769
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mSecurityIn:Lcom/htc/widget/HtcSpinner;

    const-string v1, "_useSSLin"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    .line 770
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mSecurityIn:Lcom/htc/widget/HtcSpinner;

    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI;->securityin:Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcSpinner;->setOnItemSelectedListener(Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;)V

    .line 771
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mSecurityOut:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcSpinner;->setOnItemSelectedListener(Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;)V

    .line 772
    const-string v0, "_useSSLout"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 773
    .local v10, position:I
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mSecurityOut:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    .line 774
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mSecurityOut:Lcom/htc/widget/HtcSpinner;

    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI;->securityout:Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcSpinner;->setOnItemSelectedListener(Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;)V

    .line 775
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mPort:Landroid/widget/EditText;

    const-string v1, "_inport"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 776
    const-string v0, "_outport"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 777
    .local v9, port:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mOutPort:Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 778
    sget-object v0, Lcom/htc/android/mail/MailAccountUI;->sDefaultOutPorts:[Ljava/lang/String;

    aput-object v9, v0, v10

    .line 779
    const-string v0, "_smtpauth"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/MailAccountUI;->screen3requirelogin:I

    .line 785
    .end local v9           #port:Ljava/lang/String;
    .end local v10           #position:I
    :goto_2
    if-eqz v7, :cond_3

    .line 786
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 789
    :cond_3
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->providerStr:Ljava/lang/String;

    const-string v1, "AOL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->providerStr:Ljava/lang/String;

    const-string v1, "Mac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->providerStr:Ljava/lang/String;

    const-string v1, "Hotmail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 790
    :cond_4
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mInUsername:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 791
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mOutUsername:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 799
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    const v1, 0x7f090085

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 800
    .local v11, pwd:Ljava/lang/String;
    if-eqz v11, :cond_6

    iget-boolean v0, p0, Lcom/htc/android/mail/MailAccountUI;->mInEditMode:Z

    if-nez v0, :cond_6

    .line 801
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mInPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 802
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mOutPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 807
    :cond_6
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mInEmailAddress:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v6}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 739
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #addr:Ljava/lang/String;
    .end local v7           #c:Landroid/database/Cursor;
    .end local v8           #domain:Ljava/lang/String;
    .end local v11           #pwd:Ljava/lang/String;
    :cond_7
    const v0, 0x7f0b0090

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/MailAccountUI;->setTitleText(I)V

    goto/16 :goto_1

    .line 781
    .restart local v3       #where:Ljava/lang/String;
    .restart local v6       #addr:Ljava/lang/String;
    .restart local v7       #c:Landroid/database/Cursor;
    .restart local v8       #domain:Ljava/lang/String;
    :cond_8
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mServer:Landroid/widget/EditText;

    invoke-static {v6}, Lcom/htc/android/mail/MailAccountUI;->getAddrDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 782
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mOutServer:Landroid/widget/EditText;

    invoke-static {v6}, Lcom/htc/android/mail/MailAccountUI;->getAddrDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 783
    const-string v0, "Other"

    iput-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->providerStr:Ljava/lang/String;

    goto :goto_2

    .line 794
    :cond_9
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mInUsername:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 795
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mOutUsername:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public setScreen3()V
    .locals 2

    .prologue
    .line 811
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/htc/android/mail/MailAccountUI$11;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/MailAccountUI$11;-><init>(Lcom/htc/android/mail/MailAccountUI;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 825
    return-void
.end method

.method setTitleText(I)V
    .locals 1
    .parameter "stringId"

    .prologue
    .line 719
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mMailHeader:Lcom/htc/android/mail/widget/TextMailHeaderBar1;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->setTitle(I)V

    .line 720
    return-void
.end method

.method setTitleText(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 723
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mMailHeader:Lcom/htc/android/mail/widget/TextMailHeaderBar1;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->setTitle(Ljava/lang/String;)V

    .line 724
    return-void
.end method

.method public updateEmailAddrToPublicAccount(Ljava/lang/String;)V
    .locals 1
    .parameter "account"

    .prologue
    .line 2156
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2198
    :cond_0
    :goto_0
    return-void

    .line 2157
    :cond_1
    new-instance v0, Lcom/htc/android/mail/MailAccountUI$21;

    invoke-direct {v0, p0, p1}, Lcom/htc/android/mail/MailAccountUI$21;-><init>(Lcom/htc/android/mail/MailAccountUI;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/htc/android/mail/MailAccountUI$21;->start()V

    goto :goto_0
.end method

.method public updateScreen()V
    .locals 2

    .prologue
    .line 828
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/htc/android/mail/MailAccountUI$12;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/MailAccountUI$12;-><init>(Lcom/htc/android/mail/MailAccountUI;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 931
    return-void
.end method

.method public verifySmart(Landroid/content/Context;Ljava/lang/ref/WeakReference;)V
    .locals 26
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1223
    .local p2, weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    sget-boolean v2, Lcom/htc/android/mail/MailAccountUI;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MailAccountUI"

    const-string v3, "verifySmart>"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    :cond_0
    const/16 v19, 0x0

    .line 1225
    .local v19, c:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mEmailAddress:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1226
    .local v17, addr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1227
    .local v24, pwd:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/htc/android/mail/MailAccountUI;->getAddrDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    .line 1228
    .local v21, domain:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/htc/android/mail/MailAccountUI;->getAddrUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1229
    .local v25, username:Ljava/lang/String;
    const/16 v18, 0x0

    .line 1230
    .local v18, bundle:Landroid/os/Bundle;
    const-string v5, "_domain like ?"

    .line 1241
    .local v5, where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/android/mail/MailProvider;->sProviderSettingsURI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v21, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 1242
    if-eqz v19, :cond_8

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_8

    .line 1243
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v20

    .line 1244
    .local v20, count:I
    sget-boolean v2, Lcom/htc/android/mail/MailAccountUI;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "MailAccountUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "domain count>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    :cond_1
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    .line 1248
    const-string v2, "_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 1249
    .local v23, mProviderId:I
    const-string v2, "_provider"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1250
    .local v13, _provider:Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/android/mail/MailAccountUI;->providerStr:Ljava/lang/String;

    .line 1251
    const-string v2, "_inserver"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1252
    .local v10, _inserver:Ljava/lang/String;
    const-string v2, "_inport"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1253
    .local v8, _inport:I
    const-string v2, "_outserver"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1254
    .local v12, _outserver:Ljava/lang/String;
    const-string v2, "_outport"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1255
    .local v11, _outport:I
    const-string v2, "_inprotocol"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1256
    .local v9, _inprotocol:I
    move-object/from16 v0, p0

    iput v9, v0, Lcom/htc/android/mail/MailAccountUI;->mProtocolValue:I

    .line 1257
    const-string v2, "_useSSLin"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 1258
    .local v15, _useSSLin:I
    const-string v2, "_useSSLout"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 1259
    .local v16, _useSSLout:I
    const-string v2, "_smtpauth"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 1260
    .local v14, _smtpauth:I
    invoke-static/range {v17 .. v17}, Lcom/htc/android/mail/MailAccountUI;->getAddrDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1261
    .local v22, domain_temp:Ljava/lang/String;
    sget-boolean v2, Lcom/htc/android/mail/MailAccountUI;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "MailAccountUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    :cond_2
    const-string v2, "htc.com.tao"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "htc.com.tpe"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1264
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "htc.com"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1266
    :cond_4
    new-instance v18, Landroid/os/Bundle;

    .end local v18           #bundle:Landroid/os/Bundle;
    invoke-direct/range {v18 .. v18}, Landroid/os/Bundle;-><init>()V

    .line 1267
    .restart local v18       #bundle:Landroid/os/Bundle;
    const-string v2, "_id"

    const/4 v3, -0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1268
    const-string v2, "_protocol"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1269
    const-string v2, "_inserver"

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    const-string v2, "_inport"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1271
    const-string v2, "_outserver"

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    const-string v2, "_outport"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1273
    const-string v2, "_emailaddress"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    const-string v2, "_provider"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    const-string v2, "_providerid"

    move/from16 v0, v23

    int-to-long v3, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1276
    const-string v2, "AOL"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "Mac"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "Hotmail"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1277
    :cond_5
    const-string v2, "_username"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    :goto_0
    const-string v2, "_password"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    const-string v2, "Hotmail"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1282
    const-string v2, "_outusername"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    :goto_1
    const-string v2, "_outpassword"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    const-string v2, "_useSSLin"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1287
    const-string v2, "_useSSLout"

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1288
    const-string v2, "_smtpauth"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1289
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 1290
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/android/mail/MailAccountUI;->smartLogin:Z

    .line 1291
    new-instance v2, Lcom/htc/android/mail/Account;

    new-instance v3, Lcom/htc/android/mail/account/AccountBinder;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-direct {v3, v0, v1}, Lcom/htc/android/mail/account/AccountBinder;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-direct {v2, v3}, Lcom/htc/android/mail/Account;-><init>(Lcom/htc/android/mail/account/IAccount;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/MailAccountUI;->curAccount:Lcom/htc/android/mail/Account;

    .line 1292
    invoke-direct/range {p0 .. p2}, Lcom/htc/android/mail/MailAccountUI;->checkeAccountWithServer(Landroid/content/Context;Ljava/lang/ref/WeakReference;)V

    .line 1304
    .end local v8           #_inport:I
    .end local v9           #_inprotocol:I
    .end local v10           #_inserver:Ljava/lang/String;
    .end local v11           #_outport:I
    .end local v12           #_outserver:Ljava/lang/String;
    .end local v13           #_provider:Ljava/lang/String;
    .end local v14           #_smtpauth:I
    .end local v15           #_useSSLin:I
    .end local v16           #_useSSLout:I
    .end local v20           #count:I
    .end local v22           #domain_temp:Ljava/lang/String;
    .end local v23           #mProviderId:I
    :goto_2
    return-void

    .line 1279
    .restart local v8       #_inport:I
    .restart local v9       #_inprotocol:I
    .restart local v10       #_inserver:Ljava/lang/String;
    .restart local v11       #_outport:I
    .restart local v12       #_outserver:Ljava/lang/String;
    .restart local v13       #_provider:Ljava/lang/String;
    .restart local v14       #_smtpauth:I
    .restart local v15       #_useSSLin:I
    .restart local v16       #_useSSLout:I
    .restart local v20       #count:I
    .restart local v22       #domain_temp:Ljava/lang/String;
    .restart local v23       #mProviderId:I
    :cond_6
    const-string v2, "_username"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1284
    :cond_7
    const-string v2, "_outusername"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1296
    .end local v8           #_inport:I
    .end local v9           #_inprotocol:I
    .end local v10           #_inserver:Ljava/lang/String;
    .end local v11           #_outport:I
    .end local v12           #_outserver:Ljava/lang/String;
    .end local v13           #_provider:Ljava/lang/String;
    .end local v14           #_smtpauth:I
    .end local v15           #_useSSLin:I
    .end local v16           #_useSSLout:I
    .end local v20           #count:I
    .end local v22           #domain_temp:Ljava/lang/String;
    .end local v23           #mProviderId:I
    :cond_8
    sget-boolean v2, Lcom/htc/android/mail/MailAccountUI;->DEBUG:Z

    if-eqz v2, :cond_9

    const-string v2, "MailAccountUI"

    const-string v3, "can\'\'t find pre-define provider>"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    :cond_9
    if-eqz v19, :cond_a

    .line 1298
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 1299
    :cond_a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/android/mail/MailAccountUI;->smartLogin:Z

    .line 1300
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/mail/MailAccountUI;->curNewAccountStep:I

    .line 1301
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailAccountUI;->setScreen2()V

    .line 1302
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailAccountUI;->checkScreen2()V

    .line 1303
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailAccountUI;->updateScreen()V

    goto :goto_2
.end method
