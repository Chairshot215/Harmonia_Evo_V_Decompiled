.class public final Lcom/android/providers/contacts/HtcLegacyContactImporter$MyContactCard;
.super Ljava/lang/Object;
.source "HtcLegacyContactImporter.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/HtcLegacyContactImporter;
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
    .line 201
    const-string v0, "content://contacts/myContactCard"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/HtcLegacyContactImporter$MyContactCard;->CONTENT_URI:Landroid/net/Uri;

    .line 208
    const-string v0, "content://contacts/myContactCard"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/HtcLegacyContactImporter$MyContactCard;->CONTENT_ENTRY_ID_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 196
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEmailList(Landroid/content/Context;)Ljava/util/List;
    .locals 10
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
    const/4 v4, 0x0

    .line 316
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 317
    .local v9, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/HtcLegacyContactImporter$MyContactCard;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "data2"

    aput-object v5, v2, v3

    const-string v3, "type=3"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 320
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 322
    :try_start_0
    const-string v0, "data2"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 323
    .local v6, DATA2_INDEX:I
    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 325
    .local v7, address:Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 326
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 329
    .end local v6           #DATA2_INDEX:I
    .end local v7           #address:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 331
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 332
    const/4 v8, 0x0

    .line 334
    :cond_2
    return-object v9
.end method
