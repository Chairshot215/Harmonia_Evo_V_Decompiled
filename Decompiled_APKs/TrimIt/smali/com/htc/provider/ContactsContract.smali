.class public Lcom/htc/provider/ContactsContract;
.super Ljava/lang/Object;
.source "ContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/provider/ContactsContract$SpeedDial;,
        Lcom/htc/provider/ContactsContract$Picker;,
        Lcom/htc/provider/ContactsContract$PhoneLookup;,
        Lcom/htc/provider/ContactsContract$SIMContacts;,
        Lcom/htc/provider/ContactsContract$CommonDataKinds;,
        Lcom/htc/provider/ContactsContract$Groups;,
        Lcom/htc/provider/ContactsContract$ExtGoogleEvent;,
        Lcom/htc/provider/ContactsContract$Email;,
        Lcom/htc/provider/ContactsContract$Phone;,
        Lcom/htc/provider/ContactsContract$DefaultActionHelper;,
        Lcom/htc/provider/ContactsContract$Insert;,
        Lcom/htc/provider/ContactsContract$Intents;,
        Lcom/htc/provider/ContactsContract$Contacts;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ACCOUNT_NAME_PC:Ljava/lang/String; = "pcsc"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACCOUNT_NAME_SIM:Ljava/lang/String; = "SIM"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACCOUNT_TYPE_FACEBOOK:Ljava/lang/String; = "com.htc.socialnetwork.facebook"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACCOUNT_TYPE_FLICKR:Ljava/lang/String; = "com.htc.socialnetwork.flickr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACCOUNT_TYPE_GOOGLE:Ljava/lang/String; = "com.google"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACCOUNT_TYPE_HTC_EXCHANGE:Ljava/lang/String; = "com.htc.android.mail.eas"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACCOUNT_TYPE_PC:Ljava/lang/String; = "com.htc.android.pcsc"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACCOUNT_TYPE_PLURK:Ljava/lang/String; = "com.htc.socialnetwork.plurk"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACCOUNT_TYPE_SIM:Ljava/lang/String; = "com.anddroid.contacts.sim"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACCOUNT_TYPE_TWITTER:Ljava/lang/String; = "com.htc.htctwitter"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AUTHORITY:Ljava/lang/String; = "com.android.contacts"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AUTHORITY_URI:Landroid/net/Uri; = null
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATA_MIMETYPE_FACEBOOK_LARGE_AVATAR:Ljava/lang/String; = "com.htc.socialnetwork.facebook/largeavatar"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATA_MIMETYPE_FACEBOOK_LOGIN:Ljava/lang/String; = "com.htc.socialnetwork.facebook/login"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATA_MIMETYPE_FACEBOOK_SMALL_AVATAR:Ljava/lang/String; = "com.htc.socialnetwork.facebook/smallavatar"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATA_MIMETYPE_FLICKR_LOGIN:Ljava/lang/String; = "com.htc.socialnetwork.flickr/login"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATA_MIMETYPE_FLICKR_SMALL_AVATAR:Ljava/lang/String; = "com.htc.socialnetwork.flickr/smallavatar"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATA_MIMETYPE_PLURK_LOGIN:Ljava/lang/String; = "com.htc.socialnetwork.plurk/login"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATA_MIMETYPE_PLURK_SMALL_AVATAR:Ljava/lang/String; = "com.htc.socialnetwork.plurk/smallavatar"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATA_MIMETYPE_TWITTER_LOGIN:Ljava/lang/String; = "com.htc.htctwitter/login"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATA_MIMETYPE_TWITTER_SMALL_AVATAR:Ljava/lang/String; = "com.htc.htctwitter/smallavatar"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FACEBOOK:Ljava/lang/String; = "facebook"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLICKR:Ljava/lang/String; = "flickr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PHOTO_SOCIALNETWORK_FACEBOOK:J = 0x1L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PHOTO_SOCIALNETWORK_FLICKR:J = 0x2L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PHOTO_SOCIALNETWORK_NOT:J = 0x0L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PHOTO_SOCIALNETWORK_PLURK:J = 0x4L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PHOTO_SOCIALNETWORK_TWITTER:J = 0x3L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PLURK:Ljava/lang/String; = "plurk"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TWITTER:Ljava/lang/String; = "twitter"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/htc/provider/HtcContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeleteContactUri(JZLandroid/content/ContentResolver;)Landroid/net/Uri;
    .locals 1
    .parameter "contactId"
    .parameter "isSIM"
    .parameter "resolver"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 841
    invoke-static {p0, p1, p2, p3}, Lcom/htc/provider/HtcContactsContract$Contacts;->getDeleteContactUri(JZLandroid/content/ContentResolver;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
