.class public final Lcom/htc/wrap/android/provider/HtcWrapContacts$MyContactCard;
.super Ljava/lang/Object;
.source "HtcWrapContacts.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MyContactCard"
.end annotation


# static fields
.field public static final BLOBDATA:Ljava/lang/String; = "blobdata"

.field public static final CONTENT_ENTRY_ID_URI:Landroid/net/Uri; = null

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/myContactCard"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/myContactCard"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DATA:Ljava/lang/String; = "data"

.field public static final DATA2:Ljava/lang/String; = "data2"

.field public static final SUBTYPE:Ljava/lang/String; = "subtype"

.field public static final SUBTYPE_EMAIL_CUSTOM:I = 0x0

.field public static final SUBTYPE_EMAIL_HOME:I = 0x1

.field public static final SUBTYPE_EMAIL_OTHER:I = 0x3

.field public static final SUBTYPE_EMAIL_WORK:I = 0x2

.field public static final SUBTYPE_EVENT_ANNIVERSARY:I = 0x191

.field public static final SUBTYPE_EVENT_BIRTHDAY:I = 0x190

.field public static final SUBTYPE_EVENT_FACEBOOK_AUTOUPDATE:I = 0xff01

.field public static final SUBTYPE_EVENT_FACEBOOK_BIRTHDAY:I = 0x192

.field public static final SUBTYPE_EVENT_FACEBOOK_INFO_BASE:I = 0xff00

.field public static final SUBTYPE_EVENT_FACEBOOK_NAME:I = 0xff03

.field public static final SUBTYPE_EVENT_FACEBOOK_PHOTO:I = 0xff04

.field public static final SUBTYPE_IM_AIM:I = 0x0

.field public static final SUBTYPE_IM_GTALK:I = 0x5

.field public static final SUBTYPE_IM_ICQ:I = 0x6

.field public static final SUBTYPE_IM_JABBER:I = 0x7

.field public static final SUBTYPE_IM_MSN:I = 0x1

.field public static final SUBTYPE_IM_QQ:I = 0x4

.field public static final SUBTYPE_IM_SKYPE:I = 0x3

.field public static final SUBTYPE_IM_YAHOO:I = 0x2

.field public static final SUBTYPE_INTERNET_FACEBOOK:I = 0x1f4

.field public static final SUBTYPE_INTERNET_FLICKR:I = 0x1f5

.field public static final SUBTYPE_ORG_CUSTOM:I = 0x0

.field public static final SUBTYPE_ORG_HOME:I = 0x1

.field public static final SUBTYPE_ORG_OTHER:I = 0x3

.field public static final SUBTYPE_ORG_WORK:I = 0x2

.field public static final SUBTYPE_PHONE_CUSTOM:I = 0x0

.field public static final SUBTYPE_PHONE_HOME:I = 0x1

.field public static final SUBTYPE_PHONE_HOMEFAX:I = 0x5

.field public static final SUBTYPE_PHONE_MOBILE:I = 0x2

.field public static final SUBTYPE_PHONE_OTHER:I = 0x7

.field public static final SUBTYPE_PHONE_PAGER:I = 0x6

.field public static final SUBTYPE_PHONE_WORK:I = 0x3

.field public static final SUBTYPE_PHONE_WORKFAX:I = 0x4

.field public static final SUBTYPE_POSTAL_CUSTOM:I = 0x0

.field public static final SUBTYPE_POSTAL_HOME:I = 0x1

.field public static final SUBTYPE_POSTAL_OTHER:I = 0x3

.field public static final SUBTYPE_POSTAL_WORK:I = 0x2

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final TYPE_EMAIL:I = 0x3

.field public static final TYPE_EVENT:I = 0x4

.field public static final TYPE_FACEBOOK_INFO:I = 0xa

.field public static final TYPE_IM:I = 0x7

.field public static final TYPE_INTERNET:I = 0x5

.field public static final TYPE_NAME:I = 0x1

.field public static final TYPE_NOTE:I = 0x9

.field public static final TYPE_ORGANIZATION:I = 0x8

.field public static final TYPE_PHONE:I = 0x2

.field public static final TYPE_PHOTO:I = 0x0

.field public static final TYPE_POSTAL:I = 0x6


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 602
    sget-object v0, Landroid/provider/Contacts$MyContactCard;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapContacts$MyContactCard;->CONTENT_URI:Landroid/net/Uri;

    .line 608
    sget-object v0, Landroid/provider/Contacts$MyContactCard;->CONTENT_ENTRY_ID_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapContacts$MyContactCard;->CONTENT_ENTRY_ID_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 597
    return-void
.end method

.method public static getEmailList(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 725
    invoke-static {p0}, Landroid/provider/Contacts$MyContactCard;->getEmailList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
