.class public Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "SocialNetworkSetupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ACTION_FACEBOOK_LOGIN:I = 0x0

.field private static final ACTION_FLICKR_LOGIN:I = 0x1

.field private static final ACTION_JIEPANG_LOGIN:I = 0x6

.field private static final ACTION_KAIXIN_LOGIN:I = 0x4

.field private static final ACTION_PLURK_LOGIN:I = 0x3

.field private static final ACTION_RENREN_LOGIN:I = 0x7

.field private static final ACTION_SINAWEIBO_LOGIN:I = 0x5

.field private static final ACTION_SOCIAL_NETWORK_LOGIN:I = 0x0

.field private static final ACTION_TWITTER_LOGIN:I = 0x2

.field public static final AUTHORITY:Ljava/lang/String; = "com.htc.chirp.provider.Tweet"

.field private static final FACEBOOK_ACCOUNT_TYPE:Ljava/lang/String; = "com.htc.socialnetwork.facebook"

.field private static final FLICKR_ACCOUNT_TYPE:Ljava/lang/String; = "com.htc.socialnetwork.flickr"

.field private static final JIEPANG_ACCOUNT_TYPE:Ljava/lang/String; = "com.jiepang.android.htc"

.field private static final KAIXIN_ACCOUNT_TYPE:Ljava/lang/String; = "com.htc.KaixinFriendStream"

.field protected static final KEY_FACEBOOK_LOGIN:Ljava/lang/String; = "facebook_login"

.field protected static final KEY_FLICKR_LOGIN:Ljava/lang/String; = "flickr_login"

.field protected static final KEY_JIEPANG_LOGIN:Ljava/lang/String; = "jiepang"

.field protected static final KEY_KAIXIN_LOGIN:Ljava/lang/String; = "kaixin001"

.field protected static final KEY_PLURK_LOGIN:Ljava/lang/String; = "plurk_login"

.field protected static final KEY_RENREN_LOGIN:Ljava/lang/String; = "renren"

.field protected static final KEY_SINAWEIBO_LOGIN:Ljava/lang/String; = "sinaweibo"

.field private static final KEY_SOCIAL_NETWORK_ACCOUNT:Ljava/lang/String; = "social_network_accounts"

.field protected static final KEY_TWITTER_LOGIN:Ljava/lang/String; = "twitter_login"

.field private static final LOGOUT:I = 0x0

.field public static final PLURKS_CONTENT_URI:Landroid/net/Uri; = null

.field private static final PLURK_ACCOUNT_TYPE:Ljava/lang/String; = "com.htc.socialnetwork.plurk"

.field public static final PLURK_ACCOUNT_URI:Landroid/net/Uri; = null

.field public static final PLURK_LOGOUT:Ljava/lang/String; = "com.htc.socialnetwork.plurk.LOGOUT"

.field private static final RENREN_ACCOUNT_TYPE:Ljava/lang/String; = "com.htc.friendstream.renrenwebplugin"

.field public static final RESPONSE_CONTENT_URI:Landroid/net/Uri; = null

.field private static final SINAWEIBO_ACCOUNT_TYPE:Ljava/lang/String; = "com.htc.friendstream.sinaweiboplugin"

.field private static final TAG:Ljava/lang/String; = "OOBE_SocialNetworkSetupActivity"

.field private static final TWITTER_ACCOUNT_TYPE:Ljava/lang/String; = "com.htc.htctwitter"

.field public static final TWITTER_ACCOUNT_URI:Landroid/net/Uri; = null

.field public static final TWITTER_TWEET_URI:Landroid/net/Uri; = null

.field public static final UPDATE_FINISH:Ljava/lang/String; = "com.htc.htctwitter.UPDATE_FINISH"

.field private static final UPDATE_STAUS:I = 0x1

.field public static final USERS_CONTENT_URI:Landroid/net/Uri;

.field private static mSeletedItem:I


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

.field private mCheckAccount:Z

.field private mCustomize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

.field mHandler:Landroid/os/Handler;

.field private mKeys:[Z

.field private mbBackFinish:Z

.field private mbBackKey:Z

.field private mbFinalPage:Z

.field protected mbLaunchByOOBE:Z

.field userNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    const-string v0, "content://com.htc.chirp.provider.Tweet/tweetaccounts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->TWITTER_ACCOUNT_URI:Landroid/net/Uri;

    .line 100
    const-string v0, "content://com.htc.chirp.provider.Tweet/tweets"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->TWITTER_TWEET_URI:Landroid/net/Uri;

    .line 105
    const-string v0, "content://plurks/accounts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->PLURK_ACCOUNT_URI:Landroid/net/Uri;

    .line 106
    const-string v0, "content://plurks/plurks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->PLURKS_CONTENT_URI:Landroid/net/Uri;

    .line 107
    const-string v0, "content://plurks/users"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->USERS_CONTENT_URI:Landroid/net/Uri;

    .line 108
    const-string v0, "content://plurks/responses"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->RESPONSE_CONTENT_URI:Landroid/net/Uri;

    .line 121
    const/4 v0, -0x1

    sput v0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->mSeletedItem:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    .line 111
    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->mbLaunchByOOBE:Z

    .line 112
    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->mbBackFinish:Z

    .line 113
    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->mbBackKey:Z

    .line 114
    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->mbFinalPage:Z

    .line 136
    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->mCheckAccount:Z

    .line 138
    new-instance v0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity$1;-><init>(Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;)V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->mHandler:Landroid/os/Handler;

    .line 626
    new-instance v0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity$2;-><init>(Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;)V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->mCallback:Landroid/accounts/AccountManagerCallback;

    return-void
.end method

.method static synthetic access$002(Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->mCheckAccount:Z

    return p1
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 70
    sget v0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->mSeletedItem:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->removeAccountInAccountManager(I)V

    return-void
.end method

.method private asyncCheckAccount(Ljava/lang/String;ILjava/lang/String;)V
    .locals 8
    .parameter "key"
    .parameter "actionId"
    .parameter "accountType"

    .prologue
    .line 414
    const/4 v0, 0x0

    .line 415
    .local v0, account:Ljava/lang/String;
    const/4 v1, 0x0

    .line 417
    .local v1, accounts:[Landroid/accounts/Account;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    .line 418
    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    if-eqz v5, :cond_4

    .line 419
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    array-length v5, v5

    if-ge v3, v5, :cond_2

    .line 420
    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v5, v5, v3

    iget-object v5, v5, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 421
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v6, v6, v3

    iget-object v6, v6, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 422
    if-eqz v1, :cond_0

    array-length v5, v1

    if-lez v5, :cond_0

    .line 423
    const/4 v5, 0x0

    aget-object v5, v1, v5

    iget-object v0, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 425
    :cond_0
    const-string v5, "OOBE_SocialNetworkSetupActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Has account type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

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

    .line 426
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 427
    .local v4, msg:Landroid/os/Message;
    invoke-virtual {v4}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 428
    .local v2, b:Landroid/os/Bundle;
    if-nez v2, :cond_1

    .line 429
    new-instance v2, Landroid/os/Bundle;

    .end local v2           #b:Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 430
    .restart local v2       #b:Landroid/os/Bundle;
    :cond_1
    const-string v5, "key"

    invoke-virtual {v2, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const-string v5, "username"

    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const/4 v5, 0x1

    iput v5, v4, Landroid/os/Message;->what:I

    .line 433
    iput p2, v4, Landroid/os/Message;->arg1:I

    .line 434
    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 441
    .end local v2           #b:Landroid/os/Bundle;
    .end local v3           #i:I
    .end local v4           #msg:Landroid/os/Message;
    :cond_2
    :goto_1
    return-void

    .line 419
    .restart local v3       #i:I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 440
    .end local v3           #i:I
    :cond_4
    const-string v5, "OOBE_SocialNetworkSetupActivity"

    const-string v6, "AuthenticatorTypes not found"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private onCreatePreferences()V
    .locals 3

    .prologue
    .line 216
    const v2, 0x7f050008

    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->addPreferencesFromResource(I)V

    .line 218
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    .line 219
    .local v1, preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;
    const-string v2, "social_network_accounts"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceCategory;

    .line 220
    .local v0, SocialNetworkCategory:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->checkAccountsSupport(Lcom/htc/preference/HtcPreferenceCategory;)V

    .line 221
    return-void
.end method

.method private removeAccountInAccountManager(I)V
    .locals 7
    .parameter "actionId"

    .prologue
    .line 700
    const/4 v3, 0x0

    .line 701
    .local v3, mAccount:Landroid/accounts/Account;
    const/4 v1, 0x0

    .line 702
    .local v1, accounts:[Landroid/accounts/Account;
    const/4 v0, 0x0

    .line 705
    .local v0, accountType:Ljava/lang/String;
    if-nez p1, :cond_3

    .line 706
    const-string v0, "com.htc.socialnetwork.facebook"

    .line 723
    :cond_0
    :goto_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    .line 724
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    if-eqz v4, :cond_a

    if-eqz v0, :cond_a

    .line 725
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    array-length v4, v4

    if-ge v2, v4, :cond_b

    .line 726
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v4, v4, v2

    iget-object v4, v4, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 727
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v5, v5, v2

    iget-object v5, v5, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 728
    if-eqz v1, :cond_1

    array-length v4, v1

    if-lez v4, :cond_1

    .line 729
    const/4 v4, 0x0

    aget-object v3, v1, v4

    .line 731
    :cond_1
    const-string v4, "OOBE_SocialNetworkSetupActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeAccountInAccountManager, account type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v6, v6, v2

    iget-object v6, v6, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 707
    .end local v2           #i:I
    :cond_3
    const/4 v4, 0x1

    if-ne p1, v4, :cond_4

    .line 708
    const-string v0, "com.htc.socialnetwork.flickr"

    goto :goto_0

    .line 709
    :cond_4
    const/4 v4, 0x2

    if-ne p1, v4, :cond_5

    .line 710
    const-string v0, "com.htc.htctwitter"

    goto :goto_0

    .line 711
    :cond_5
    const/4 v4, 0x3

    if-ne p1, v4, :cond_6

    .line 712
    const-string v0, "com.htc.socialnetwork.plurk"

    goto :goto_0

    .line 713
    :cond_6
    const/4 v4, 0x4

    if-ne p1, v4, :cond_7

    .line 714
    const-string v0, "com.htc.KaixinFriendStream"

    goto :goto_0

    .line 715
    :cond_7
    const/4 v4, 0x5

    if-ne p1, v4, :cond_8

    .line 716
    const-string v0, "com.htc.friendstream.sinaweiboplugin"

    goto :goto_0

    .line 717
    :cond_8
    const/4 v4, 0x6

    if-ne p1, v4, :cond_9

    .line 718
    const-string v0, "com.jiepang.android.htc"

    goto :goto_0

    .line 719
    :cond_9
    const/4 v4, 0x7

    if-ne p1, v4, :cond_0

    .line 720
    const-string v0, "com.htc.friendstream.renrenwebplugin"

    goto/16 :goto_0

    .line 736
    :cond_a
    const-string v4, "OOBE_SocialNetworkSetupActivity"

    const-string v5, "AuthenticatorTypes not found"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    :cond_b
    if-eqz v3, :cond_c

    .line 739
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    new-instance v5, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity$3;

    invoke-direct {v5, p0}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity$3;-><init>(Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;)V

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v5, v6}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 759
    :goto_2
    return-void

    .line 758
    :cond_c
    const-string v4, "OOBE_SocialNetworkSetupActivity"

    const-string v5, "Account is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method protected checkAccountsSupport(Lcom/htc/preference/HtcPreferenceCategory;)V
    .locals 8
    .parameter "category"

    .prologue
    .line 224
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreferenceCategory;->getPreferenceCount()I

    move-result v0

    .line 225
    .local v0, count:I
    const/4 v4, 0x0

    .line 226
    .local v4, prefCount:I
    const/4 v3, 0x0

    .line 227
    .local v3, pref:Lcom/htc/preference/HtcPreference;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 228
    invoke-virtual {p1, v4}, Lcom/htc/preference/HtcPreferenceCategory;->getPreference(I)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    .line 229
    if-eqz v3, :cond_0

    .line 230
    invoke-virtual {v3}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, key:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->isAccountSupport(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 232
    invoke-virtual {p1, v3}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 233
    const-string v5, "OOBE_SocialNetworkSetupActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not supported"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .end local v2           #key:Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 236
    .restart local v2       #key:Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 241
    const-string v5, "OOBE_SocialNetworkSetupActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is supported"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 245
    .end local v2           #key:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method protected fillInitData()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 470
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 471
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 472
    const-string v1, "FinalPage"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->mbFinalPage:Z

    .line 473
    const-string v1, "LaunchBySetupWizard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->mbLaunchByOOBE:Z

    .line 474
    const-string v1, "SelfFinishBackKeyPressed"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->mbBackFinish:Z

    .line 476
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 567
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->finish()V

    .line 568
    return-void
.end method

.method protected getAccountStatus(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .parameter "key"

    .prologue
    const/4 v0, 0x0

    .line 367
    if-nez p1, :cond_1

    .line 368
    const-string v1, "OOBE_SocialNetworkSetupActivity"

    const-string v2, "getAccountStatus(), bad argument, key = null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_0
    :goto_0
    return-object v0

    .line 372
    :cond_1
    const-string v1, "facebook_login"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 373
    const-string v0, "facebook_login"

    const/4 v1, 0x0

    const-string v2, "com.htc.socialnetwork.facebook"

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->getSocialNetworkAccountStatus(Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 374
    :cond_2
    const-string v1, "flickr_login"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 375
    const-string v0, "flickr_login"

    const/4 v1, 0x1

    const-string v2, "com.htc.socialnetwork.flickr"

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->getSocialNetworkAccountStatus(Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 376
    :cond_3
    const-string v1, "twitter_login"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    .line 377
    const-string v0, "twitter_login"

    const/4 v1, 0x2

    const-string v2, "com.htc.htctwitter"

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->getSocialNetworkAccountStatus(Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 378
    :cond_4
    const-string v1, "plurk_login"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    .line 379
    const-string v0, "plurk_login"

    const/4 v1, 0x3

    const-string v2, "com.htc.socialnetwork.plurk"

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->getSocialNetworkAccountStatus(Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 380
    :cond_5
    const-string v1, "kaixin001"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_6

    .line 381
    const-string v0, "kaixin001"

    const/4 v1, 0x4

    const-string v2, "com.htc.KaixinFriendStream"

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->getSocialNetworkAccountStatus(Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 382
    :cond_6
    const-string v1, "sinaweibo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_7

    .line 383
    const-string v0, "sinaweibo"

    const/4 v1, 0x5

    const-string v2, "com.htc.friendstream.sinaweiboplugin"

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->getSocialNetworkAccountStatus(Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 384
    :cond_7
    const-string v1, "jiepang"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_8

    .line 385
    const-string v0, "jiepang"

    const/4 v1, 0x6

    const-string v2, "com.jiepang.android.htc"

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->getSocialNetworkAccountStatus(Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 386
    :cond_8
    const-string v1, "renren"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 387
    const-string v0, "renren"

    const/4 v1, 0x7

    const-string v2, "com.htc.friendstream.renrenwebplugin"

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->getSocialNetworkAccountStatus(Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_0
.end method

.method protected getSocialNetworkAccountStatus(Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .parameter "key"
    .parameter "actionId"
    .parameter "accountType"

    .prologue
    const/4 v4, 0x0

    .line 393
    iget-boolean v3, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->mCheckAccount:Z

    if-nez v3, :cond_0

    .line 394
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->asyncCheckAccount(Ljava/lang/String;ILjava/lang/String;)V

    .line 395
    const/4 v0, 0x0

    .line 410
    :goto_0
    return-object v0

    .line 397
    :cond_0
    iput-boolean v4, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->mCheckAccount:Z

    .line 399
    const/4 v2, 0x0

    .line 400
    .local v2, retUsername:Ljava/lang/String;
    add-int/lit8 v1, p2, 0x0

    .line 401
    .local v1, position:I
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->userNames:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 402
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 403
    .local v0, b:Landroid/os/Bundle;
    const-string v3, "username"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 406
    const-string v3, "status"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 408
    :cond_1
    const-string v3, "status"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected initSocialNetworkAccounts()V
    .locals 1

    .prologue
    .line 212
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->userNames:[Ljava/lang/String;

    .line 213
    return-void
.end method

.method protected isAccountSupport(Ljava/lang/String;)Z
    .locals 3
    .parameter "key"

    .prologue
    const/4 v0, 0x0

    .line 248
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->mCustomize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    if-nez v1, :cond_0

    .line 249
    new-instance v1, Lcom/htc/android/htcsetupwizard/CustomizationReader;

    invoke-direct {v1, p0}, Lcom/htc/android/htcsetupwizard/CustomizationReader;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->mCustomize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    .line 252
    :cond_0
    const-string v1, "twitter_login"

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 253
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->mCustomize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    const-string v2, "Twitter"

    invoke-virtual {v1, v2}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->hasSocialNetworkConfig(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 278
    :cond_1
    :goto_0
    return v0

    .line 255
    :cond_2
    const-string v1, "facebook_login"

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    .line 256
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->mCustomize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    const-string v2, "Facebook"

    invoke-virtual {v1, v2}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->hasSocialNetworkConfig(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 278
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 258
    :cond_4
    const-string v1, "flickr_login"

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    .line 259
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->mCustomize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    const-string v2, "Flickr"

    invoke-virtual {v1, v2}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->hasSocialNetworkConfig(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 261
    :cond_5
    const-string v1, "plurk_login"

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_6

    .line 262
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->mCustomize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    const-string v2, "Plurk"

    invoke-virtual {v1, v2}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->hasSocialNetworkConfig(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 264
    :cond_6
    const-string v1, "kaixin001"

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_7

    .line 265
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->mCustomize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    const-string v2, "kaixin001"

    invoke-virtual {v1, v2}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->hasSocialNetworkConfig(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 267
    :cond_7
    const-string v1, "sinaweibo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_8

    .line 268
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->mCustomize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    const-string v2, "sinaweibo"

    invoke-virtual {v1, v2}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->hasSocialNetworkConfig(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 270
    :cond_8
    const-string v1, "jiepang"

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_9

    .line 271
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->mCustomize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    const-string v2, "jiepang"

    invoke-virtual {v1, v2}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->hasSocialNetworkConfig(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 273
    :cond_9
    const-string v1, "renren"

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 274
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->mCustomize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    const-string v2, "renren"

    invoke-virtual {v1, v2}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->hasSocialNetworkConfig(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0
.end method

.method loginSocialNetwork(Ljava/lang/String;)V
    .locals 8
    .parameter "accountType"

    .prologue
    const/4 v2, 0x0

    .line 616
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->mCallback:Landroid/accounts/AccountManagerCallback;

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, p0

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 624
    return-void
.end method

.method logoutSocialNetwork(I)V
    .locals 13
    .parameter "actionId"

    .prologue
    const/4 v6, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 660
    if-ne p1, v12, :cond_1

    .line 662
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 663
    .local v5, value:Landroid/content/ContentValues;
    const-string v6, "defaultaccount"

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 664
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->TWITTER_ACCOUNT_URI:Landroid/net/Uri;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "username=\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->userNames:[Ljava/lang/String;

    aget-object v9, v9, v12

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v5, v8, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 666
    .local v4, res:I
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->TWITTER_TWEET_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v10, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 667
    const-string v6, "OOBE_SocialNetworkSetupActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "twitter tweets deleted: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.htc.htctwitter.UPDATE_FINISH"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 669
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 690
    .end local v1           #intent:Landroid/content/Intent;
    .end local v4           #res:I
    .end local v5           #value:Landroid/content/ContentValues;
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 691
    .local v3, msg:Landroid/os/Message;
    iput v11, v3, Landroid/os/Message;->what:I

    .line 692
    iput p1, v3, Landroid/os/Message;->arg1:I

    .line 693
    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v7, 0xc8

    invoke-virtual {v6, v3, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 694
    return-void

    .line 671
    .end local v3           #msg:Landroid/os/Message;
    :cond_1
    if-ne p1, v6, :cond_0

    .line 673
    :try_start_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 674
    .restart local v5       #value:Landroid/content/ContentValues;
    const-string v6, "default_account"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 675
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->PLURK_ACCOUNT_URI:Landroid/net/Uri;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "username=\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->userNames:[Ljava/lang/String;

    const/4 v10, 0x3

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v5, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 678
    .restart local v4       #res:I
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->PLURKS_CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 679
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->USERS_CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 680
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->RESPONSE_CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 681
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.htc.socialnetwork.plurk.LOGOUT"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 682
    .local v2, intent2:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 683
    const-string v6, "OOBE_SocialNetworkSetupActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "send intent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 685
    .end local v2           #intent2:Landroid/content/Intent;
    .end local v4           #res:I
    .end local v5           #value:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 686
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "idata"

    .prologue
    .line 589
    const-string v0, "OOBE_SocialNetworkSetupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult(), requestCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 479
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 490
    :goto_0
    return-void

    .line 481
    :pswitch_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->setResult(I)V

    .line 482
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->finish()V

    goto :goto_0

    .line 486
    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->setResult(I)V

    .line 487
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->finish()V

    goto :goto_0

    .line 479
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
    .line 205
    const-string v0, "OOBE_SocialNetworkSetupActivity"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->fillInitData()V

    .line 207
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->setLayout()V

    .line 208
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 209
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 193
    const-string v0, "OOBE_SocialNetworkSetupActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 197
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->fillInitData()V

    .line 198
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->setLayout()V

    .line 199
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->initSocialNetworkAccounts()V

    .line 200
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->onCreatePreferences()V

    .line 201
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 762
    packed-switch p1, :pswitch_data_0

    .line 782
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 764
    :pswitch_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a00a2

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a00a3

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0014

    new-instance v2, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity$5;

    invoke-direct {v2, p0}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity$5;-><init>(Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0015

    new-instance v2, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity$4;

    invoke-direct {v2, p0}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity$4;-><init>(Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 762
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 543
    const-string v1, "OOBE_SocialNetworkSetupActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mbLaunchByOOBE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->mbLaunchByOOBE:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    sparse-switch p1, :sswitch_data_0

    .line 561
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 547
    :sswitch_1
    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->mbBackKey:Z

    if-ne v0, v1, :cond_1

    .line 548
    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->mbBackFinish:Z

    if-nez v1, :cond_0

    .line 549
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->setResult(I)V

    .line 550
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 555
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 545
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
    .line 530
    const-string v0, "OOBE_SocialNetworkSetupActivity"

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

    .line 531
    packed-switch p1, :pswitch_data_0

    .line 537
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 534
    :pswitch_0
    const v0, 0x7f0d0003

    const v1, 0x7f0d0004

    invoke-static {p0, v0, v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->switchKeyFocus(Landroid/app/Activity;II)V

    goto :goto_0

    .line 531
    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 523
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onPause()V

    .line 524
    const-string v0, "OOBE_SocialNetworkSetupActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    return-void
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 572
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceActivity;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    .line 574
    const-string v0, "OOBE_SocialNetworkSetupActivity"

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

    .line 576
    instance-of v0, p2, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 577
    check-cast v0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    invoke-virtual {v0}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->isLogin()I

    move-result v0

    if-nez v0, :cond_1

    .line 578
    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->runSelectedLogin(Ljava/lang/String;)V

    .line 585
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    move-object v0, p2

    .line 579
    check-cast v0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    invoke-virtual {v0}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->isLogin()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 580
    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->runSelectedLogout(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 508
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 500
    const-string v0, "OOBE_SocialNetworkSetupActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 502
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->updateAllStatus()V

    .line 503
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 513
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 494
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onStart()V

    .line 495
    const-string v0, "OOBE_SocialNetworkSetupActivity"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 517
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onStop()V

    .line 518
    const-string v0, "OOBE_SocialNetworkSetupActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    return-void
.end method

.method public runSelectedLogin(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 593
    const/4 v0, 0x0

    .line 594
    .local v0, accountType:Ljava/lang/String;
    const-string v1, "facebook_login"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 595
    const-string v0, "com.htc.socialnetwork.facebook"

    .line 611
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 612
    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->loginSocialNetwork(Ljava/lang/String;)V

    .line 613
    :cond_1
    return-void

    .line 596
    :cond_2
    const-string v1, "flickr_login"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 597
    const-string v0, "com.htc.socialnetwork.flickr"

    goto :goto_0

    .line 598
    :cond_3
    const-string v1, "twitter_login"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    .line 599
    const-string v0, "com.htc.htctwitter"

    goto :goto_0

    .line 600
    :cond_4
    const-string v1, "plurk_login"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    .line 601
    const-string v0, "com.htc.socialnetwork.plurk"

    goto :goto_0

    .line 602
    :cond_5
    const-string v1, "kaixin001"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_6

    .line 603
    const-string v0, "com.htc.KaixinFriendStream"

    goto :goto_0

    .line 604
    :cond_6
    const-string v1, "sinaweibo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_7

    .line 605
    const-string v0, "com.htc.friendstream.sinaweiboplugin"

    goto :goto_0

    .line 606
    :cond_7
    const-string v1, "jiepang"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_8

    .line 607
    const-string v0, "com.jiepang.android.htc"

    goto :goto_0

    .line 608
    :cond_8
    const-string v1, "renren"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 609
    const-string v0, "com.htc.friendstream.renrenwebplugin"

    goto :goto_0
.end method

.method public runSelectedLogout(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    const/4 v2, 0x0

    .line 645
    const-string v0, "facebook_login"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 646
    sput v2, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->mSeletedItem:I

    .line 654
    :cond_0
    :goto_0
    sget v0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->mSeletedItem:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 655
    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->showDialog(I)V

    .line 657
    :cond_1
    return-void

    .line 647
    :cond_2
    const-string v0, "flickr_login"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 648
    const/4 v0, 0x1

    sput v0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->mSeletedItem:I

    goto :goto_0

    .line 649
    :cond_3
    const-string v0, "twitter_login"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 650
    const/4 v0, 0x2

    sput v0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->mSeletedItem:I

    goto :goto_0

    .line 651
    :cond_4
    const-string v0, "plurk_login"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 652
    const/4 v0, 0x3

    sput v0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->mSeletedItem:I

    goto :goto_0
.end method

.method protected setLayout()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 445
    const v3, 0x7f030027

    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->setContentView(I)V

    .line 447
    const v3, 0x7f0d003f

    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 449
    .local v2, layout:Landroid/widget/LinearLayout;
    invoke-static {p0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleColor(Landroid/content/Context;Landroid/app/Activity;)V

    .line 450
    invoke-static {p0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleDivider(Landroid/content/Context;Landroid/app/Activity;)V

    .line 451
    const/16 v3, 0xc

    invoke-static {p0, v2, v3}, Lcom/htc/android/htcsetupwizard/MainActivity;->setProgressBar(Landroid/content/Context;Landroid/widget/LinearLayout;I)Lcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;

    .line 453
    const v3, 0x7f0d0004

    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 454
    .local v1, btnNext:Landroid/widget/Button;
    if-eqz v1, :cond_0

    .line 455
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 456
    iget-boolean v3, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->mbFinalPage:Z

    if-eqz v3, :cond_0

    .line 457
    const v3, 0x7f0a0013

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    .line 458
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 462
    :cond_0
    const v3, 0x7f0d0003

    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 463
    .local v0, btnBack:Landroid/widget/Button;
    if-eqz v0, :cond_1

    .line 464
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 466
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->mbBackKey:Z

    .line 467
    return-void
.end method

.method protected updateAllStatus()V
    .locals 5

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    .line 283
    .local v3, preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;
    const/4 v2, 0x0

    .line 284
    .local v2, pref:Lcom/htc/android/htcsetupwizard/activity/AccountPreference;
    const/4 v1, 0x0

    .line 287
    .local v1, key:Ljava/lang/String;
    const-string v4, "social_network_accounts"

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceCategory;

    .line 288
    .local v0, SocialNetworkCategory:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->updatePreferenceCategoryStatus(Lcom/htc/preference/HtcPreferenceCategory;)V

    .line 289
    return-void
.end method

.method protected updatePreferenceCategoryStatus(Lcom/htc/preference/HtcPreferenceCategory;)V
    .locals 4
    .parameter "category"

    .prologue
    .line 292
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreferenceCategory;->getPreferenceCount()I

    move-result v0

    .line 294
    .local v0, count:I
    const/4 v2, 0x0

    .line 295
    .local v2, pref:Lcom/htc/preference/HtcPreference;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 296
    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreferenceCategory;->getPreference(I)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    .line 297
    instance-of v3, v2, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 298
    check-cast v3, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->updatePreferenceStatus(Lcom/htc/android/htcsetupwizard/activity/AccountPreference;)V

    .line 295
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 301
    :cond_1
    return-void
.end method

.method protected updatePreferenceStatus(Lcom/htc/android/htcsetupwizard/activity/AccountPreference;)V
    .locals 10
    .parameter "pref"

    .prologue
    const v9, 0x7f02000c

    const v8, 0x7f02000b

    .line 311
    invoke-virtual {p1}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 313
    .local v3, key:Ljava/lang/String;
    const/4 v4, -0x1

    .line 314
    .local v4, status:I
    const/4 v5, 0x0

    .line 316
    .local v5, username:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->getAccountStatus(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 317
    .local v0, b:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 318
    const-string v6, "status"

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 319
    const-string v6, "username"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 322
    :cond_0
    const-string v6, "facebook_login"

    invoke-virtual {v3, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3

    .line 323
    const v6, 0x7f02000f

    const v7, 0x7f020010

    invoke-virtual {p1, v8, v9, v6, v7}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setIcon(IIII)V

    .line 332
    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 333
    .local v2, enable:Z
    if-nez v4, :cond_d

    .line 334
    const-string v6, "facebook_login"

    invoke-virtual {v3, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_6

    .line 335
    const v6, 0x7f0a009d

    invoke-virtual {p0, v6}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v4, v6}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setLoginStatus(ILjava/lang/String;)V

    .line 363
    :cond_2
    :goto_1
    invoke-virtual {p1, v2}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setEnabled(Z)V

    .line 364
    return-void

    .line 325
    .end local v2           #enable:Z
    :cond_3
    const-string v6, "flickr_login"

    invoke-virtual {v3, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_4

    .line 326
    invoke-virtual {p1, v8, v9}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setIcon(II)V

    goto :goto_0

    .line 327
    :cond_4
    const-string v6, "twitter_login"

    invoke-virtual {v3, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_5

    .line 328
    const v6, 0x7f020013

    const v7, 0x7f020014

    invoke-virtual {p1, v6, v7}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setIcon(II)V

    goto :goto_0

    .line 329
    :cond_5
    const-string v6, "plurk_login"

    invoke-virtual {v3, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    .line 330
    const v6, 0x7f020011

    const v7, 0x7f020012

    invoke-virtual {p1, v6, v7}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setIcon(II)V

    goto :goto_0

    .line 336
    .restart local v2       #enable:Z
    :cond_6
    const-string v6, "flickr_login"

    invoke-virtual {v3, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_7

    .line 337
    const v6, 0x7f0a009e

    invoke-virtual {p0, v6}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v4, v6}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setLoginStatus(ILjava/lang/String;)V

    goto :goto_1

    .line 338
    :cond_7
    const-string v6, "twitter_login"

    invoke-virtual {v3, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_8

    .line 339
    const v6, 0x7f0a009f

    invoke-virtual {p0, v6}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v4, v6}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setLoginStatus(ILjava/lang/String;)V

    goto :goto_1

    .line 340
    :cond_8
    const-string v6, "plurk_login"

    invoke-virtual {v3, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_9

    .line 341
    const v6, 0x7f0a00a0

    invoke-virtual {p0, v6}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v4, v6}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setLoginStatus(ILjava/lang/String;)V

    goto :goto_1

    .line 342
    :cond_9
    const-string v6, "kaixin001"

    invoke-virtual {v3, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_a

    .line 343
    const v6, 0x7f0a0136

    invoke-virtual {p0, v6}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v4, v6}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setLoginStatus(ILjava/lang/String;)V

    goto :goto_1

    .line 344
    :cond_a
    const-string v6, "sinaweibo"

    invoke-virtual {v3, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_b

    .line 345
    const v6, 0x7f0a0138

    invoke-virtual {p0, v6}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v4, v6}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setLoginStatus(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 346
    :cond_b
    const-string v6, "jiepang"

    invoke-virtual {v3, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_c

    .line 347
    const v6, 0x7f0a013a

    invoke-virtual {p0, v6}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v4, v6}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setLoginStatus(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 348
    :cond_c
    const-string v6, "renren"

    invoke-virtual {v3, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    .line 349
    const v6, 0x7f0a013c

    invoke-virtual {p0, v6}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v4, v6}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setLoginStatus(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 351
    :cond_d
    const/4 v6, 0x1

    if-ne v4, v6, :cond_e

    .line 352
    invoke-virtual {p1, v4, v5}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setLoginStatus(ILjava/lang/String;)V

    .line 355
    const v6, 0x7f0d0004

    invoke-virtual {p0, v6}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 356
    .local v1, btn:Landroid/widget/Button;
    const v6, 0x7f0a000e

    invoke-virtual {p0, v6}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 359
    .end local v1           #btn:Landroid/widget/Button;
    :cond_e
    invoke-virtual {p1, v4}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setLoginStatus(I)V

    .line 360
    const/4 v2, 0x0

    goto/16 :goto_1
.end method

.method protected updatePreferenceStatus(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    .line 305
    .local v1, preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-virtual {v1, p1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 306
    .local v0, pref:Lcom/htc/preference/HtcPreference;
    instance-of v2, v0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    if-eqz v2, :cond_0

    .line 307
    check-cast v0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;

    .end local v0           #pref:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->updatePreferenceStatus(Lcom/htc/android/htcsetupwizard/activity/AccountPreference;)V

    .line 308
    :cond_0
    return-void
.end method
