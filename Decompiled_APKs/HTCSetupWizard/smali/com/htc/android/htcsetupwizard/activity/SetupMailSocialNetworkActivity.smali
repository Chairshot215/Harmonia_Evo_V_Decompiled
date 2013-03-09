.class public Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "SetupMailSocialNetworkActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ACTION_COMMUNITY_LOGIN:I = 0x3f

.field private static final ACTION_ORANGE_3RD_PARTY_MAIL_LOGIN:I = 0x41

.field public static final AUTHORITIES_FILTER_KEY:Ljava/lang/String; = "authorities"

.field private static final CHECK_TMO_SERVICE:I = 0x4

.field private static final COMMUNITY_RESULT_CANCELED:I = 0x1

.field private static final COMMUNITY_RESULT_ERROR:I = 0x0

.field private static final COMMUNITY_RESULT_OK:I = 0x2

.field private static final COMMUNITY_RESULT_SUBSCRIBED_MYCOMMUNITY:I = 0x8

.field private static final COMMUNITY_RESULT_SUBSCRIBED_MYPHONEBOOK:I = 0x4

.field private static final COMMUNITY_STATUS_FROM_SERVER:Ljava/lang/String; = "community_status_from_server"

.field private static final FACEBOOK_HTC_SENSE_TYPE:Ljava/lang/String; = "com.htc.socialnetwork.facebook"

.field private static final FACEBOOK_TYPE:Ljava/lang/String; = "com.facebook.auth.login"

.field private static final INTENT_EXTRA_ACCOUNT_LIST:Ljava/lang/String; = "account_list"

.field private static final KEY_ADD_ACCOUNT_ENTRY:Ljava/lang/String; = "Add_Account_Entry"

.field private static final KEY_COMMUNITY_LOGIN:Ljava/lang/String; = "community_login"

.field private static final KEY_MY_COMMUNITY:Ljava/lang/String; = "My_Community"

.field private static final KEY_ORANGE_3RD_MAIL_ENTRY:Ljava/lang/String; = "Orange_3rd_Main_Entry"

.field private static final KEY_TINY_ADD_ACCOUNT_ENTRY:Ljava/lang/String; = "Tiny_Add_Account_Entry"

#the value of this static final field might be set in the static constructor
.field private static final LDEBUG:Z = false

.field private static final LOGIN_FAILED:I = 0x2

.field private static final LOGIN_SUCCESS:I = 0x1

.field private static final LOGOUT:I = 0x0

.field public static final PREFERENCE_TYPE_ADD_BUTTON:I = 0x0

.field public static final PREFERENCE_TYPE_ADD_BUTTON_LAUNCH_TINY:I = 0x1

.field public static final PREFERENCE_TYPE_LOGINED:I = 0x2

.field public static final PREFERENCE_TYPE_NOT_LOGINED:I = 0x3

.field public static final PREFERENCE_TYPE_ORANGE_3RD_PARTY_MAIL_ENTRY:I = 0x4

.field private static final REPEAT_LIMIT:I = 0x96

.field private static final REPEAT_TIME:I = 0x64

.field public static final STATUS_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "MailSocialNetwork"

.field private static final TMO_CLIENT_SERVICE_STATUS:Ljava/lang/String; = "tmo_client_service_status"

.field private static final TMO_CLIENT_SERVICE_STATUS_NOT_RUN:Ljava/lang/String; = "tmo_service_not_run"

.field private static final TMO_CLIENT_SERVICE_STATUS_RUNNING:Ljava/lang/String; = "tmo_service_running"

.field private static final UPDATE_ORANGE_STAUS:I = 0x5

.field private static final UPDATE_STAUS:I = 0x3

.field private static isAutoSyncTMI:Z

.field private static mCommunityPreference:Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;


# instance fields
.field private MailName:[Ljava/lang/String;

.field private MailTypes:[Ljava/lang/String;

.field private SocialNetworkName:[Ljava/lang/String;

.field private SocialNetworkTypes:[Ljava/lang/String;

.field private mAccountTypeToAuthorities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAccounts:[Landroid/accounts/Account;

.field private mAddAccountIcon:Landroid/graphics/drawable/Drawable;

.field private mAddOrange3rdPartyEntryIcon:Landroid/graphics/drawable/Drawable;

.field protected mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

.field private mAuthorities:[Ljava/lang/String;

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

.field private mCustomize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

.field private mEnabled:Z

.field mHandler:Landroid/os/Handler;

.field private mLogoutString:Ljava/lang/String;

.field private mManageAccountsCategory:Lcom/htc/preference/HtcPreferenceCategory;

.field private mProgressBarInfo:Lcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;

.field private mRepeatCount:I

.field private mTmoServiceTimeout:Z

.field private mTypeToAuthDescription:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;"
        }
    .end annotation
.end field

.field private mbBackFinish:Z

.field private mbCommunityLonined:Z

.field private mbFinalPage:Z

.field private mbHasFacebookPage:Z

.field private mbIsMailhaveLogin:Z

.field private mbIsOrange3rdPartyMailSupport:Z

.field private mbMailLogin:[Z

.field private mbSocialNetworkLogin:[Z

.field private mloginStatus:I

.field private preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 188
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mCommunityPreference:Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;

    .line 199
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->isAutoSyncTMI:Z

    .line 213
    const-string v0, "MailSocialNetwork"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->LDEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x7

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 107
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    .line 122
    iput-boolean v4, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mbBackFinish:Z

    .line 123
    iput-boolean v4, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mEnabled:Z

    .line 124
    iput-boolean v3, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mbFinalPage:Z

    .line 125
    iput-boolean v3, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mbIsMailhaveLogin:Z

    .line 126
    iput-boolean v3, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mbHasFacebookPage:Z

    .line 129
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "Orange_3rd_Party_Mail"

    aput-object v1, v0, v3

    const-string v1, "Orange_3rd_Party_Mail"

    aput-object v1, v0, v4

    const-string v1, "Orange_3rd_Party_Mail"

    aput-object v1, v0, v6

    const-string v1, "GMail"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "Exchange"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "MyPhonebook"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Other_Mail"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->MailName:[Ljava/lang/String;

    .line 133
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "com.seven.Z7.msn"

    aput-object v1, v0, v3

    const-string v1, "com.seven.Z7.work"

    aput-object v1, v0, v4

    const-string v1, "com.seven.Z7.yahoo"

    aput-object v1, v0, v6

    const-string v1, "com.google"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "com.htc.android.mail.eas"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.htc.android.myphonebook"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.htc.android.mail"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->MailTypes:[Ljava/lang/String;

    .line 140
    new-array v0, v5, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mbMailLogin:[Z

    .line 143
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "AT&T Address Book"

    aput-object v1, v0, v3

    const-string v1, "Htc_Notes"

    aput-object v1, v0, v4

    const-string v1, "Watch"

    aput-object v1, v0, v6

    const-string v1, "HtcFamily"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "HtcMedia"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Facebook"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Flickr"

    aput-object v2, v0, v1

    const-string v1, "Plurk"

    aput-object v1, v0, v5

    const/16 v1, 0x8

    const-string v2, "Twitter"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "kaixin001"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "sinaweibo"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "jiepang"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "renren"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->SocialNetworkName:[Ljava/lang/String;

    .line 146
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.htc.addressbook"

    aput-object v1, v0, v3

    const-string v1, "com.htc.notes.account"

    aput-object v1, v0, v4

    const-string v1, "com.sdgtl.watch.auth"

    aput-object v1, v0, v6

    const-string v1, "com.htc.family"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "com.htc.mediaaccount.auth"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.htc.socialnetwork.facebook"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.htc.socialnetwork.flickr"

    aput-object v2, v0, v1

    const-string v1, "com.htc.socialnetwork.plurk"

    aput-object v1, v0, v5

    const/16 v1, 0x8

    const-string v2, "com.htc.htctwitter"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.htc.KaixinFriendStream"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.htc.friendstream.sinaweiboplugin"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.jiepang.android.htcfs"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.htc.friendstream.renrenwebplugin"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->SocialNetworkTypes:[Ljava/lang/String;

    .line 160
    const/16 v0, 0xb

    new-array v0, v0, [Z

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mbSocialNetworkLogin:[Z

    .line 169
    iput-boolean v3, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mbIsOrange3rdPartyMailSupport:Z

    .line 185
    iput-boolean v3, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mTmoServiceTimeout:Z

    .line 189
    iput-boolean v3, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mbCommunityLonined:Z

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mLogoutString:Ljava/lang/String;

    .line 192
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mloginStatus:I

    .line 195
    iput v3, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mRepeatCount:I

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mAccounts:[Landroid/accounts/Account;

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    .line 221
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mTypeToAuthDescription:Ljava/util/Map;

    .line 791
    new-instance v0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity$1;-><init>(Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;)V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mHandler:Landroid/os/Handler;

    .line 936
    new-instance v0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity$2;-><init>(Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;)V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mCallback:Landroid/accounts/AccountManagerCallback;

    return-void

    .line 140
    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 160
    :array_1
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->checkTmoClientServiceStatus()V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 107
    sget-boolean v0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->LDEBUG:Z

    return v0
.end method

.method private checkTmoClientServiceStatus()V
    .locals 5

    .prologue
    .line 773
    const-string v1, "MailSocialNetwork"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkTmoClientServiceStatus, mRepeatCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mRepeatCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    iget v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mRepeatCount:I

    const/16 v2, 0x96

    if-gt v1, v2, :cond_1

    .line 775
    iget v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mRepeatCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mRepeatCount:I

    .line 776
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tmo_client_service_status"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 777
    .local v0, serviceStatus:Ljava/lang/String;
    const-string v1, "tmo_service_not_run"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 778
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->updateCommunityPreferenceStatus()V

    .line 788
    .end local v0           #serviceStatus:Ljava/lang/String;
    :goto_0
    return-void

    .line 781
    .restart local v0       #serviceStatus:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 784
    .end local v0           #serviceStatus:Ljava/lang/String;
    :cond_1
    const-string v1, "MailSocialNetwork"

    const-string v2, "time out, check Tmo Client Service Status"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mTmoServiceTimeout:Z

    .line 786
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->updateCommunityPreferenceStatus()V

    goto :goto_0
.end method

.method private enableAutoSyncTMI()V
    .locals 3

    .prologue
    .line 828
    sget-boolean v1, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->isAutoSyncTMI:Z

    if-nez v1, :cond_0

    .line 829
    const/4 v1, 0x1

    sput-boolean v1, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->isAutoSyncTMI:Z

    .line 830
    const-string v1, "MailSocialNetwork"

    const-string v2, "Enable TMI AutoSync."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    new-instance v0, Landroid/content/Intent;

    const-string v1, "tmi_mycommunity_checked"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 832
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 834
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private initialize(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/16 v10, 0x1f

    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 615
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 616
    .local v4, intent:Landroid/content/Intent;
    if-eqz v4, :cond_0

    .line 618
    const-string v6, "FinalPage"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mbFinalPage:Z

    .line 619
    const-string v6, "HasFacebookPage"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mbHasFacebookPage:Z

    .line 623
    :cond_0
    const-string v6, "MailSocialNetwork"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mbHasFacebookPage = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mbHasFacebookPage:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-boolean v6, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mbHasFacebookPage:Z

    if-eqz v6, :cond_1

    .line 626
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->replaceFacebookType()V

    .line 630
    :cond_1
    const v6, 0x7f030025

    invoke-virtual {p0, v6}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->setContentView(I)V

    .line 631
    const v6, 0x7f0d003f

    invoke-virtual {p0, v6}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 633
    .local v5, layout:Landroid/widget/LinearLayout;
    sget-boolean v6, Lcom/htc/android/htcsetupwizard/OOBE_Device;->isChaCha:Z

    if-eqz v6, :cond_5

    .line 636
    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v7, "setup_mail_header"

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/android/htcsetupwizard/activity/HeaderPreference;

    .line 637
    .local v2, header:Lcom/htc/android/htcsetupwizard/activity/HeaderPreference;
    const v6, 0x7f03001a

    invoke-virtual {v2, v6}, Lcom/htc/android/htcsetupwizard/activity/HeaderPreference;->setLayoutResource(I)V

    .line 638
    const v6, 0x7f0a007b

    invoke-virtual {v2, v6}, Lcom/htc/android/htcsetupwizard/activity/HeaderPreference;->setTitle(I)V

    .line 639
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->getTitleColor(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/htc/android/htcsetupwizard/activity/HeaderPreference;->setTitleColor(I)V

    .line 640
    invoke-static {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->getTitleDivider(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/htc/android/htcsetupwizard/activity/HeaderPreference;->setTitleDivider(I)V

    .line 648
    .end local v2           #header:Lcom/htc/android/htcsetupwizard/activity/HeaderPreference;
    :goto_0
    if-nez p1, :cond_6

    .line 649
    invoke-static {p0, v5, v10, v9}, Lcom/htc/android/htcsetupwizard/MainActivity;->setProgressBar(Landroid/content/Context;Landroid/widget/LinearLayout;ILcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;)Lcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mProgressBarInfo:Lcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;

    .line 658
    :goto_1
    const v6, 0x7f0d0004

    invoke-virtual {p0, v6}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 659
    .local v1, btnNext:Landroid/widget/Button;
    if-eqz v1, :cond_2

    .line 660
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 661
    iget-boolean v6, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mbFinalPage:Z

    if-eqz v6, :cond_2

    .line 662
    const v6, 0x7f0a0013

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(I)V

    .line 663
    invoke-virtual {v1, v9, v9, v9, v9}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 667
    :cond_2
    const v6, 0x7f0d0003

    invoke-virtual {p0, v6}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 668
    .local v0, btnBack:Landroid/widget/Button;
    if-eqz v0, :cond_3

    .line 669
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 672
    :cond_3
    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mCustomize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    if-nez v6, :cond_4

    .line 673
    new-instance v6, Lcom/htc/android/htcsetupwizard/CustomizationReader;

    invoke-direct {v6, p0}, Lcom/htc/android/htcsetupwizard/CustomizationReader;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mCustomize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    .line 676
    :cond_4
    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mCustomize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    const-string v7, "Orange_3rd_Party_Mail"

    invoke-virtual {v6, v7}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->hasAccountConfig(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mbIsOrange3rdPartyMailSupport:Z

    .line 679
    return-void

    .line 644
    .end local v0           #btnBack:Landroid/widget/Button;
    .end local v1           #btnNext:Landroid/widget/Button;
    :cond_5
    invoke-static {p0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleColor(Landroid/content/Context;Landroid/app/Activity;)V

    .line 645
    invoke-static {p0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleDivider(Landroid/content/Context;Landroid/app/Activity;)V

    goto :goto_0

    .line 651
    :cond_6
    new-instance v3, Lcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;

    invoke-direct {v3}, Lcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;-><init>()V

    .line 652
    .local v3, info:Lcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;
    const-string v6, "ProgressBarNumber"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v6

    iput v6, v3, Lcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;->mProgressBarNumber:F

    .line 653
    const-string v6, "ProgressBarMaxNumber"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v3, Lcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;->mProgressBarMaxNumber:I

    .line 654
    const-string v6, "DotInterspace"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v3, Lcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;->mDotInterspace:I

    .line 655
    invoke-static {p0, v5, v10, v3}, Lcom/htc/android/htcsetupwizard/MainActivity;->setProgressBar(Landroid/content/Context;Landroid/widget/LinearLayout;ILcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;)Lcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mProgressBarInfo:Lcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;

    goto :goto_1
.end method

.method private loginOrange3rdParty()V
    .locals 4

    .prologue
    .line 533
    const-string v2, "MailSocialNetwork"

    const-string v3, "loginOrange3rdParty"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.orange.pushmail.Z7.SETUP_WIZARD"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 536
    .local v1, intent:Landroid/content/Intent;
    const/16 v2, 0x41

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    :goto_0
    return-void

    .line 538
    :catch_0
    move-exception v0

    .line 539
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "MailSocialNetwork"

    const-string v3, "Orange 3rd party activity is not found"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onCreatePreferences()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 463
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "authorities"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mAuthorities:[Ljava/lang/String;

    .line 464
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    .line 465
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    array-length v1, v1

    if-ge v11, v1, :cond_0

    .line 466
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mTypeToAuthDescription:Ljava/util/Map;

    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v4, v4, v11

    iget-object v4, v4, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v5, v5, v11

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 470
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mCustomize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    if-nez v1, :cond_1

    .line 471
    new-instance v1, Lcom/htc/android/htcsetupwizard/CustomizationReader;

    invoke-direct {v1, p0}, Lcom/htc/android/htcsetupwizard/CustomizationReader;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mCustomize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    .line 474
    :cond_1
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v10

    .line 476
    .local v10, Accounts:[Landroid/accounts/Account;
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->cleanAllPreference()V

    .line 478
    const-string v1, "setup_mail_social_network_mail"

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreferenceCategory;

    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mManageAccountsCategory:Lcom/htc/preference/HtcPreferenceCategory;

    .line 479
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mManageAccountsCategory:Lcom/htc/preference/HtcPreferenceCategory;

    const v4, 0x7f0a00e1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 480
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mManageAccountsCategory:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 483
    const-string v1, "com.htc.socialnetwork.facebook"

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->isAuthTypeExist(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 485
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->replaceFacebookType()V

    .line 489
    :cond_2
    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mbIsOrange3rdPartyMailSupport:Z

    if-eqz v1, :cond_3

    .line 491
    new-instance v0, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;

    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mAddOrange3rdPartyEntryIcon:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f0a0084

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v6, 0x4

    move-object v1, p0

    move-object v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/util/ArrayList;I)V

    .line 495
    .local v0, Orange3rdPartyMail_preference:Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;
    const-string v1, "Orange_3rd_Main_Entry"

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->setKey(Ljava/lang/String;)V

    .line 496
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mManageAccountsCategory:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 501
    .end local v0           #Orange3rdPartyMail_preference:Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;
    :cond_3
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcCommunityFlag:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->syncCommunityStatus()V

    .line 503
    :cond_4
    const/4 v11, 0x0

    :goto_1
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->MailTypes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v11, v1, :cond_6

    .line 505
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mCustomize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->MailName:[Ljava/lang/String;

    aget-object v4, v4, v11

    invoke-virtual {v1, v4}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->hasAccountConfig(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 506
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->MailTypes:[Ljava/lang/String;

    aget-object v1, v1, v11

    invoke-virtual {p0, v10, v1}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->onAccountsUpdated([Landroid/accounts/Account;Ljava/lang/String;)V

    .line 503
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 509
    :cond_6
    const/4 v11, 0x0

    :goto_2
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->SocialNetworkTypes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v11, v1, :cond_8

    .line 512
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mCustomize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->SocialNetworkName:[Ljava/lang/String;

    aget-object v4, v4, v11

    invoke-virtual {v1, v4}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->hasSocialNetworkConfig(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 513
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->SocialNetworkTypes:[Ljava/lang/String;

    aget-object v1, v1, v11

    invoke-virtual {p0, v10, v1}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->onAccountsUpdated([Landroid/accounts/Account;Ljava/lang/String;)V

    .line 509
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 516
    :cond_8
    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mbIsMailhaveLogin:Z

    if-eqz v1, :cond_9

    .line 518
    new-instance v3, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;

    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mAddAccountIcon:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f0a00e2

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    const/4 v9, 0x1

    move-object v4, p0

    move-object v5, v2

    move-object v8, v2

    invoke-direct/range {v3 .. v9}, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/util/ArrayList;I)V

    .line 521
    .local v3, add_preference:Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;
    const-string v1, "Tiny_Add_Account_Entry"

    invoke-virtual {v3, v1}, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->setKey(Ljava/lang/String;)V

    .line 522
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mManageAccountsCategory:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 523
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mbIsMailhaveLogin:Z

    .line 525
    .end local v3           #add_preference:Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;
    :cond_9
    return-void
.end method

.method private replaceFacebookType()V
    .locals 3

    .prologue
    .line 603
    const/4 v0, 0x0

    .local v0, idx:I
    :goto_0
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->SocialNetworkName:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 605
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->SocialNetworkName:[Ljava/lang/String;

    aget-object v1, v1, v0

    const-string v2, "Facebook"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 607
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->SocialNetworkTypes:[Ljava/lang/String;

    const-string v2, "com.facebook.auth.login"

    aput-object v2, v1, v0

    .line 611
    :cond_0
    return-void

    .line 603
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public AppendPreferenceIfNotLogin(Ljava/lang/String;)V
    .locals 8
    .parameter "accounts"

    .prologue
    .line 400
    const-string v1, "MailSocialNetwork"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AppendPreferenceIfNotLogin :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    new-instance v2, Landroid/accounts/Account;

    const-string v1, "NOTLOGIN"

    invoke-direct {v2, v1, p1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    .local v2, account:Landroid/accounts/Account;
    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 404
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 406
    .local v4, label:Ljava/lang/CharSequence;
    new-instance v0, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;

    const/4 v5, 0x0

    const/4 v6, 0x3

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/util/ArrayList;I)V

    .line 409
    .local v0, preference:Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->MailTypes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v7, v1, :cond_1

    .line 411
    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->MailTypes:[Ljava/lang/String;

    aget-object v5, v5, v7

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->setLoginStatus(I)V

    .line 414
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mManageAccountsCategory:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 417
    const-string v1, "com.htc.android.myphonebook"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcCommunityFlag:Z

    if-eqz v1, :cond_0

    .line 419
    sput-object v0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mCommunityPreference:Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;

    .line 409
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 424
    :cond_1
    const/4 v7, 0x0

    :goto_1
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->SocialNetworkTypes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v7, v1, :cond_3

    .line 426
    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->SocialNetworkTypes:[Ljava/lang/String;

    aget-object v5, v5, v7

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 427
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mManageAccountsCategory:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 424
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 429
    :cond_3
    return-void
.end method

.method public cleanAllPreference()V
    .locals 1

    .prologue
    .line 529
    const-string v0, "setup_mail_social_network_mail"

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceCategory;

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mManageAccountsCategory:Lcom/htc/preference/HtcPreferenceCategory;

    .line 530
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mManageAccountsCategory:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceCategory;->removeAll()V

    .line 531
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 918
    const-string v0, "MailSocialNetwork"

    const-string v1, "finish"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->finish()V

    .line 920
    return-void
.end method

.method public getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    if-nez v5, :cond_1

    .line 231
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    .line 232
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v4

    .line 233
    .local v4, syncAdapters:[Landroid/content/SyncAdapterType;
    const/4 v1, 0x0

    .local v1, i:I
    array-length v2, v4

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 235
    aget-object v3, v4, v1

    .line 236
    .local v3, sa:Landroid/content/SyncAdapterType;
    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    iget-object v6, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 237
    .local v0, authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .restart local v0       #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    iget-object v6, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    :cond_0
    iget-object v5, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 246
    .end local v0           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1           #i:I
    .end local v2           #n:I
    .end local v3           #sa:Landroid/content/SyncAdapterType;
    .end local v4           #syncAdapters:[Landroid/content/SyncAdapterType;
    :cond_1
    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    return-object v5
.end method

.method protected getCommunityStatus()Landroid/os/Bundle;
    .locals 6

    .prologue
    .line 736
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 737
    .local v0, b:Landroid/os/Bundle;
    const/4 v1, -0x1

    .line 738
    .local v1, status:I
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "community_status_from_server"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 739
    .local v2, szSummaryDescription:Ljava/lang/String;
    const-string v3, "MailSocialNetwork"

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

    .line 741
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 742
    const/4 v1, 0x0

    .line 743
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mLogoutString:Ljava/lang/String;

    .line 766
    :goto_0
    const-string v3, "username"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    const-string v3, "status"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 768
    return-object v0

    .line 746
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "tmo_client_service_status"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "tmo_service_running"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 748
    const/4 v1, -0x1

    .line 749
    const v3, 0x7f0a0092

    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 751
    :cond_1
    iget-boolean v3, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mTmoServiceTimeout:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 752
    const/4 v1, 0x0

    .line 753
    const v3, 0x7f0a0093

    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 756
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 757
    const/4 v1, 0x0

    goto :goto_0

    .line 760
    :cond_3
    const/4 v1, 0x1

    .line 761
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->enableAutoSyncTMI()V

    goto :goto_0
.end method

.method protected getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "accountType"

    .prologue
    .line 265
    const/4 v3, 0x0

    .line 266
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 268
    :try_start_0
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    .line 270
    .local v1, desc:Landroid/accounts/AuthenticatorDescription;
    iget-object v4, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 271
    .local v0, authContext:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v1, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 279
    .end local v0           #authContext:Landroid/content/Context;
    .end local v1           #desc:Landroid/accounts/AuthenticatorDescription;
    :cond_0
    :goto_0
    return-object v3

    .line 272
    :catch_0
    move-exception v2

    .line 274
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "MailSocialNetwork"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No icon for account type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 275
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 276
    .local v2, e:Landroid/content/res/Resources$NotFoundException;
    const-string v4, "MailSocialNetwork"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Icon resource not found for account type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5
    .parameter "accountType"

    .prologue
    .line 250
    const/4 v2, 0x0

    .line 251
    .local v2, label:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 253
    :try_start_0
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    .line 255
    .local v1, desc:Landroid/accounts/AuthenticatorDescription;
    iget-object v3, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 256
    .local v0, authContext:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v1, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 261
    .end local v0           #authContext:Landroid/content/Context;
    .end local v1           #desc:Landroid/accounts/AuthenticatorDescription;
    :cond_0
    :goto_0
    return-object v2

    .line 257
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public isAuthTypeExist(Ljava/lang/String;)Z
    .locals 4
    .parameter "type"

    .prologue
    .line 433
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 435
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 437
    const-string v1, "MailSocialNetwork"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const/4 v1, 0x1

    .line 442
    :goto_1
    return v1

    .line 433
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 441
    :cond_1
    const-string v1, "MailSocialNetwork"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const/4 v1, 0x0

    goto :goto_1
.end method

.method loginCommunity()V
    .locals 5

    .prologue
    .line 385
    const-string v2, "MailSocialNetwork"

    const-string v3, "loginCommunity : startActivityForResult( intent ,android.settings.MYRIAD_SYNCML_SETUP)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.MYRIAD_SYNCML_SETUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 388
    .local v1, intent:Landroid/content/Intent;
    const/16 v2, 0x3f

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :goto_0
    return-void

    .line 390
    :catch_0
    move-exception v0

    .line 391
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "MailSocialNetwork"

    const-string v3, "loginCommunity exception occurs"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const-string v2, "MailSocialNetwork"

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

    .line 393
    const-string v2, "MailSocialNetwork"

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

.method public onAccountsUpdated([Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 19
    .parameter "accounts"
    .parameter "current_account"

    .prologue
    .line 284
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mAccounts:[Landroid/accounts/Account;

    .line 285
    const/4 v10, 0x0

    .line 286
    .local v10, blogin:Z
    const/4 v11, 0x0

    .local v11, i:I
    move-object/from16 v0, p1

    array-length v15, v0

    .local v15, n:I
    :goto_0
    if-ge v11, v15, :cond_e

    .line 288
    aget-object v4, p1, v11

    .line 289
    .local v4, account:Landroid/accounts/Account;
    iget-object v3, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 291
    .local v7, auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v17, 0x1

    .line 292
    .local v17, showAccount:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mAuthorities:[Ljava/lang/String;

    if-eqz v3, :cond_0

    if-eqz v7, :cond_0

    .line 294
    const/16 v17, 0x0

    .line 295
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mAuthorities:[Ljava/lang/String;

    .local v9, arr$:[Ljava/lang/String;
    array-length v14, v9

    .local v14, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_1
    if-ge v12, v14, :cond_0

    aget-object v16, v9, v12

    .line 297
    .local v16, requestedAuthority:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 299
    const/16 v17, 0x1

    .line 306
    .end local v9           #arr$:[Ljava/lang/String;
    .end local v12           #i$:I
    .end local v14           #len$:I
    .end local v16           #requestedAuthority:Ljava/lang/String;
    :cond_0
    iget-object v3, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v8, "com.htc.sync.provider.weather"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v8, "Weather"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_1
    iget-object v3, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v8, "com.htc.newsreader"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v8, "News"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_2
    iget-object v3, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v8, "com.htc.android.Stock"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v8, "Stocks"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_3
    iget-object v3, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v8, "com.htc.VzWBASync"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v8, "Backup Assistant"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    iget-object v3, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v8, "com.htc.android.myphonebook"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcCommunityFlag:Z

    if-nez v3, :cond_6

    .line 317
    :cond_5
    const/16 v17, 0x0

    .line 325
    :cond_6
    if-eqz v17, :cond_d

    iget-object v3, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 328
    iget-object v3, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 329
    .local v5, icon:Landroid/graphics/drawable/Drawable;
    iget-object v3, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 330
    .local v6, label:Ljava/lang/CharSequence;
    new-instance v2, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;

    const/4 v8, 0x2

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/util/ArrayList;I)V

    .line 333
    .local v2, preference:Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;
    const-string v3, "MailSocialNetwork"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "onAccountsUpdated current_account:"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const/4 v13, 0x0

    .local v13, j:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->MailTypes:[Ljava/lang/String;

    array-length v3, v3

    if-ge v13, v3, :cond_b

    .line 338
    iget-object v3, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->MailTypes:[Ljava/lang/String;

    aget-object v8, v8, v13

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 342
    iget-object v3, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v8, "com.htc.android.myphonebook"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 336
    :cond_7
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 295
    .end local v2           #preference:Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;
    .end local v5           #icon:Landroid/graphics/drawable/Drawable;
    .end local v6           #label:Ljava/lang/CharSequence;
    .end local v13           #j:I
    .restart local v9       #arr$:[Ljava/lang/String;
    .restart local v12       #i$:I
    .restart local v14       #len$:I
    .restart local v16       #requestedAuthority:Ljava/lang/String;
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 344
    .end local v9           #arr$:[Ljava/lang/String;
    .end local v12           #i$:I
    .end local v14           #len$:I
    .end local v16           #requestedAuthority:Ljava/lang/String;
    .restart local v2       #preference:Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;
    .restart local v5       #icon:Landroid/graphics/drawable/Drawable;
    .restart local v6       #label:Ljava/lang/CharSequence;
    .restart local v13       #j:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->MailName:[Ljava/lang/String;

    aget-object v3, v3, v13

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->MailName:[Ljava/lang/String;

    aget-object v3, v3, v13

    const-string v8, "Orange_3rd_Party_Mail"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 345
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mbIsMailhaveLogin:Z

    .line 346
    :cond_a
    const/4 v10, 0x1

    .line 348
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mManageAccountsCategory:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v3, v2}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_3

    .line 353
    :cond_b
    const/4 v13, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->SocialNetworkTypes:[Ljava/lang/String;

    array-length v3, v3

    if-ge v13, v3, :cond_d

    .line 355
    iget-object v3, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->SocialNetworkTypes:[Ljava/lang/String;

    aget-object v8, v8, v13

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 357
    const/4 v10, 0x1

    .line 359
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mManageAccountsCategory:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v3, v2}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 353
    :cond_c
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 286
    .end local v2           #preference:Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;
    .end local v5           #icon:Landroid/graphics/drawable/Drawable;
    .end local v6           #label:Ljava/lang/CharSequence;
    .end local v13           #j:I
    :cond_d
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 365
    .end local v4           #account:Landroid/accounts/Account;
    .end local v7           #auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17           #showAccount:Z
    :cond_e
    if-nez v10, :cond_f

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->isAuthTypeExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 367
    const-string v3, "com.htc.android.myphonebook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcCommunityFlag:Z

    if-nez v3, :cond_10

    .line 381
    :cond_f
    :goto_5
    return-void

    .line 369
    :cond_10
    const-string v3, "MailSocialNetwork"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "AppendPreferenceIfNotLogin :"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const-string v3, "com.seven.Z7.msn"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "com.seven.Z7.yahoo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "com.seven.Z7.work"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 376
    :cond_11
    const-string v3, "MailSocialNetwork"

    const-string v8, "skip show Orange 3rd party mail if not login"

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 379
    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->AppendPreferenceIfNotLogin(Ljava/lang/String;)V

    goto :goto_5
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "idata"

    .prologue
    .line 838
    const/16 v2, 0x3f

    if-ne p1, v2, :cond_0

    .line 839
    const-string v1, ""

    .line 840
    .local v1, szSummaryDescription:Ljava/lang/String;
    and-int/lit8 v2, p2, 0x1

    if-lez v2, :cond_1

    .line 841
    const-string v2, "MailSocialNetwork"

    const-string v3, "user canceled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    :goto_0
    const-string v2, "MailSocialNetwork"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityResult() Community, key = community_login, username = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", resultCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "community_status_from_server"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 866
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->updateCommunityPreferenceStatus()V

    .line 868
    .end local v1           #szSummaryDescription:Ljava/lang/String;
    :cond_0
    return-void

    .line 843
    .restart local v1       #szSummaryDescription:Ljava/lang/String;
    :cond_1
    and-int/lit8 v2, p2, 0x2

    if-lez v2, :cond_4

    .line 846
    sget-object v0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mCommunityPreference:Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;

    .line 848
    .local v0, pref:Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;
    and-int/lit8 v2, p2, 0x4

    if-lez v2, :cond_2

    .line 850
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0090

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 853
    :cond_2
    and-int/lit8 v2, p2, 0x8

    if-lez v2, :cond_3

    .line 855
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0091

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 857
    :cond_3
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->setLoginStatus(ILjava/lang/String;)V

    goto :goto_0

    .line 860
    .end local v0           #pref:Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;
    :cond_4
    const-string v2, "MailSocialNetwork"

    const-string v3, "Community Error"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 2
    .parameter "theme"
    .parameter "resid"
    .parameter "first"

    .prologue
    .line 993
    const-string v0, "MailSocialNetwork"

    const-string v1, "onApplyThemeResource()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getThemeResId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 995
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 923
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 934
    :goto_0
    return-void

    .line 925
    :pswitch_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->setResult(I)V

    .line 926
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->finish()V

    goto :goto_0

    .line 930
    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->setResult(I)V

    .line 931
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->finish()V

    goto :goto_0

    .line 923
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
    .line 596
    const-string v0, "MailSocialNetwork"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->initialize(Landroid/os/Bundle;)V

    .line 598
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 599
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 448
    const-string v0, "MailSocialNetwork"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->requestWindowFeature(I)Z

    .line 452
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 454
    const v0, 0x7f050007

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->addPreferencesFromResource(I)V

    .line 455
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    .line 456
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f02

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mAddAccountIcon:Landroid/graphics/drawable/Drawable;

    .line 457
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mAddOrange3rdPartyEntryIcon:Landroid/graphics/drawable/Drawable;

    .line 458
    invoke-direct {p0, p1}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->initialize(Landroid/os/Bundle;)V

    .line 459
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 892
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onDestroy()V

    .line 893
    const-string v0, "MailSocialNetwork"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 988
    const-string v0, "MailSocialNetwork"

    const-string v1, "#######################"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 970
    const-string v0, "MailSocialNetwork"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    sparse-switch p1, :sswitch_data_0

    .line 983
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 975
    :sswitch_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->setResult(I)V

    .line 976
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 981
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 972
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x4 -> :sswitch_0
        0x52 -> :sswitch_1
        0x54 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 957
    const-string v0, "MailSocialNetwork"

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

    .line 958
    packed-switch p1, :pswitch_data_0

    .line 964
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 961
    :pswitch_0
    const v0, 0x7f0d0003

    const v1, 0x7f0d0004

    invoke-static {p0, v0, v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->switchKeyFocus(Landroid/app/Activity;II)V

    goto :goto_0

    .line 958
    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 886
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onPause()V

    .line 887
    const-string v0, "MailSocialNetwork"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    return-void
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 15
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 546
    move-object/from16 v0, p2

    instance-of v1, v0, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;

    if-eqz v1, :cond_5

    move-object/from16 v14, p2

    .line 548
    check-cast v14, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;

    .line 549
    .local v14, pref:Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;
    invoke-virtual {v14}, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->getAccountType()Ljava/lang/String;

    move-result-object v2

    .line 550
    .local v2, accountType:Ljava/lang/String;
    invoke-virtual {v14}, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->getKey()Ljava/lang/String;

    move-result-object v9

    .line 552
    .local v9, accountKey:Ljava/lang/String;
    if-eqz v9, :cond_0

    const-string v1, "Orange_3rd_Main_Entry"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 554
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->loginOrange3rdParty()V

    .line 555
    const/4 v1, 0x0

    .line 591
    .end local v2           #accountType:Ljava/lang/String;
    .end local v9           #accountKey:Ljava/lang/String;
    .end local v14           #pref:Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;
    :goto_0
    return v1

    .line 559
    .restart local v2       #accountType:Ljava/lang/String;
    .restart local v9       #accountKey:Ljava/lang/String;
    .restart local v14       #pref:Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;
    :cond_0
    if-eqz v9, :cond_1

    const-string v1, "Tiny_Add_Account_Entry"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 561
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 562
    .local v12, intent:Landroid/content/Intent;
    const-string v1, "com.htc.android.htcsetupwizard.activity.TinySetupMailActivity"

    invoke-virtual {v12, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 563
    invoke-virtual {p0, v12}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->startActivity(Landroid/content/Intent;)V

    .line 564
    const/4 v1, 0x0

    goto :goto_0

    .line 568
    .end local v12           #intent:Landroid/content/Intent;
    :cond_1
    const-string v1, "com.htc.android.myphonebook"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mbCommunityLonined:Z

    if-nez v1, :cond_2

    .line 571
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->loginCommunity()V

    .line 572
    const/4 v1, 0x0

    goto :goto_0

    .line 577
    :cond_2
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v10

    .line 578
    .local v10, accounts:[Landroid/accounts/Account;
    const/4 v11, 0x0

    .local v11, i:I
    array-length v13, v10

    .local v13, n:I
    :goto_1
    if-ge v11, v13, :cond_4

    .line 580
    aget-object v1, v10, v11

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    .line 578
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 584
    :cond_4
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mCallback:Landroid/accounts/AccountManagerCallback;

    iget-object v8, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mHandler:Landroid/os/Handler;

    move-object v6, p0

    invoke-virtual/range {v1 .. v8}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 591
    .end local v2           #accountType:Ljava/lang/String;
    .end local v9           #accountKey:Ljava/lang/String;
    .end local v10           #accounts:[Landroid/accounts/Account;
    .end local v11           #i:I
    .end local v13           #n:I
    .end local v14           #pref:Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;
    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 898
    const-string v0, "MailSocialNetwork"

    const-string v1, "onRestoreInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 873
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 874
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->onCreatePreferences()V

    .line 875
    const-string v0, "MailSocialNetwork"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 903
    const-string v0, "MailSocialNetwork"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    const-string v0, "ProgressBarNumber"

    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mProgressBarInfo:Lcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;

    iget v1, v1, Lcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;->mProgressBarNumber:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 906
    const-string v0, "ProgressBarMaxNumber"

    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mProgressBarInfo:Lcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;

    iget v1, v1, Lcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;->mProgressBarMaxNumber:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 907
    const-string v0, "DotInterspace"

    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mProgressBarInfo:Lcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;

    iget v1, v1, Lcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;->mDotInterspace:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 908
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 880
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onStart()V

    .line 881
    const-string v0, "MailSocialNetwork"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 912
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onStop()V

    .line 913
    const-string v0, "MailSocialNetwork"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    return-void
.end method

.method protected syncCommunityStatus()V
    .locals 5

    .prologue
    .line 682
    const-string v2, "MailSocialNetwork"

    const-string v3, "syncCommunityStatus"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tmo_client_service_status"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 684
    .local v1, serviceStatus:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 685
    const-string v1, "tmo_service_not_run"

    .line 686
    :cond_0
    const-string v2, "tmo_service_not_run"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 687
    const-string v2, "MailSocialNetwork"

    const-string v3, "start tmo community service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 689
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.htc.android.htcsetupwizard.tmo.TmoClientService"

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 690
    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 691
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tmo_client_service_status"

    const-string v4, "tmo_service_running"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 693
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->checkTmoClientServiceStatus()V

    .line 695
    return-void
.end method

.method protected updateCommunityPreferenceStatus()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 700
    sget-object v4, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mCommunityPreference:Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;

    .line 701
    .local v4, pref:Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;
    invoke-virtual {v4}, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 703
    .local v3, key:Ljava/lang/String;
    const/4 v5, -0x1

    .line 704
    .local v5, status:I
    const/4 v6, 0x0

    .line 706
    .local v6, username:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->getCommunityStatus()Landroid/os/Bundle;

    move-result-object v0

    .line 707
    .local v0, b:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 708
    const-string v7, "status"

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 709
    const-string v7, "username"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 712
    :cond_0
    const/4 v2, 0x1

    .line 714
    .local v2, enable:Z
    if-nez v5, :cond_1

    .line 715
    iget-object v7, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mLogoutString:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->setLoginStatus(ILjava/lang/String;)V

    .line 732
    :goto_0
    invoke-virtual {v4, v2}, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->setEnabled(Z)V

    .line 733
    return-void

    .line 716
    :cond_1
    if-ne v5, v9, :cond_3

    .line 717
    invoke-virtual {v4, v5, v6}, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->setLoginStatus(ILjava/lang/String;)V

    .line 720
    iget-boolean v7, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mbFinalPage:Z

    if-nez v7, :cond_2

    .line 721
    const v7, 0x7f0d0004

    invoke-virtual {p0, v7}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 722
    .local v1, btn:Landroid/widget/Button;
    const v7, 0x7f0a000e

    invoke-virtual {p0, v7}, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 724
    .end local v1           #btn:Landroid/widget/Button;
    :cond_2
    invoke-virtual {v4}, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->SetCheckedByMyCommunity()V

    .line 725
    iput-boolean v9, p0, Lcom/htc/android/htcsetupwizard/activity/SetupMailSocialNetworkActivity;->mbCommunityLonined:Z

    goto :goto_0

    .line 728
    :cond_3
    invoke-virtual {v4, v5, v6}, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->setLoginStatus(ILjava/lang/String;)V

    .line 729
    const/4 v2, 0x0

    goto :goto_0
.end method
