.class public Lcom/htc/sdm/provider/SDMProvider;
.super Landroid/content/ContentProvider;
.source "SDMProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sdm/provider/SDMProvider$DbHelper;,
        Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;,
        Lcom/htc/sdm/provider/SDMProvider$COLUMN_CATEGORY_LIST_INDEX;,
        Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;,
        Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;,
        Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;,
        Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;,
        Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.htc.sdm.provider.SDMProvider"

.field private static final CATEGORY_LIST_COLUMN_TYPE:[Ljava/lang/String; = null

.field private static final CAT_ALARM:Ljava/lang/String; = "alarm_category"

.field private static final CAT_NOTIFICATION:Ljava/lang/String; = "notification_category"

.field private static final CAT_RINGTONE:Ljava/lang/String; = "ringtone_category"

.field private static final CAT_SOUNDSET:Ljava/lang/String; = "soundset_category"

.field public static final COLUMN_CATEGORY_LIST:[Ljava/lang/String; = null

.field public static final COLUMN_SETTING:[Ljava/lang/String; = null

.field public static final COLUMN_SOUNDSET:[Ljava/lang/String; = null

.field public static final COLUMN_SOUNDSET_CHILD:[Ljava/lang/String; = null

.field public static final COLUMN_SOUNDSET_INFO:[Ljava/lang/String; = null

.field public static final COLUMN_SOUNDSET_SD:[Ljava/lang/String; = null

.field public static final COLUMN_VERSION_LIST:[Ljava/lang/String; = null

.field private static final DATABASE_NAME:Ljava/lang/String; = "sdm.db"

.field private static final DATABASE_VERSION:I = 0x2

.field private static final LOG_FLAG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SDM"

.field public static final MATCH_CODE_ALARM:I = 0xd

.field public static final MATCH_CODE_ALARM_CAT:I = 0x17

.field public static final MATCH_CODE_ALARM_CAT_ID:I = 0x18

.field public static final MATCH_CODE_ALARM_DELETE:I = 0x23

.field public static final MATCH_CODE_ALARM_ID:I = 0xe

.field public static final MATCH_CODE_ALARM_INFO:I = 0xf

.field public static final MATCH_CODE_ALARM_INFO_ID:I = 0x10

.field public static final MATCH_CODE_CATEGORY_LIST:I = 0x1d

.field public static final MATCH_CODE_DEF_SETTING:I = 0x24

.field public static final MATCH_CODE_DEF_SOUNDSET_CHILD:I = 0x1b

.field public static final MATCH_CODE_DEF_SOUNDSET_CHILD_ID:I = 0x1c

.field public static final MATCH_CODE_NOTIFICATION:I = 0x9

.field public static final MATCH_CODE_NOTIFICATION_CAT:I = 0x15

.field public static final MATCH_CODE_NOTIFICATION_CAT_ID:I = 0x16

.field public static final MATCH_CODE_NOTIFICATION_DELETE:I = 0x22

.field public static final MATCH_CODE_NOTIFICATION_ID:I = 0xa

.field public static final MATCH_CODE_NOTIFICATION_INFO:I = 0xb

.field public static final MATCH_CODE_NOTIFICATION_INFO_ID:I = 0xc

.field public static final MATCH_CODE_RINGTONE:I = 0x5

.field public static final MATCH_CODE_RINGTONE_CAT:I = 0x13

.field public static final MATCH_CODE_RINGTONE_CAT_ID:I = 0x14

.field public static final MATCH_CODE_RINGTONE_DELETE:I = 0x21

.field public static final MATCH_CODE_RINGTONE_ID:I = 0x6

.field public static final MATCH_CODE_RINGTONE_INFO:I = 0x7

.field public static final MATCH_CODE_RINGTONE_INFO_ID:I = 0x8

.field public static final MATCH_CODE_SETTING:I = 0x0

.field public static final MATCH_CODE_SOUNDSET:I = 0x1

.field public static final MATCH_CODE_SOUNDSET_CAT:I = 0x11

.field public static final MATCH_CODE_SOUNDSET_CAT_ID:I = 0x12

.field public static final MATCH_CODE_SOUNDSET_CHILD:I = 0x19

.field public static final MATCH_CODE_SOUNDSET_CHILD_ID:I = 0x1a

.field public static final MATCH_CODE_SOUNDSET_DELETE:I = 0x20

.field public static final MATCH_CODE_SOUNDSET_FROM_SD:I = 0x1f

.field public static final MATCH_CODE_SOUNDSET_ID:I = 0x2

.field public static final MATCH_CODE_SOUNDSET_INFO:I = 0x3

.field public static final MATCH_CODE_SOUNDSET_INFO_ID:I = 0x4

.field public static final MATCH_CODE_VERSION_LIST:I = 0x1e

.field private static final PREFIX:Ljava/lang/String; = "[SDMProvider] "

.field public static final SDM_PROVIDER_AUTHORITY:Landroid/net/Uri; = null

.field public static final SDM_PROVIDER_URI_ALARM:Landroid/net/Uri; = null

.field public static final SDM_PROVIDER_URI_ALARM_CAT:Landroid/net/Uri; = null

.field public static final SDM_PROVIDER_URI_ALARM_INFO:Landroid/net/Uri; = null

.field public static final SDM_PROVIDER_URI_CATEGORY:Landroid/net/Uri; = null

.field public static final SDM_PROVIDER_URI_DEF_SETTING:Landroid/net/Uri; = null

.field public static final SDM_PROVIDER_URI_DEF_SOUNDSET_CHILD:Landroid/net/Uri; = null

.field public static final SDM_PROVIDER_URI_NOTIFICATION:Landroid/net/Uri; = null

.field public static final SDM_PROVIDER_URI_NOTIFICATION_CAT:Landroid/net/Uri; = null

.field public static final SDM_PROVIDER_URI_NOTIFICATION_INFO:Landroid/net/Uri; = null

.field public static final SDM_PROVIDER_URI_RINGTONE:Landroid/net/Uri; = null

.field public static final SDM_PROVIDER_URI_RINGTONE_CAT:Landroid/net/Uri; = null

.field public static final SDM_PROVIDER_URI_RINGTONE_INFO:Landroid/net/Uri; = null

.field public static final SDM_PROVIDER_URI_SETTING:Landroid/net/Uri; = null

.field public static final SDM_PROVIDER_URI_SOUNDSET:Landroid/net/Uri; = null

.field public static final SDM_PROVIDER_URI_SOUNDSET_CAT:Landroid/net/Uri; = null

.field public static final SDM_PROVIDER_URI_SOUNDSET_CHILD:Landroid/net/Uri; = null

.field public static final SDM_PROVIDER_URI_SOUNDSET_INFO:Landroid/net/Uri; = null

.field public static final SDM_PROVIDER_URI_SOUNDSET_SD:Landroid/net/Uri; = null

.field public static final SDM_PROVIDER_URI_VERSION:Landroid/net/Uri; = null

.field private static final SETTING_COLUMN_TYPE:[Ljava/lang/String; = null

.field private static final SOUNDSET_CHILD_COLUMN_TYPE:[Ljava/lang/String; = null

.field public static final SOUNDSET_COLUMN_TYPE:[Ljava/lang/String; = null

.field private static final SOUNDSET_INFO_COLUMN_TYPE:[Ljava/lang/String; = null

.field private static final SOUNDSET_SD_COLUMN_TYPE:[Ljava/lang/String; = null

.field private static final TABLE_NAME_ALARM:Ljava/lang/String; = "alarm"

.field private static final TABLE_NAME_ALARM_ID:Ljava/lang/String; = "alarm/#"

.field private static final TABLE_NAME_ALARM_INFO:Ljava/lang/String; = "alarmInfo"

.field private static final TABLE_NAME_ALARM_INFO_ID:Ljava/lang/String; = "alarmInfo/#"

.field private static final TABLE_NAME_CATEGORY_LIST:Ljava/lang/String; = "CateList"

.field private static final TABLE_NAME_DEF_SETTING:Ljava/lang/String; = "defSetting"

.field private static final TABLE_NAME_DEF_SOUNDSET_CHILD:Ljava/lang/String; = "defSoundsetChild"

.field private static final TABLE_NAME_DEF_SOUNDSET_CHILD_ID:Ljava/lang/String; = "defSoundsetChild/#"

.field private static final TABLE_NAME_DELETEALARM:Ljava/lang/String; = "deleteAlarm"

.field private static final TABLE_NAME_DELETENOTIFICATION:Ljava/lang/String; = "deleteNotification"

.field private static final TABLE_NAME_DELETERINGTONE:Ljava/lang/String; = "deleteRingtone"

.field private static final TABLE_NAME_DELETESOUNDSET:Ljava/lang/String; = "deleteSoundSet"

.field private static final TABLE_NAME_NOTIFICATION:Ljava/lang/String; = "notification"

.field private static final TABLE_NAME_NOTIFICATION_ID:Ljava/lang/String; = "notification/#"

.field private static final TABLE_NAME_NOTIFICATION_INFO:Ljava/lang/String; = "notificationInfo"

.field private static final TABLE_NAME_NOTIFICATION_INFO_ID:Ljava/lang/String; = "notificationInfo/#"

.field private static final TABLE_NAME_RINGTONE:Ljava/lang/String; = "ringtone"

.field private static final TABLE_NAME_RINGTONE_ID:Ljava/lang/String; = "ringtone/#"

.field private static final TABLE_NAME_RINGTONE_INFO:Ljava/lang/String; = "ringtoneInfo"

.field private static final TABLE_NAME_RINGTONE_INFO_ID:Ljava/lang/String; = "ringtoneInfo/#"

.field private static final TABLE_NAME_SETTING:Ljava/lang/String; = "setting"

.field private static final TABLE_NAME_SOUNDSET:Ljava/lang/String; = "soundset"

.field private static final TABLE_NAME_SOUNDSET_CHILD:Ljava/lang/String; = "soundsetChild"

.field private static final TABLE_NAME_SOUNDSET_CHILD_ID:Ljava/lang/String; = "soundsetChild/#"

.field private static final TABLE_NAME_SOUNDSET_FROM_SD:Ljava/lang/String; = "soundsetfromSD"

.field private static final TABLE_NAME_SOUNDSET_ID:Ljava/lang/String; = "soundset/#"

.field private static final TABLE_NAME_SOUNDSET_INFO:Ljava/lang/String; = "soundsetInfo"

.field private static final TABLE_NAME_SOUNDSET_INFO_ID:Ljava/lang/String; = "soundsetInfo/#"

.field private static final TABLE_NAME_VERSION_LIST:Ljava/lang/String; = "VersionList"

.field private static final URL_MATCHER:Landroid/content/UriMatcher;

.field private static final VERSION_LIST_COLUMN_TYPE:[Ljava/lang/String;


# instance fields
.field mdbHelper:Lcom/htc/sdm/provider/SDMProvider$DbHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 94
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "fileName"

    aput-object v1, v0, v4

    const-string v1, "lastModifyTime"

    aput-object v1, v0, v5

    const-string v1, "fileSize"

    aput-object v1, v0, v6

    const-string v1, "isAdd"

    aput-object v1, v0, v7

    sput-object v0, Lcom/htc/sdm/provider/SDMProvider;->COLUMN_SOUNDSET_SD:[Ljava/lang/String;

    .line 103
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "integer primary key autoincrement"

    aput-object v1, v0, v3

    const-string v1, "text"

    aput-object v1, v0, v4

    const-string v1, "integer"

    aput-object v1, v0, v5

    const-string v1, "integer"

    aput-object v1, v0, v6

    const-string v1, "integer"

    aput-object v1, v0, v7

    sput-object v0, Lcom/htc/sdm/provider/SDMProvider;->SOUNDSET_SD_COLUMN_TYPE:[Ljava/lang/String;

    .line 122
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "GUID"

    aput-object v1, v0, v4

    const-string v1, "refType"

    aput-object v1, v0, v5

    const-string v1, "soundUri"

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/sdm/provider/SDMProvider;->COLUMN_SETTING:[Ljava/lang/String;

    .line 130
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "integer primary key autoincrement"

    aput-object v1, v0, v3

    const-string v1, "text"

    aput-object v1, v0, v4

    const-string v1, "text"

    aput-object v1, v0, v5

    const-string v1, "text"

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/sdm/provider/SDMProvider;->SETTING_COLUMN_TYPE:[Ljava/lang/String;

    .line 161
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "asset_id"

    aput-object v1, v0, v4

    const-string v1, "auth_need"

    aput-object v1, v0, v5

    const-string v1, "downloaded"

    aput-object v1, v0, v6

    const-string v1, "srcType"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "GUID"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "version"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "size"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "cat"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "prelisten_url"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "file_url"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "soundUri"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "reldate"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "rating"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "rating_count"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "download_count"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "comment_count"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "likeCount"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "locale"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/sdm/provider/SDMProvider;->COLUMN_SOUNDSET:[Ljava/lang/String;

    .line 184
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "integer primary key autoincrement"

    aput-object v1, v0, v3

    const-string v1, "text"

    aput-object v1, v0, v4

    const-string v1, "text"

    aput-object v1, v0, v5

    const-string v1, "text"

    aput-object v1, v0, v6

    const-string v1, "text"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "text"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "text"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "text"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "text"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "text"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "text"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "text"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "text"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "integer"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "integer"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "integer"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "integer"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "integer"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "text"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/sdm/provider/SDMProvider;->SOUNDSET_COLUMN_TYPE:[Ljava/lang/String;

    .line 219
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "GUID"

    aput-object v1, v0, v4

    const-string v1, "lang"

    aput-object v1, v0, v5

    const-string v1, "name"

    aput-object v1, v0, v6

    const-string v1, "author"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "corp"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "description"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/sdm/provider/SDMProvider;->COLUMN_SOUNDSET_INFO:[Ljava/lang/String;

    .line 230
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "integer primary key autoincrement"

    aput-object v1, v0, v3

    const-string v1, "text"

    aput-object v1, v0, v4

    const-string v1, "text"

    aput-object v1, v0, v5

    const-string v1, "text"

    aput-object v1, v0, v6

    const-string v1, "text"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "text"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "text"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/sdm/provider/SDMProvider;->SOUNDSET_INFO_COLUMN_TYPE:[Ljava/lang/String;

    .line 250
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "GUID"

    aput-object v1, v0, v4

    const-string v1, "PARENT_GUID"

    aput-object v1, v0, v5

    const-string v1, "refType"

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/sdm/provider/SDMProvider;->COLUMN_SOUNDSET_CHILD:[Ljava/lang/String;

    .line 258
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "integer primary key autoincrement"

    aput-object v1, v0, v3

    const-string v1, "text"

    aput-object v1, v0, v4

    const-string v1, "text"

    aput-object v1, v0, v5

    const-string v1, "text"

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/sdm/provider/SDMProvider;->SOUNDSET_CHILD_COLUMN_TYPE:[Ljava/lang/String;

    .line 275
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "catId"

    aput-object v1, v0, v4

    const-string v1, "name"

    aput-object v1, v0, v5

    const-string v1, "lang"

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/sdm/provider/SDMProvider;->COLUMN_CATEGORY_LIST:[Ljava/lang/String;

    .line 283
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "integer primary key autoincrement"

    aput-object v1, v0, v3

    const-string v1, "text"

    aput-object v1, v0, v4

    const-string v1, "text"

    aput-object v1, v0, v5

    const-string v1, "text"

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/sdm/provider/SDMProvider;->CATEGORY_LIST_COLUMN_TYPE:[Ljava/lang/String;

    .line 303
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "type"

    aput-object v1, v0, v4

    const-string v1, "lang"

    aput-object v1, v0, v5

    const-string v1, "locale"

    aput-object v1, v0, v6

    const-string v1, "page"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "version"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "dversion"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/sdm/provider/SDMProvider;->COLUMN_VERSION_LIST:[Ljava/lang/String;

    .line 314
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "integer primary key autoincrement"

    aput-object v1, v0, v3

    const-string v1, "integer"

    aput-object v1, v0, v4

    const-string v1, "text"

    aput-object v1, v0, v5

    const-string v1, "text"

    aput-object v1, v0, v6

    const-string v1, "integer"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "integer"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "integer"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/sdm/provider/SDMProvider;->VERSION_LIST_COLUMN_TYPE:[Ljava/lang/String;

    .line 369
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/htc/sdm/provider/SDMProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    .line 373
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.htc.sdm.provider.SDMProvider"

    const-string v2, "setting"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 374
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.htc.sdm.provider.SDMProvider"

    const-string v2, "defSetting"

    const/16 v3, 0x24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 376
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.htc.sdm.provider.SDMProvider"

    const-string v2, "soundset"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 377
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.htc.sdm.provider.SDMProvider"

    const-string v2, "soundset/#"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 378
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.htc.sdm.provider.SDMProvider"

    const-string v2, "soundsetInfo"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 379
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.htc.sdm.provider.SDMProvider"

    const-string v2, "soundsetInfo/#"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 380
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.htc.sdm.provider.SDMProvider"

    const-string v2, "defSoundsetChild"

    const/16 v3, 0x1b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 381
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.htc.sdm.provider.SDMProvider"

    const-string v2, "defSoundsetChild/#"

    const/16 v3, 0x1c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 382
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.htc.sdm.provider.SDMProvider"

    const-string v2, "soundsetChild"

    const/16 v3, 0x19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 383
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.htc.sdm.provider.SDMProvider"

    const-string v2, "soundsetChild/#"

    const/16 v3, 0x1a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 385
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.htc.sdm.provider.SDMProvider"

    const-string v2, "ringtone"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 386
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.htc.sdm.provider.SDMProvider"

    const-string v2, "ringtone/#"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 387
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.htc.sdm.provider.SDMProvider"

    const-string v2, "ringtoneInfo"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 388
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.htc.sdm.provider.SDMProvider"

    const-string v2, "ringtoneInfo/#"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 390
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.htc.sdm.provider.SDMProvider"

    const-string v2, "notification"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 391
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.htc.sdm.provider.SDMProvider"

    const-string v2, "notification/#"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 392
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.htc.sdm.provider.SDMProvider"

    const-string v2, "notificationInfo"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 393
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.htc.sdm.provider.SDMProvider"

    const-string v2, "notificationInfo/#"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 395
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.htc.sdm.provider.SDMProvider"

    const-string v2, "alarm"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 396
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.htc.sdm.provider.SDMProvider"

    const-string v2, "alarm/#"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 397
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.htc.sdm.provider.SDMProvider"

    const-string v2, "alarmInfo"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 398
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.htc.sdm.provider.SDMProvider"

    const-string v2, "alarmInfo/#"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 400
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.htc.sdm.provider.SDMProvider"

    const-string v2, "CateList"

    const/16 v3, 0x1d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 401
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.htc.sdm.provider.SDMProvider"

    const-string v2, "VersionList"

    const/16 v3, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 404
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.htc.sdm.provider.SDMProvider"

    const-string v2, "soundsetfromSD"

    const/16 v3, 0x1f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 407
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.htc.sdm.provider.SDMProvider"

    const-string v2, "soundset_category"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 408
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.htc.sdm.provider.SDMProvider"

    const-string v2, "ringtone_category"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 409
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.htc.sdm.provider.SDMProvider"

    const-string v2, "notification_category"

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 410
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.htc.sdm.provider.SDMProvider"

    const-string v2, "alarm_category"

    const/16 v3, 0x17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 412
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.htc.sdm.provider.SDMProvider"

    const-string v2, "deleteSoundSet"

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 413
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.htc.sdm.provider.SDMProvider"

    const-string v2, "deleteRingtone"

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 414
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.htc.sdm.provider.SDMProvider"

    const-string v2, "deleteNotification"

    const/16 v3, 0x22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 415
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.htc.sdm.provider.SDMProvider"

    const-string v2, "deleteAlarm"

    const/16 v3, 0x23

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 419
    const-string v0, "content://com.htc.sdm.provider.SDMProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_AUTHORITY:Landroid/net/Uri;

    .line 420
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_AUTHORITY:Landroid/net/Uri;

    const-string v1, "setting"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SETTING:Landroid/net/Uri;

    .line 421
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_AUTHORITY:Landroid/net/Uri;

    const-string v1, "defSetting"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_DEF_SETTING:Landroid/net/Uri;

    .line 423
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_AUTHORITY:Landroid/net/Uri;

    const-string v1, "soundset"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SOUNDSET:Landroid/net/Uri;

    .line 424
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_AUTHORITY:Landroid/net/Uri;

    const-string v1, "defSoundsetChild"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_DEF_SOUNDSET_CHILD:Landroid/net/Uri;

    .line 425
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_AUTHORITY:Landroid/net/Uri;

    const-string v1, "soundsetChild"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SOUNDSET_CHILD:Landroid/net/Uri;

    .line 426
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_AUTHORITY:Landroid/net/Uri;

    const-string v1, "soundsetInfo"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SOUNDSET_INFO:Landroid/net/Uri;

    .line 428
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_AUTHORITY:Landroid/net/Uri;

    const-string v1, "ringtone"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_RINGTONE:Landroid/net/Uri;

    .line 429
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_AUTHORITY:Landroid/net/Uri;

    const-string v1, "ringtoneInfo"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_RINGTONE_INFO:Landroid/net/Uri;

    .line 431
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_AUTHORITY:Landroid/net/Uri;

    const-string v1, "notification"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_NOTIFICATION:Landroid/net/Uri;

    .line 432
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_AUTHORITY:Landroid/net/Uri;

    const-string v1, "notificationInfo"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_NOTIFICATION_INFO:Landroid/net/Uri;

    .line 434
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_AUTHORITY:Landroid/net/Uri;

    const-string v1, "alarm"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_ALARM:Landroid/net/Uri;

    .line 435
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_AUTHORITY:Landroid/net/Uri;

    const-string v1, "alarmInfo"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_ALARM_INFO:Landroid/net/Uri;

    .line 437
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_AUTHORITY:Landroid/net/Uri;

    const-string v1, "CateList"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_CATEGORY:Landroid/net/Uri;

    .line 438
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_AUTHORITY:Landroid/net/Uri;

    const-string v1, "VersionList"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_VERSION:Landroid/net/Uri;

    .line 441
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_AUTHORITY:Landroid/net/Uri;

    const-string v1, "soundsetfromSD"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SOUNDSET_SD:Landroid/net/Uri;

    .line 445
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_AUTHORITY:Landroid/net/Uri;

    const-string v1, "alarm_category"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_ALARM_CAT:Landroid/net/Uri;

    .line 446
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_AUTHORITY:Landroid/net/Uri;

    const-string v1, "soundset_category"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SOUNDSET_CAT:Landroid/net/Uri;

    .line 447
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_AUTHORITY:Landroid/net/Uri;

    const-string v1, "notification_category"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_NOTIFICATION_CAT:Landroid/net/Uri;

    .line 448
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_AUTHORITY:Landroid/net/Uri;

    const-string v1, "ringtone_category"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_RINGTONE_CAT:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sdm/provider/SDMProvider;->mdbHelper:Lcom/htc/sdm/provider/SDMProvider$DbHelper;

    .line 1084
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->SETTING_COLUMN_TYPE:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 32
    invoke-static {p0, p1, p2}, Lcom/htc/sdm/provider/SDMProvider;->generateCreateTableSql(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->CATEGORY_LIST_COLUMN_TYPE:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->VERSION_LIST_COLUMN_TYPE:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->SOUNDSET_INFO_COLUMN_TYPE:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->SOUNDSET_CHILD_COLUMN_TYPE:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->SOUNDSET_SD_COLUMN_TYPE:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-static {p0}, Lcom/htc/sdm/provider/SDMProvider;->initData(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private static generateCreateTableSql(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "tableName"
    .parameter "fields"
    .parameter "types"

    .prologue
    .line 1058
    const-string v2, ""

    .line 1059
    .local v2, sql:Ljava/lang/String;
    const-string v1, ", "

    .line 1060
    .local v1, separate:Ljava/lang/String;
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_0

    .line 1062
    const/4 v2, 0x0

    .line 1075
    :goto_0
    return-object v2

    .line 1066
    :cond_0
    const/4 v0, 0x0

    .line 1067
    .local v0, i:I
    const/4 v0, 0x0

    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 1069
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1067
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1072
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static getTableName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    .line 452
    sget-object v2, Lcom/htc/sdm/provider/SDMProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 454
    .local v0, code:I
    const/4 v1, 0x0

    .line 455
    .local v1, rtnString:Ljava/lang/String;
    packed-switch v0, :pswitch_data_0

    .line 531
    :goto_0
    :pswitch_0
    return-object v1

    .line 458
    :pswitch_1
    const-string v1, "setting"

    .line 459
    goto :goto_0

    .line 461
    :pswitch_2
    const-string v1, "defSetting"

    .line 462
    goto :goto_0

    .line 466
    :pswitch_3
    const-string v1, "soundset"

    .line 467
    goto :goto_0

    .line 470
    :pswitch_4
    const-string v1, "soundsetInfo"

    .line 471
    goto :goto_0

    .line 474
    :pswitch_5
    const-string v1, "defSoundsetChild"

    .line 475
    goto :goto_0

    .line 478
    :pswitch_6
    const-string v1, "soundsetChild"

    .line 479
    goto :goto_0

    .line 483
    :pswitch_7
    const-string v1, "ringtone"

    .line 484
    goto :goto_0

    .line 487
    :pswitch_8
    const-string v1, "ringtoneInfo"

    .line 488
    goto :goto_0

    .line 492
    :pswitch_9
    const-string v1, "notification"

    .line 493
    goto :goto_0

    .line 496
    :pswitch_a
    const-string v1, "notificationInfo"

    .line 497
    goto :goto_0

    .line 501
    :pswitch_b
    const-string v1, "alarm"

    .line 502
    goto :goto_0

    .line 505
    :pswitch_c
    const-string v1, "alarmInfo"

    .line 506
    goto :goto_0

    .line 508
    :pswitch_d
    const-string v1, "CateList"

    .line 509
    goto :goto_0

    .line 511
    :pswitch_e
    const-string v1, "VersionList"

    .line 512
    goto :goto_0

    .line 515
    :pswitch_f
    const-string v1, "soundsetfromSD"

    .line 516
    goto :goto_0

    .line 519
    :pswitch_10
    const-string v1, "soundset"

    .line 520
    goto :goto_0

    .line 522
    :pswitch_11
    const-string v1, "ringtone"

    .line 523
    goto :goto_0

    .line 525
    :pswitch_12
    const-string v1, "notification"

    .line 526
    goto :goto_0

    .line 528
    :pswitch_13
    const-string v1, "alarm"

    goto :goto_0

    .line 455
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_10
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_12
        :pswitch_0
        :pswitch_13
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_3
        :pswitch_7
        :pswitch_9
        :pswitch_b
        :pswitch_2
    .end packed-switch
.end method

.method private static initData(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .parameter "db"

    .prologue
    .line 1008
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1009
    .local v2, defNotificationValues:Landroid/content/ContentValues;
    sget-object v5, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;

    invoke-virtual {v5}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;->name()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    sget-object v5, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;->soundUri:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;

    invoke-virtual {v5}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;->name()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    sget-object v5, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;->refType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;

    invoke-virtual {v5}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;->name()Ljava/lang/String;

    move-result-object v5

    const-string v6, "S_Notify"

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1014
    .local v3, mailValues:Landroid/content/ContentValues;
    sget-object v5, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;

    invoke-virtual {v5}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;->name()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    sget-object v5, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;->soundUri:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;

    invoke-virtual {v5}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;->name()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    sget-object v5, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;->refType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;

    invoke-virtual {v5}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;->name()Ljava/lang/String;

    move-result-object v5

    const-string v6, "EMail"

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1019
    .local v1, calendarValues:Landroid/content/ContentValues;
    sget-object v5, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;

    invoke-virtual {v5}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;->name()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    sget-object v5, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;->soundUri:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;

    invoke-virtual {v5}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;->name()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    sget-object v5, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;->refType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;

    invoke-virtual {v5}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;->name()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Calendar"

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1024
    .local v4, messageValues:Landroid/content/ContentValues;
    sget-object v5, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;

    invoke-virtual {v5}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;->name()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    sget-object v5, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;->soundUri:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;

    invoke-virtual {v5}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;->name()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    sget-object v5, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;->refType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;

    invoke-virtual {v5}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;->name()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Message"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1029
    .local v0, alarmValues:Landroid/content/ContentValues;
    sget-object v5, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;

    invoke-virtual {v5}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;->name()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    sget-object v5, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;->soundUri:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;

    invoke-virtual {v5}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;->name()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    sget-object v5, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;->refType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;

    invoke-virtual {v5}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;->name()Ljava/lang/String;

    move-result-object v5

    const-string v6, "S_Alarm"

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1042
    :try_start_0
    const-string v5, "defSetting"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1043
    const-string v5, "defSetting"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1044
    const-string v5, "defSetting"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1045
    const-string v5, "defSetting"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1046
    const-string v5, "defSetting"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1048
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1052
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1054
    return-void

    .line 1052
    :catchall_0
    move-exception v5

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
.end method

.method private queryDeletableCountAndSize(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 16
    .parameter "table"
    .parameter "sortOrder"

    .prologue
    .line 1347
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "COUNT(_id)"

    aput-object v5, v3, v2

    const/4 v2, 0x1

    const-string v5, "SUM(size)"

    aput-object v5, v3, v2

    .line 1348
    .local v3, str:[Ljava/lang/String;
    const/4 v2, 0x2

    new-array v15, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "COUNT"

    aput-object v5, v15, v2

    const/4 v2, 0x1

    const-string v5, "SIZE"

    aput-object v5, v15, v2

    .line 1349
    .local v15, str2:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 1350
    .local v9, cur1:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 1351
    .local v10, cur3:Landroid/database/MatrixCursor;
    const-string v4, ""

    .line 1354
    .local v4, where:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->downloaded:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v5}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "=\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\' AND "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->srcType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v5}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "=\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1356
    const-string v2, "soundset"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1358
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sdm/provider/SDMProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/sdm/util/SDMUtil;->getCurSoundsetGUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 1359
    .local v13, mStrCurSelGUID:Ljava/lang/String;
    if-eqz v13, :cond_1

    .line 1362
    if-eqz v4, :cond_0

    .line 1364
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " AND "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1366
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v5}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "<>\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1381
    .end local v13           #mStrCurSelGUID:Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v2, "SDM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SDMProvider] Query deletable where = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sdm/provider/SDMProvider;->mdbHelper:Lcom/htc/sdm/provider/SDMProvider$DbHelper;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1383
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    move-object/from16 v8, p2

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1385
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1387
    new-instance v11, Landroid/database/MatrixCursor;

    invoke-direct {v11, v15}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1388
    .end local v10           #cur3:Landroid/database/MatrixCursor;
    .local v11, cur3:Landroid/database/MatrixCursor;
    const/4 v2, 0x2

    :try_start_1
    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v5, 0x0

    const-string v6, "COUNT(_id)"

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x1

    const-string v6, "SUM(size)"

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-virtual {v11, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v10, v11

    .line 1401
    .end local v11           #cur3:Landroid/database/MatrixCursor;
    .restart local v10       #cur3:Landroid/database/MatrixCursor;
    :cond_2
    if-eqz v9, :cond_3

    .line 1402
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1404
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_3
    :goto_1
    return-object v10

    .line 1371
    :cond_4
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sdm/provider/SDMProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/sdm/util/SDMDBUtil;->listAllValidSoundGuid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    .line 1372
    .local v14, soundGUIDList:Ljava/lang/String;
    if-eqz v14, :cond_1

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 1374
    if-eqz v4, :cond_5

    .line 1376
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " AND "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1378
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v5}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " NOT IN ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v4

    goto/16 :goto_0

    .line 1393
    .end local v14           #soundGUIDList:Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 1397
    .local v12, ex:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1401
    if-eqz v9, :cond_3

    .line 1402
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1401
    .end local v12           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    :goto_3
    if-eqz v9, :cond_6

    .line 1402
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2

    .line 1401
    .end local v10           #cur3:Landroid/database/MatrixCursor;
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v11       #cur3:Landroid/database/MatrixCursor;
    :catchall_1
    move-exception v2

    move-object v10, v11

    .end local v11           #cur3:Landroid/database/MatrixCursor;
    .restart local v10       #cur3:Landroid/database/MatrixCursor;
    goto :goto_3

    .line 1393
    .end local v10           #cur3:Landroid/database/MatrixCursor;
    .restart local v11       #cur3:Landroid/database/MatrixCursor;
    :catch_1
    move-exception v12

    move-object v10, v11

    .end local v11           #cur3:Landroid/database/MatrixCursor;
    .restart local v10       #cur3:Landroid/database/MatrixCursor;
    goto :goto_2
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 539
    .local p1, arg0:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v0, 0x0

    .line 541
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v3, p0, Lcom/htc/sdm/provider/SDMProvider;->mdbHelper:Lcom/htc/sdm/provider/SDMProvider$DbHelper;

    invoke-virtual {v3}, Lcom/htc/sdm/provider/SDMProvider$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 542
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 543
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v2

    .line 544
    .local v2, t_Results:[Landroid/content/ContentProviderResult;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 552
    .end local v2           #t_Results:[Landroid/content/ContentProviderResult;
    :goto_0
    return-object v2

    .line 545
    :catch_0
    move-exception v1

    .line 546
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    const-string v3, "SDM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SDMProvider] caught exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 547
    const/4 v2, 0x0

    .line 550
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 10
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v6, 0x0

    .line 558
    invoke-static {p1}, Lcom/htc/sdm/provider/SDMProvider;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 559
    .local v4, table:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    .line 562
    .local v5, uriSize:I
    if-nez v4, :cond_0

    .line 585
    :goto_0
    return v6

    .line 569
    :cond_0
    :try_start_0
    iget-object v7, p0, Lcom/htc/sdm/provider/SDMProvider;->mdbHelper:Lcom/htc/sdm/provider/SDMProvider$DbHelper;

    invoke-virtual {v7}, Lcom/htc/sdm/provider/SDMProvider$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 570
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v7, 0x2

    if-lt v5, v7, :cond_2

    .line 572
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 573
    .local v1, db_id:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->_id:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v8}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 574
    .local v3, selectionWithID:Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 575
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 577
    :cond_1
    invoke-virtual {v0, v4, v3, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    goto :goto_0

    .line 581
    .end local v1           #db_id:Ljava/lang/String;
    .end local v3           #selectionWithID:Ljava/lang/String;
    :cond_2
    invoke-virtual {v0, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    goto :goto_0

    .line 583
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v2

    .line 584
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "SDM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[SDMProvider] caught exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 593
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 9
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v5, 0x0

    .line 599
    const-wide/16 v2, 0x0

    .line 600
    .local v2, id:J
    invoke-static {p1}, Lcom/htc/sdm/provider/SDMProvider;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 601
    .local v4, table:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 612
    :goto_0
    return-object v5

    .line 606
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/htc/sdm/provider/SDMProvider;->mdbHelper:Lcom/htc/sdm/provider/SDMProvider$DbHelper;

    invoke-virtual {v6}, Lcom/htc/sdm/provider/SDMProvider$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 607
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 612
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_0

    .line 608
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v1

    .line 609
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "SDM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[SDMProvider] caught exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCreate()Z
    .locals 6

    .prologue
    .line 620
    :try_start_0
    new-instance v1, Lcom/htc/sdm/provider/SDMProvider$DbHelper;

    invoke-virtual {p0}, Lcom/htc/sdm/provider/SDMProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "sdm.db"

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/htc/sdm/provider/SDMProvider$DbHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v1, p0, Lcom/htc/sdm/provider/SDMProvider;->mdbHelper:Lcom/htc/sdm/provider/SDMProvider$DbHelper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 623
    :catch_0
    move-exception v0

    .line 626
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 13
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 786
    new-array v2, v12, [Ljava/lang/String;

    const-string v0, "GUID"

    aput-object v0, v2, v11

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sdm/provider/SDMProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 787
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 788
    .local v7, count:I
    :goto_0
    if-eq v7, v12, :cond_3

    .line 790
    if-eqz v6, :cond_0

    .line 792
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 794
    :cond_0
    if-nez v7, :cond_2

    .line 796
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No entry for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .end local v7           #count:I
    :cond_1
    move v7, v11

    .line 787
    goto :goto_0

    .line 798
    .restart local v7       #count:I
    :cond_2
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Multiple items at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 801
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 802
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 803
    .local v9, path:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 805
    if-nez v9, :cond_4

    .line 806
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v2, "No filename found."

    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 808
    :cond_4
    const-string v0, "r"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 809
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad mode for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 811
    :cond_5
    invoke-virtual {p0}, Lcom/htc/sdm/provider/SDMProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "sdm"

    invoke-virtual {v0, v2, v12}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v8

    .line 812
    .local v8, dataDir:Ljava/io/File;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 814
    .local v10, target:Ljava/io/File;
    const/4 v1, 0x0

    .line 815
    .local v1, ret:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 816
    const/high16 v0, 0x1000

    invoke-static {v10, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 818
    :cond_6
    if-nez v1, :cond_7

    .line 820
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v2, "couldn\'t open file"

    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 823
    :cond_7
    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    return-object v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 13
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 745
    new-array v2, v12, [Ljava/lang/String;

    const-string v0, "GUID"

    aput-object v0, v2, v11

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sdm/provider/SDMProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 746
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 747
    .local v7, count:I
    :goto_0
    if-eq v7, v12, :cond_3

    .line 749
    if-eqz v6, :cond_0

    .line 751
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 753
    :cond_0
    if-nez v7, :cond_2

    .line 755
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No entry for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .end local v7           #count:I
    :cond_1
    move v7, v11

    .line 746
    goto :goto_0

    .line 757
    .restart local v7       #count:I
    :cond_2
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiple items at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 760
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 761
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 762
    .local v9, path:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 764
    if-nez v9, :cond_4

    .line 765
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "No filename found."

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 767
    :cond_4
    const-string v0, "r"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 768
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad mode for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 770
    :cond_5
    invoke-virtual {p0}, Lcom/htc/sdm/provider/SDMProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sdm"

    invoke-virtual {v0, v1, v12}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v8

    .line 772
    .local v8, dataDir:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/high16 v1, 0x1000

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v10

    .line 774
    .local v10, ret:Landroid/os/ParcelFileDescriptor;
    if-nez v10, :cond_6

    .line 776
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "couldn\'t open file"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 779
    :cond_6
    return-object v10
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 21
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 635
    invoke-static/range {p1 .. p1}, Lcom/htc/sdm/provider/SDMProvider;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 636
    .local v3, table:Ljava/lang/String;
    const/16 v20, 0x0

    .line 637
    .local v20, uriSize:I
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v20

    .line 639
    const/4 v7, 0x0

    .line 640
    .local v7, groupby:Ljava/lang/String;
    sget-object v4, Lcom/htc/sdm/provider/SDMProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v16

    .line 641
    .local v16, code:I
    packed-switch v16, :pswitch_data_0

    .line 661
    :goto_0
    :pswitch_0
    if-nez v3, :cond_1

    .line 663
    const/16 v17, 0x0

    .line 704
    :cond_0
    :goto_1
    return-object v17

    .line 647
    :pswitch_1
    const-string v7, "cat"

    .line 648
    goto :goto_0

    .line 658
    :pswitch_2
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v3, v1}, Lcom/htc/sdm/provider/SDMProvider;->queryDeletableCountAndSize(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    goto :goto_1

    .line 666
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sdm/provider/SDMProvider;->mdbHelper:Lcom/htc/sdm/provider/SDMProvider$DbHelper;

    invoke-virtual {v4}, Lcom/htc/sdm/provider/SDMProvider$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 668
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x2

    move/from16 v0, v20

    if-lt v0, v4, :cond_3

    .line 670
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 672
    .local v18, db_id:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->_id:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v6}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "=\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 673
    .local v5, selectionWithID:Ljava/lang/String;
    if-eqz p3, :cond_2

    .line 674
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " AND "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 676
    :cond_2
    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    goto :goto_1

    .line 680
    .end local v5           #selectionWithID:Ljava/lang/String;
    .end local v18           #db_id:Ljava/lang/String;
    :cond_3
    const/4 v14, 0x0

    move-object v8, v2

    move-object v9, v3

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object v13, v7

    move-object/from16 v15, p5

    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 681
    .local v17, cr:Landroid/database/Cursor;
    if-eqz v17, :cond_0

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "setting"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 684
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 685
    const/16 v17, 0x0

    .line 688
    :try_start_1
    const-string v9, "defSetting"

    const/4 v14, 0x0

    move-object v8, v2

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object v13, v7

    move-object/from16 v15, p5

    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v17

    .line 692
    if-eqz v17, :cond_0

    goto/16 :goto_1

    .line 689
    :catch_0
    move-exception v4

    .line 692
    if-eqz v17, :cond_0

    goto/16 :goto_1

    :catchall_0
    move-exception v4

    if-nez v17, :cond_0

    .line 695
    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 702
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v17           #cr:Landroid/database/Cursor;
    :catch_1
    move-exception v19

    .line 703
    .local v19, e:Ljava/lang/Exception;
    const-string v4, "SDM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[SDMProvider] caught exception: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-static {v4, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 704
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 641
    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 10
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v6, 0x0

    .line 712
    invoke-static {p1}, Lcom/htc/sdm/provider/SDMProvider;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 713
    .local v4, table:Ljava/lang/String;
    const/4 v5, 0x0

    .line 714
    .local v5, uriSize:I
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    .line 715
    if-nez v4, :cond_0

    .line 737
    :goto_0
    return v6

    .line 721
    :cond_0
    :try_start_0
    iget-object v7, p0, Lcom/htc/sdm/provider/SDMProvider;->mdbHelper:Lcom/htc/sdm/provider/SDMProvider$DbHelper;

    invoke-virtual {v7}, Lcom/htc/sdm/provider/SDMProvider$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 722
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v7, 0x2

    if-lt v5, v7, :cond_2

    .line 724
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 726
    .local v1, db_id:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->_id:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v8}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 727
    .local v3, selectionWithID:Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 728
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 730
    :cond_1
    invoke-virtual {v0, v4, p2, v3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    goto :goto_0

    .line 733
    .end local v1           #db_id:Ljava/lang/String;
    .end local v3           #selectionWithID:Ljava/lang/String;
    :cond_2
    invoke-virtual {v0, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    goto :goto_0

    .line 735
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v2

    .line 736
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "SDM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[SDMProvider] caught exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
