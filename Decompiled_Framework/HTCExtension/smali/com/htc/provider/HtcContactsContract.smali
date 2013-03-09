.class public final Lcom/htc/provider/HtcContactsContract;
.super Ljava/lang/Object;
.source "HtcContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/provider/HtcContactsContract$HtcIntent;,
        Lcom/htc/provider/HtcContactsContract$IpDial;,
        Lcom/htc/provider/HtcContactsContract$VIP_SIM;,
        Lcom/htc/provider/HtcContactsContract$VIP;,
        Lcom/htc/provider/HtcContactsContract$Diverted;,
        Lcom/htc/provider/HtcContactsContract$BLACKLIST_PASSWORD;,
        Lcom/htc/provider/HtcContactsContract$BLOCKED_NUMBER;,
        Lcom/htc/provider/HtcContactsContract$BLOCKED_SIM;,
        Lcom/htc/provider/HtcContactsContract$BALCKLIST;,
        Lcom/htc/provider/HtcContactsContract$UnknownContact;,
        Lcom/htc/provider/HtcContactsContract$Link;,
        Lcom/htc/provider/HtcContactsContract$Suggestion;,
        Lcom/htc/provider/HtcContactsContract$SuggestException;,
        Lcom/htc/provider/HtcContactsContract$StatusUpdates;,
        Lcom/htc/provider/HtcContactsContract$QuickContact;,
        Lcom/htc/provider/HtcContactsContract$SpeedDial;,
        Lcom/htc/provider/HtcContactsContract$SpeedDialColumns;,
        Lcom/htc/provider/HtcContactsContract$Picker;,
        Lcom/htc/provider/HtcContactsContract$PhoneLookup;,
        Lcom/htc/provider/HtcContactsContract$SIMContacts;,
        Lcom/htc/provider/HtcContactsContract$SimContactsColumns;,
        Lcom/htc/provider/HtcContactsContract$CommonDataKinds;,
        Lcom/htc/provider/HtcContactsContract$Groups;,
        Lcom/htc/provider/HtcContactsContract$ExtGoogleEvent;,
        Lcom/htc/provider/HtcContactsContract$Email;,
        Lcom/htc/provider/HtcContactsContract$Phone;,
        Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;,
        Lcom/htc/provider/HtcContactsContract$Frequency;,
        Lcom/htc/provider/HtcContactsContract$DefaultActionHelper;,
        Lcom/htc/provider/HtcContactsContract$DefaultAction;,
        Lcom/htc/provider/HtcContactsContract$CallLogExt;,
        Lcom/htc/provider/HtcContactsContract$CallsExtColumns;,
        Lcom/htc/provider/HtcContactsContract$Insert;,
        Lcom/htc/provider/HtcContactsContract$HtcEvent;,
        Lcom/htc/provider/HtcContactsContract$EventInstance;,
        Lcom/htc/provider/HtcContactsContract$EventInstanceColumns;,
        Lcom/htc/provider/HtcContactsContract$HtcStructuredName;,
        Lcom/htc/provider/HtcContactsContract$Data;,
        Lcom/htc/provider/HtcContactsContract$Intents;,
        Lcom/htc/provider/HtcContactsContract$Contacts;
    }
.end annotation


# static fields
.field public static final ACCOUNT_NAME_MYPHONEBOOK:Ljava/lang/String; = "myphonebook"

.field public static final ACCOUNT_NAME_PC:Ljava/lang/String; = "pcsc"

.field public static final ACCOUNT_NAME_SIM:Ljava/lang/String; = "SIM"

.field public static final ACCOUNT_NAME_SIM_SDN:Ljava/lang/String; = "SIM_SDN"

.field public static final ACCOUNT_TYPE_CS:Ljava/lang/String; = "com.htc.cs"

.field public static final ACCOUNT_TYPE_FACEBOOK:Ljava/lang/String; = "com.htc.socialnetwork.facebook"

.field public static final ACCOUNT_TYPE_FLICKR:Ljava/lang/String; = "com.htc.socialnetwork.flickr"

.field public static final ACCOUNT_TYPE_GOOGLE:Ljava/lang/String; = "com.google"

.field public static final ACCOUNT_TYPE_HTC_EXCHANGE:Ljava/lang/String; = "com.htc.android.mail.eas"

.field public static final ACCOUNT_TYPE_KAIXIN:Ljava/lang/String; = "com.htc.KaixinFriendStream"

.field public static final ACCOUNT_TYPE_MYPHONEBOOK:Ljava/lang/String; = "com.htc.android.myphonebook"

.field public static final ACCOUNT_TYPE_ORIGINAL_FACEBOOK:Ljava/lang/String; = "com.facebook.auth.login"

.field public static final ACCOUNT_TYPE_ORIGINAL_TWITTER:Ljava/lang/String; = "com.twitter.android.auth.login"

.field public static final ACCOUNT_TYPE_PC:Ljava/lang/String; = "com.htc.android.pcsc"

.field public static final ACCOUNT_TYPE_PLURK:Ljava/lang/String; = "com.htc.socialnetwork.plurk"

.field public static final ACCOUNT_TYPE_QQIM:Ljava/lang/String; = "com.htc.socialnetwork.qqim"

.field public static final ACCOUNT_TYPE_QQWEIBO:Ljava/lang/String; = "com.htc.socialnetwork.qqweibo"

.field public static final ACCOUNT_TYPE_QZONE:Ljava/lang/String; = "com.htc.socialnetwork.chinasns"

.field public static final ACCOUNT_TYPE_RENREN:Ljava/lang/String; = "com.htc.friendstream.renrenwebplugin"

.field public static final ACCOUNT_TYPE_SIM:Ljava/lang/String; = "com.anddroid.contacts.sim"

.field public static final ACCOUNT_TYPE_SINAWEIBO:Ljava/lang/String; = "com.htc.friendstream.sinaweiboplugin"

.field public static final ACCOUNT_TYPE_TWITTER:Ljava/lang/String; = "com.htc.htctwitter"

.field public static final ACCOUNT_TYPE_WINDOWSLIVE:Ljava/lang/String; = "com.htc.android.windowslive"

.field public static final AUTHORITY:Ljava/lang/String; = "com.android.contacts"

.field public static final AUTHORITY_URI:Landroid/net/Uri; = null

.field public static final DATA_MIMETYPE_FACEBOOK_LARGE_AVATAR:Ljava/lang/String; = "com.htc.socialnetwork.facebook/largeavatar"

.field public static final DATA_MIMETYPE_FACEBOOK_LOGIN:Ljava/lang/String; = "com.htc.socialnetwork.facebook/login"

.field public static final DATA_MIMETYPE_FACEBOOK_SMALL_AVATAR:Ljava/lang/String; = "com.htc.socialnetwork.facebook/smallavatar"

.field public static final DATA_MIMETYPE_FLICKR_LOGIN:Ljava/lang/String; = "com.htc.socialnetwork.flickr/login"

.field public static final DATA_MIMETYPE_FLICKR_SMALL_AVATAR:Ljava/lang/String; = "com.htc.socialnetwork.flickr/smallavatar"

.field public static final DATA_MIMETYPE_KAIXIN_LOGIN:Ljava/lang/String; = "com.htc.KaixinFriendStream/login"

.field public static final DATA_MIMETYPE_ORIGINAL_FACEBOOK_LOGIN:Ljava/lang/String; = "com.facebook.auth.login/login"

.field public static final DATA_MIMETYPE_PLURK_LOGIN:Ljava/lang/String; = "com.htc.socialnetwork.plurk/login"

.field public static final DATA_MIMETYPE_PLURK_SMALL_AVATAR:Ljava/lang/String; = "com.htc.socialnetwork.plurk/smallavatar"

.field public static final DATA_MIMETYPE_QQIM_LOGIN:Ljava/lang/String; = "com.htc.socialnetwork.qqim/login"

.field public static final DATA_MIMETYPE_QQWEIBO_LOGIN:Ljava/lang/String; = "com.htc.socialnetwork.qqweibo/login"

.field public static final DATA_MIMETYPE_QZONE_LOGIN:Ljava/lang/String; = "com.htc.socialnetwork.chinasns/login"

.field public static final DATA_MIMETYPE_RENREN_LOGIN:Ljava/lang/String; = "com.htc.friendstream.renrenwebplugin/login"

.field public static final DATA_MIMETYPE_SINAWEIBO_LOGIN:Ljava/lang/String; = "com.htc.friendstream.sinaweiboplugin/login"

.field public static final DATA_MIMETYPE_TWITTER_LOGIN:Ljava/lang/String; = "com.htc.htctwitter/login"

.field public static final DATA_MIMETYPE_TWITTER_SMALL_AVATAR:Ljava/lang/String; = "com.htc.htctwitter/smallavatar"

.field public static final FACEBOOK:Ljava/lang/String; = "facebook"

.field public static final FACEBOOK_RAWQUERY_CONTENT_URI:Landroid/net/Uri; = null

.field public static final FLICKR:Ljava/lang/String; = "flickr"

.field public static final PHOTO_SOCIALNETWORK_FACEBOOK:J = 0x1L

.field public static final PHOTO_SOCIALNETWORK_FLICKR:J = 0x2L

.field public static final PHOTO_SOCIALNETWORK_NOT:J = 0x0L

.field public static final PHOTO_SOCIALNETWORK_PLURK:J = 0x4L

.field public static final PHOTO_SOCIALNETWORK_TWITTER:J = 0x3L

.field public static final PLURK:Ljava/lang/String; = "plurk"

.field public static final PLURK_RAWQUERY_CONTENT_URI:Landroid/net/Uri; = null

.field public static final SOCIALNETWORK_FACEBOOK:J = 0x1L

.field public static final SOCIALNETWORK_FLICKR:J = 0x2L

.field public static final SOCIALNETWORK_NOT:J = 0x0L

.field public static final SOCIALNETWORK_PLURK:J = 0x4L

.field public static final SOCIALNETWORK_TWITTER:J = 0x3L

.field public static final TWITTER:Ljava/lang/String; = "twitter"

.field public static final TWITTER_RAWQUERY_CONTENT_URI:Landroid/net/Uri;

.field public static final TWITTER_RAWQUERY_CONTENT_URI_3_5:Landroid/net/Uri;

.field public static final enableManageCalls:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v2, 0x9b

    const-string v0, "content://com.android.contacts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/HtcContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v0, "content://com.htc.socialnetwork.facebook/rawquery"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/HtcContactsContract;->FACEBOOK_RAWQUERY_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.htc.chirp.provider.Tweet/rawQuery"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/HtcContactsContract;->TWITTER_RAWQUERY_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.htc.htctwitter/rawQuery"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/HtcContactsContract;->TWITTER_RAWQUERY_CONTENT_URI_3_5:Landroid/net/Uri;

    const-string v0, "content://plurks/rawquery"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/HtcContactsContract;->PLURK_RAWQUERY_CONTENT_URI:Landroid/net/Uri;

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x30

    if-ne v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v2, :cond_1

    :cond_0
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/provider/HtcContactsContract;->enableManageCalls:Z

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
