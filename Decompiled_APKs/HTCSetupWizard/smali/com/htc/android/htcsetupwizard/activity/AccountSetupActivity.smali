.class public Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "AccountSetupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ACTION_1UND1_MAIL_LOGIN:I = 0x3c

.field private static final ACTION_AAB_LOGIN:I = 0x42

.field private static final ACTION_AOL_MAIL_LOGIN:I = 0x3a

.field private static final ACTION_BELL_NET_MAIL_LOGIN:I = 0x39

.field private static final ACTION_COMMUNITY_LOGIN:I = 0x3f

.field private static final ACTION_EXCHANGE_LOGIN:I = 0x33

.field private static final ACTION_GOOGLE_LOGIN:I = 0x34

.field private static final ACTION_MAIL_LOGIN:I = 0x64

.field private static final ACTION_MY_MAIL_LOGIN:I = 0x38

.field private static final ACTION_O2_MAIL_LOGIN:I = 0x37

.field private static final ACTION_ORANGE_3RD_PARTY_MAIL_LOGIN:I = 0x41

.field private static final ACTION_ORANGE_MAIL_LOGIN:I = 0x35

.field private static final ACTION_RUS_MTS_MAIL_LOGIN:I = 0x3d

.field private static final ACTION_RU_MAIL_LOGIN:I = 0x3e

.field private static final ACTION_SYNPATICO_CA_MAIL_LOGIN:I = 0x40

.field private static final ACTION_TMO_MAIL_LOGIN:I = 0x36

.field private static final ACTION_YAHOO_MAIL_LOGIN:I = 0x3b

.field private static final AOL_MAIL:Ljava/lang/String; = "aol_mail"

.field private static final BELL_NET_MAIL:Ljava/lang/String; = "bell_net_mail"

.field private static final CHECK_TMO_SERVICE:I = 0x4

.field private static final COMMUNITY:Ljava/lang/String; = "oobe_community"

.field private static final COMMUNITY_RESULT_CANCELED:I = 0x1

.field private static final COMMUNITY_RESULT_ERROR:I = 0x0

.field private static final COMMUNITY_RESULT_OK:I = 0x2

.field private static final COMMUNITY_RESULT_SUBSCRIBED_MYCOMMUNITY:I = 0x8

.field private static final COMMUNITY_RESULT_SUBSCRIBED_MYPHONEBOOK:I = 0x4

.field private static final COMMUNITY_STATUS_FROM_SERVER:Ljava/lang/String; = "community_status_from_server"

.field private static final DIALOG_ID_GOOGLE_BACKUP_SETTINGS:I = 0x65

.field private static final GOOGLE_ACCOUNT_TYPE:Ljava/lang/String; = "com.google"

.field private static final INTENT_EXTRA_ACCOUNT_LIST:Ljava/lang/String; = "account_list"

.field private static final KEY_1UND1_MAIL_LOGIN:Ljava/lang/String; = "1und1_mail_login"

.field private static final KEY_AAB_LOGIN:Ljava/lang/String; = "aab_login"

.field private static final KEY_AOL_MAIL_LOGIN:Ljava/lang/String; = "aol_mail_login"

.field private static final KEY_BELL_NET_MAIL_LOGIN:Ljava/lang/String; = "bell_net_mail_login"

.field private static final KEY_COMMUNITY_LOGIN:Ljava/lang/String; = "community_login"

.field private static final KEY_EXCHANGE_LOGIN:Ljava/lang/String; = "exchange_login"

.field public static final KEY_GOOGLE_BACKUP_SETTINGS_SHOW_DIALOG:Ljava/lang/String; = "google_back_up_settings_dialog"

.field private static final KEY_GOOGLE_LOGIN:Ljava/lang/String; = "google_login"

.field private static final KEY_MAIL_ACCOUNT:Ljava/lang/String; = "mail_accounts"

.field private static final KEY_MAIL_LOGIN:Ljava/lang/String; = "mail_login"

.field private static final KEY_MY_MAIL_LOGIN:Ljava/lang/String; = "my_mail_login"

.field private static final KEY_O2_MAIL_LOGIN:Ljava/lang/String; = "o2_mail_login"

.field private static final KEY_ORANGE_3RD_PARTY_MAIL_LOGIN:Ljava/lang/String; = "orange_3rd_party_mail_login"

.field private static final KEY_ORANGE_MAIL_LOGIN:Ljava/lang/String; = "orange_mail_login"

.field private static final KEY_RUS_MTS_MAIL_LOGIN:Ljava/lang/String; = "rus_mts_mail_login"

.field private static final KEY_RU_MAIL_LOGIN:Ljava/lang/String; = "ru_mail_login"

.field private static final KEY_SYNPATICO_CA_MAIL_LOGIN:Ljava/lang/String; = "sympatico_ca_login"

.field private static final KEY_TMO_MAIL_LOGIN:Ljava/lang/String; = "tmo_mail_login"

.field private static final KEY_YAHOO_MAIL_LOGIN:Ljava/lang/String; = "yahoo_mail_login"

.field private static final LOGIN_FAILED:I = 0x2

.field private static final LOGIN_SUCCESS:I = 0x1

.field private static final LOGOUT:I = 0x0

.field public static final MAILWHEEL_NEW_ACCOUNT_OK:I = 0x6b

.field private static final MAIL_1UND1:Ljava/lang/String; = "1und1_mail"

.field private static final MAIL_ACCOUNT_URI:Landroid/net/Uri; = null

.field private static final MAIL_PROVIDERS_URI:Landroid/net/Uri; = null

.field private static final MY_MAIL:Ljava/lang/String; = "my_mail"

.field private static final O2_MAIL:Ljava/lang/String; = "o2_mail"

.field private static final ORANGE_MAIL:Ljava/lang/String; = "orange_mail"

.field private static final REPEAT_LIMIT:I = 0x1e

.field private static final REPEAT_TIME:I = 0x1f4

.field private static final RUS_MTS_MAIL:Ljava/lang/String; = "rus_mts_mail"

.field private static final RU_MAIL:Ljava/lang/String; = "ru_mail"

.field private static final SYNPATICO_CA_MAIL:Ljava/lang/String; = "sympatico_ca_mail"

.field private static final TAG:Ljava/lang/String; = "OOBE_AccountSetupActivity"

.field private static final TMO_CLIENT_SERVICE_STATUS:Ljava/lang/String; = "tmo_client_service_status"

.field private static final TMO_CLIENT_SERVICE_STATUS_NOT_RUN:Ljava/lang/String; = "tmo_service_not_run"

.field private static final TMO_CLIENT_SERVICE_STATUS_RUNNING:Ljava/lang/String; = "tmo_service_running"

.field private static final TMO_MAIL:Ljava/lang/String; = "tmo_mail"

.field private static final UPDATE_ORANGE_STAUS:I = 0x5

.field private static final UPDATE_STAUS:I = 0x3

.field private static final YAHOO_MAIL:Ljava/lang/String; = "yahoo_mail"

.field private static final Z7_AUTHORITY:Ljava/lang/String; = "com.orange.pushmail.provider.email"

.field private static final Z7_CONTENT_URI:Landroid/net/Uri;

.field private static isAutoSyncTMI:Z


# instance fields
.field protected mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

.field private mCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field mCheckGoogleAccount:Z

.field private mConnection:Landroid/content/ServiceConnection;

.field private mCustomize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

.field private mGoogleAccount:Ljava/lang/String;

.field mHandler:Landroid/os/Handler;

.field private mKeys:[Z

.field private mLaunchByIcon:Z

.field private mLogoutString:Ljava/lang/String;

.field private mRepeatCount:I

.field private mSeletedItem:I

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mShowDialog:I

.field private mSyncService:Lcom/android/syncml/service/ISyncMLService;

.field private mTmoServiceTimeout:Z

.field private mbBackFinish:Z

.field private mbBackKey:Z

.field protected mbLaunchByOOBE:Z

.field private orangeMailCount:I

.field private originalOtherMailCount:I

.field private otherMailCount:I

.field private otherMailKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private otherMailTitles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private otherMailUsernames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 138
    const-string v0, "content://mail/providers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->MAIL_PROVIDERS_URI:Landroid/net/Uri;

    .line 139
    const-string v0, "content://mail/accounts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->MAIL_ACCOUNT_URI:Landroid/net/Uri;

    .line 212
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->isAutoSyncTMI:Z

    .line 215
    const-string v0, "content://com.orange.pushmail.provider.email/accounts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->Z7_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 97
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    .line 141
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mbLaunchByOOBE:Z

    .line 142
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mbBackFinish:Z

    .line 143
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mLaunchByIcon:Z

    .line 144
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mbBackKey:Z

    .line 148
    iput-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mLogoutString:Ljava/lang/String;

    .line 170
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mSeletedItem:I

    .line 174
    iput-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mGoogleAccount:Ljava/lang/String;

    .line 175
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mCheckGoogleAccount:Z

    .line 192
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mShowDialog:I

    .line 204
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mTmoServiceTimeout:Z

    .line 208
    iput v1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mRepeatCount:I

    .line 220
    iput-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mSyncService:Lcom/android/syncml/service/ISyncMLService;

    .line 222
    new-instance v0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity$1;-><init>(Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;)V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 242
    new-instance v0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity$2;-><init>(Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;)V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mHandler:Landroid/os/Handler;

    .line 1445
    new-instance v0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity$3;-><init>(Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;)V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mCallback:Landroid/accounts/AccountManagerCallback;

    return-void
.end method

.method static synthetic access$002(Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;Lcom/android/syncml/service/ISyncMLService;)Lcom/android/syncml/service/ISyncMLService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mSyncService:Lcom/android/syncml/service/ISyncMLService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mGoogleAccount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mGoogleAccount:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mShowDialog:I

    return v0
.end method

.method static synthetic access$202(Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput p1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mShowDialog:I

    return p1
.end method

.method static synthetic access$300(Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->addGoogleLoginAccount(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mLaunchByIcon:Z

    return v0
.end method

.method static synthetic access$500(Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->startGoogleRestore()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->checkTmoClientServiceStatus()V

    return-void
.end method

.method private addGoogleLoginAccount(Ljava/lang/String;)V
    .locals 11
    .parameter "account"

    .prologue
    const/4 v4, 0x0

    .line 1613
    const-string v0, "OOBE_AccountSetupActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Add Google login account into database, account: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    const-string v0, "content://com.htc.accounts/accounts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1617
    .local v1, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 1620
    .local v6, accountExist:Z
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "_account"

    aput-object v5, v2, v0

    .line 1623
    .local v2, projection:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_account=\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, where:Ljava/lang/String;
    move-object v0, p0

    move-object v5, v4

    .line 1624
    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1630
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 1632
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1633
    const/4 v6, 0x1

    .line 1634
    const-string v0, "OOBE_AccountSetupActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Account already existed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1637
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1641
    :cond_1
    if-nez v6, :cond_2

    .line 1642
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1643
    .local v9, values:Landroid/content/ContentValues;
    const-string v0, "_account"

    invoke-virtual {v9, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1644
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v8

    .line 1645
    .local v8, newuri:Landroid/net/Uri;
    const-string v0, "OOBE_AccountSetupActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inserted URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    .end local v8           #newuri:Landroid/net/Uri;
    .end local v9           #values:Landroid/content/ContentValues;
    :cond_2
    return-void

    .line 1637
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private addMailAccount()V
    .locals 2

    .prologue
    .line 1550
    const-string v0, "OOBE_AccountSetupActivity"

    const-string v1, "call into addMailAccount()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->loginCustomizeAccount(I)V

    .line 1552
    return-void
.end method

.method private asyncCheckGoogleAccount()V
    .locals 8

    .prologue
    .line 1579
    const/4 v0, 0x0

    .line 1580
    .local v0, account:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1582
    .local v1, accounts:[Landroid/accounts/Account;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    .line 1583
    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    if-eqz v5, :cond_4

    .line 1584
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    array-length v5, v5

    if-ge v3, v5, :cond_2

    .line 1585
    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v5, v5, v3

    iget-object v5, v5, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    const-string v6, "com.google"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1586
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v6, v6, v3

    iget-object v6, v6, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 1587
    if-eqz v1, :cond_0

    array-length v5, v1

    if-lez v5, :cond_0

    .line 1588
    const/4 v5, 0x0

    aget-object v5, v1, v5

    iget-object v0, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 1590
    :cond_0
    const-string v5, "OOBE_AccountSetupActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Has Google account type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v7, v7, v3

    iget-object v7, v7, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", account = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 1592
    .local v4, msg:Landroid/os/Message;
    invoke-virtual {v4}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 1593
    .local v2, b:Landroid/os/Bundle;
    if-nez v2, :cond_1

    .line 1594
    new-instance v2, Landroid/os/Bundle;

    .end local v2           #b:Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1595
    .restart local v2       #b:Landroid/os/Bundle;
    :cond_1
    const-string v5, "key"

    const-string v6, "google_login"

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1596
    const-string v5, "username"

    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1597
    const/4 v5, 0x3

    iput v5, v4, Landroid/os/Message;->what:I

    .line 1598
    const/16 v5, 0x34

    iput v5, v4, Landroid/os/Message;->arg1:I

    .line 1599
    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1606
    .end local v2           #b:Landroid/os/Bundle;
    .end local v3           #i:I
    .end local v4           #msg:Landroid/os/Message;
    :cond_2
    :goto_1
    return-void

    .line 1584
    .restart local v3       #i:I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1605
    .end local v3           #i:I
    :cond_4
    const-string v5, "OOBE_AccountSetupActivity"

    const-string v6, "AuthenticatorTypes not found"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private checkTmoClientServiceStatus()V
    .locals 5

    .prologue
    .line 1043
    const-string v1, "OOBE_AccountSetupActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkTmoClientServiceStatus, mRepeatCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mRepeatCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    iget v1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mRepeatCount:I

    const/16 v2, 0x1e

    if-gt v1, v2, :cond_1

    .line 1045
    iget v1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mRepeatCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mRepeatCount:I

    .line 1046
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tmo_client_service_status"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1047
    .local v0, serviceStatus:Ljava/lang/String;
    const-string v1, "tmo_service_not_run"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1048
    const-string v1, "community_login"

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->updatePreferenceStatus(Ljava/lang/String;)V

    .line 1058
    .end local v0           #serviceStatus:Ljava/lang/String;
    :goto_0
    return-void

    .line 1051
    .restart local v0       #serviceStatus:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1054
    .end local v0           #serviceStatus:Ljava/lang/String;
    :cond_1
    const-string v1, "OOBE_AccountSetupActivity"

    const-string v2, "time out, check Tmo Client Service Status"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mTmoServiceTimeout:Z

    .line 1056
    const-string v1, "community_login"

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->updatePreferenceStatus(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enableAutoSyncTMI()V
    .locals 3

    .prologue
    .line 810
    sget-boolean v1, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->isAutoSyncTMI:Z

    if-nez v1, :cond_0

    .line 811
    const/4 v1, 0x1

    sput-boolean v1, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->isAutoSyncTMI:Z

    .line 812
    const-string v1, "OOBE_AccountSetupActivity"

    const-string v2, "Enable TMI AutoSync."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    new-instance v0, Landroid/content/Intent;

    const-string v1, "tmi_mycommunity_checked"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 814
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 816
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static getOtherMailCount(Landroid/content/Context;)I
    .locals 9
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 346
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->MAIL_ACCOUNT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "count(_id)"

    aput-object v3, v2, v8

    const-string v3, "_provider != \'Exchange\' AND _del != 1"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 349
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_0

    move v7, v8

    .line 356
    :goto_0
    return v7

    .line 351
    :cond_0
    const/4 v7, 0x0

    .line 352
    .local v7, count:I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 354
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 355
    const-string v0, "OOBE_AccountSetupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get other mail count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private login1und1()V
    .locals 2

    .prologue
    .line 1530
    const-string v0, "OOBE_AccountSetupActivity"

    const-string v1, "call 1UND1 Mail Account()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->loginCustomizeAccount(I)V

    .line 1532
    return-void
.end method

.method private loginAOL()V
    .locals 2

    .prologue
    .line 1520
    const-string v0, "OOBE_AccountSetupActivity"

    const-string v1, "call AOL Mail Account()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    const/16 v0, 0x3a

    invoke-direct {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->loginCustomizeAccount(I)V

    .line 1522
    return-void
.end method

.method private loginBellNet()V
    .locals 2

    .prologue
    .line 1515
    const-string v0, "OOBE_AccountSetupActivity"

    const-string v1, "call My Mail Account()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    const/16 v0, 0x39

    invoke-direct {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->loginCustomizeAccount(I)V

    .line 1517
    return-void
.end method

.method private loginCustomizeAccount(I)V
    .locals 6
    .parameter "requestCode"

    .prologue
    .line 1462
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1463
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.htc.android.mail"

    const-string v3, "com.htc.android.mail.ecNewAccount"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1464
    const-string v2, "provider"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1465
    const-string v2, "inprotocol"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1466
    const-string v2, "_domain"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1467
    const-string v2, "_providerid"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1468
    const-string v2, "CallingActivity"

    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "CallingActivity"

    const/16 v5, 0x5e

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1471
    :try_start_0
    invoke-virtual {p0, v1, p1}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1481
    :goto_0
    return-void

    .line 1473
    :catch_0
    move-exception v0

    .line 1474
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "OOBE_AccountSetupActivity"

    const-string v3, " New Account doesn\'t exist"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1476
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 1477
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "OOBE_AccountSetupActivity"

    const-string v3, " New Account, exception occurs"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    const-string v2, "OOBE_AccountSetupActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " New Account exception cause, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    const-string v2, "OOBE_AccountSetupActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " New Account exception, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loginMyMail()V
    .locals 2

    .prologue
    .line 1510
    const-string v0, "OOBE_AccountSetupActivity"

    const-string v1, "call My Mail Account()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    const/16 v0, 0x38

    invoke-direct {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->loginCustomizeAccount(I)V

    .line 1512
    return-void
.end method

.method private loginO2()V
    .locals 2

    .prologue
    .line 1505
    const-string v0, "OOBE_AccountSetupActivity"

    const-string v1, "call O2 Mail Account()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    const/16 v0, 0x37

    invoke-direct {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->loginCustomizeAccount(I)V

    .line 1507
    return-void
.end method

.method private loginOrange()V
    .locals 2

    .prologue
    .line 1484
    const-string v0, "OOBE_AccountSetupActivity"

    const-string v1, "call Orange Mail Account()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    const/16 v0, 0x35

    invoke-direct {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->loginCustomizeAccount(I)V

    .line 1486
    return-void
.end method

.method private loginOrange3rdParty()V
    .locals 4

    .prologue
    .line 1489
    const-string v2, "OOBE_AccountSetupActivity"

    const-string v3, "loginOrange3rdParty"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.orange.pushmail.Z7.SETUP_WIZARD"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1492
    .local v1, intent:Landroid/content/Intent;
    const/16 v2, 0x41

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1497
    :goto_0
    return-void

    .line 1494
    :catch_0
    move-exception v0

    .line 1495
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "OOBE_AccountSetupActivity"

    const-string v3, "Orange 3rd party activity is not found"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loginRu()V
    .locals 2

    .prologue
    .line 1540
    const-string v0, "OOBE_AccountSetupActivity"

    const-string v1, "call Ru Mail Account()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    const/16 v0, 0x3e

    invoke-direct {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->loginCustomizeAccount(I)V

    .line 1542
    return-void
.end method

.method private loginRusMts()V
    .locals 2

    .prologue
    .line 1535
    const-string v0, "OOBE_AccountSetupActivity"

    const-string v1, "call Rus Mts Mail Account()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    const/16 v0, 0x3d

    invoke-direct {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->loginCustomizeAccount(I)V

    .line 1537
    return-void
.end method

.method private loginSynpatico()V
    .locals 2

    .prologue
    .line 1545
    const-string v0, "OOBE_AccountSetupActivity"

    const-string v1, "call Synpatico Ca Mail Account()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->loginCustomizeAccount(I)V

    .line 1547
    return-void
.end method

.method private loginTMO()V
    .locals 2

    .prologue
    .line 1500
    const-string v0, "OOBE_AccountSetupActivity"

    const-string v1, "call TMO Mail Account()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    const/16 v0, 0x36

    invoke-direct {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->loginCustomizeAccount(I)V

    .line 1502
    return-void
.end method

.method private loginYahoo()V
    .locals 2

    .prologue
    .line 1525
    const-string v0, "OOBE_AccountSetupActivity"

    const-string v1, "call Yahoo Mail Account()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    const/16 v0, 0x3b

    invoke-direct {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->loginCustomizeAccount(I)V

    .line 1527
    return-void
.end method

.method private logoutExchange()V
    .locals 0

    .prologue
    .line 1564
    return-void
.end method

.method private logoutGoogle()V
    .locals 0

    .prologue
    .line 1568
    return-void
.end method

.method private logoutMail()V
    .locals 0

    .prologue
    .line 1572
    return-void
.end method

.method private onCreatePreferences()V
    .locals 5

    .prologue
    .line 491
    const v3, 0x7f050005

    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->addPreferencesFromResource(I)V

    .line 492
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->addPreferencesFromOtherMailAccounts()V

    .line 494
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    .line 497
    .local v2, preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;
    const-string v3, "mail_login"

    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->isAccountSupport(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 498
    const-string v3, "OOBE_AccountSetupActivity"

    const-string v4, "mail_login is supported"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :goto_0
    const-string v3, "mail_accounts"

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceCategory;

    .line 507
    .local v0, mailAccountCategory:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->checkAccountsSupport(Lcom/htc/preference/HtcPreferenceCategory;)V

    .line 508
    return-void

    .line 501
    .end local v0           #mailAccountCategory:Lcom/htc/preference/HtcPreferenceCategory;
    :cond_0
    const-string v3, "mail_login"

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    .line 502
    .local v1, pref:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 503
    const-string v3, "OOBE_AccountSetupActivity"

    const-string v4, "mail_login is not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startGoogleRestore()V
    .locals 3

    .prologue
    .line 307
    const-string v1, "OOBE_AccountSetupActivity"

    const-string v2, "start google restore"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 309
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.android.htcsetupwizard.AutoRestoreService"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 312
    return-void
.end method


# virtual methods
.method protected addPreferencesFrom3rdOrangeMailAccounts()V
    .locals 9

    .prologue
    .line 639
    iget v6, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailCount:I

    if-nez v6, :cond_1

    .line 673
    :cond_0
    return-void

    .line 642
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v5

    .line 643
    .local v5, preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;
    const-string v6, "mail_accounts"

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceCategory;

    .line 645
    .local v0, MailAccountCategory:Lcom/htc/preference/HtcPreferenceCategory;
    iget v1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailCount:I

    .line 646
    .local v1, count:I
    iget v6, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailCount:I

    iget v7, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->originalOtherMailCount:I

    sub-int v3, v6, v7

    .line 647
    .local v3, needToAddOrangeMailCount:I
    const-string v6, "OOBE_AccountSetupActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addPreferencesFrom3rdOrangeMailAccounts(), orangeMailCount = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->orangeMailCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", otherMailCount = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", needToAddOrangeMailCount = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    sub-int v2, v1, v3

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 651
    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailKeys:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "orange_mail_login"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailKeys:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "tmo_mail_login"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailKeys:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "o2_mail_login"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailKeys:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "my_mail_login"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailKeys:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "bell_net_mail_login"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailKeys:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "aol_mail_login"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailKeys:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "yahoo_mail_login"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailKeys:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "1und1_mail_login"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailKeys:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "rus_mts_mail_login"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailKeys:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "ru_mail_login"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailKeys:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "sympatico_ca_login"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 650
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 664
    :cond_3
    new-instance v4, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    invoke-direct {v4, p0}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;-><init>(Landroid/content/Context;)V

    .line 665
    .local v4, pref:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;
    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailKeys:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setKey(Ljava/lang/String;)V

    .line 666
    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailTitles:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 667
    const/4 v7, 0x1

    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailUsernames:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v7, v6}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setLoginStatus(ILjava/lang/String;)V

    .line 668
    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 669
    const-string v7, "OOBE_AccountSetupActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addPreferencesFrom3rdOrangeMailAccounts(), Key = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailKeys:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    const-string v7, "OOBE_AccountSetupActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addPreferencesFrom3rdOrangeMailAccounts(), Title = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailTitles:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    const-string v7, "OOBE_AccountSetupActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addPreferencesFrom3rdOrangeMailAccounts(), Name = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailUsernames:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method protected addPreferencesFromOtherMailAccounts()V
    .locals 7

    .prologue
    .line 609
    iget v5, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailCount:I

    if-nez v5, :cond_1

    .line 636
    :cond_0
    return-void

    .line 612
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v4

    .line 613
    .local v4, preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;
    const-string v5, "mail_accounts"

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceCategory;

    .line 615
    .local v0, MailAccountCategory:Lcom/htc/preference/HtcPreferenceCategory;
    iget v1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailCount:I

    .line 616
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 617
    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailKeys:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "orange_mail_login"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailKeys:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "tmo_mail_login"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailKeys:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "o2_mail_login"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailKeys:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "my_mail_login"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailKeys:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "bell_net_mail_login"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailKeys:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "aol_mail_login"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailKeys:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "yahoo_mail_login"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailKeys:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "1und1_mail_login"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailKeys:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "rus_mts_mail_login"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailKeys:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "ru_mail_login"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailKeys:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "sympatico_ca_login"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 616
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 630
    :cond_3
    new-instance v3, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    invoke-direct {v3, p0}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;-><init>(Landroid/content/Context;)V

    .line 631
    .local v3, pref:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;
    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailKeys:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setKey(Ljava/lang/String;)V

    .line 632
    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailTitles:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 633
    const/4 v6, 0x1

    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailUsernames:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v6, v5}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setLoginStatus(ILjava/lang/String;)V

    .line 634
    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_1
.end method

.method protected checkAccountsSupport(Lcom/htc/preference/HtcPreferenceCategory;)V
    .locals 7
    .parameter "category"

    .prologue
    .line 511
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreferenceCategory;->getPreferenceCount()I

    move-result v0

    .line 513
    .local v0, count:I
    const/4 v3, 0x0

    .line 514
    .local v3, pref:Lcom/htc/preference/HtcPreference;
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    .line 515
    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreferenceCategory;->getPreference(I)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    .line 516
    if-eqz v3, :cond_0

    .line 517
    invoke-virtual {v3}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 518
    .local v2, key:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->isAccountSupport(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 519
    invoke-virtual {p1, v3}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 520
    const-string v4, "OOBE_AccountSetupActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not supported"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    .end local v2           #key:Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 522
    .restart local v2       #key:Ljava/lang/String;
    :cond_1
    const-string v4, "OOBE_AccountSetupActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is supported"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 526
    .end local v2           #key:Ljava/lang/String;
    :cond_2
    const-string v4, "community_login"

    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->isAccountSupport(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 527
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->syncCommunityStatus()V

    .line 529
    :cond_3
    return-void
.end method

.method protected fillInitData()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1019
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1020
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "LaunchBySetupWizard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mbLaunchByOOBE:Z

    .line 1021
    const-string v1, "SelfFinishBackKeyPressed"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mbBackFinish:Z

    .line 1022
    const-string v1, "LaunchByIcon"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mLaunchByIcon:Z

    .line 1023
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mbBackKey:Z

    .line 1024
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 1152
    const-string v0, "OOBE_AccountSetupActivity"

    const-string v1, "finish"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->finish()V

    .line 1154
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mSyncService:Lcom/android/syncml/service/ISyncMLService;

    if-eqz v0, :cond_0

    .line 1155
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1156
    const-string v0, "OOBE_AccountSetupActivity"

    const-string v1, "unbindService..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mSyncService:Lcom/android/syncml/service/ISyncMLService;

    .line 1159
    :cond_0
    return-void
.end method

.method protected getAABAccountStatus()Landroid/os/Bundle;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 864
    const-string v2, "OOBE_AccountSetupActivity"

    const-string v3, "getAABAccountStatus()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 866
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "username"

    const-string v3, "Completed"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mSyncService:Lcom/android/syncml/service/ISyncMLService;

    if-nez v2, :cond_0

    .line 868
    const-string v2, "OOBE_AccountSetupActivity"

    const-string v3, "mSyncService is NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    const-string v2, "status"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 886
    :goto_0
    return-object v0

    .line 875
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mSyncService:Lcom/android/syncml/service/ISyncMLService;

    invoke-interface {v2}, Lcom/android/syncml/service/ISyncMLService;->isAABEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 876
    const-string v2, "OOBE_AccountSetupActivity"

    const-string v3, "AAB Enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    const-string v2, "status"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 882
    :catch_0
    move-exception v1

    .line 883
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "OOBE_AccountSetupActivity"

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 879
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1
    :try_start_1
    const-string v2, "OOBE_AccountSetupActivity"

    const-string v3, "AAB not Enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    const-string v2, "status"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected getAccountStatus(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .parameter "key"

    .prologue
    .line 754
    if-nez p1, :cond_0

    .line 755
    const-string v0, "OOBE_AccountSetupActivity"

    const-string v1, "getAccountStatus(), bad argument, key = null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    const/4 v0, 0x0

    .line 768
    :goto_0
    return-object v0

    .line 759
    :cond_0
    const-string v0, "exchange_login"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 760
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->getExchangeAccountStatus()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 761
    :cond_1
    const-string v0, "google_login"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 762
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->getGoogleAccountStatus()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 763
    :cond_2
    const-string v0, "community_login"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 764
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->getCommunityStatus()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 765
    :cond_3
    const-string v0, "aab_login"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 766
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->getAABAccountStatus()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 768
    :cond_4
    invoke-virtual {p0, p1}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->getOtherMailAccountStatus(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method protected getCommunityStatus()Landroid/os/Bundle;
    .locals 6

    .prologue
    .line 772
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 773
    .local v0, b:Landroid/os/Bundle;
    const/4 v1, -0x1

    .line 774
    .local v1, status:I
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "community_status_from_server"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 775
    .local v2, szSummaryDescription:Ljava/lang/String;
    const-string v3, "OOBE_AccountSetupActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "szSummaryDescription = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 778
    const/4 v1, 0x0

    .line 779
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mLogoutString:Ljava/lang/String;

    .line 802
    :goto_0
    const-string v3, "username"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    const-string v3, "status"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 804
    return-object v0

    .line 782
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "tmo_client_service_status"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "tmo_service_running"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 784
    const/4 v1, -0x1

    .line 785
    const v3, 0x7f0a0092

    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 787
    :cond_1
    iget-boolean v3, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mTmoServiceTimeout:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 788
    const/4 v1, 0x0

    .line 789
    const v3, 0x7f0a0093

    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 792
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 793
    const/4 v1, 0x0

    goto :goto_0

    .line 796
    :cond_3
    const/4 v1, 0x1

    .line 797
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->enableAutoSyncTMI()V

    goto :goto_0
.end method

.method protected getExchangeAccountStatus()Landroid/os/Bundle;
    .locals 12

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v4, 0x0

    .line 819
    const-string v0, "OOBE_AccountSetupActivity"

    const-string v1, "getExchangeAccountStatus()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    const-string v3, "_provider = \'Exchange\' AND _del=-1"

    .line 821
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->MAIL_ACCOUNT_URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string v5, "_name,_desc"

    aput-object v5, v2, v11

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 822
    .local v8, c:Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 839
    :goto_0
    return-object v4

    .line 825
    :cond_0
    const/4 v7, 0x0

    .line 826
    .local v7, bExchgExist:Z
    const/4 v9, 0x0

    .line 827
    .local v9, retUsername:Ljava/lang/String;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 828
    const/4 v7, 0x1

    .line 829
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 830
    const-string v0, "_name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 833
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 835
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 836
    .local v6, b:Landroid/os/Bundle;
    const-string v0, "username"

    invoke-virtual {v6, v0, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    const-string v1, "status"

    if-eqz v7, :cond_2

    move v0, v10

    :goto_1
    invoke-virtual {v6, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v4, v6

    .line 839
    goto :goto_0

    :cond_2
    move v0, v11

    .line 837
    goto :goto_1
.end method

.method protected getGoogleAccountStatus()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 843
    iget-boolean v2, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mCheckGoogleAccount:Z

    if-nez v2, :cond_0

    .line 844
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->asyncCheckGoogleAccount()V

    .line 845
    const/4 v0, 0x0

    .line 860
    :goto_0
    return-object v0

    .line 847
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mCheckGoogleAccount:Z

    .line 849
    const/4 v1, -0x1

    .line 850
    .local v1, status:I
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mGoogleAccount:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mGoogleAccount:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 851
    :cond_1
    const/4 v1, 0x0

    .line 856
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 857
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "username"

    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mGoogleAccount:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 853
    .end local v0           #b:Landroid/os/Bundle;
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method protected getOtherMailAccountStatus(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 891
    const/4 v0, 0x0

    .line 892
    .local v0, b:Landroid/os/Bundle;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailCount:I

    if-ge v1, v2, :cond_1

    .line 893
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailKeys:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 894
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #b:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 895
    .restart local v0       #b:Landroid/os/Bundle;
    const-string v3, "username"

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailUsernames:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    const-string v2, "status"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v0

    .line 997
    :goto_1
    return-object v2

    .line 892
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 902
    :cond_1
    if-nez v0, :cond_2

    const-string v2, "orange_mail_login"

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 903
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #b:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 904
    .restart local v0       #b:Landroid/os/Bundle;
    const-string v2, "username"

    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mLogoutString:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    const-string v2, "status"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v0

    .line 906
    goto :goto_1

    .line 910
    :cond_2
    if-nez v0, :cond_3

    const-string v2, "orange_3rd_party_mail_login"

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 911
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #b:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 912
    .restart local v0       #b:Landroid/os/Bundle;
    const-string v2, "username"

    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mLogoutString:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    const-string v2, "status"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v0

    .line 914
    goto :goto_1

    .line 918
    :cond_3
    if-nez v0, :cond_4

    const-string v2, "tmo_mail_login"

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    .line 919
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #b:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 920
    .restart local v0       #b:Landroid/os/Bundle;
    const-string v2, "username"

    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mLogoutString:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    const-string v2, "status"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v0

    .line 922
    goto :goto_1

    .line 926
    :cond_4
    if-nez v0, :cond_5

    const-string v2, "o2_mail_login"

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5

    .line 927
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #b:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 928
    .restart local v0       #b:Landroid/os/Bundle;
    const-string v2, "username"

    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mLogoutString:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    const-string v2, "status"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v0

    .line 930
    goto :goto_1

    .line 934
    :cond_5
    if-nez v0, :cond_6

    const-string v2, "my_mail_login"

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6

    .line 935
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #b:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 936
    .restart local v0       #b:Landroid/os/Bundle;
    const-string v2, "username"

    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mLogoutString:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    const-string v2, "status"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v0

    .line 938
    goto/16 :goto_1

    .line 942
    :cond_6
    if-nez v0, :cond_7

    const-string v2, "bell_net_mail_login"

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_7

    .line 943
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #b:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 944
    .restart local v0       #b:Landroid/os/Bundle;
    const-string v2, "username"

    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mLogoutString:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    const-string v2, "status"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v0

    .line 946
    goto/16 :goto_1

    .line 950
    :cond_7
    if-nez v0, :cond_8

    const-string v2, "aol_mail_login"

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_8

    .line 951
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #b:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 952
    .restart local v0       #b:Landroid/os/Bundle;
    const-string v2, "username"

    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mLogoutString:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    const-string v2, "status"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v0

    .line 954
    goto/16 :goto_1

    .line 958
    :cond_8
    if-nez v0, :cond_9

    const-string v2, "yahoo_mail_login"

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_9

    .line 959
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #b:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 960
    .restart local v0       #b:Landroid/os/Bundle;
    const-string v2, "username"

    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mLogoutString:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    const-string v2, "status"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v0

    .line 962
    goto/16 :goto_1

    .line 966
    :cond_9
    if-nez v0, :cond_a

    const-string v2, "1und1_mail_login"

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_a

    .line 967
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #b:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 968
    .restart local v0       #b:Landroid/os/Bundle;
    const-string v2, "username"

    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mLogoutString:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    const-string v2, "status"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v0

    .line 970
    goto/16 :goto_1

    .line 974
    :cond_a
    if-nez v0, :cond_b

    const-string v2, "rus_mts_mail_login"

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_b

    .line 975
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #b:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 976
    .restart local v0       #b:Landroid/os/Bundle;
    const-string v2, "username"

    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mLogoutString:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    const-string v2, "status"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v0

    .line 978
    goto/16 :goto_1

    .line 982
    :cond_b
    if-nez v0, :cond_c

    const-string v2, "ru_mail_login"

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_c

    .line 983
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #b:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 984
    .restart local v0       #b:Landroid/os/Bundle;
    const-string v2, "username"

    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mLogoutString:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    const-string v2, "status"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v0

    .line 986
    goto/16 :goto_1

    .line 990
    :cond_c
    if-nez v0, :cond_d

    const-string v2, "sympatico_ca_login"

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_d

    .line 991
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #b:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 992
    .restart local v0       #b:Landroid/os/Bundle;
    const-string v2, "username"

    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mLogoutString:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    const-string v2, "status"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v0

    .line 994
    goto/16 :goto_1

    .line 997
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_1
.end method

.method protected initMailAccounts()V
    .locals 21

    .prologue
    .line 360
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailKeys:Ljava/util/ArrayList;

    .line 361
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailTitles:Ljava/util/ArrayList;

    .line 362
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailUsernames:Ljava/util/ArrayList;

    .line 364
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "orange_mail"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 365
    .local v15, orangeMail:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tmo_mail"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 366
    .local v19, tmoMail:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "o2_mail"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 367
    .local v14, o2Mail:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "my_mail"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 368
    .local v12, myMail:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bell_net_mail"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 369
    .local v9, bellnetMail:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "aol_mail"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 370
    .local v8, aolMail:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "yahoo_mail"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 371
    .local v20, yahooMail:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "1und1_mail"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 372
    .local v7, Mail1und1:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "rus_mts_mail"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 373
    .local v17, rusmtsMail:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ru_mail"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 374
    .local v16, ruMail:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sympatico_ca_mail"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 376
    .local v18, synpaticoMail:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->MAIL_ACCOUNT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id,_name,_desc"

    aput-object v5, v3, v4

    const-string v4, "_provider != \'Exchange\' AND _del != 1"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 377
    .local v10, c:Landroid/database/Cursor;
    const-string v1, "OOBE_AccountSetupActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Cursor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    if-nez v10, :cond_0

    .line 444
    :goto_0
    return-void

    .line 381
    :cond_0
    const/4 v13, 0x0

    .line 382
    .local v13, name:Ljava/lang/String;
    const/4 v11, 0x0

    .line 383
    .local v11, i:I
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 384
    const-string v1, "_name"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 385
    if-eqz v13, :cond_1

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 386
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailKeys:Ljava/util/ArrayList;

    const-string v2, "orange_mail_login"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    const-string v1, "OOBE_AccountSetupActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Orange Mail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailTitles:Ljava/util/ArrayList;

    const-string v2, "_desc"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailUsernames:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    const-string v2, "OOBE_AccountSetupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mail count : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", key = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailKeys:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", Title = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailTitles:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", username = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailUsernames:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 389
    :cond_1
    if-eqz v13, :cond_2

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 390
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailKeys:Ljava/util/ArrayList;

    const-string v2, "tmo_mail_login"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    const-string v1, "OOBE_AccountSetupActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tmo Mail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 393
    :cond_2
    if-eqz v13, :cond_3

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 394
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailKeys:Ljava/util/ArrayList;

    const-string v2, "o2_mail_login"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    const-string v1, "OOBE_AccountSetupActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "O2 Mail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 397
    :cond_3
    if-eqz v13, :cond_4

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 398
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailKeys:Ljava/util/ArrayList;

    const-string v2, "my_mail_login"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    const-string v1, "OOBE_AccountSetupActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "My Mail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 401
    :cond_4
    if-eqz v13, :cond_5

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 402
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailKeys:Ljava/util/ArrayList;

    const-string v2, "bell_net_mail_login"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    const-string v1, "OOBE_AccountSetupActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bell Net Mail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 405
    :cond_5
    if-eqz v13, :cond_6

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 406
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailKeys:Ljava/util/ArrayList;

    const-string v2, "aol_mail_login"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    const-string v1, "OOBE_AccountSetupActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AOL Mail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 409
    :cond_6
    if-eqz v13, :cond_7

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 410
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailKeys:Ljava/util/ArrayList;

    const-string v2, "yahoo_mail_login"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    const-string v1, "OOBE_AccountSetupActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Yahoo Mail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 413
    :cond_7
    if-eqz v13, :cond_8

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 414
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailKeys:Ljava/util/ArrayList;

    const-string v2, "1und1_mail_login"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    const-string v1, "OOBE_AccountSetupActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1und1 Mail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 417
    :cond_8
    if-eqz v13, :cond_9

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 418
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailKeys:Ljava/util/ArrayList;

    const-string v2, "rus_mts_mail_login"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    const-string v1, "OOBE_AccountSetupActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RUS MTS Mail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 421
    :cond_9
    if-eqz v13, :cond_a

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 422
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailKeys:Ljava/util/ArrayList;

    const-string v2, "ru_mail_login"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    const-string v1, "OOBE_AccountSetupActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RU Mail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 425
    :cond_a
    if-eqz v13, :cond_b

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 426
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailKeys:Ljava/util/ArrayList;

    const-string v2, "sympatico_ca_login"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    const-string v1, "OOBE_AccountSetupActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Synpatico Mail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 430
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailKeys:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mail_login"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 440
    :cond_c
    move-object/from16 v0, p0

    iput v11, v0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailCount:I

    .line 441
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 443
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->initOrange3rdPartyMailAccounts()V

    goto/16 :goto_0
.end method

.method protected initOrange3rdPartyMailAccounts()V
    .locals 13

    .prologue
    .line 447
    const/4 v6, 0x0

    .line 448
    .local v6, c_orange:Landroid/database/Cursor;
    const-string v0, "orange_3rd_party_mail_login"

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->isAccountSupport(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 450
    const/4 v0, 0x4

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "email"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "user_name"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "name"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "status"

    aput-object v1, v2, v0

    .line 451
    .local v2, fields:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->Z7_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "scope IN (0, 1, 2, 3)"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 452
    if-eqz v6, :cond_4

    .line 453
    const-string v0, "OOBE_AccountSetupActivity"

    const-string v1, "initOrange3rdPartyMailAccounts() Get Orange 3rd party mail accounts from DB, and then add to other mail list"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 455
    const/4 v9, 0x0

    .line 456
    .local v9, isSkip:Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key_orange_3rd_party_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 457
    .local v10, key:Ljava/lang/String;
    const-string v0, "name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 458
    .local v11, title:Ljava/lang/String;
    const-string v0, "user_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 459
    .local v12, username:Ljava/lang/String;
    const-string v0, "OOBE_AccountSetupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "email: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const-string v0, "OOBE_AccountSetupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "user_name: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const-string v0, "OOBE_AccountSetupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "name"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const-string v0, "OOBE_AccountSetupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "status: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "status"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget v7, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailCount:I

    .line 464
    .local v7, count:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v7, :cond_2

    .line 465
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailTitles:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 466
    const/4 v9, 0x1

    .line 464
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 469
    :cond_2
    if-nez v9, :cond_0

    .line 470
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailTitles:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailUsernames:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    iget v0, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 482
    .end local v2           #fields:[Ljava/lang/String;
    .end local v7           #count:I
    .end local v8           #i:I
    .end local v9           #isSkip:Z
    .end local v10           #key:Ljava/lang/String;
    .end local v11           #title:Ljava/lang/String;
    .end local v12           #username:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 483
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 478
    .restart local v2       #fields:[Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v0, "OOBE_AccountSetupActivity"

    const-string v1, "Orange 3rd party cursor is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 482
    :cond_5
    if-eqz v6, :cond_6

    .line 483
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 487
    .end local v2           #fields:[Ljava/lang/String;
    :cond_6
    const-string v0, "OOBE_AccountSetupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initOrange3rdPartyMailAccounts() otherMailCount = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    return-void
.end method

.method protected isAccountSupport(Ljava/lang/String;)Z
    .locals 3
    .parameter "key"

    .prologue
    const/4 v0, 0x0

    .line 532
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mCustomize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    if-nez v1, :cond_0

    .line 533
    new-instance v1, Lcom/htc/android/htcsetupwizard/CustomizationReader;

    invoke-direct {v1, p0}, Lcom/htc/android/htcsetupwizard/CustomizationReader;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mCustomize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    .line 536
    :cond_0
    const-string v1, "orange_mail_login"

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 537
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mCustomize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    const-string v2, "Orange_Mail"

    invoke-virtual {v1, v2}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->hasAccountConfig(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 605
    :cond_1
    :goto_0
    return v0

    .line 540
    :cond_2
    const-string v1, "orange_3rd_party_mail_login"

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    .line 541
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mCustomize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    const-string v2, "Orange_3rd_Party_Mail"

    invoke-virtual {v1, v2}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->hasAccountConfig(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 605
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 544
    :cond_4
    const-string v1, "tmo_mail_login"

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    .line 545
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mCustomize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    const-string v2, "Tmo_Mail"

    invoke-virtual {v1, v2}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->hasAccountConfig(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 548
    :cond_5
    const-string v1, "o2_mail_login"

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_6

    .line 549
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mCustomize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    const-string v2, "O2_Mail"

    invoke-virtual {v1, v2}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->hasAccountConfig(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 552
    :cond_6
    const-string v1, "my_mail_login"

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_7

    .line 553
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mCustomize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    const-string v2, "My_Mail"

    invoke-virtual {v1, v2}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->hasAccountConfig(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 556
    :cond_7
    const-string v1, "bell_net_mail_login"

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_8

    .line 557
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mCustomize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    const-string v2, "Bell_Net_Mail"

    invoke-virtual {v1, v2}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->hasAccountConfig(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 560
    :cond_8
    const-string v1, "aol_mail_login"

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_9

    .line 561
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mCustomize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    const-string v2, "AOL_Mail"

    invoke-virtual {v1, v2}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->hasAccountConfig(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 564
    :cond_9
    const-string v1, "yahoo_mail_login"

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_a

    .line 565
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mCustomize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    const-string v2, "Yahoo_Mail"

    invoke-virtual {v1, v2}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->hasAccountConfig(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    .line 568
    :cond_a
    const-string v1, "1und1_mail_login"

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_b

    .line 569
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mCustomize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    const-string v2, "1und1_Mail"

    invoke-virtual {v1, v2}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->hasAccountConfig(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    .line 572
    :cond_b
    const-string v1, "rus_mts_mail_login"

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_c

    .line 573
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mCustomize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    const-string v2, "Rus_Mts_Mail"

    invoke-virtual {v1, v2}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->hasAccountConfig(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    .line 576
    :cond_c
    const-string v1, "ru_mail_login"

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_d

    .line 577
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mCustomize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    const-string v2, "Ru_Mail"

    invoke-virtual {v1, v2}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->hasAccountConfig(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    .line 580
    :cond_d
    const-string v1, "sympatico_ca_login"

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_e

    .line 581
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mCustomize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    const-string v2, "Sympatico_ca_Mail"

    invoke-virtual {v1, v2}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->hasAccountConfig(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    .line 584
    :cond_e
    const-string v1, "community_login"

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_f

    .line 585
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcCommunityFlag:Z

    goto/16 :goto_0

    .line 589
    :cond_f
    const-string v1, "google_login"

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_10

    .line 590
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mCustomize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    const-string v2, "GMail"

    invoke-virtual {v1, v2}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->hasAccountConfig(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    .line 593
    :cond_10
    const-string v1, "exchange_login"

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_11

    .line 594
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mCustomize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    const-string v2, "Exchange"

    invoke-virtual {v1, v2}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->hasAccountConfig(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    .line 597
    :cond_11
    const-string v1, "mail_login"

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_12

    .line 598
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mCustomize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    const-string v2, "Other_Mail"

    invoke-virtual {v1, v2}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->hasAccountConfig(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    .line 601
    :cond_12
    const-string v1, "aab_login"

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 602
    invoke-static {}, Landroid/app/SyncConfig;->isAABEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0
.end method

.method loginAAB()V
    .locals 5

    .prologue
    .line 1435
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.MYRIAD_SYNCML_SETUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1436
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1443
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 1438
    :catch_0
    move-exception v0

    .line 1439
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "OOBE_AccountSetupActivity"

    const-string v3, "loginBackupAssistant exception occurs"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    const-string v2, "OOBE_AccountSetupActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loginBackupAssistant exception cause by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    const-string v2, "OOBE_AccountSetupActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loginBackupAssistant exception message , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method loginCommunity()V
    .locals 5

    .prologue
    .line 1411
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.MYRIAD_SYNCML_SETUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1413
    .local v1, intent:Landroid/content/Intent;
    const/16 v2, 0x3f

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1420
    :goto_0
    return-void

    .line 1415
    :catch_0
    move-exception v0

    .line 1416
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "OOBE_AccountSetupActivity"

    const-string v3, "loginCommunity exception occurs"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    const-string v2, "OOBE_AccountSetupActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loginCommunity exception cause by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    const-string v2, "OOBE_AccountSetupActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loginCommunity exception message , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method loginExchange()V
    .locals 5

    .prologue
    .line 1402
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1403
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "intent.eas.from_where"

    const-string v2, "extra.eas.from.mail"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1404
    const-string v1, "intent.eas.mode.wizard"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1405
    const-string v1, "com.htc.android.mail"

    const-string v2, "com.htc.android.mail.easclient.ExchangeSvrSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1406
    const-string v1, "CallingActivity"

    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "CallingActivity"

    const/16 v4, 0x5e

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1407
    const/16 v1, 0x33

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1408
    return-void
.end method

.method loginGoogle()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 1423
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mCallback:Landroid/accounts/AccountManagerCallback;

    move-object v3, v2

    move-object v4, v2

    move-object v5, p0

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 1431
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 22
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "idata"

    .prologue
    .line 1182
    const/16 v2, 0x3f

    move/from16 v0, p1

    if-ne v0, v2, :cond_5

    .line 1183
    const-string v20, ""

    .line 1184
    .local v20, szSummaryDescription:Ljava/lang/String;
    and-int/lit8 v2, p2, 0x1

    if-lez v2, :cond_1

    .line 1185
    const-string v2, "OOBE_AccountSetupActivity"

    const-string v3, "user canceled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    :goto_0
    const-string v2, "OOBE_AccountSetupActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityResult() Community, key = community_login, username = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", resultCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "community_status_from_server"

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1364
    .end local v20           #szSummaryDescription:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 1187
    .restart local v20       #szSummaryDescription:Ljava/lang/String;
    :cond_1
    and-int/lit8 v2, p2, 0x2

    if-lez v2, :cond_4

    .line 1188
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v19

    .line 1189
    .local v19, preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;
    const-string v2, "mail_accounts"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v8

    check-cast v8, Lcom/htc/preference/HtcPreferenceCategory;

    .line 1190
    .local v8, MailAccountCategory:Lcom/htc/preference/HtcPreferenceCategory;
    const-string v2, "community_login"

    invoke-virtual {v8, v2}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v18

    check-cast v18, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    .line 1191
    .local v18, pref:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;
    and-int/lit8 v2, p2, 0x4

    if-lez v2, :cond_2

    .line 1193
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0090

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 1196
    :cond_2
    and-int/lit8 v2, p2, 0x8

    if-lez v2, :cond_3

    .line 1198
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0091

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 1200
    :cond_3
    const/4 v2, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setLoginStatus(ILjava/lang/String;)V

    goto :goto_0

    .line 1203
    .end local v8           #MailAccountCategory:Lcom/htc/preference/HtcPreferenceCategory;
    .end local v18           #pref:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;
    .end local v19           #preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;
    :cond_4
    const-string v2, "OOBE_AccountSetupActivity"

    const-string v3, "Community Error"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1211
    .end local v20           #szSummaryDescription:Ljava/lang/String;
    :cond_5
    const/16 v2, 0x41

    move/from16 v0, p1

    if-ne v0, v2, :cond_8

    .line 1212
    const-string v2, "account_list"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1213
    const-string v2, "account_list"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 1214
    .local v11, accounts:[Ljava/lang/String;
    move-object v12, v11

    .local v12, arr$:[Ljava/lang/String;
    array-length v0, v12

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_2
    move/from16 v0, v16

    if-ge v14, v0, :cond_7

    aget-object v9, v12, v14

    .line 1215
    .local v9, acc:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->orangeMailCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->orangeMailCount:I

    .line 1214
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 1219
    .end local v9           #acc:Ljava/lang/String;
    .end local v11           #accounts:[Ljava/lang/String;
    .end local v12           #arr$:[Ljava/lang/String;
    .end local v14           #i$:I
    .end local v16           #len$:I
    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->orangeMailCount:I

    .line 1221
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailCount:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->originalOtherMailCount:I

    .line 1222
    const-string v2, "OOBE_AccountSetupActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Orange 3rd party, onActivityResult, orangeMailCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->orangeMailCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", originalOtherMailCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->originalOtherMailCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    const-wide/16 v6, 0x1f4

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 1226
    :cond_8
    const/16 v2, 0x64

    move/from16 v0, p1

    if-eq v0, v2, :cond_9

    const/16 v2, 0x35

    move/from16 v0, p1

    if-eq v0, v2, :cond_9

    const/16 v2, 0x36

    move/from16 v0, p1

    if-eq v0, v2, :cond_9

    const/16 v2, 0x37

    move/from16 v0, p1

    if-eq v0, v2, :cond_9

    const/16 v2, 0x38

    move/from16 v0, p1

    if-eq v0, v2, :cond_9

    const/16 v2, 0x39

    move/from16 v0, p1

    if-eq v0, v2, :cond_9

    const/16 v2, 0x3a

    move/from16 v0, p1

    if-eq v0, v2, :cond_9

    const/16 v2, 0x3b

    move/from16 v0, p1

    if-eq v0, v2, :cond_9

    const/16 v2, 0x3c

    move/from16 v0, p1

    if-eq v0, v2, :cond_9

    const/16 v2, 0x3d

    move/from16 v0, p1

    if-eq v0, v2, :cond_9

    const/16 v2, 0x3e

    move/from16 v0, p1

    if-eq v0, v2, :cond_9

    const/16 v2, 0x40

    move/from16 v0, p1

    if-ne v0, v2, :cond_20

    :cond_9
    const/16 v2, 0x6b

    move/from16 v0, p2

    if-ne v0, v2, :cond_20

    .line 1240
    const-string v2, "AccountId"

    const/4 v3, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 1241
    .local v10, accountId:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1243
    .local v5, where:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->MAIL_ACCOUNT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_name,_desc"

    aput-object v7, v4, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1244
    .local v13, c:Landroid/database/Cursor;
    if-eqz v13, :cond_0

    .line 1247
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1250
    const/16 v2, 0x35

    move/from16 v0, p1

    if-ne v0, v2, :cond_a

    .line 1251
    const-string v15, "orange_mail_login"

    .line 1275
    .local v15, key:Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailKeys:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1276
    const-string v2, "_desc"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 1277
    .local v21, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailTitles:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1278
    const-string v2, "_name"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1279
    .local v17, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailUsernames:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1280
    const-string v2, "OOBE_AccountSetupActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityResult(), key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Title = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", username = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->otherMailCount:I

    .line 1283
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1285
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v19

    .line 1286
    .restart local v19       #preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;
    const-string v2, "mail_accounts"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v8

    check-cast v8, Lcom/htc/preference/HtcPreferenceCategory;

    .line 1287
    .restart local v8       #MailAccountCategory:Lcom/htc/preference/HtcPreferenceCategory;
    const/16 v2, 0x35

    move/from16 v0, p1

    if-ne v0, v2, :cond_15

    .line 1288
    const-string v2, "orange_mail_login"

    invoke-virtual {v8, v2}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v18

    check-cast v18, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    .line 1289
    .restart local v18       #pref:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;
    const/4 v2, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setLoginStatus(ILjava/lang/String;)V

    .line 1290
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "orange_mail"

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1291
    const-string v2, "OOBE_AccountSetupActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set Orange Mail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1252
    .end local v8           #MailAccountCategory:Lcom/htc/preference/HtcPreferenceCategory;
    .end local v15           #key:Ljava/lang/String;
    .end local v17           #name:Ljava/lang/String;
    .end local v18           #pref:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;
    .end local v19           #preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;
    .end local v21           #title:Ljava/lang/String;
    :cond_a
    const/16 v2, 0x36

    move/from16 v0, p1

    if-ne v0, v2, :cond_b

    .line 1253
    const-string v15, "tmo_mail_login"

    .restart local v15       #key:Ljava/lang/String;
    goto/16 :goto_3

    .line 1254
    .end local v15           #key:Ljava/lang/String;
    :cond_b
    const/16 v2, 0x37

    move/from16 v0, p1

    if-ne v0, v2, :cond_c

    .line 1255
    const-string v15, "o2_mail_login"

    .restart local v15       #key:Ljava/lang/String;
    goto/16 :goto_3

    .line 1256
    .end local v15           #key:Ljava/lang/String;
    :cond_c
    const/16 v2, 0x38

    move/from16 v0, p1

    if-ne v0, v2, :cond_d

    .line 1257
    const-string v15, "my_mail_login"

    .restart local v15       #key:Ljava/lang/String;
    goto/16 :goto_3

    .line 1258
    .end local v15           #key:Ljava/lang/String;
    :cond_d
    const/16 v2, 0x39

    move/from16 v0, p1

    if-ne v0, v2, :cond_e

    .line 1259
    const-string v15, "bell_net_mail_login"

    .restart local v15       #key:Ljava/lang/String;
    goto/16 :goto_3

    .line 1260
    .end local v15           #key:Ljava/lang/String;
    :cond_e
    const/16 v2, 0x3a

    move/from16 v0, p1

    if-ne v0, v2, :cond_f

    .line 1261
    const-string v15, "aol_mail_login"

    .restart local v15       #key:Ljava/lang/String;
    goto/16 :goto_3

    .line 1262
    .end local v15           #key:Ljava/lang/String;
    :cond_f
    const/16 v2, 0x3b

    move/from16 v0, p1

    if-ne v0, v2, :cond_10

    .line 1263
    const-string v15, "yahoo_mail_login"

    .restart local v15       #key:Ljava/lang/String;
    goto/16 :goto_3

    .line 1264
    .end local v15           #key:Ljava/lang/String;
    :cond_10
    const/16 v2, 0x3c

    move/from16 v0, p1

    if-ne v0, v2, :cond_11

    .line 1265
    const-string v15, "1und1_mail_login"

    .restart local v15       #key:Ljava/lang/String;
    goto/16 :goto_3

    .line 1266
    .end local v15           #key:Ljava/lang/String;
    :cond_11
    const/16 v2, 0x3d

    move/from16 v0, p1

    if-ne v0, v2, :cond_12

    .line 1267
    const-string v15, "rus_mts_mail_login"

    .restart local v15       #key:Ljava/lang/String;
    goto/16 :goto_3

    .line 1268
    .end local v15           #key:Ljava/lang/String;
    :cond_12
    const/16 v2, 0x3e

    move/from16 v0, p1

    if-ne v0, v2, :cond_13

    .line 1269
    const-string v15, "ru_mail_login"

    .restart local v15       #key:Ljava/lang/String;
    goto/16 :goto_3

    .line 1270
    .end local v15           #key:Ljava/lang/String;
    :cond_13
    const/16 v2, 0x40

    move/from16 v0, p1

    if-ne v0, v2, :cond_14

    .line 1271
    const-string v15, "sympatico_ca_login"

    .restart local v15       #key:Ljava/lang/String;
    goto/16 :goto_3

    .line 1273
    .end local v15           #key:Ljava/lang/String;
    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mail_login"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .restart local v15       #key:Ljava/lang/String;
    goto/16 :goto_3

    .line 1293
    .restart local v8       #MailAccountCategory:Lcom/htc/preference/HtcPreferenceCategory;
    .restart local v17       #name:Ljava/lang/String;
    .restart local v19       #preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;
    .restart local v21       #title:Ljava/lang/String;
    :cond_15
    const/16 v2, 0x36

    move/from16 v0, p1

    if-ne v0, v2, :cond_16

    .line 1294
    const-string v2, "tmo_mail_login"

    invoke-virtual {v8, v2}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v18

    check-cast v18, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    .line 1295
    .restart local v18       #pref:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;
    const/4 v2, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setLoginStatus(ILjava/lang/String;)V

    .line 1296
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tmo_mail"

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1297
    const-string v2, "OOBE_AccountSetupActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set TMO Mail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1299
    .end local v18           #pref:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;
    :cond_16
    const/16 v2, 0x37

    move/from16 v0, p1

    if-ne v0, v2, :cond_17

    .line 1300
    const-string v2, "o2_mail_login"

    invoke-virtual {v8, v2}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v18

    check-cast v18, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    .line 1301
    .restart local v18       #pref:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;
    const/4 v2, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setLoginStatus(ILjava/lang/String;)V

    .line 1302
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "o2_mail"

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1303
    const-string v2, "OOBE_AccountSetupActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set O2 Mail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1305
    .end local v18           #pref:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;
    :cond_17
    const/16 v2, 0x38

    move/from16 v0, p1

    if-ne v0, v2, :cond_18

    .line 1306
    const-string v2, "my_mail_login"

    invoke-virtual {v8, v2}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v18

    check-cast v18, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    .line 1307
    .restart local v18       #pref:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;
    const/4 v2, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setLoginStatus(ILjava/lang/String;)V

    .line 1308
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "my_mail"

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1309
    const-string v2, "OOBE_AccountSetupActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set My Mail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1311
    .end local v18           #pref:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;
    :cond_18
    const/16 v2, 0x39

    move/from16 v0, p1

    if-ne v0, v2, :cond_19

    .line 1312
    const-string v2, "bell_net_mail_login"

    invoke-virtual {v8, v2}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v18

    check-cast v18, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    .line 1313
    .restart local v18       #pref:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;
    const/4 v2, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setLoginStatus(ILjava/lang/String;)V

    .line 1314
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bell_net_mail"

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1315
    const-string v2, "OOBE_AccountSetupActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set Bell Net Mail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1317
    .end local v18           #pref:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;
    :cond_19
    const/16 v2, 0x3a

    move/from16 v0, p1

    if-ne v0, v2, :cond_1a

    .line 1318
    const-string v2, "aol_mail_login"

    invoke-virtual {v8, v2}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v18

    check-cast v18, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    .line 1319
    .restart local v18       #pref:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;
    const/4 v2, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setLoginStatus(ILjava/lang/String;)V

    .line 1320
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "aol_mail"

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1321
    const-string v2, "OOBE_AccountSetupActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set AOL Mail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1323
    .end local v18           #pref:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;
    :cond_1a
    const/16 v2, 0x3b

    move/from16 v0, p1

    if-ne v0, v2, :cond_1b

    .line 1324
    const-string v2, "yahoo_mail_login"

    invoke-virtual {v8, v2}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v18

    check-cast v18, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    .line 1325
    .restart local v18       #pref:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;
    const/4 v2, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setLoginStatus(ILjava/lang/String;)V

    .line 1326
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "yahoo_mail"

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1327
    const-string v2, "OOBE_AccountSetupActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set YAHOO Mail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1329
    .end local v18           #pref:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;
    :cond_1b
    const/16 v2, 0x3c

    move/from16 v0, p1

    if-ne v0, v2, :cond_1c

    .line 1330
    const-string v2, "1und1_mail_login"

    invoke-virtual {v8, v2}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v18

    check-cast v18, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    .line 1331
    .restart local v18       #pref:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;
    const/4 v2, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setLoginStatus(ILjava/lang/String;)V

    .line 1332
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "1und1_mail"

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1333
    const-string v2, "OOBE_AccountSetupActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set 1UND1 Mail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1335
    .end local v18           #pref:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;
    :cond_1c
    const/16 v2, 0x3d

    move/from16 v0, p1

    if-ne v0, v2, :cond_1d

    .line 1336
    const-string v2, "rus_mts_mail_login"

    invoke-virtual {v8, v2}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v18

    check-cast v18, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    .line 1337
    .restart local v18       #pref:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;
    const/4 v2, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setLoginStatus(ILjava/lang/String;)V

    .line 1338
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "rus_mts_mail"

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1339
    const-string v2, "OOBE_AccountSetupActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set RUS_MTS Mail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1341
    .end local v18           #pref:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;
    :cond_1d
    const/16 v2, 0x3e

    move/from16 v0, p1

    if-ne v0, v2, :cond_1e

    .line 1342
    const-string v2, "ru_mail_login"

    invoke-virtual {v8, v2}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v18

    check-cast v18, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    .line 1343
    .restart local v18       #pref:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;
    const/4 v2, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setLoginStatus(ILjava/lang/String;)V

    .line 1344
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ru_mail"

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1345
    const-string v2, "OOBE_AccountSetupActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set RU Mail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1347
    .end local v18           #pref:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;
    :cond_1e
    const/16 v2, 0x40

    move/from16 v0, p1

    if-ne v0, v2, :cond_1f

    .line 1348
    const-string v2, "sympatico_ca_login"

    invoke-virtual {v8, v2}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v18

    check-cast v18, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    .line 1349
    .restart local v18       #pref:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;
    const/4 v2, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setLoginStatus(ILjava/lang/String;)V

    .line 1350
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sympatico_ca_mail"

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1351
    const-string v2, "OOBE_AccountSetupActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set Synpatico Ca Mail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1354
    .end local v18           #pref:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;
    :cond_1f
    new-instance v18, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;-><init>(Landroid/content/Context;)V

    .line 1355
    .restart local v18       #pref:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setKey(Ljava/lang/String;)V

    .line 1356
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1357
    const/4 v2, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setLoginStatus(ILjava/lang/String;)V

    .line 1358
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_1

    .line 1361
    .end local v5           #where:Ljava/lang/String;
    .end local v8           #MailAccountCategory:Lcom/htc/preference/HtcPreferenceCategory;
    .end local v10           #accountId:I
    .end local v13           #c:Landroid/database/Cursor;
    .end local v15           #key:Ljava/lang/String;
    .end local v17           #name:Ljava/lang/String;
    .end local v18           #pref:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;
    .end local v19           #preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;
    .end local v21           #title:Ljava/lang/String;
    :cond_20
    const-string v2, "OOBE_AccountSetupActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityResult(), requestCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1061
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1075
    :goto_0
    return-void

    .line 1064
    :pswitch_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->setResult(I)V

    .line 1065
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->finish()V

    goto :goto_0

    .line 1070
    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->setResult(I)V

    .line 1071
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->finish()V

    goto :goto_0

    .line 1061
    :pswitch_data_0
    .packed-switch 0x7f0d0003
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 339
    const-string v0, "OOBE_AccountSetupActivity"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->fillInitData()V

    .line 341
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->setLayout()V

    .line 342
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 343
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 316
    const-string v1, "OOBE_AccountSetupActivity"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 318
    const v1, 0x7f0a00a1

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mLogoutString:Ljava/lang/String;

    .line 319
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "google_back_up_settings_dialog"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mShowDialog:I

    .line 321
    invoke-static {}, Landroid/app/SyncConfig;->isAABEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/syncml/service/ISyncMLService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 324
    .local v0, result:Z
    const-string v1, "OOBE_AccountSetupActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bind ISyncMLService result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    if-nez v0, :cond_0

    .line 326
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 327
    const-string v1, "OOBE_AccountSetupActivity"

    const-string v2, "unbindService..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    .end local v0           #result:Z
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->fillInitData()V

    .line 332
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->setLayout()V

    .line 333
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->initMailAccounts()V

    .line 334
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->onCreatePreferences()V

    .line 335
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 1651
    packed-switch p1, :pswitch_data_0

    .line 1689
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1654
    :pswitch_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0094

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0095

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0014

    new-instance v2, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity$6;

    invoke-direct {v2, p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity$6;-><init>(Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0015

    new-instance v2, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity$5;

    invoke-direct {v2, p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity$5;-><init>(Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity$4;

    invoke-direct {v1, p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity$4;-><init>(Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 1651
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1128
    const-string v1, "OOBE_AccountSetupActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    sparse-switch p1, :sswitch_data_0

    .line 1146
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 1132
    :sswitch_1
    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mbBackKey:Z

    if-ne v0, v1, :cond_1

    .line 1133
    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mbBackFinish:Z

    if-nez v1, :cond_0

    .line 1134
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->setResult(I)V

    .line 1135
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1140
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1130
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1115
    const-string v0, "OOBE_AccountSetupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyUp("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    packed-switch p1, :pswitch_data_0

    .line 1122
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1119
    :pswitch_0
    const v0, 0x7f0d0003

    const v1, 0x7f0d0004

    invoke-static {p0, v0, v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->switchKeyFocus(Landroid/app/Activity;II)V

    goto :goto_0

    .line 1116
    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 1108
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onPause()V

    .line 1109
    const-string v0, "OOBE_AccountSetupActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    return-void
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 1163
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceActivity;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    .line 1165
    const-string v0, "OOBE_AccountSetupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceTreeClick(), screen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", preference = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mail_login"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1168
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->addMailAccount()V

    .line 1178
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1169
    :cond_1
    instance-of v0, p2, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 1170
    check-cast v0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    invoke-virtual {v0}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->isLogin()I

    move-result v0

    if-nez v0, :cond_2

    .line 1171
    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->runSelectedLogin(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v0, p2

    .line 1172
    check-cast v0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    invoke-virtual {v0}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->isLogin()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1173
    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->runSelectedLogout(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 1093
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 1085
    const-string v0, "OOBE_AccountSetupActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 1087
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->updateAllStatus()V

    .line 1088
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 1098
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 1079
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onStart()V

    .line 1080
    const-string v0, "OOBE_AccountSetupActivity"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 1102
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onStop()V

    .line 1103
    const-string v0, "OOBE_AccountSetupActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    return-void
.end method

.method public runSelectedLogin(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 1367
    const-string v0, "orange_mail_login"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1368
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->loginOrange()V

    .line 1399
    :cond_0
    :goto_0
    return-void

    .line 1369
    :cond_1
    const-string v0, "orange_3rd_party_mail_login"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 1370
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->loginOrange3rdParty()V

    goto :goto_0

    .line 1371
    :cond_2
    const-string v0, "tmo_mail_login"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 1372
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->loginTMO()V

    goto :goto_0

    .line 1373
    :cond_3
    const-string v0, "o2_mail_login"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 1374
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->loginO2()V

    goto :goto_0

    .line 1375
    :cond_4
    const-string v0, "my_mail_login"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    .line 1376
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->loginMyMail()V

    goto :goto_0

    .line 1377
    :cond_5
    const-string v0, "bell_net_mail_login"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    .line 1378
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->loginBellNet()V

    goto :goto_0

    .line 1379
    :cond_6
    const-string v0, "aol_mail_login"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    .line 1380
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->loginAOL()V

    goto :goto_0

    .line 1381
    :cond_7
    const-string v0, "yahoo_mail_login"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    .line 1382
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->loginYahoo()V

    goto :goto_0

    .line 1383
    :cond_8
    const-string v0, "1und1_mail_login"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    .line 1384
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->login1und1()V

    goto :goto_0

    .line 1385
    :cond_9
    const-string v0, "rus_mts_mail_login"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    .line 1386
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->loginRusMts()V

    goto :goto_0

    .line 1387
    :cond_a
    const-string v0, "ru_mail_login"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b

    .line 1388
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->loginRu()V

    goto :goto_0

    .line 1389
    :cond_b
    const-string v0, "sympatico_ca_login"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    .line 1390
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->loginSynpatico()V

    goto/16 :goto_0

    .line 1391
    :cond_c
    const-string v0, "community_login"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_d

    .line 1392
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->loginCommunity()V

    goto/16 :goto_0

    .line 1393
    :cond_d
    const-string v0, "exchange_login"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_e

    .line 1394
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->loginExchange()V

    goto/16 :goto_0

    .line 1395
    :cond_e
    const-string v0, "google_login"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_f

    .line 1396
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->loginGoogle()V

    goto/16 :goto_0

    .line 1397
    :cond_f
    const-string v0, "aab_login"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1398
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->loginAAB()V

    goto/16 :goto_0
.end method

.method public runSelectedLogout(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 1560
    return-void
.end method

.method protected setLayout()V
    .locals 4

    .prologue
    .line 1001
    const v3, 0x7f030001

    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->setContentView(I)V

    .line 1003
    const v3, 0x7f0d0004

    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1004
    .local v1, btnNext:Landroid/widget/Button;
    if-eqz v1, :cond_0

    .line 1005
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1007
    :cond_0
    const v3, 0x7f0d0003

    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1008
    .local v0, btnBack:Landroid/widget/Button;
    if-eqz v0, :cond_1

    .line 1009
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1011
    :cond_1
    const v3, 0x7f0d003f

    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 1013
    .local v2, layout:Landroid/widget/LinearLayout;
    invoke-static {p0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleColor(Landroid/content/Context;Landroid/app/Activity;)V

    .line 1014
    invoke-static {p0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleDivider(Landroid/content/Context;Landroid/app/Activity;)V

    .line 1015
    const/16 v3, 0xb

    invoke-static {p0, v2, v3}, Lcom/htc/android/htcsetupwizard/MainActivity;->setProgressBar(Landroid/content/Context;Landroid/widget/LinearLayout;I)Lcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;

    .line 1016
    return-void
.end method

.method protected syncCommunityStatus()V
    .locals 5

    .prologue
    .line 1027
    const-string v2, "OOBE_AccountSetupActivity"

    const-string v3, "syncCommunityStatus"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tmo_client_service_status"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1029
    .local v1, serviceStatus:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1030
    const-string v1, "tmo_service_not_run"

    .line 1031
    :cond_0
    const-string v2, "tmo_service_not_run"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1032
    const-string v2, "OOBE_AccountSetupActivity"

    const-string v3, "start tmo community service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1034
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.htc.android.htcsetupwizard.tmo.TmoClientService"

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1035
    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1036
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tmo_client_service_status"

    const-string v4, "tmo_service_running"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1038
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->checkTmoClientServiceStatus()V

    .line 1040
    return-void
.end method

.method protected updateAllStatus()V
    .locals 5

    .prologue
    .line 676
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    .line 677
    .local v3, preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;
    const/4 v2, 0x0

    .line 678
    .local v2, pref:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;
    const/4 v1, 0x0

    .line 681
    .local v1, key:Ljava/lang/String;
    const-string v4, "mail_accounts"

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceCategory;

    .line 682
    .local v0, MailAccountCategory:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->updatePreferenceCategoryStatus(Lcom/htc/preference/HtcPreferenceCategory;)V

    .line 683
    return-void
.end method

.method protected updatePreferenceCategoryStatus(Lcom/htc/preference/HtcPreferenceCategory;)V
    .locals 5
    .parameter "category"

    .prologue
    .line 686
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreferenceCategory;->getPreferenceCount()I

    move-result v0

    .line 688
    .local v0, count:I
    const/4 v3, 0x0

    .line 689
    .local v3, pref:Lcom/htc/preference/HtcPreference;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 690
    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreferenceCategory;->getPreference(I)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    .line 691
    invoke-virtual {v3}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 692
    .local v2, key:Ljava/lang/String;
    const-string v4, "mail_login"

    invoke-virtual {v4, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    instance-of v4, v3, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    if-eqz v4, :cond_0

    move-object v4, v3

    .line 693
    check-cast v4, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->updatePreferenceStatus(Lcom/htc/android/htcsetupwizard/activity/AccountPreference;)V

    .line 689
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 696
    .end local v2           #key:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method protected updatePreferenceStatus(Lcom/htc/android/htcsetupwizard/activity/AccountPreference;)V
    .locals 11
    .parameter "pref"

    .prologue
    const v10, 0x7f0d0004

    const v9, 0x7f0a000e

    const/4 v8, 0x1

    .line 706
    invoke-virtual {p1}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 708
    .local v3, key:Ljava/lang/String;
    const/4 v4, -0x1

    .line 709
    .local v4, status:I
    const/4 v5, 0x0

    .line 711
    .local v5, username:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->getAccountStatus(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 712
    .local v0, b:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 713
    const-string v6, "status"

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 714
    const-string v6, "username"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 717
    :cond_0
    const/4 v2, 0x1

    .line 718
    .local v2, enable:Z
    const-string v6, "community_login"

    invoke-virtual {v3, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3

    .line 720
    if-nez v4, :cond_1

    .line 721
    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mLogoutString:Ljava/lang/String;

    invoke-virtual {p1, v4, v6}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setLoginStatus(ILjava/lang/String;)V

    .line 750
    :goto_0
    invoke-virtual {p1, v2}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setEnabled(Z)V

    .line 751
    return-void

    .line 723
    :cond_1
    if-ne v4, v8, :cond_2

    .line 724
    invoke-virtual {p1, v4, v5}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setLoginStatus(ILjava/lang/String;)V

    .line 727
    invoke-virtual {p0, v10}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 728
    .local v1, btn:Landroid/widget/Button;
    invoke-virtual {p0, v9}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 731
    .end local v1           #btn:Landroid/widget/Button;
    :cond_2
    invoke-virtual {p1, v4, v5}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setLoginStatus(ILjava/lang/String;)V

    .line 732
    const/4 v2, 0x0

    goto :goto_0

    .line 736
    :cond_3
    if-nez v4, :cond_4

    .line 737
    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mLogoutString:Ljava/lang/String;

    invoke-virtual {p1, v4, v6}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setLoginStatus(ILjava/lang/String;)V

    goto :goto_0

    .line 738
    :cond_4
    if-ne v4, v8, :cond_5

    .line 739
    invoke-virtual {p1, v4, v5}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setLoginStatus(ILjava/lang/String;)V

    .line 742
    invoke-virtual {p0, v10}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 743
    .restart local v1       #btn:Landroid/widget/Button;
    invoke-virtual {p0, v9}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 746
    .end local v1           #btn:Landroid/widget/Button;
    :cond_5
    invoke-virtual {p1, v4, v3}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setLoginStatus(ILjava/lang/String;)V

    .line 747
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected updatePreferenceStatus(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 699
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    .line 700
    .local v1, preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-virtual {v1, p1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 701
    .local v0, pref:Lcom/htc/preference/HtcPreference;
    const-string v2, "mail_login"

    invoke-virtual {v2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, v0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    if-eqz v2, :cond_0

    .line 702
    check-cast v0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    .end local v0           #pref:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->updatePreferenceStatus(Lcom/htc/android/htcsetupwizard/activity/AccountPreference;)V

    .line 703
    :cond_0
    return-void
.end method
