.class public final Lcom/htc/wrap/android/provider/HtcWrapDrmStore;
.super Ljava/lang/Object;
.source "HtcWrapDrmStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;,
        Lcom/htc/wrap/android/provider/HtcWrapDrmStore$UpdateLicense;,
        Lcom/htc/wrap/android/provider/HtcWrapDrmStore$ErrorCode;,
        Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Err;,
        Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Stamp;,
        Lcom/htc/wrap/android/provider/HtcWrapDrmStore$AlbumArt;,
        Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Albums;,
        Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Artists;,
        Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Jar;,
        Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Video;,
        Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Audio;,
        Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Images;,
        Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Columns;
    }
.end annotation


# static fields
.field public static final ALBUMS_PROJECTION:[Ljava/lang/String; = null

.field public static final ARTISTS_PROJECTION:[Ljava/lang/String; = null

.field public static final AUTHORITY:Ljava/lang/String; = "drm"

.field private static CMD_CHMOD:[Ljava/lang/String; = null

.field public static final CONSTRAINT_PROJECTION:[Ljava/lang/String; = null

.field public static final DCFLIST_PROJECTION:[Ljava/lang/String; = null

.field public static final DELIVERY_TYPE_PROJECTION:[Ljava/lang/String; = null

.field private static DISABLE_COMBINED_DELIVERY:Z = false

.field private static DISABLE_FORWORD_LOCK:Z = false

.field private static DISABLE_SEPARATE_DELIVERY:Z = false

.field public static final DRM_COMBINED_DELIVERY:I = 0x2

.field public static final DRM_DELIVERY_CD:I = 0xf0

.field public static final DRM_DELIVERY_FL:I = 0xf

.field public static final DRM_DELIVERY_SD:I = 0xf00

.field private static final DRM_FIND_BASE64_PATTERN:Ljava/lang/String; = "Content-Transfer-Encoding: base64"

.field public static final DRM_FORWARD_LOCK:I = 0x1

.field public static final DRM_HTC_RIGHTS_DIRECTORY_PATH:Ljava/lang/String; = "/data/data/com.android.providers.drm/rights"

.field public static final DRM_HTC_TMP_DIRECTORY:Ljava/lang/String; = "tmp"

.field public static final DRM_PERMISSION_DISPLAY:I = 0x2

.field public static final DRM_PERMISSION_EXECUTE:I = 0x3

.field public static final DRM_PERMISSION_PLAY:I = 0x1

.field public static final DRM_PERMISSION_PRINT:I = 0x4

.field private static final DRM_REPLACE_PATTERN:Ljava/lang/String; = "Content-Transfer-Encoding: binary"

.field public static final DRM_SEPARATE_DELIVERY:I = 0x3

.field public static final DrmUriCollection:[Landroid/net/Uri; = null

.field public static final FILEPATH_PROJECTION:[Ljava/lang/String; = null

.field private static final GARBAGE_FILE:Ljava/lang/String; = "garbage"

.field private static final INSTALL_FOLDER:Ljava/lang/String; = "/download/"

.field private static final LOGD:Z = true

.field public static final METADATA_PROJECTION:[Ljava/lang/String; = null

.field public static final MIDLET_PROJECTION:[Ljava/lang/String; = null

.field private static final PLATFORM_7x27:Ljava/lang/String; = "7x27"

.field private static final PLATFORM_MSM7K:Ljava/lang/String; = "msm7k"

.field private static REBUILD_DATABASE:Z = false

.field private static final REPEAT_COUNT:I = 0x3

.field public static final STAMP_PROJECTION:[Ljava/lang/String; = null

.field public static final SUPPORTS_EXTERNAL_STORAGE:I = 0x1

.field public static final SUPPORTS_PHONE_STORAGE:I = 0x2

.field private static SWITCH_TO_CID:Z = false

.field private static final TAG:Ljava/lang/String; = "HtcWrapDrmStore"

.field public static final TITLE_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 71
    sput-boolean v3, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->REBUILD_DATABASE:Z

    .line 88
    sput-boolean v3, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DISABLE_FORWORD_LOCK:Z

    .line 89
    sput-boolean v3, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DISABLE_COMBINED_DELIVERY:Z

    .line 90
    sput-boolean v3, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DISABLE_SEPARATE_DELIVERY:Z

    .line 91
    sput-boolean v3, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->SWITCH_TO_CID:Z

    .line 94
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "chmod"

    aput-object v1, v0, v3

    const-string v1, "666"

    aput-object v1, v0, v4

    const-string v1, ""

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->CMD_CHMOD:[Ljava/lang/String;

    .line 288
    new-array v0, v7, [Landroid/net/Uri;

    sget-object v1, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DrmUriCollection:[Landroid/net/Uri;

    .line 335
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string v1, "title"

    aput-object v1, v0, v5

    const-string v1, "content_url"

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->TITLE_PROJECTION:[Ljava/lang/String;

    .line 342
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->FILEPATH_PROJECTION:[Ljava/lang/String;

    .line 347
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "date_added"

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->CONSTRAINT_PROJECTION:[Ljava/lang/String;

    .line 352
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string v1, "_size"

    aput-object v1, v0, v5

    const-string v1, "title"

    aput-object v1, v0, v6

    const-string v1, "mime_type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "message_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "delivery_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "existence"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "content_offset"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    .line 365
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string v1, "delivery_type"

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DCFLIST_PROJECTION:[Ljava/lang/String;

    .line 372
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string v1, "mime_type"

    aput-object v1, v0, v5

    const-string v1, "content_id"

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->METADATA_PROJECTION:[Ljava/lang/String;

    .line 379
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->MIDLET_PROJECTION:[Ljava/lang/String;

    .line 384
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "album_id"

    aput-object v1, v0, v3

    const-string v1, "album"

    aput-object v1, v0, v4

    const-string v1, "album_key"

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->ALBUMS_PROJECTION:[Ljava/lang/String;

    .line 390
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "artist_id"

    aput-object v1, v0, v3

    const-string v1, "artist"

    aput-object v1, v0, v4

    const-string v1, "artist_key"

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->ARTISTS_PROJECTION:[Ljava/lang/String;

    .line 396
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "time_stamp"

    aput-object v1, v0, v4

    const-string v1, "clock_stamp"

    aput-object v1, v0, v5

    const-string v1, "timezone_stamp"

    aput-object v1, v0, v6

    const-string v1, "time_differential"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "network_sync"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 410
    return-void
.end method

.method private static final NeedToEncrypt(Ljava/lang/String;)Z
    .locals 2
    .parameter "mimeType"

    .prologue
    .line 6713
    const-string v0, "application/java-archive"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 6716
    const/4 v0, 0x1

    .line 6718
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final SupportForwardLockOnly()Z
    .locals 2

    .prologue
    .line 6546
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa8

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x9a

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x51

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x94

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x50

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x9e

    if-ne v0, v1, :cond_1

    .line 6571
    :cond_0
    const/4 v0, 0x1

    .line 6573
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final acquireRights(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 18
    .parameter "cx"
    .parameter "contentUri"
    .parameter "strFilePath"
    .parameter "className"

    .prologue
    .line 5836
    const-string v2, "HtcWrapDrmStore"

    const-string v3, "********acquireRights"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5838
    const/16 v16, 0x0

    .line 5840
    .local v16, uri:Landroid/net/Uri;
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 5842
    :cond_0
    const-string v2, "HtcWrapDrmStore"

    const-string v3, "acquireRights : -2"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5844
    const/4 v2, 0x0

    .line 5959
    :goto_0
    return-object v2

    .line 5847
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    const-string v5, "_data=?"

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v6, v3

    const-string v7, "_id"

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 5849
    .local v8, c:Landroid/database/Cursor;
    if-nez v8, :cond_2

    .line 5851
    const-string v2, "HtcWrapDrmStore"

    const-string v3, "acquireRights : -6"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5853
    const/4 v2, 0x0

    goto :goto_0

    .line 5854
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 5856
    const-string v2, "HtcWrapDrmStore"

    const-string v3, "acquireRights no record."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5858
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 5859
    const/4 v2, 0x0

    goto :goto_0

    .line 5862
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5863
    const-string v2, "message_type"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 5864
    .local v15, messageTypeColumnId:I
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 5865
    .local v14, messageType:Ljava/lang/String;
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 5867
    const-string v2, "application/vnd.oma.drm.content"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 5869
    const-string v2, "HtcWrapDrmStore"

    const-string v3, "acquireRights : -2"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5871
    const/4 v2, 0x0

    goto :goto_0

    .line 5874
    :cond_4
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5876
    .local v11, file:Ljava/io/File;
    :try_start_0
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 5877
    .local v12, fis:Ljava/io/InputStream;
    new-instance v9, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual {v12}, Ljava/io/InputStream;->available()I

    move-result v2

    invoke-direct {v9, v12, v2, v14}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 5878
    .local v9, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-virtual {v9}, Landroid/drm/mobile1/DrmRawContent;->getRightsAddress()Ljava/lang/String;

    move-result-object v13

    .line 5879
    .local v13, issuer:Ljava/lang/String;
    if-nez v13, :cond_5

    .line 5881
    const-string v2, "HtcWrapDrmStore"

    const-string v3, "Null issuer : -9"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5883
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 5884
    const/4 v2, 0x0

    goto :goto_0

    .line 5885
    :cond_5
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6

    .line 5887
    const-string v2, "HtcWrapDrmStore"

    const-string v3, "Empty issuer : -9"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5889
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 5890
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 5892
    :cond_6
    const-string v2, "\\"

    const-string v3, "/"

    invoke-virtual {v13, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 5894
    const-string v2, "HtcWrapDrmStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Right Issure = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 5898
    :try_start_1
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 5900
    .local v17, values:Landroid/content/ContentValues;
    const-string v2, "uri"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5902
    const-string v2, "entity"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5904
    const-string v2, "notificationpackage"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5906
    const-string v2, "notificationclass"

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5908
    const-string v2, "visibility"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5910
    const-string v2, "is_visible_in_downloads_ui"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 5915
    const-string v2, "restriction"

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5945
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v16

    move-object/from16 v2, v16

    .line 5959
    goto/16 :goto_0

    .line 5946
    .end local v17           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v10

    .line 5948
    .local v10, e:Ljava/lang/Exception;
    :try_start_2
    const-string v2, "HtcWrapDrmStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquireRights : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5950
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 5951
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 5953
    .end local v9           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v10           #e:Ljava/lang/Exception;
    .end local v12           #fis:Ljava/io/InputStream;
    .end local v13           #issuer:Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 5955
    .restart local v10       #e:Ljava/lang/Exception;
    const-string v2, "HtcWrapDrmStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquireRights : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5957
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public static final addDrmFile(Landroid/content/ContentResolver;Ljava/io/File;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter "cr"
    .parameter "file"
    .parameter "title"

    .prologue
    .line 532
    const-string v0, "HtcWrapDrmStore"

    const-string v1, "********addDrmFile (1)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    invoke-static {p0, p1, p2}, Landroid/provider/DrmStore;->addDrmFile(Landroid/content/ContentResolver;Ljava/io/File;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static final addDrmFile(Landroid/content/ContentResolver;Ljava/io/FileInputStream;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter "cr"
    .parameter "fis"
    .parameter "title"

    .prologue
    .line 540
    const-string v0, "HtcWrapDrmStore"

    const-string v1, "********addDrmFile (2)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    invoke-static {p0, p1, p2}, Landroid/provider/DrmStore;->addDrmFile(Landroid/content/ContentResolver;Ljava/io/FileInputStream;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static final addDrmFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .parameter "cx"
    .parameter "file"
    .parameter "title"
    .parameter "mediaType"
    .parameter "url"

    .prologue
    .line 766
    const-string v0, "HtcWrapDrmStore"

    const-string v1, " @@@@@     addDrmFile with url (4)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->addDrmFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static final addDrmFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 7
    .parameter "cx"
    .parameter "file"
    .parameter "title"
    .parameter "mediaType"
    .parameter "url"
    .parameter "destination"

    .prologue
    .line 793
    const-string v0, "HtcWrapDrmStore"

    const-string v1, " @@@@@     addDrmFile with url and destination (5)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->addDrmFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static final addDrmFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .locals 110
    .parameter "cx"
    .parameter "file"
    .parameter "title"
    .parameter "mediaType"
    .parameter "url"
    .parameter "destination"
    .parameter "targetFolder"

    .prologue
    .line 821
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6) -BEGIN"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_2

    .line 831
    :cond_0
    const-string v3, "HtcWrapDrmStore"

    const-string v5, "ERROR: addDrmFile input error."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    const/16 v71, 0x0

    .line 2232
    :cond_1
    :goto_0
    return-object v71

    .line 845
    :cond_2
    const/4 v3, 0x7

    move/from16 v0, p5

    if-eq v0, v3, :cond_3

    .line 848
    const/16 p5, 0x0

    .line 852
    :cond_3
    const/16 v71, 0x0

    .line 853
    .local v71, intent:Landroid/content/Intent;
    const/16 v61, 0x0

    .line 856
    .local v61, fin:Ljava/io/FileInputStream;
    const-string v3, "application/vnd.oma.drm.rights+xml"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "application/vnd.oma.drm.rights+wbxml"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 860
    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->installRightsObject(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v107

    .line 862
    .local v107, uid:Ljava/lang/String;
    if-eqz v107, :cond_6

    .line 866
    const-string v3, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Install rights : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v107

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->METADATA_PROJECTION:[Ljava/lang/String;

    const-string v6, "content_id=?"

    const/4 v9, 0x1

    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v107, v7, v9

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v38

    .line 875
    .local v38, cursor:Landroid/database/Cursor;
    if-nez v38, :cond_5

    .line 879
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(1) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 884
    :cond_5
    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-gtz v3, :cond_7

    .line 891
    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->close()V

    .line 1043
    :goto_1
    new-instance v71, Landroid/content/Intent;

    .end local v71           #intent:Landroid/content/Intent;
    invoke-direct/range {v71 .. v71}, Landroid/content/Intent;-><init>()V

    .line 1044
    .restart local v71       #intent:Landroid/content/Intent;
    const-string v3, "DRM Rights"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v71

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1050
    .end local v38           #cursor:Landroid/database/Cursor;
    :cond_6
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(3) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 900
    .restart local v38       #cursor:Landroid/database/Cursor;
    :cond_7
    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->moveToFirst()Z

    .line 902
    const-string v3, "_data"

    move-object/from16 v0, v38

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v40

    .line 903
    .local v40, dataColumnIndext:I
    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v59

    .line 905
    .local v59, filepath:Ljava/lang/String;
    const-string v3, "mime_type"

    move-object/from16 v0, v38

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v78

    .line 906
    .local v78, mimeTypeColumnIndex:I
    move-object/from16 v0, v38

    move/from16 v1, v78

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 908
    .local v6, mimeType:Ljava/lang/String;
    const-string v3, "_id"

    move-object/from16 v0, v38

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v70

    .line 909
    .local v70, idColumnIndex:I
    move-object/from16 v0, v38

    move/from16 v1, v70

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v69

    .line 911
    .local v69, id:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v69

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 913
    .local v7, contentUri:Landroid/net/Uri;
    if-eqz v59, :cond_b

    .line 915
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, v59

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 920
    .local v4, parseFile:Ljava/io/File;
    move/from16 v8, p5

    .line 921
    .local v8, newDestination:I
    const/16 v29, 0x0

    .line 922
    .local v29, checked:Z
    invoke-static {}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getSupportedStorages()I

    move-result v97

    .line 925
    .local v97, supportedStorages:I
    and-int/lit8 v3, v97, 0x1

    if-eqz v3, :cond_9

    .line 932
    invoke-virtual/range {v59 .. v59}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v60

    .line 933
    .local v60, filepathUpperCase:Ljava/lang/String;
    const/16 v48, 0x0

    .line 935
    .local v48, downloadPathUpperCase:Ljava/lang/String;
    if-eqz p6, :cond_8

    const-string v3, ""

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 938
    :cond_8
    invoke-static {}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getExternalStorageDownloadPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v48

    .line 946
    :goto_2
    move-object/from16 v0, v60

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 947
    const/4 v8, 0x0

    .line 948
    const/16 v29, 0x1

    .line 964
    .end local v48           #downloadPathUpperCase:Ljava/lang/String;
    .end local v60           #filepathUpperCase:Ljava/lang/String;
    :cond_9
    if-nez v29, :cond_a

    and-int/lit8 v3, v97, 0x2

    if-eqz v3, :cond_a

    .line 983
    invoke-static {}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v47

    .line 986
    .local v47, downloadPath:Ljava/lang/String;
    move-object/from16 v0, v59

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 987
    const/4 v8, 0x7

    .line 1004
    .end local v47           #downloadPath:Ljava/lang/String;
    :cond_a
    sparse-switch v8, :sswitch_data_0

    .line 1013
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@     rights\' download destination is unknown!!!"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    :goto_3
    const-string v5, "application/vnd.oma.drm.content"

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v9}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->updateAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;IZ)Landroid/content/ContentValues;

    move-result-object v109

    .line 1033
    .local v109, values:Landroid/content/ContentValues;
    if-eqz v109, :cond_b

    .line 1035
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v109

    invoke-virtual {v3, v7, v0, v5, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1039
    .end local v4           #parseFile:Ljava/io/File;
    .end local v8           #newDestination:I
    .end local v29           #checked:Z
    .end local v97           #supportedStorages:I
    .end local v109           #values:Landroid/content/ContentValues;
    :cond_b
    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 943
    .restart local v4       #parseFile:Ljava/io/File;
    .restart local v8       #newDestination:I
    .restart local v29       #checked:Z
    .restart local v48       #downloadPathUpperCase:Ljava/lang/String;
    .restart local v60       #filepathUpperCase:Ljava/lang/String;
    .restart local v97       #supportedStorages:I
    :cond_c
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v48

    goto :goto_2

    .line 1007
    .end local v48           #downloadPathUpperCase:Ljava/lang/String;
    .end local v60           #filepathUpperCase:Ljava/lang/String;
    :sswitch_0
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@     rights\' download destination is in external."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1010
    :sswitch_1
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@     rights\' download destination is in internal."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1057
    .end local v4           #parseFile:Ljava/io/File;
    .end local v6           #mimeType:Ljava/lang/String;
    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v8           #newDestination:I
    .end local v29           #checked:Z
    .end local v38           #cursor:Landroid/database/Cursor;
    .end local v40           #dataColumnIndext:I
    .end local v59           #filepath:Ljava/lang/String;
    .end local v69           #id:I
    .end local v70           #idColumnIndex:I
    .end local v78           #mimeTypeColumnIndex:I
    .end local v97           #supportedStorages:I
    .end local v107           #uid:Ljava/lang/String;
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 1060
    .local v11, cr:Landroid/content/ContentResolver;
    const/16 v56, 0x0

    .line 1062
    .local v56, fileName:Ljava/lang/String;
    if-nez p2, :cond_f

    .line 1064
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v56

    .line 1078
    :goto_4
    const-string v3, "."

    move-object/from16 v0, v56

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v45

    .line 1080
    .local v45, dot:I
    const/4 v3, -0x1

    move/from16 v0, v45

    if-ne v0, v3, :cond_11

    .line 1083
    const-string v3, "application/vnd.oma.drm.message"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1085
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v56

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".dm"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    .line 1106
    :cond_e
    :goto_5
    const-string v3, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Add DRM file : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v56

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    :try_start_0
    new-instance v62, Ljava/io/FileInputStream;

    move-object/from16 v0, v62

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_14

    .line 1113
    .end local v61           #fin:Ljava/io/FileInputStream;
    .local v62, fin:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v32, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->available()I

    move-result v3

    move-object/from16 v0, v32

    move-object/from16 v1, v62

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v3, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 1119
    .local v32, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-virtual/range {v32 .. v32}, Landroid/drm/mobile1/DrmRawContent;->getTransferEncoding()I

    move-result v105

    .line 1121
    .local v105, transferEncoding:I
    const-string v3, "application/vnd.oma.drm.message"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    const/4 v3, 0x3

    move/from16 v0, v105

    if-ne v0, v3, :cond_17

    .line 1126
    const-string v3, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " @@@@@  Handle specific transfer-encoding="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v105

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "."

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    const-string v83, "/data/data/com.android.providers.drm/rights/tmp"

    .line 1132
    .local v83, outputBinaryFilePath:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v83

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->checkAndCreateFolder(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_13

    .line 1133
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@ ERROR: cannot create file!!!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(3)-(1) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 1140
    const/16 v71, 0x0

    .line 2215
    .end local v71           #intent:Landroid/content/Intent;
    if-eqz v62, :cond_1

    .line 2216
    :try_start_2
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 2218
    :catch_0
    move-exception v52

    .line 2220
    .local v52, e:Ljava/lang/Exception;
    const-string v3, "HtcWrapDrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1070
    .end local v32           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v45           #dot:I
    .end local v52           #e:Ljava/lang/Exception;
    .end local v62           #fin:Ljava/io/FileInputStream;
    .end local v83           #outputBinaryFilePath:Ljava/lang/String;
    .end local v105           #transferEncoding:I
    .restart local v61       #fin:Ljava/io/FileInputStream;
    .restart local v71       #intent:Landroid/content/Intent;
    :cond_f
    const-string v3, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Title is "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    move-object/from16 v56, p2

    goto/16 :goto_4

    .line 1087
    .restart local v45       #dot:I
    :cond_10
    const-string v3, "application/vnd.oma.drm.content"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1089
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v56

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".dcf"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    goto/16 :goto_5

    .line 1094
    :cond_11
    const-string v3, "application/vnd.oma.drm.message"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1096
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    move-object/from16 v0, v56

    move/from16 v1, v45

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".dm"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    goto/16 :goto_5

    .line 1098
    :cond_12
    const-string v3, "application/vnd.oma.drm.content"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1100
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    move-object/from16 v0, v56

    move/from16 v1, v45

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".dcf"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    goto/16 :goto_5

    .line 1143
    .end local v61           #fin:Ljava/io/FileInputStream;
    .restart local v32       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v62       #fin:Ljava/io/FileInputStream;
    .restart local v83       #outputBinaryFilePath:Ljava/lang/String;
    .restart local v105       #transferEncoding:I
    :cond_13
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v83

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v56

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v83

    .line 1145
    const/4 v3, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v83

    invoke-static {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->saveFileFromBase64ToBinary(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/lang/String;)I

    move-result v5

    if-ne v3, v5, :cond_14

    .line 1148
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@ ERROR: convert base64 file Fail!!!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(3)-(2) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1155
    const/16 v71, 0x0

    .line 2215
    .end local v71           #intent:Landroid/content/Intent;
    if-eqz v62, :cond_1

    .line 2216
    :try_start_4
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 2218
    :catch_1
    move-exception v52

    .line 2220
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "HtcWrapDrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1158
    .end local v52           #e:Ljava/lang/Exception;
    .restart local v71       #intent:Landroid/content/Intent;
    :cond_14
    :try_start_5
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, v83

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1160
    .local v10, binaryFile:Ljava/io/File;
    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual {v10, v3, v5}, Ljava/io/File;->setWritable(ZZ)Z

    .line 1161
    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual {v10, v3, v5}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1162
    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual {v10, v3, v5}, Ljava/io/File;->setExecutable(ZZ)Z

    move-object/from16 v9, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move/from16 v14, p5

    move-object/from16 v15, p6

    .line 1164
    invoke-static/range {v9 .. v15}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->addDrmFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .end local v11           #cr:Landroid/content/ContentResolver;
    move-result-object v89

    .line 1168
    .local v89, resultIntent:Landroid/content/Intent;
    :try_start_6
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1169
    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 2215
    :cond_15
    :goto_6
    if-eqz v62, :cond_16

    .line 2216
    :try_start_7
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    :cond_16
    :goto_7
    move-object/from16 v71, v89

    .line 2222
    goto/16 :goto_0

    .line 1171
    :catch_2
    move-exception v52

    .line 1172
    .restart local v52       #e:Ljava/lang/Exception;
    :try_start_8
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@  ERROR: delete temp files FAILED!!!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    const-string v3, "HtcWrapDrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_6

    .line 2197
    .end local v10           #binaryFile:Ljava/io/File;
    .end local v32           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v52           #e:Ljava/lang/Exception;
    .end local v83           #outputBinaryFilePath:Ljava/lang/String;
    .end local v89           #resultIntent:Landroid/content/Intent;
    .end local v105           #transferEncoding:I
    :catch_3
    move-exception v52

    move-object/from16 v61, v62

    .line 2203
    .end local v62           #fin:Ljava/io/FileInputStream;
    .restart local v52       #e:Ljava/lang/Exception;
    .restart local v61       #fin:Ljava/io/FileInputStream;
    :goto_8
    :try_start_9
    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->printStackTrace()V

    .line 2208
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(12) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 2211
    const/16 v71, 0x0

    .line 2215
    .end local v71           #intent:Landroid/content/Intent;
    if-eqz v61, :cond_1

    .line 2216
    :try_start_a
    invoke-virtual/range {v61 .. v61}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_0

    .line 2218
    :catch_4
    move-exception v52

    .line 2220
    const-string v3, "HtcWrapDrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v61           #fin:Ljava/io/FileInputStream;
    :goto_9
    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2218
    .end local v52           #e:Ljava/lang/Exception;
    .restart local v10       #binaryFile:Ljava/io/File;
    .restart local v32       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v62       #fin:Ljava/io/FileInputStream;
    .restart local v71       #intent:Landroid/content/Intent;
    .restart local v83       #outputBinaryFilePath:Ljava/lang/String;
    .restart local v89       #resultIntent:Landroid/content/Intent;
    .restart local v105       #transferEncoding:I
    :catch_5
    move-exception v52

    .line 2220
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "HtcWrapDrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1182
    .end local v10           #binaryFile:Ljava/io/File;
    .end local v52           #e:Ljava/lang/Exception;
    .end local v83           #outputBinaryFilePath:Ljava/lang/String;
    .end local v89           #resultIntent:Landroid/content/Intent;
    .restart local v11       #cr:Landroid/content/ContentResolver;
    :cond_17
    :try_start_b
    invoke-virtual/range {v32 .. v32}, Landroid/drm/mobile1/DrmRawContent;->getContentType()Ljava/lang/String;

    move-result-object v6

    .line 1184
    .restart local v6       #mimeType:Ljava/lang/String;
    const-string v3, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mimeType = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    invoke-virtual/range {v32 .. v32}, Landroid/drm/mobile1/DrmRawContent;->getRawType()I

    move-result v77

    .line 1189
    .local v77, method:I
    const-string v3, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "method = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v77

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    const/4 v3, 0x1

    move/from16 v0, v77

    if-ne v0, v3, :cond_26

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x91

    if-eq v3, v5, :cond_1a

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x93

    if-ne v3, v5, :cond_18

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x94

    if-eq v3, v5, :cond_1a

    :cond_18
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x3a

    if-ne v3, v5, :cond_19

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x94

    if-eq v3, v5, :cond_1a

    :cond_19
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0xa1

    if-eq v3, v5, :cond_1a

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x63

    if-ne v3, v5, :cond_26

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x66

    if-ne v3, v5, :cond_26

    .line 1215
    :cond_1a
    const/16 v18, 0x1

    .line 1221
    .local v18, flRingtone:Z
    :goto_a
    const/4 v3, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/drm/mobile1/DrmRawContent;->getContentOffset(Landroid/drm/mobile1/DrmRights;)I

    move-result v33

    .line 1228
    .local v33, contentOffset:I
    const-string v3, "video"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1b

    const-string v3, "audio"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    :cond_1b
    const/4 v3, 0x1

    move/from16 v0, v77

    if-eq v0, v3, :cond_1c

    const/4 v3, 0x2

    move/from16 v0, v77

    if-ne v0, v3, :cond_30

    .line 1231
    :cond_1c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x2e

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v6}, Landroid/media/MediaFile;->getExtensionForMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    .line 1236
    .local v54, extention:Ljava/lang/String;
    new-instance v82, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/data/com.android.providers.drm/rights/DRM"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v82

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 1243
    .local v82, outFile:Ljava/io/File;
    const/16 v63, 0x0

    .line 1244
    .local v63, fis:Ljava/io/FileInputStream;
    const/16 v65, 0x0

    .line 1246
    .local v65, fis2:Ljava/io/FileInputStream;
    const/16 v67, 0x0

    .line 1247
    .local v67, fos:Ljava/io/FileOutputStream;
    const/16 v73, 0x0

    .line 1248
    .local v73, is:Ljava/io/InputStream;
    const/16 v74, 0x0

    .line 1255
    .local v74, isTerminated:Z
    :try_start_c
    new-instance v64, Ljava/io/FileInputStream;

    move-object/from16 v0, v64

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    .line 1264
    .end local v63           #fis:Ljava/io/FileInputStream;
    .local v64, fis:Ljava/io/FileInputStream;
    :try_start_d
    new-instance v98, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {v64 .. v64}, Ljava/io/FileInputStream;->available()I

    move-result v3

    move-object/from16 v0, v98

    move-object/from16 v1, v64

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v3, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 1268
    .local v98, tempContent:Landroid/drm/mobile1/DrmRawContent;
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v75

    .line 1269
    .local v75, manager:Landroid/drm/mobile1/DrmRightsManager;
    move-object/from16 v0, v75

    move-object/from16 v1, v98

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v91

    .line 1274
    .local v91, rights:Landroid/drm/mobile1/DrmRights;
    const/16 v41, 0x0

    .line 1275
    .local v41, deleteRights:Z
    if-nez v91, :cond_76

    const/4 v3, 0x2

    move/from16 v0, v77

    if-ne v0, v3, :cond_76

    .line 1304
    if-eqz v64, :cond_1d

    .line 1305
    invoke-virtual/range {v64 .. v64}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_20

    .line 1306
    const/16 v63, 0x0

    .end local v64           #fis:Ljava/io/FileInputStream;
    .restart local v63       #fis:Ljava/io/FileInputStream;
    move-object/from16 v64, v63

    .line 1308
    .end local v63           #fis:Ljava/io/FileInputStream;
    .restart local v64       #fis:Ljava/io/FileInputStream;
    :try_start_e
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_c
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    .line 1311
    :cond_1d
    :try_start_f
    new-instance v63, Ljava/io/FileInputStream;

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_20

    .line 1317
    .end local v64           #fis:Ljava/io/FileInputStream;
    .restart local v63       #fis:Ljava/io/FileInputStream;
    :try_start_10
    invoke-virtual/range {v63 .. v63}, Ljava/io/FileInputStream;->available()I

    move-result v3

    move-object/from16 v0, v75

    move-object/from16 v1, v63

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v3, v2}, Landroid/drm/mobile1/DrmRightsManager;->installRights(Ljava/io/InputStream;ILjava/lang/String;)Landroid/drm/mobile1/DrmRights;

    move-result-object v91

    .line 1319
    const/16 v41, 0x1

    .line 1325
    :goto_b
    if-eqz v63, :cond_1e

    .line 1326
    invoke-virtual/range {v63 .. v63}, Ljava/io/FileInputStream;->close()V

    .line 1327
    const/16 v63, 0x0

    .line 1331
    :cond_1e
    if-eqz v91, :cond_28

    .line 1338
    new-instance v66, Ljava/io/FileInputStream;

    move-object/from16 v0, v66

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7

    .line 1339
    .end local v65           #fis2:Ljava/io/FileInputStream;
    .local v66, fis2:Ljava/io/FileInputStream;
    :try_start_11
    new-instance v98, Landroid/drm/mobile1/DrmRawContent;

    .end local v98           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    invoke-virtual/range {v66 .. v66}, Ljava/io/FileInputStream;->available()I

    move-result v3

    move-object/from16 v0, v98

    move-object/from16 v1, v66

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v3, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 1343
    .restart local v98       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    move-object/from16 v0, v98

    move-object/from16 v1, v91

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRawContent;->getContentInputStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;

    move-result-object v73

    .line 1344
    new-instance v68, Ljava/io/FileOutputStream;

    move-object/from16 v0, v68

    move-object/from16 v1, v82

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_21

    .line 1346
    .end local v67           #fos:Ljava/io/FileOutputStream;
    .local v68, fos:Ljava/io/FileOutputStream;
    :try_start_12
    move-object/from16 v0, v73

    move-object/from16 v1, v68

    invoke-static {v0, v1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->saveFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)I

    .line 1348
    if-eqz v41, :cond_1f

    .line 1349
    move-object/from16 v0, v75

    move-object/from16 v1, v91

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRightsManager;->deleteRights(Landroid/drm/mobile1/DrmRights;)V

    .line 1354
    :cond_1f
    sget-object v3, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->CMD_CHMOD:[Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual/range {v82 .. v82}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v5

    .line 1355
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->CMD_CHMOD:[Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    .line 1357
    new-instance v76, Landroid/media/MediaInfo;

    move-object/from16 v0, v76

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/media/MediaInfo;-><init>(Landroid/content/Context;)V

    .line 1358
    .local v76, mediaInfo:Landroid/media/MediaInfo;
    invoke-virtual/range {v82 .. v82}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v76

    invoke-virtual {v0, v3}, Landroid/media/MediaInfo;->getFileType(Ljava/lang/String;)I

    move-result v106

    .line 1359
    .local v106, type:I
    const/4 v3, 0x1

    move/from16 v0, v106

    if-ne v0, v3, :cond_27

    .line 1360
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "audio/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v6, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1369
    :cond_20
    :goto_c
    const-string v3, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MIME type by MediaInfo: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_f
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_22

    move-object/from16 v67, v68

    .end local v68           #fos:Ljava/io/FileOutputStream;
    .restart local v67       #fos:Ljava/io/FileOutputStream;
    move-object/from16 v65, v66

    .line 1378
    .end local v66           #fis2:Ljava/io/FileInputStream;
    .end local v76           #mediaInfo:Landroid/media/MediaInfo;
    .end local v106           #type:I
    .restart local v65       #fis2:Ljava/io/FileInputStream;
    :goto_d
    if-eqz v67, :cond_21

    .line 1379
    :try_start_13
    invoke-virtual/range {v67 .. v67}, Ljava/io/FileOutputStream;->close()V

    .line 1380
    const/16 v67, 0x0

    .line 1382
    :cond_21
    if-eqz v73, :cond_22

    .line 1383
    invoke-virtual/range {v73 .. v73}, Ljava/io/InputStream;->close()V

    .line 1384
    const/16 v73, 0x0

    .line 1393
    :cond_22
    if-eqz v63, :cond_23

    .line 1394
    invoke-virtual/range {v63 .. v63}, Ljava/io/FileInputStream;->close()V

    .line 1395
    const/16 v63, 0x0

    .line 1397
    :cond_23
    if-eqz v65, :cond_24

    .line 1398
    invoke-virtual/range {v65 .. v65}, Ljava/io/FileInputStream;->close()V

    .line 1399
    const/16 v65, 0x0

    .line 1402
    :cond_24
    invoke-virtual/range {v82 .. v82}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1403
    invoke-virtual/range {v82 .. v82}, Ljava/io/File;->delete()Z

    .line 1405
    :cond_25
    if-eqz v74, :cond_30

    .line 1409
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(4) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_3

    .line 1411
    const/16 v71, 0x0

    .line 2215
    .end local v71           #intent:Landroid/content/Intent;
    if-eqz v62, :cond_1

    .line 2216
    :try_start_14
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_6

    goto/16 :goto_0

    .line 2218
    :catch_6
    move-exception v52

    .line 2220
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "HtcWrapDrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_9

    .line 1217
    .end local v18           #flRingtone:Z
    .end local v33           #contentOffset:I
    .end local v41           #deleteRights:Z
    .end local v52           #e:Ljava/lang/Exception;
    .end local v54           #extention:Ljava/lang/String;
    .end local v63           #fis:Ljava/io/FileInputStream;
    .end local v65           #fis2:Ljava/io/FileInputStream;
    .end local v67           #fos:Ljava/io/FileOutputStream;
    .end local v73           #is:Ljava/io/InputStream;
    .end local v74           #isTerminated:Z
    .end local v75           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v82           #outFile:Ljava/io/File;
    .end local v91           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v98           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v71       #intent:Landroid/content/Intent;
    :cond_26
    const/16 v18, 0x0

    .restart local v18       #flRingtone:Z
    goto/16 :goto_a

    .line 1362
    .restart local v33       #contentOffset:I
    .restart local v41       #deleteRights:Z
    .restart local v54       #extention:Ljava/lang/String;
    .restart local v63       #fis:Ljava/io/FileInputStream;
    .restart local v66       #fis2:Ljava/io/FileInputStream;
    .restart local v68       #fos:Ljava/io/FileOutputStream;
    .restart local v73       #is:Ljava/io/InputStream;
    .restart local v74       #isTerminated:Z
    .restart local v75       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v76       #mediaInfo:Landroid/media/MediaInfo;
    .restart local v82       #outFile:Ljava/io/File;
    .restart local v91       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v98       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v106       #type:I
    :cond_27
    const/4 v3, 0x2

    move/from16 v0, v106

    if-ne v0, v3, :cond_20

    .line 1363
    :try_start_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "video/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v6, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_f
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_22

    move-result-object v6

    goto/16 :goto_c

    .line 1372
    .end local v66           #fis2:Ljava/io/FileInputStream;
    .end local v68           #fos:Ljava/io/FileOutputStream;
    .end local v76           #mediaInfo:Landroid/media/MediaInfo;
    .end local v106           #type:I
    .restart local v65       #fis2:Ljava/io/FileInputStream;
    .restart local v67       #fos:Ljava/io/FileOutputStream;
    :cond_28
    :try_start_16
    const-string v3, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MIME type from DRM header: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_c
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_7

    goto/16 :goto_d

    .line 1374
    .end local v41           #deleteRights:Z
    .end local v63           #fis:Ljava/io/FileInputStream;
    .end local v75           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v91           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v98           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    :catch_7
    move-exception v52

    .line 1375
    .restart local v52       #e:Ljava/lang/Exception;
    :goto_e
    :try_start_17
    const-string v3, "HtcWrapDrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_c

    .line 1376
    const/16 v74, 0x1

    .line 1378
    if-eqz v67, :cond_29

    .line 1379
    :try_start_18
    invoke-virtual/range {v67 .. v67}, Ljava/io/FileOutputStream;->close()V

    .line 1380
    const/16 v67, 0x0

    .line 1382
    :cond_29
    if-eqz v73, :cond_2a

    .line 1383
    invoke-virtual/range {v73 .. v73}, Ljava/io/InputStream;->close()V

    .line 1384
    const/16 v73, 0x0

    .line 1393
    :cond_2a
    if-eqz v63, :cond_2b

    .line 1394
    invoke-virtual/range {v63 .. v63}, Ljava/io/FileInputStream;->close()V

    .line 1395
    const/16 v63, 0x0

    .line 1397
    :cond_2b
    if-eqz v65, :cond_2c

    .line 1398
    invoke-virtual/range {v65 .. v65}, Ljava/io/FileInputStream;->close()V

    .line 1399
    const/16 v65, 0x0

    .line 1402
    :cond_2c
    invoke-virtual/range {v82 .. v82}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 1403
    invoke-virtual/range {v82 .. v82}, Ljava/io/File;->delete()Z

    .line 1405
    :cond_2d
    if-eqz v74, :cond_30

    .line 1409
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(4) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_3

    .line 1411
    const/16 v71, 0x0

    .line 2215
    .end local v71           #intent:Landroid/content/Intent;
    if-eqz v62, :cond_1

    .line 2216
    :try_start_19
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_8

    goto/16 :goto_0

    .line 2218
    :catch_8
    move-exception v52

    .line 2220
    const-string v3, "HtcWrapDrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_9

    .line 1378
    .end local v52           #e:Ljava/lang/Exception;
    .restart local v71       #intent:Landroid/content/Intent;
    :cond_2e
    :try_start_1a
    throw v3
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_3

    .line 2214
    .end local v6           #mimeType:Ljava/lang/String;
    .end local v11           #cr:Landroid/content/ContentResolver;
    .end local v18           #flRingtone:Z
    .end local v32           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v33           #contentOffset:I
    .end local v54           #extention:Ljava/lang/String;
    .end local v65           #fis2:Ljava/io/FileInputStream;
    .end local v67           #fos:Ljava/io/FileOutputStream;
    .end local v73           #is:Ljava/io/InputStream;
    .end local v74           #isTerminated:Z
    .end local v77           #method:I
    .end local v82           #outFile:Ljava/io/File;
    .end local v105           #transferEncoding:I
    :catchall_0
    move-exception v3

    move-object/from16 v61, v62

    .line 2215
    .end local v62           #fin:Ljava/io/FileInputStream;
    .restart local v61       #fin:Ljava/io/FileInputStream;
    :goto_f
    if-eqz v61, :cond_2f

    .line 2216
    :try_start_1b
    invoke-virtual/range {v61 .. v61}, Ljava/io/FileInputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_1d

    .line 2214
    :cond_2f
    :goto_10
    throw v3

    .line 1418
    .end local v61           #fin:Ljava/io/FileInputStream;
    .restart local v6       #mimeType:Ljava/lang/String;
    .restart local v11       #cr:Landroid/content/ContentResolver;
    .restart local v18       #flRingtone:Z
    .restart local v32       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v33       #contentOffset:I
    .restart local v62       #fin:Ljava/io/FileInputStream;
    .restart local v77       #method:I
    .restart local v105       #transferEncoding:I
    :cond_30
    :try_start_1c
    const-string v34, ""

    .line 1420
    .local v34, contentUid:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1423
    .restart local v7       #contentUri:Landroid/net/Uri;
    const-string v3, "audio/"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 1424
    sget-object v7, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    .line 1446
    :goto_11
    const/16 v50, 0x0

    .line 1447
    .local v50, duplicate:Z
    const/16 v84, 0x0

    .line 1448
    .local v84, overwrite:Z
    const/16 v108, 0x0

    .line 1450
    .local v108, uri:Landroid/net/Uri;
    sget-object v13, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->TITLE_PROJECTION:[Ljava/lang/String;

    const-string v14, "content_url=?"

    const/4 v3, 0x1

    new-array v15, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p4, v15, v3

    const-string v16, "_id"

    move-object v12, v7

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 1451
    .local v26, c:Landroid/database/Cursor;
    if-eqz v26, :cond_75

    .line 1452
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_74

    .line 1456
    const-string v3, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v56

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " duplicated."

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1459
    const-string v3, "_id"

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v31

    .line 1460
    .local v31, columnIdIndex:I
    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    .line 1461
    .local v30, columnId:I
    const-string v3, "_data"

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v58

    .line 1462
    .local v58, filePathIndex:I
    move-object/from16 v0, v26

    move/from16 v1, v58

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v57

    .line 1463
    .local v57, filePath:Ljava/lang/String;
    const-string v3, "title"

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v104

    .line 1464
    .local v104, titleInddex:I
    move-object/from16 v0, v26

    move/from16 v1, v104

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v49

    .line 1465
    .local v49, dup_title:Ljava/lang/String;
    const/16 v47, 0x0

    .line 1467
    .restart local v47       #downloadPath:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v108

    .line 1468
    new-instance v72, Landroid/content/Intent;

    invoke-direct/range {v72 .. v72}, Landroid/content/Intent;-><init>()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_3

    .line 1469
    .end local v71           #intent:Landroid/content/Intent;
    .local v72, intent:Landroid/content/Intent;
    :try_start_1d
    move-object/from16 v0, v72

    move-object/from16 v1, v108

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1471
    const-string v3, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dup_title:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v49

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    const-string v3, "title"

    move-object/from16 v0, v72

    move-object/from16 v1, v49

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1474
    const/16 v50, 0x1

    .line 1479
    const-string v3, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Check file path: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    new-instance v55, Ljava/io/File;

    move-object/from16 v0, v55

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1483
    .local v55, f:Ljava/io/File;
    invoke-virtual/range {v55 .. v55}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v56

    .line 1484
    invoke-virtual/range {v55 .. v55}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 1485
    invoke-virtual/range {v55 .. v55}, Ljava/io/File;->delete()Z

    .line 1489
    :cond_31
    const/4 v3, 0x7

    move/from16 v0, p5

    if-ne v0, v3, :cond_39

    .line 1499
    invoke-static {}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getInternalStorageDownloadPath()Ljava/lang/String;

    move-result-object v47

    .line 1501
    if-eqz v47, :cond_32

    const-string v3, ""

    move-object/from16 v0, v47

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 1502
    :cond_32
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@ internal download path doesn\'t exist!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_d

    .line 1505
    const/16 v71, 0x0

    .line 2215
    if-eqz v62, :cond_1

    .line 2216
    :try_start_1e
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_9

    goto/16 :goto_0

    .line 2218
    :catch_9
    move-exception v52

    .line 2220
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "HtcWrapDrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_9

    .line 1425
    .end local v26           #c:Landroid/database/Cursor;
    .end local v30           #columnId:I
    .end local v31           #columnIdIndex:I
    .end local v47           #downloadPath:Ljava/lang/String;
    .end local v49           #dup_title:Ljava/lang/String;
    .end local v50           #duplicate:Z
    .end local v52           #e:Ljava/lang/Exception;
    .end local v55           #f:Ljava/io/File;
    .end local v57           #filePath:Ljava/lang/String;
    .end local v58           #filePathIndex:I
    .end local v72           #intent:Landroid/content/Intent;
    .end local v84           #overwrite:Z
    .end local v104           #titleInddex:I
    .end local v108           #uri:Landroid/net/Uri;
    .restart local v71       #intent:Landroid/content/Intent;
    :cond_33
    :try_start_1f
    const-string v3, "image/"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 1426
    sget-object v7, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_11

    .line 1427
    :cond_34
    const-string v3, "video/"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1428
    sget-object v7, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_11

    .line 1429
    :cond_35
    const-string v3, "application/java-archive"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 1430
    sget-object v7, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_11

    .line 1433
    :cond_36
    const-string v3, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported mime type "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V

    .line 1439
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(5) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_3

    .line 1442
    const/16 v71, 0x0

    .line 2215
    .end local v71           #intent:Landroid/content/Intent;
    if-eqz v62, :cond_1

    .line 2216
    :try_start_20
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_a

    goto/16 :goto_0

    .line 2218
    :catch_a
    move-exception v52

    .line 2220
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "HtcWrapDrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_9

    .line 1508
    .end local v52           #e:Ljava/lang/Exception;
    .restart local v26       #c:Landroid/database/Cursor;
    .restart local v30       #columnId:I
    .restart local v31       #columnIdIndex:I
    .restart local v47       #downloadPath:Ljava/lang/String;
    .restart local v49       #dup_title:Ljava/lang/String;
    .restart local v50       #duplicate:Z
    .restart local v55       #f:Ljava/io/File;
    .restart local v57       #filePath:Ljava/lang/String;
    .restart local v58       #filePathIndex:I
    .restart local v72       #intent:Landroid/content/Intent;
    .restart local v84       #overwrite:Z
    .restart local v104       #titleInddex:I
    .restart local v108       #uri:Landroid/net/Uri;
    :cond_37
    :try_start_21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v47

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v56

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    .line 1546
    :goto_12
    const-string v3, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Saved file path: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    new-instance v55, Ljava/io/File;

    .end local v55           #f:Ljava/io/File;
    move-object/from16 v0, v55

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1553
    .restart local v55       #f:Ljava/io/File;
    invoke-virtual/range {v55 .. v55}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 1555
    const-string v3, "HtcWrapDrmStore"

    const-string v5, "File exists, use a new name"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    const-string v3, "."

    move-object/from16 v0, v56

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v53

    .line 1558
    .local v53, ext:I
    const/16 v87, 0x0

    .line 1559
    .local v87, prefix:Ljava/lang/String;
    const/16 v96, 0x0

    .line 1560
    .local v96, suffix:Ljava/lang/String;
    if-lez v53, :cond_3e

    .line 1561
    const/4 v3, 0x0

    move-object/from16 v0, v56

    move/from16 v1, v53

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v87

    .line 1562
    invoke-virtual/range {v56 .. v56}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, v56

    move/from16 v1, v53

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v96

    .line 1567
    :goto_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v87

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "---"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v55 .. v55}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    move-object/from16 v0, v96

    invoke-static {v3, v0, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v79

    .line 1569
    .local v79, newFile:Ljava/io/File;
    invoke-virtual/range {v79 .. v79}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v57

    .line 1571
    const-string v3, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "New file path: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    .end local v53           #ext:I
    .end local v79           #newFile:Ljava/io/File;
    .end local v87           #prefix:Ljava/lang/String;
    .end local v96           #suffix:Ljava/lang/String;
    :cond_38
    new-instance v39, Landroid/content/ContentValues;

    invoke-direct/range {v39 .. v39}, Landroid/content/ContentValues;-><init>()V

    .line 1578
    .local v39, cv:Landroid/content/ContentValues;
    sget-object v12, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    sget-object v13, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v16, "_id"

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v93

    .line 1580
    .local v93, stampCursor:Landroid/database/Cursor;
    if-eqz v93, :cond_40

    .line 1581
    invoke-interface/range {v93 .. v93}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 1587
    const-string v3, "time_differential"

    move-object/from16 v0, v93

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v44

    .line 1589
    .local v44, differentialColumnId:I
    move-object/from16 v0, v93

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    .line 1590
    .local v42, differential:J
    const-string v3, "timezone_stamp"

    move-object/from16 v0, v93

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v102

    .line 1592
    .local v102, timeZoneColumnIndex:I
    move-object/from16 v0, v93

    move/from16 v1, v102

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v100

    .line 1593
    .local v100, timeZone:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v36

    .line 1594
    .local v36, currentClock:J
    const-string v3, "date_modified"

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1595
    const-string v3, "date_added"

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1600
    .end local v36           #currentClock:J
    .end local v42           #differential:J
    .end local v44           #differentialColumnId:I
    .end local v100           #timeZone:J
    .end local v102           #timeZoneColumnIndex:I
    :goto_14
    invoke-interface/range {v93 .. v93}, Landroid/database/Cursor;->close()V

    .line 1606
    :goto_15
    const/16 v84, 0x1

    .line 1608
    const-string v3, "existence"

    const-string v5, "exist"

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1610
    const-string v3, "_data"

    move-object/from16 v0, v39

    move-object/from16 v1, v57

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1617
    const-string v3, "/"

    move-object/from16 v0, v47

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v92

    .line 1618
    .local v92, slashPos:I
    add-int/lit8 v3, v92, 0x1

    move-object/from16 v0, v47

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v46

    .line 1620
    .local v46, downloadName:Ljava/lang/String;
    const-string v3, "bucket_display_name"

    move-object/from16 v0, v39

    move-object/from16 v1, v46

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1623
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v108

    move-object/from16 v1, v39

    invoke-virtual {v11, v0, v1, v3, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_d

    move-object/from16 v16, v108

    .end local v108           #uri:Landroid/net/Uri;
    .local v16, uri:Landroid/net/Uri;
    move-object/from16 v71, v72

    .line 1625
    .end local v30           #columnId:I
    .end local v31           #columnIdIndex:I
    .end local v39           #cv:Landroid/content/ContentValues;
    .end local v46           #downloadName:Ljava/lang/String;
    .end local v47           #downloadPath:Ljava/lang/String;
    .end local v49           #dup_title:Ljava/lang/String;
    .end local v55           #f:Ljava/io/File;
    .end local v57           #filePath:Ljava/lang/String;
    .end local v58           #filePathIndex:I
    .end local v72           #intent:Landroid/content/Intent;
    .end local v92           #slashPos:I
    .end local v93           #stampCursor:Landroid/database/Cursor;
    .end local v104           #titleInddex:I
    .restart local v71       #intent:Landroid/content/Intent;
    :goto_16
    :try_start_22
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 1627
    if-eqz v50, :cond_41

    if-nez v84, :cond_41

    .line 1629
    const-string v3, "HtcWrapDrmStore"

    const-string v5, "File is duplicated and exist."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_3

    .line 2215
    if-eqz v62, :cond_1

    .line 2216
    :try_start_23
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_b

    goto/16 :goto_0

    .line 2218
    :catch_b
    move-exception v52

    .line 2220
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "HtcWrapDrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_9

    .line 1528
    .end local v16           #uri:Landroid/net/Uri;
    .end local v52           #e:Ljava/lang/Exception;
    .end local v71           #intent:Landroid/content/Intent;
    .restart local v30       #columnId:I
    .restart local v31       #columnIdIndex:I
    .restart local v47       #downloadPath:Ljava/lang/String;
    .restart local v49       #dup_title:Ljava/lang/String;
    .restart local v55       #f:Ljava/io/File;
    .restart local v57       #filePath:Ljava/lang/String;
    .restart local v58       #filePathIndex:I
    .restart local v72       #intent:Landroid/content/Intent;
    .restart local v104       #titleInddex:I
    .restart local v108       #uri:Landroid/net/Uri;
    :cond_39
    if-eqz p6, :cond_3a

    :try_start_24
    const-string v3, ""

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 1529
    :cond_3a
    invoke-static {}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getExternalStorageDownloadPath()Ljava/lang/String;

    move-result-object v47

    .line 1535
    :goto_17
    if-eqz v47, :cond_3b

    const-string v3, ""

    move-object/from16 v0, v47

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 1536
    :cond_3b
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@ external download path doesn\'t exist!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_d

    .line 1539
    const/16 v71, 0x0

    .line 2215
    if-eqz v62, :cond_1

    .line 2216
    :try_start_25
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_c

    goto/16 :goto_0

    .line 2218
    :catch_c
    move-exception v52

    .line 2220
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "HtcWrapDrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_9

    .line 1532
    .end local v52           #e:Ljava/lang/Exception;
    :cond_3c
    move-object/from16 v47, p6

    goto :goto_17

    .line 1542
    :cond_3d
    :try_start_26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v47

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v56

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    goto/16 :goto_12

    .line 1564
    .restart local v53       #ext:I
    .restart local v87       #prefix:Ljava/lang/String;
    .restart local v96       #suffix:Ljava/lang/String;
    :cond_3e
    move-object/from16 v87, v56

    .line 1565
    const-string v96, ""

    goto/16 :goto_13

    .line 1597
    .end local v53           #ext:I
    .end local v87           #prefix:Ljava/lang/String;
    .end local v96           #suffix:Ljava/lang/String;
    .restart local v39       #cv:Landroid/content/ContentValues;
    .restart local v93       #stampCursor:Landroid/database/Cursor;
    :cond_3f
    const-string v3, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1598
    const-string v3, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_14

    .line 2197
    .end local v30           #columnId:I
    .end local v31           #columnIdIndex:I
    .end local v39           #cv:Landroid/content/ContentValues;
    .end local v47           #downloadPath:Ljava/lang/String;
    .end local v49           #dup_title:Ljava/lang/String;
    .end local v55           #f:Ljava/io/File;
    .end local v57           #filePath:Ljava/lang/String;
    .end local v58           #filePathIndex:I
    .end local v93           #stampCursor:Landroid/database/Cursor;
    .end local v104           #titleInddex:I
    .end local v108           #uri:Landroid/net/Uri;
    :catch_d
    move-exception v52

    move-object/from16 v61, v62

    .end local v62           #fin:Ljava/io/FileInputStream;
    .restart local v61       #fin:Ljava/io/FileInputStream;
    move-object/from16 v71, v72

    .end local v72           #intent:Landroid/content/Intent;
    .restart local v71       #intent:Landroid/content/Intent;
    goto/16 :goto_8

    .line 1602
    .end local v61           #fin:Ljava/io/FileInputStream;
    .end local v71           #intent:Landroid/content/Intent;
    .restart local v30       #columnId:I
    .restart local v31       #columnIdIndex:I
    .restart local v39       #cv:Landroid/content/ContentValues;
    .restart local v47       #downloadPath:Ljava/lang/String;
    .restart local v49       #dup_title:Ljava/lang/String;
    .restart local v55       #f:Ljava/io/File;
    .restart local v57       #filePath:Ljava/lang/String;
    .restart local v58       #filePathIndex:I
    .restart local v62       #fin:Ljava/io/FileInputStream;
    .restart local v72       #intent:Landroid/content/Intent;
    .restart local v93       #stampCursor:Landroid/database/Cursor;
    .restart local v104       #titleInddex:I
    .restart local v108       #uri:Landroid/net/Uri;
    :cond_40
    const-string v3, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1603
    const-string v3, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_d

    goto/16 :goto_15

    .line 2214
    .end local v30           #columnId:I
    .end local v31           #columnIdIndex:I
    .end local v39           #cv:Landroid/content/ContentValues;
    .end local v47           #downloadPath:Ljava/lang/String;
    .end local v49           #dup_title:Ljava/lang/String;
    .end local v55           #f:Ljava/io/File;
    .end local v57           #filePath:Ljava/lang/String;
    .end local v58           #filePathIndex:I
    .end local v93           #stampCursor:Landroid/database/Cursor;
    .end local v104           #titleInddex:I
    .end local v108           #uri:Landroid/net/Uri;
    :catchall_1
    move-exception v3

    move-object/from16 v61, v62

    .end local v62           #fin:Ljava/io/FileInputStream;
    .restart local v61       #fin:Ljava/io/FileInputStream;
    move-object/from16 v71, v72

    .end local v72           #intent:Landroid/content/Intent;
    .restart local v71       #intent:Landroid/content/Intent;
    goto/16 :goto_f

    .line 1633
    .end local v61           #fin:Ljava/io/FileInputStream;
    .restart local v16       #uri:Landroid/net/Uri;
    .restart local v62       #fin:Ljava/io/FileInputStream;
    :cond_41
    if-eqz v50, :cond_54

    if-eqz v84, :cond_54

    .line 1635
    :try_start_27
    const-string v3, "HtcWrapDrmStore"

    const-string v5, "Overwrite the file."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    move-object/from16 v0, v16

    invoke-static {v11, v0}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v51

    .line 1641
    .local v51, duplicatePath:Ljava/lang/String;
    new-instance v28, Ljava/io/File;

    move-object/from16 v0, v28

    move-object/from16 v1, v51

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1642
    .local v28, checkFile:Ljava/io/File;
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_42

    .line 1643
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 1648
    :cond_42
    invoke-static {v6}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->NeedToEncrypt(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_43

    const/4 v3, 0x3

    move/from16 v0, v77

    if-ne v0, v3, :cond_48

    .line 1651
    :cond_43
    new-instance v94, Ljava/io/FileInputStream;

    move-object/from16 v0, v94

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_3

    .line 1657
    .local v94, stream:Ljava/io/FileInputStream;
    :try_start_28
    new-instance v81, Ljava/io/FileOutputStream;

    move-object/from16 v0, v81

    move-object/from16 v1, v51

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_28} :catch_f
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_3

    .line 1675
    .local v81, os:Ljava/io/FileOutputStream;
    :goto_18
    if-nez v81, :cond_47

    .line 1676
    :try_start_29
    invoke-virtual/range {v94 .. v94}, Ljava/io/FileInputStream;->close()V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_3

    .line 1820
    .end local v81           #os:Ljava/io/FileOutputStream;
    .end local v94           #stream:Ljava/io/FileInputStream;
    :cond_44
    :goto_19
    :try_start_2a
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_13

    move-object/from16 v61, v62

    .line 1830
    .end local v62           #fin:Ljava/io/FileInputStream;
    .restart local v61       #fin:Ljava/io/FileInputStream;
    :goto_1a
    :try_start_2b
    const-string v3, "audio"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_45

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p3

    move-object v15, v6

    move/from16 v17, p5

    .line 1842
    invoke-static/range {v12 .. v18}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->parseAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;IZ)Landroid/content/ContentValues;
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_15

    .line 2215
    :cond_45
    :goto_1b
    if-eqz v61, :cond_1

    .line 2216
    :try_start_2c
    invoke-virtual/range {v61 .. v61}, Ljava/io/FileInputStream;->close()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_e

    goto/16 :goto_0

    .line 2218
    :catch_e
    move-exception v52

    .line 2220
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "HtcWrapDrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_9

    .line 1658
    .end local v52           #e:Ljava/lang/Exception;
    .end local v61           #fin:Ljava/io/FileInputStream;
    .restart local v62       #fin:Ljava/io/FileInputStream;
    .restart local v94       #stream:Ljava/io/FileInputStream;
    :catch_f
    move-exception v52

    .line 1659
    .local v52, e:Ljava/io/FileNotFoundException;
    :try_start_2d
    new-instance v35, Ljava/io/File;

    move-object/from16 v0, v35

    move-object/from16 v1, v51

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1660
    .local v35, createFile:Ljava/io/File;
    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 1661
    new-instance v81, Ljava/io/FileOutputStream;

    move-object/from16 v0, v81

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .restart local v81       #os:Ljava/io/FileOutputStream;
    goto :goto_18

    .line 1663
    .end local v81           #os:Ljava/io/FileOutputStream;
    :cond_46
    const-string v3, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Create new file:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v51

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " failed."

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V

    .line 1668
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(6) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_3

    .line 1671
    const/16 v71, 0x0

    .line 2215
    .end local v71           #intent:Landroid/content/Intent;
    if-eqz v62, :cond_1

    .line 2216
    :try_start_2e
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_10

    goto/16 :goto_0

    .line 2218
    :catch_10
    move-exception v52

    .line 2220
    .local v52, e:Ljava/lang/Exception;
    const-string v3, "HtcWrapDrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_9

    .line 1679
    .end local v35           #createFile:Ljava/io/File;
    .end local v52           #e:Ljava/lang/Exception;
    .restart local v71       #intent:Landroid/content/Intent;
    .restart local v81       #os:Ljava/io/FileOutputStream;
    :cond_47
    :try_start_2f
    move-object/from16 v0, v94

    move-object/from16 v1, v81

    invoke-static {v0, v1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->saveFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)I
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_2

    .line 1681
    :try_start_30
    invoke-virtual/range {v94 .. v94}, Ljava/io/FileInputStream;->close()V

    .line 1682
    invoke-virtual/range {v81 .. v81}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_19

    .line 1681
    :catchall_2
    move-exception v3

    invoke-virtual/range {v94 .. v94}, Ljava/io/FileInputStream;->close()V

    .line 1682
    invoke-virtual/range {v81 .. v81}, Ljava/io/FileOutputStream;->close()V

    .line 1681
    throw v3

    .line 1685
    .end local v81           #os:Ljava/io/FileOutputStream;
    .end local v94           #stream:Ljava/io/FileInputStream;
    :cond_48
    const-string v3, "application/vnd.oma.drm.message"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 1687
    const/4 v3, 0x2

    move/from16 v0, v77

    if-ne v0, v3, :cond_49

    .line 1688
    const-string v3, "application/vnd.oma.drm.message"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->installRightsObject(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 1697
    :cond_49
    const-string v3, "ro.board.platform"

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v85

    .line 1700
    .local v85, platform:Ljava/lang/String;
    if-eqz v85, :cond_4a

    const-string v3, ""

    move-object/from16 v0, v85

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 1701
    :cond_4a
    const/16 v86, 0x0

    .line 1706
    .local v86, platformLowerCase:Ljava/lang/String;
    :goto_1c
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x62

    if-eq v3, v5, :cond_4b

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x42

    if-eq v3, v5, :cond_4b

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x10

    if-eq v3, v5, :cond_4b

    if-eqz v86, :cond_51

    const-string v3, ""

    move-object/from16 v0, v86

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_51

    const-string v3, "msm7k"

    move-object/from16 v0, v86

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4b

    const-string v3, "7x27"

    move-object/from16 v0, v86

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 1721
    :cond_4b
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@ save duplicate File for MSM7K case."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_3

    .line 1725
    :try_start_31
    new-instance v35, Ljava/io/File;

    move-object/from16 v0, v35

    move-object/from16 v1, v51

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1727
    .restart local v35       #createFile:Ljava/io/File;
    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->exists()Z
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_4

    move-result v3

    if-nez v3, :cond_4c

    .line 1729
    :try_start_32
    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->createNewFile()Z
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_1a

    .line 1732
    const/16 v35, 0x0

    .line 1733
    :try_start_33
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1737
    :cond_4c
    :goto_1d
    const/16 v88, 0x0

    .line 1738
    .local v88, repeat:I
    const/16 v95, 0x0

    .line 1739
    .local v95, success:Z
    const/16 v90, 0x0

    .line 1741
    .local v90, resultSaveFile:I
    :goto_1e
    const/4 v3, 0x3

    move/from16 v0, v88

    if-ge v0, v3, :cond_50

    .line 1743
    if-ltz v88, :cond_4e

    .line 1744
    new-instance v99, Ljava/io/FileInputStream;

    move-object/from16 v0, v99

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1745
    .local v99, tempFin:Ljava/io/FileInputStream;
    new-instance v98, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {v99 .. v99}, Ljava/io/FileInputStream;->available()I

    move-result v3

    move-object/from16 v0, v98

    move-object/from16 v1, v99

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v3, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 1748
    .restart local v98       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    move-object/from16 v0, p1

    move-object/from16 v1, v98

    move-object/from16 v2, v51

    invoke-static {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_4

    move-result v90

    .line 1751
    :try_start_34
    invoke-virtual/range {v99 .. v99}, Ljava/io/FileInputStream;->close()V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_1b

    .line 1760
    .end local v98           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v99           #tempFin:Ljava/io/FileInputStream;
    :goto_1f
    const/4 v3, -0x1

    move/from16 v0, v90

    if-ne v0, v3, :cond_4f

    .line 1761
    add-int/lit8 v88, v88, 0x1

    goto :goto_1e

    .line 1703
    .end local v35           #createFile:Ljava/io/File;
    .end local v86           #platformLowerCase:Ljava/lang/String;
    .end local v88           #repeat:I
    .end local v90           #resultSaveFile:I
    .end local v95           #success:Z
    :cond_4d
    :try_start_35
    invoke-virtual/range {v85 .. v85}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_3

    move-result-object v86

    .restart local v86       #platformLowerCase:Ljava/lang/String;
    goto/16 :goto_1c

    .line 1732
    .restart local v35       #createFile:Ljava/io/File;
    :catchall_3
    move-exception v3

    const/16 v35, 0x0

    .line 1733
    :try_start_36
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1732
    throw v3
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_4

    .line 1772
    .end local v35           #createFile:Ljava/io/File;
    :catchall_4
    move-exception v3

    :try_start_37
    throw v3
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_3

    .line 1753
    .restart local v35       #createFile:Ljava/io/File;
    .restart local v88       #repeat:I
    .restart local v90       #resultSaveFile:I
    .restart local v95       #success:Z
    .restart local v98       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v99       #tempFin:Ljava/io/FileInputStream;
    :catchall_5
    move-exception v3

    :try_start_38
    throw v3

    .line 1757
    .end local v98           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v99           #tempFin:Ljava/io/FileInputStream;
    :cond_4e
    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v51

    invoke-static {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/lang/String;)I
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_4

    move-result v90

    goto :goto_1f

    .line 1764
    :cond_4f
    const/16 v88, 0x3

    .line 1765
    const/16 v95, 0x1

    goto :goto_1e

    .line 1769
    :cond_50
    if-nez v95, :cond_44

    .line 1770
    const/16 v71, 0x0

    goto/16 :goto_19

    .line 1781
    .end local v35           #createFile:Ljava/io/File;
    .end local v88           #repeat:I
    .end local v90           #resultSaveFile:I
    .end local v95           #success:Z
    :cond_51
    :try_start_39
    new-instance v81, Ljava/io/FileOutputStream;

    move-object/from16 v0, v81

    move-object/from16 v1, v51

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_39 .. :try_end_39} :catch_11
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_39} :catch_3

    .line 1799
    .restart local v81       #os:Ljava/io/FileOutputStream;
    :goto_20
    if-eqz v81, :cond_44

    .line 1805
    const/4 v3, -0x1

    :try_start_3a
    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v81

    invoke-static {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/io/FileOutputStream;)I
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_6

    move-result v5

    if-ne v3, v5, :cond_52

    .line 1807
    const/16 v71, 0x0

    .line 1811
    :cond_52
    :try_start_3b
    invoke-virtual/range {v81 .. v81}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_19

    .line 1782
    .end local v81           #os:Ljava/io/FileOutputStream;
    :catch_11
    move-exception v52

    .line 1783
    .local v52, e:Ljava/io/FileNotFoundException;
    new-instance v35, Ljava/io/File;

    move-object/from16 v0, v35

    move-object/from16 v1, v51

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1784
    .restart local v35       #createFile:Ljava/io/File;
    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 1785
    new-instance v81, Ljava/io/FileOutputStream;

    move-object/from16 v0, v81

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .restart local v81       #os:Ljava/io/FileOutputStream;
    goto :goto_20

    .line 1787
    .end local v81           #os:Ljava/io/FileOutputStream;
    :cond_53
    const-string v3, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Create new file:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v51

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " failed."

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V

    .line 1792
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(7) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3b} :catch_3

    .line 1795
    const/16 v71, 0x0

    .line 2215
    .end local v71           #intent:Landroid/content/Intent;
    if-eqz v62, :cond_1

    .line 2216
    :try_start_3c
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3c} :catch_12

    goto/16 :goto_0

    .line 2218
    :catch_12
    move-exception v52

    .line 2220
    .local v52, e:Ljava/lang/Exception;
    const-string v3, "HtcWrapDrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_9

    .line 1811
    .end local v35           #createFile:Ljava/io/File;
    .end local v52           #e:Ljava/lang/Exception;
    .restart local v71       #intent:Landroid/content/Intent;
    .restart local v81       #os:Ljava/io/FileOutputStream;
    :catchall_6
    move-exception v3

    :try_start_3d
    invoke-virtual/range {v81 .. v81}, Ljava/io/FileOutputStream;->close()V

    throw v3

    .line 1821
    .end local v81           #os:Ljava/io/FileOutputStream;
    .end local v85           #platform:Ljava/lang/String;
    .end local v86           #platformLowerCase:Ljava/lang/String;
    :catch_13
    move-exception v52

    .line 1822
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@  ERROR: close file failed!!! (6)-(7)-(1)"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1823
    const-string v3, "HtcWrapDrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3d} :catch_3

    .line 1826
    const/16 v61, 0x0

    .line 1827
    .end local v62           #fin:Ljava/io/FileInputStream;
    .restart local v61       #fin:Ljava/io/FileInputStream;
    :try_start_3e
    invoke-static {}, Ljava/lang/System;->gc()V

    goto/16 :goto_1a

    .line 2197
    .end local v6           #mimeType:Ljava/lang/String;
    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v16           #uri:Landroid/net/Uri;
    .end local v18           #flRingtone:Z
    .end local v26           #c:Landroid/database/Cursor;
    .end local v28           #checkFile:Ljava/io/File;
    .end local v32           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v33           #contentOffset:I
    .end local v34           #contentUid:Ljava/lang/String;
    .end local v50           #duplicate:Z
    .end local v51           #duplicatePath:Ljava/lang/String;
    .end local v52           #e:Ljava/lang/Exception;
    .end local v77           #method:I
    .end local v84           #overwrite:Z
    .end local v105           #transferEncoding:I
    :catch_14
    move-exception v52

    goto/16 :goto_8

    .line 1846
    .restart local v6       #mimeType:Ljava/lang/String;
    .restart local v7       #contentUri:Landroid/net/Uri;
    .restart local v16       #uri:Landroid/net/Uri;
    .restart local v18       #flRingtone:Z
    .restart local v26       #c:Landroid/database/Cursor;
    .restart local v28       #checkFile:Ljava/io/File;
    .restart local v32       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v33       #contentOffset:I
    .restart local v34       #contentUid:Ljava/lang/String;
    .restart local v50       #duplicate:Z
    .restart local v51       #duplicatePath:Ljava/lang/String;
    .restart local v77       #method:I
    .restart local v84       #overwrite:Z
    .restart local v105       #transferEncoding:I
    :catch_15
    move-exception v52

    .line 1848
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File duplicate parse Media: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3e} :catch_14

    goto/16 :goto_1b

    .line 2214
    .end local v6           #mimeType:Ljava/lang/String;
    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v11           #cr:Landroid/content/ContentResolver;
    .end local v16           #uri:Landroid/net/Uri;
    .end local v18           #flRingtone:Z
    .end local v26           #c:Landroid/database/Cursor;
    .end local v28           #checkFile:Ljava/io/File;
    .end local v32           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v33           #contentOffset:I
    .end local v34           #contentUid:Ljava/lang/String;
    .end local v50           #duplicate:Z
    .end local v51           #duplicatePath:Ljava/lang/String;
    .end local v52           #e:Ljava/lang/Exception;
    .end local v77           #method:I
    .end local v84           #overwrite:Z
    .end local v105           #transferEncoding:I
    :catchall_7
    move-exception v3

    goto/16 :goto_f

    .line 1854
    .end local v61           #fin:Ljava/io/FileInputStream;
    .restart local v6       #mimeType:Ljava/lang/String;
    .restart local v7       #contentUri:Landroid/net/Uri;
    .restart local v11       #cr:Landroid/content/ContentResolver;
    .restart local v16       #uri:Landroid/net/Uri;
    .restart local v18       #flRingtone:Z
    .restart local v26       #c:Landroid/database/Cursor;
    .restart local v32       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v33       #contentOffset:I
    .restart local v34       #contentUid:Ljava/lang/String;
    .restart local v50       #duplicate:Z
    .restart local v62       #fin:Ljava/io/FileInputStream;
    .restart local v77       #method:I
    .restart local v84       #overwrite:Z
    .restart local v105       #transferEncoding:I
    :cond_54
    :try_start_3f
    const-string v3, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Prepare to install: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v56

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_3

    move-object/from16 v72, v71

    .line 1860
    .end local v71           #intent:Landroid/content/Intent;
    .restart local v72       #intent:Landroid/content/Intent;
    :goto_21
    :try_start_40
    new-instance v39, Landroid/content/ContentValues;

    invoke-direct/range {v39 .. v39}, Landroid/content/ContentValues;-><init>()V

    .line 1862
    .restart local v39       #cv:Landroid/content/ContentValues;
    const-string v3, "_size"

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1864
    const-string v3, "title"

    move-object/from16 v0, v39

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1866
    const-string v3, "mime_type"

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1867
    const-string v3, "message_type"

    move-object/from16 v0, v39

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1868
    const-string v3, "delivery_type"

    invoke-static/range {v77 .. v77}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1869
    const-string v3, "content_offset"

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1870
    const-string v3, "content_url"

    move-object/from16 v0, v39

    move-object/from16 v1, p4

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1873
    sget-object v20, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    sget-object v21, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-string v24, "_id"

    move-object/from16 v19, v11

    invoke-virtual/range {v19 .. v24}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v93

    .line 1874
    .restart local v93       #stampCursor:Landroid/database/Cursor;
    if-eqz v93, :cond_57

    .line 1875
    invoke-interface/range {v93 .. v93}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_56

    .line 1881
    const-string v3, "time_differential"

    move-object/from16 v0, v93

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v44

    .line 1883
    .restart local v44       #differentialColumnId:I
    move-object/from16 v0, v93

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    .line 1884
    .restart local v42       #differential:J
    const-string v3, "timezone_stamp"

    move-object/from16 v0, v93

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v102

    .line 1886
    .restart local v102       #timeZoneColumnIndex:I
    move-object/from16 v0, v93

    move/from16 v1, v102

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v100

    .line 1887
    .restart local v100       #timeZone:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v36

    .line 1888
    .restart local v36       #currentClock:J
    const-string v3, "date_added"

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1892
    .end local v36           #currentClock:J
    .end local v42           #differential:J
    .end local v44           #differentialColumnId:I
    .end local v100           #timeZone:J
    .end local v102           #timeZoneColumnIndex:I
    :goto_22
    invoke-interface/range {v93 .. v93}, Landroid/database/Cursor;->close()V

    .line 1904
    :goto_23
    if-eqz p6, :cond_55

    const-string v3, ""

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 1906
    :cond_55
    const-string v3, "Destination"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1955
    :goto_24
    move-object/from16 v0, v39

    invoke-virtual {v11, v7, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v16

    .line 1956
    if-nez v16, :cond_5b

    .line 1958
    const-string v3, "HtcWrapDrmStore"

    const-string v5, "Insert to DRM db failed."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1960
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V

    .line 1964
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(8) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_40} :catch_d

    .line 1967
    const/16 v71, 0x0

    .line 2215
    if-eqz v62, :cond_1

    .line 2216
    :try_start_41
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_41} :catch_16

    goto/16 :goto_0

    .line 2218
    :catch_16
    move-exception v52

    .line 2220
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "HtcWrapDrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_9

    .line 1890
    .end local v52           #e:Ljava/lang/Exception;
    :cond_56
    :try_start_42
    const-string v3, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_22

    .line 1894
    :cond_57
    const-string v3, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_23

    .line 1910
    :cond_58
    move/from16 v8, p5

    .line 1911
    .restart local v8       #newDestination:I
    const/16 v29, 0x0

    .line 1912
    .restart local v29       #checked:Z
    invoke-static {}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getSupportedStorages()I

    move-result v97

    .line 1914
    .restart local v97       #supportedStorages:I
    and-int/lit8 v3, v97, 0x1

    if-eqz v3, :cond_59

    .line 1916
    invoke-static {}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 1919
    const/4 v8, 0x0

    .line 1920
    const/16 v29, 0x1

    .line 1924
    :cond_59
    if-nez v29, :cond_5a

    and-int/lit8 v3, v97, 0x2

    if-eqz v3, :cond_5a

    .line 1926
    invoke-static {}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 1929
    const/4 v8, 0x7

    .line 1933
    :cond_5a
    const-string v3, "Destination"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1934
    const-string v3, "_data"

    move-object/from16 v0, v39

    move-object/from16 v1, p6

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1938
    sparse-switch v8, :sswitch_data_1

    .line 1947
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@     rights\' download destination is unknown!!!"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_24

    .line 1941
    :sswitch_2
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@     rights\' download destination is in external."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_24

    .line 1944
    :sswitch_3
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@     rights\' download destination is in internal."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_24

    .line 1973
    .end local v8           #newDestination:I
    .end local v29           #checked:Z
    .end local v97           #supportedStorages:I
    :cond_5b
    const-string v3, "_data"

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1976
    const/16 v25, 0x0

    .line 1979
    .local v25, boundary_length:I
    invoke-static {v6}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->NeedToEncrypt(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5c

    const/4 v3, 0x3

    move/from16 v0, v77

    if-ne v0, v3, :cond_5e

    .line 1981
    :cond_5c
    const/4 v3, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/drm/mobile1/DrmRawContent;->getContentId(Landroid/drm/mobile1/DrmRights;)Ljava/lang/String;

    move-result-object v34

    .line 1982
    new-instance v94, Ljava/io/FileInputStream;

    move-object/from16 v0, v94

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1985
    .restart local v94       #stream:Ljava/io/FileInputStream;
    new-instance v81, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    invoke-static {v11, v0}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v81

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_42} :catch_d

    .line 1986
    .restart local v81       #os:Ljava/io/FileOutputStream;
    if-eqz v81, :cond_5d

    .line 1988
    :try_start_43
    move-object/from16 v0, v94

    move-object/from16 v1, v81

    invoke-static {v0, v1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->saveFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)I
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_8

    .line 1990
    :try_start_44
    invoke-virtual/range {v81 .. v81}, Ljava/io/FileOutputStream;->close()V

    .line 2119
    .end local v81           #os:Ljava/io/FileOutputStream;
    .end local v94           #stream:Ljava/io/FileInputStream;
    :cond_5d
    :goto_25
    const/4 v3, -0x1

    move/from16 v0, v25

    if-ne v0, v3, :cond_68

    .line 2122
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(11) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_44} :catch_d

    .line 2125
    const/16 v71, 0x0

    .line 2215
    if-eqz v62, :cond_1

    .line 2216
    :try_start_45
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_45} :catch_17

    goto/16 :goto_0

    .line 2218
    :catch_17
    move-exception v52

    .line 2220
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "HtcWrapDrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_9

    .line 1990
    .end local v52           #e:Ljava/lang/Exception;
    .restart local v81       #os:Ljava/io/FileOutputStream;
    .restart local v94       #stream:Ljava/io/FileInputStream;
    :catchall_8
    move-exception v3

    :try_start_46
    invoke-virtual/range {v81 .. v81}, Ljava/io/FileOutputStream;->close()V

    throw v3

    .line 1993
    .end local v81           #os:Ljava/io/FileOutputStream;
    .end local v94           #stream:Ljava/io/FileInputStream;
    :cond_5e
    const/4 v3, 0x1

    move/from16 v0, v77

    if-ne v0, v3, :cond_5f

    .line 1995
    new-instance v81, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    invoke-static {v11, v0}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v81

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_46} :catch_d

    .line 1996
    .restart local v81       #os:Ljava/io/FileOutputStream;
    if-eqz v81, :cond_5d

    .line 1998
    :try_start_47
    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v81

    invoke-static {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/io/FileOutputStream;)I
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_9

    move-result v25

    .line 2000
    :try_start_48
    invoke-virtual/range {v81 .. v81}, Ljava/io/FileOutputStream;->close()V

    goto :goto_25

    :catchall_9
    move-exception v3

    invoke-virtual/range {v81 .. v81}, Ljava/io/FileOutputStream;->close()V

    throw v3

    .line 2003
    .end local v81           #os:Ljava/io/FileOutputStream;
    :cond_5f
    const/4 v3, 0x2

    move/from16 v0, v77

    if-ne v0, v3, :cond_67

    .line 2004
    const-string v3, "application/vnd.oma.drm.message"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->installRightsObject(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_60

    .line 2006
    const-string v3, "HtcWrapDrmStore"

    const-string v5, "Install rights of combine delivery failed."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V

    .line 2012
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(9) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_48} :catch_d

    .line 2015
    const/16 v71, 0x0

    .line 2215
    if-eqz v62, :cond_1

    .line 2216
    :try_start_49
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_49} :catch_18

    goto/16 :goto_0

    .line 2218
    :catch_18
    move-exception v52

    .line 2220
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "HtcWrapDrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_9

    .line 2023
    .end local v52           #e:Ljava/lang/Exception;
    :cond_60
    :try_start_4a
    const-string v3, "ro.board.platform"

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v85

    .line 2026
    .restart local v85       #platform:Ljava/lang/String;
    if-eqz v85, :cond_61

    const-string v3, ""

    move-object/from16 v0, v85

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 2027
    :cond_61
    const/16 v86, 0x0

    .line 2032
    .restart local v86       #platformLowerCase:Ljava/lang/String;
    :goto_26
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x62

    if-eq v3, v5, :cond_62

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x42

    if-eq v3, v5, :cond_62

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x10

    if-eq v3, v5, :cond_62

    if-eqz v86, :cond_66

    const-string v3, ""

    move-object/from16 v0, v86

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_66

    const-string v3, "msm7k"

    move-object/from16 v0, v86

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_62

    const-string v3, "7x27"

    move-object/from16 v0, v86

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 2047
    :cond_62
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@ saveFile for MSM7K case."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    const/16 v88, 0x0

    .line 2052
    .restart local v88       #repeat:I
    :goto_27
    const/4 v3, 0x3

    move/from16 v0, v88

    if-ge v0, v3, :cond_5d

    .line 2054
    if-ltz v88, :cond_64

    .line 2055
    new-instance v99, Ljava/io/FileInputStream;

    move-object/from16 v0, v99

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2056
    .restart local v99       #tempFin:Ljava/io/FileInputStream;
    new-instance v98, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {v99 .. v99}, Ljava/io/FileInputStream;->available()I

    move-result v3

    move-object/from16 v0, v98

    move-object/from16 v1, v99

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v3, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 2059
    .restart local v98       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    move-object/from16 v0, v16

    invoke-static {v11, v0}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, v98

    invoke-static {v0, v1, v3}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/lang/String;)I
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4a} :catch_d

    move-result v25

    .line 2062
    :try_start_4b
    invoke-virtual/range {v99 .. v99}, Ljava/io/FileInputStream;->close()V
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_a
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4b} :catch_1c

    .line 2071
    .end local v98           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v99           #tempFin:Ljava/io/FileInputStream;
    :goto_28
    const/4 v3, -0x1

    move/from16 v0, v25

    if-ne v0, v3, :cond_65

    .line 2072
    add-int/lit8 v88, v88, 0x1

    goto :goto_27

    .line 2029
    .end local v86           #platformLowerCase:Ljava/lang/String;
    .end local v88           #repeat:I
    :cond_63
    :try_start_4c
    invoke-virtual/range {v85 .. v85}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v86

    .restart local v86       #platformLowerCase:Ljava/lang/String;
    goto :goto_26

    .line 2064
    .restart local v88       #repeat:I
    .restart local v98       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v99       #tempFin:Ljava/io/FileInputStream;
    :catchall_a
    move-exception v3

    throw v3

    .line 2068
    .end local v98           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v99           #tempFin:Ljava/io/FileInputStream;
    :cond_64
    move-object/from16 v0, v16

    invoke-static {v11, v0}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-static {v0, v1, v3}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/lang/String;)I

    move-result v25

    goto :goto_28

    .line 2075
    :cond_65
    const/16 v88, 0x3

    goto :goto_27

    .line 2084
    .end local v88           #repeat:I
    :cond_66
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@ saveFile for NORMAL case."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2087
    new-instance v81, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    invoke-static {v11, v0}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v81

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4c} :catch_d

    .line 2089
    .restart local v81       #os:Ljava/io/FileOutputStream;
    if-eqz v81, :cond_5d

    .line 2091
    :try_start_4d
    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v81

    invoke-static {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/io/FileOutputStream;)I
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_b

    move-result v25

    .line 2094
    :try_start_4e
    invoke-virtual/range {v81 .. v81}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_25

    :catchall_b
    move-exception v3

    invoke-virtual/range {v81 .. v81}, Ljava/io/FileOutputStream;->close()V

    throw v3

    .line 2103
    .end local v81           #os:Ljava/io/FileOutputStream;
    .end local v85           #platform:Ljava/lang/String;
    .end local v86           #platformLowerCase:Ljava/lang/String;
    :cond_67
    const-string v3, "HtcWrapDrmStore"

    const-string v5, "Unknown method."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2105
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V

    .line 2109
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(10) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_4e} :catch_d

    .line 2112
    const/16 v71, 0x0

    .line 2215
    if-eqz v62, :cond_1

    .line 2216
    :try_start_4f
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_4f} :catch_19

    goto/16 :goto_0

    .line 2218
    :catch_19
    move-exception v52

    .line 2220
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "HtcWrapDrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_9

    .line 2129
    .end local v52           #e:Ljava/lang/Exception;
    :cond_68
    :try_start_50
    new-instance v71, Landroid/content/Intent;

    invoke-direct/range {v71 .. v71}, Landroid/content/Intent;-><init>()V
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_50} :catch_d

    .line 2130
    .end local v72           #intent:Landroid/content/Intent;
    .restart local v71       #intent:Landroid/content/Intent;
    :try_start_51
    move-object/from16 v0, v71

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2132
    sget-object v21, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->TITLE_PROJECTION:[Ljava/lang/String;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-string v24, "_id"

    move-object/from16 v19, v11

    move-object/from16 v20, v16

    invoke-virtual/range {v19 .. v24}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    .line 2133
    .local v27, c_title:Landroid/database/Cursor;
    if-eqz v27, :cond_6a

    .line 2134
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_69

    .line 2135
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2136
    const-string v3, "title"

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v103

    .line 2137
    .local v103, titleIdIndex:I
    move-object/from16 v0, v27

    move/from16 v1, v103

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v80

    .line 2139
    .local v80, newTitle:Ljava/lang/String;
    const-string v3, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "newTitle:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v80

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    if-eqz v80, :cond_69

    .line 2142
    const-string v3, "title"

    move-object/from16 v0, v71

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2143
    const-string v3, "title"

    move-object/from16 v0, v39

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2146
    .end local v80           #newTitle:Ljava/lang/String;
    .end local v103           #titleIdIndex:I
    :cond_69
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 2150
    :cond_6a
    const-string v3, "audio"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6c

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p3

    move-object v15, v6

    move/from16 v17, p5

    .line 2163
    invoke-static/range {v12 .. v18}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->parseAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;IZ)Landroid/content/ContentValues;

    move-result-object v109

    .line 2165
    .restart local v109       #values:Landroid/content/ContentValues;
    if-eqz v109, :cond_6b

    .line 2166
    const-string v3, "album_id"

    const-string v5, "album_id"

    move-object/from16 v0, v109

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2167
    const-string v3, "artist_id"

    const-string v5, "artist_id"

    move-object/from16 v0, v109

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2169
    const-string v3, "title"

    move-object/from16 v0, v109

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6b

    const-string v3, "title"

    move-object/from16 v0, v109

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6b

    .line 2170
    const-string v3, "title"

    const-string v5, "title"

    move-object/from16 v0, v109

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2180
    :cond_6b
    if-eqz v18, :cond_6e

    .line 2181
    const-string v3, "is_ringtone"

    const-string v5, "1"

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2192
    .end local v109           #values:Landroid/content/ContentValues;
    :cond_6c
    :goto_29
    const-string v3, "content_id"

    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2193
    const-string v3, "content_boundary_offset"

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2195
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v39

    invoke-virtual {v11, v0, v1, v3, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_51} :catch_3

    .line 2215
    if-eqz v62, :cond_6d

    .line 2216
    :try_start_52
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_52} :catch_1f

    .line 2229
    :cond_6d
    :goto_2a
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(20) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2182
    .restart local v109       #values:Landroid/content/ContentValues;
    :cond_6e
    :try_start_53
    invoke-static {}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->SupportForwardLockOnly()Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 2183
    const/4 v3, 0x1

    move/from16 v0, v77

    if-ne v0, v3, :cond_6c

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v12

    const-wide/32 v14, 0x4b000

    cmp-long v3, v12, v14

    if-gez v3, :cond_6c

    .line 2184
    const-string v3, "is_ringtone"

    const-string v5, "1"

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_53} :catch_3

    goto :goto_29

    .line 1730
    .end local v25           #boundary_length:I
    .end local v27           #c_title:Landroid/database/Cursor;
    .end local v39           #cv:Landroid/content/ContentValues;
    .end local v93           #stampCursor:Landroid/database/Cursor;
    .end local v109           #values:Landroid/content/ContentValues;
    .restart local v28       #checkFile:Ljava/io/File;
    .restart local v35       #createFile:Ljava/io/File;
    .restart local v51       #duplicatePath:Ljava/lang/String;
    .restart local v85       #platform:Ljava/lang/String;
    .restart local v86       #platformLowerCase:Ljava/lang/String;
    :catch_1a
    move-exception v3

    .line 1732
    const/16 v35, 0x0

    .line 1733
    :try_start_54
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_4

    goto/16 :goto_1d

    .line 1752
    .restart local v88       #repeat:I
    .restart local v90       #resultSaveFile:I
    .restart local v95       #success:Z
    .restart local v98       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v99       #tempFin:Ljava/io/FileInputStream;
    :catch_1b
    move-exception v3

    goto/16 :goto_1f

    .line 2063
    .end local v28           #checkFile:Ljava/io/File;
    .end local v35           #createFile:Ljava/io/File;
    .end local v51           #duplicatePath:Ljava/lang/String;
    .end local v71           #intent:Landroid/content/Intent;
    .end local v90           #resultSaveFile:I
    .end local v95           #success:Z
    .restart local v25       #boundary_length:I
    .restart local v39       #cv:Landroid/content/ContentValues;
    .restart local v72       #intent:Landroid/content/Intent;
    .restart local v93       #stampCursor:Landroid/database/Cursor;
    :catch_1c
    move-exception v3

    goto/16 :goto_28

    .line 2218
    .end local v6           #mimeType:Ljava/lang/String;
    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v11           #cr:Landroid/content/ContentResolver;
    .end local v16           #uri:Landroid/net/Uri;
    .end local v18           #flRingtone:Z
    .end local v25           #boundary_length:I
    .end local v26           #c:Landroid/database/Cursor;
    .end local v32           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v33           #contentOffset:I
    .end local v34           #contentUid:Ljava/lang/String;
    .end local v39           #cv:Landroid/content/ContentValues;
    .end local v50           #duplicate:Z
    .end local v62           #fin:Ljava/io/FileInputStream;
    .end local v72           #intent:Landroid/content/Intent;
    .end local v77           #method:I
    .end local v84           #overwrite:Z
    .end local v85           #platform:Ljava/lang/String;
    .end local v86           #platformLowerCase:Ljava/lang/String;
    .end local v88           #repeat:I
    .end local v93           #stampCursor:Landroid/database/Cursor;
    .end local v98           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v99           #tempFin:Ljava/io/FileInputStream;
    .end local v105           #transferEncoding:I
    .restart local v61       #fin:Ljava/io/FileInputStream;
    .restart local v71       #intent:Landroid/content/Intent;
    :catch_1d
    move-exception v52

    .line 2220
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v5, "HtcWrapDrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 1378
    .end local v52           #e:Ljava/lang/Exception;
    .end local v61           #fin:Ljava/io/FileInputStream;
    .restart local v6       #mimeType:Ljava/lang/String;
    .restart local v11       #cr:Landroid/content/ContentResolver;
    .restart local v18       #flRingtone:Z
    .restart local v32       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v33       #contentOffset:I
    .restart local v54       #extention:Ljava/lang/String;
    .restart local v62       #fin:Ljava/io/FileInputStream;
    .restart local v65       #fis2:Ljava/io/FileInputStream;
    .restart local v67       #fos:Ljava/io/FileOutputStream;
    .restart local v73       #is:Ljava/io/InputStream;
    .restart local v74       #isTerminated:Z
    .restart local v77       #method:I
    .restart local v82       #outFile:Ljava/io/File;
    .restart local v105       #transferEncoding:I
    :catchall_c
    move-exception v3

    :goto_2b
    if-eqz v67, :cond_6f

    .line 1379
    :try_start_55
    invoke-virtual/range {v67 .. v67}, Ljava/io/FileOutputStream;->close()V

    .line 1380
    const/16 v67, 0x0

    .line 1382
    :cond_6f
    if-eqz v73, :cond_70

    .line 1383
    invoke-virtual/range {v73 .. v73}, Ljava/io/InputStream;->close()V

    .line 1384
    const/16 v73, 0x0

    .line 1393
    :cond_70
    if-eqz v63, :cond_71

    .line 1394
    invoke-virtual/range {v63 .. v63}, Ljava/io/FileInputStream;->close()V

    .line 1395
    const/16 v63, 0x0

    .line 1397
    :cond_71
    if-eqz v65, :cond_72

    .line 1398
    invoke-virtual/range {v65 .. v65}, Ljava/io/FileInputStream;->close()V

    .line 1399
    const/16 v65, 0x0

    .line 1402
    :cond_72
    invoke-virtual/range {v82 .. v82}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_73

    .line 1403
    invoke-virtual/range {v82 .. v82}, Ljava/io/File;->delete()Z

    .line 1405
    :cond_73
    if-eqz v74, :cond_2e

    .line 1409
    const-string v3, "HtcWrapDrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(4) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_55} :catch_3

    .line 1411
    const/16 v71, 0x0

    .line 2215
    .end local v71           #intent:Landroid/content/Intent;
    if-eqz v62, :cond_1

    .line 2216
    :try_start_56
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_56} :catch_1e

    goto/16 :goto_0

    .line 2218
    :catch_1e
    move-exception v52

    .line 2220
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "HtcWrapDrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_9

    .line 2218
    .end local v52           #e:Ljava/lang/Exception;
    .end local v54           #extention:Ljava/lang/String;
    .end local v65           #fis2:Ljava/io/FileInputStream;
    .end local v67           #fos:Ljava/io/FileOutputStream;
    .end local v73           #is:Ljava/io/InputStream;
    .end local v74           #isTerminated:Z
    .end local v82           #outFile:Ljava/io/File;
    .restart local v7       #contentUri:Landroid/net/Uri;
    .restart local v16       #uri:Landroid/net/Uri;
    .restart local v25       #boundary_length:I
    .restart local v26       #c:Landroid/database/Cursor;
    .restart local v27       #c_title:Landroid/database/Cursor;
    .restart local v34       #contentUid:Ljava/lang/String;
    .restart local v39       #cv:Landroid/content/ContentValues;
    .restart local v50       #duplicate:Z
    .restart local v71       #intent:Landroid/content/Intent;
    .restart local v84       #overwrite:Z
    .restart local v93       #stampCursor:Landroid/database/Cursor;
    :catch_1f
    move-exception v52

    .line 2220
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "HtcWrapDrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a

    .line 1378
    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v16           #uri:Landroid/net/Uri;
    .end local v25           #boundary_length:I
    .end local v26           #c:Landroid/database/Cursor;
    .end local v27           #c_title:Landroid/database/Cursor;
    .end local v34           #contentUid:Ljava/lang/String;
    .end local v39           #cv:Landroid/content/ContentValues;
    .end local v50           #duplicate:Z
    .end local v52           #e:Ljava/lang/Exception;
    .end local v84           #overwrite:Z
    .end local v93           #stampCursor:Landroid/database/Cursor;
    .restart local v54       #extention:Ljava/lang/String;
    .restart local v64       #fis:Ljava/io/FileInputStream;
    .restart local v65       #fis2:Ljava/io/FileInputStream;
    .restart local v67       #fos:Ljava/io/FileOutputStream;
    .restart local v73       #is:Ljava/io/InputStream;
    .restart local v74       #isTerminated:Z
    .restart local v82       #outFile:Ljava/io/File;
    :catchall_d
    move-exception v3

    move-object/from16 v63, v64

    .end local v64           #fis:Ljava/io/FileInputStream;
    .restart local v63       #fis:Ljava/io/FileInputStream;
    goto :goto_2b

    .end local v65           #fis2:Ljava/io/FileInputStream;
    .restart local v41       #deleteRights:Z
    .restart local v66       #fis2:Ljava/io/FileInputStream;
    .restart local v75       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v91       #rights:Landroid/drm/mobile1/DrmRights;
    :catchall_e
    move-exception v3

    move-object/from16 v65, v66

    .end local v66           #fis2:Ljava/io/FileInputStream;
    .restart local v65       #fis2:Ljava/io/FileInputStream;
    goto :goto_2b

    .end local v65           #fis2:Ljava/io/FileInputStream;
    .end local v67           #fos:Ljava/io/FileOutputStream;
    .restart local v66       #fis2:Ljava/io/FileInputStream;
    .restart local v68       #fos:Ljava/io/FileOutputStream;
    .restart local v98       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    :catchall_f
    move-exception v3

    move-object/from16 v67, v68

    .end local v68           #fos:Ljava/io/FileOutputStream;
    .restart local v67       #fos:Ljava/io/FileOutputStream;
    move-object/from16 v65, v66

    .end local v66           #fis2:Ljava/io/FileInputStream;
    .restart local v65       #fis2:Ljava/io/FileInputStream;
    goto :goto_2b

    .line 1374
    .end local v41           #deleteRights:Z
    .end local v63           #fis:Ljava/io/FileInputStream;
    .end local v75           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v91           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v98           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v64       #fis:Ljava/io/FileInputStream;
    :catch_20
    move-exception v52

    move-object/from16 v63, v64

    .end local v64           #fis:Ljava/io/FileInputStream;
    .restart local v63       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_e

    .end local v65           #fis2:Ljava/io/FileInputStream;
    .restart local v41       #deleteRights:Z
    .restart local v66       #fis2:Ljava/io/FileInputStream;
    .restart local v75       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v91       #rights:Landroid/drm/mobile1/DrmRights;
    :catch_21
    move-exception v52

    move-object/from16 v65, v66

    .end local v66           #fis2:Ljava/io/FileInputStream;
    .restart local v65       #fis2:Ljava/io/FileInputStream;
    goto/16 :goto_e

    .end local v65           #fis2:Ljava/io/FileInputStream;
    .end local v67           #fos:Ljava/io/FileOutputStream;
    .restart local v66       #fis2:Ljava/io/FileInputStream;
    .restart local v68       #fos:Ljava/io/FileOutputStream;
    .restart local v98       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    :catch_22
    move-exception v52

    move-object/from16 v67, v68

    .end local v68           #fos:Ljava/io/FileOutputStream;
    .restart local v67       #fos:Ljava/io/FileOutputStream;
    move-object/from16 v65, v66

    .end local v66           #fis2:Ljava/io/FileInputStream;
    .restart local v65       #fis2:Ljava/io/FileInputStream;
    goto/16 :goto_e

    .end local v41           #deleteRights:Z
    .end local v54           #extention:Ljava/lang/String;
    .end local v63           #fis:Ljava/io/FileInputStream;
    .end local v65           #fis2:Ljava/io/FileInputStream;
    .end local v67           #fos:Ljava/io/FileOutputStream;
    .end local v73           #is:Ljava/io/InputStream;
    .end local v74           #isTerminated:Z
    .end local v75           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v82           #outFile:Ljava/io/File;
    .end local v91           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v98           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v7       #contentUri:Landroid/net/Uri;
    .restart local v26       #c:Landroid/database/Cursor;
    .restart local v34       #contentUid:Ljava/lang/String;
    .restart local v50       #duplicate:Z
    .restart local v84       #overwrite:Z
    .restart local v108       #uri:Landroid/net/Uri;
    :cond_74
    move-object/from16 v16, v108

    .end local v108           #uri:Landroid/net/Uri;
    .restart local v16       #uri:Landroid/net/Uri;
    goto/16 :goto_16

    .end local v16           #uri:Landroid/net/Uri;
    .restart local v108       #uri:Landroid/net/Uri;
    :cond_75
    move-object/from16 v16, v108

    .end local v108           #uri:Landroid/net/Uri;
    .restart local v16       #uri:Landroid/net/Uri;
    move-object/from16 v72, v71

    .end local v71           #intent:Landroid/content/Intent;
    .restart local v72       #intent:Landroid/content/Intent;
    goto/16 :goto_21

    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v16           #uri:Landroid/net/Uri;
    .end local v26           #c:Landroid/database/Cursor;
    .end local v34           #contentUid:Ljava/lang/String;
    .end local v50           #duplicate:Z
    .end local v72           #intent:Landroid/content/Intent;
    .end local v84           #overwrite:Z
    .restart local v41       #deleteRights:Z
    .restart local v54       #extention:Ljava/lang/String;
    .restart local v64       #fis:Ljava/io/FileInputStream;
    .restart local v65       #fis2:Ljava/io/FileInputStream;
    .restart local v67       #fos:Ljava/io/FileOutputStream;
    .restart local v71       #intent:Landroid/content/Intent;
    .restart local v73       #is:Ljava/io/InputStream;
    .restart local v74       #isTerminated:Z
    .restart local v75       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v82       #outFile:Ljava/io/File;
    .restart local v91       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v98       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    :cond_76
    move-object/from16 v63, v64

    .end local v64           #fis:Ljava/io/FileInputStream;
    .restart local v63       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_b

    .line 1004
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch

    .line 1938
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x7 -> :sswitch_3
    .end sparse-switch
.end method

.method public static final addDrmFileWithoutRights(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 91
    .parameter "cx"
    .parameter "file"
    .parameter "title"
    .parameter "mediaType"
    .parameter "url"
    .parameter "destination"

    .prologue
    .line 2342
    const-string v4, "HtcWrapDrmStore"

    const-string v8, "********addDrmFileWithoutRights"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2345
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_2

    .line 2347
    :cond_0
    const-string v4, "HtcWrapDrmStore"

    const-string v8, "addDrmFile input error."

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2349
    const/16 v53, 0x0

    .line 3397
    :cond_1
    :goto_0
    return-object v53

    .line 2359
    :cond_2
    const/4 v4, 0x7

    move/from16 v0, p5

    if-eq v0, v4, :cond_3

    .line 2362
    const/16 p5, 0x0

    .line 2365
    :cond_3
    const/16 v53, 0x0

    .line 2366
    .local v53, intent:Landroid/content/Intent;
    const/16 v45, 0x0

    .line 2369
    .local v45, fin:Ljava/io/FileInputStream;
    const-string v4, "application/vnd.oma.drm.rights+xml"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "application/vnd.oma.drm.rights+wbxml"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2372
    :cond_4
    const-string v4, "HtcWrapDrmStore"

    const-string v8, "Rights object installation is not supported via this method"

    invoke-static {v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2373
    const/16 v53, 0x0

    goto :goto_0

    .line 2413
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 2415
    .local v6, cr:Landroid/content/ContentResolver;
    const/16 v42, 0x0

    .line 2416
    .local v42, fileName:Ljava/lang/String;
    if-nez p2, :cond_7

    .line 2417
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v42

    .line 2426
    :goto_1
    const-string v4, "."

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v32

    .line 2427
    .local v32, dot:I
    const/4 v4, -0x1

    move/from16 v0, v32

    if-ne v0, v4, :cond_9

    .line 2429
    const-string v4, "application/vnd.oma.drm.message"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2430
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ".dm"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    .line 2443
    :cond_6
    :goto_2
    const-string v4, "HtcWrapDrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Add DRM file : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2448
    :try_start_0
    new-instance v46, Ljava/io/FileInputStream;

    move-object/from16 v0, v46

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_f

    .line 2449
    .end local v45           #fin:Ljava/io/FileInputStream;
    .local v46, fin:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v20, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->available()I

    move-result v4

    move-object/from16 v0, v20

    move-object/from16 v1, v46

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v4, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 2453
    .local v20, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-virtual/range {v20 .. v20}, Landroid/drm/mobile1/DrmRawContent;->getTransferEncoding()I

    move-result v87

    .line 2455
    .local v87, transferEncoding:I
    const-string v4, "application/vnd.oma.drm.message"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v4, 0x3

    move/from16 v0, v87

    if-ne v0, v4, :cond_f

    .line 2460
    const-string v4, "HtcWrapDrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " @@@@@  Handle specific transfer-encoding="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v87

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "."

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2463
    const-string v65, "/data/data/com.android.providers.drm/rights/tmp"

    .line 2466
    .local v65, outputBinaryFilePath:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v65

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x1

    invoke-static {v4, v8}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->checkAndCreateFolder(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_b

    .line 2467
    const-string v4, "HtcWrapDrmStore"

    const-string v8, " @@@@@ ERROR: cannot create file!!!"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2471
    const-string v4, "HtcWrapDrmStore"

    const-string v8, " @@@@@     addDrmFileWithoutRights (1)-(3)-(1) -END"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 2474
    const/16 v53, 0x0

    .line 3388
    .end local v53           #intent:Landroid/content/Intent;
    if-eqz v46, :cond_1

    .line 3389
    :try_start_2
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 3391
    :catch_0
    move-exception v38

    .line 3393
    .local v38, e:Ljava/lang/Exception;
    const-string v4, "HtcWrapDrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    .end local v6           #cr:Landroid/content/ContentResolver;
    .end local v20           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v46           #fin:Ljava/io/FileInputStream;
    .end local v65           #outputBinaryFilePath:Ljava/lang/String;
    .end local v87           #transferEncoding:I
    :goto_3
    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2420
    .end local v32           #dot:I
    .end local v38           #e:Ljava/lang/Exception;
    .restart local v6       #cr:Landroid/content/ContentResolver;
    .restart local v45       #fin:Ljava/io/FileInputStream;
    .restart local v53       #intent:Landroid/content/Intent;
    :cond_7
    const-string v4, "HtcWrapDrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Title is "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2422
    move-object/from16 v42, p2

    goto/16 :goto_1

    .line 2431
    .restart local v32       #dot:I
    :cond_8
    const-string v4, "application/vnd.oma.drm.content"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2432
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ".dcf"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    goto/16 :goto_2

    .line 2435
    :cond_9
    const-string v4, "application/vnd.oma.drm.message"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2436
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v32

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ".dm"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    goto/16 :goto_2

    .line 2437
    :cond_a
    const-string v4, "application/vnd.oma.drm.content"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2438
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v32

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ".dcf"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    goto/16 :goto_2

    .line 2477
    .end local v45           #fin:Ljava/io/FileInputStream;
    .restart local v20       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v46       #fin:Ljava/io/FileInputStream;
    .restart local v65       #outputBinaryFilePath:Ljava/lang/String;
    .restart local v87       #transferEncoding:I
    :cond_b
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v65

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v65

    .line 2479
    const/4 v4, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v65

    invoke-static {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->saveFileFromBase64ToBinary(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/lang/String;)I

    move-result v8

    if-ne v4, v8, :cond_c

    .line 2482
    const-string v4, "HtcWrapDrmStore"

    const-string v8, " @@@@@ ERROR: convert base64 file Fail!!!"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2486
    const-string v4, "HtcWrapDrmStore"

    const-string v8, " @@@@@     addDrmFileWithoutRights (1)-(3)-(2) -END"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 2489
    const/16 v53, 0x0

    .line 3388
    .end local v53           #intent:Landroid/content/Intent;
    if-eqz v46, :cond_1

    .line 3389
    :try_start_4
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 3391
    :catch_1
    move-exception v38

    .line 3393
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "HtcWrapDrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 2492
    .end local v38           #e:Ljava/lang/Exception;
    .restart local v53       #intent:Landroid/content/Intent;
    :cond_c
    :try_start_5
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, v65

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2494
    .local v5, binaryFile:Ljava/io/File;
    const/4 v4, 0x1

    const/4 v8, 0x0

    invoke-virtual {v5, v4, v8}, Ljava/io/File;->setWritable(ZZ)Z

    .line 2495
    const/4 v4, 0x1

    const/4 v8, 0x0

    invoke-virtual {v5, v4, v8}, Ljava/io/File;->setReadable(ZZ)Z

    .line 2496
    const/4 v4, 0x1

    const/4 v8, 0x0

    invoke-virtual {v5, v4, v8}, Ljava/io/File;->setExecutable(ZZ)Z

    move-object/from16 v4, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    .line 2498
    invoke-static/range {v4 .. v9}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->addDrmFileWithoutRights(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .end local v6           #cr:Landroid/content/ContentResolver;
    move-result-object v71

    .line 2502
    .local v71, resultIntent:Landroid/content/Intent;
    :try_start_6
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 2503
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 3388
    :cond_d
    :goto_4
    if-eqz v46, :cond_e

    .line 3389
    :try_start_7
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1c

    :cond_e
    :goto_5
    move-object/from16 v53, v71

    .line 2511
    goto/16 :goto_0

    .line 2505
    :catch_2
    move-exception v38

    .line 2506
    .restart local v38       #e:Ljava/lang/Exception;
    :try_start_8
    const-string v4, "HtcWrapDrmStore"

    const-string v8, " @@@@@  ERROR: delete temp files FAILED!!!"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2507
    const-string v4, "HtcWrapDrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2508
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_4

    .line 3376
    .end local v5           #binaryFile:Ljava/io/File;
    .end local v20           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v38           #e:Ljava/lang/Exception;
    .end local v65           #outputBinaryFilePath:Ljava/lang/String;
    .end local v71           #resultIntent:Landroid/content/Intent;
    .end local v87           #transferEncoding:I
    :catch_3
    move-exception v38

    move-object/from16 v45, v46

    .line 3382
    .end local v46           #fin:Ljava/io/FileInputStream;
    .restart local v38       #e:Ljava/lang/Exception;
    .restart local v45       #fin:Ljava/io/FileInputStream;
    :goto_6
    :try_start_9
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 3384
    const/16 v53, 0x0

    .line 3388
    .end local v53           #intent:Landroid/content/Intent;
    if-eqz v45, :cond_1

    .line 3389
    :try_start_a
    invoke-virtual/range {v45 .. v45}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_0

    .line 3391
    :catch_4
    move-exception v38

    .line 3393
    const-string v4, "HtcWrapDrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 2515
    .end local v38           #e:Ljava/lang/Exception;
    .end local v45           #fin:Ljava/io/FileInputStream;
    .restart local v6       #cr:Landroid/content/ContentResolver;
    .restart local v20       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v46       #fin:Ljava/io/FileInputStream;
    .restart local v53       #intent:Landroid/content/Intent;
    .restart local v87       #transferEncoding:I
    :cond_f
    :try_start_b
    invoke-virtual/range {v20 .. v20}, Landroid/drm/mobile1/DrmRawContent;->getContentType()Ljava/lang/String;

    move-result-object v60

    .line 2517
    .local v60, mimeType:Ljava/lang/String;
    const-string v4, "HtcWrapDrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mimeType = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v60

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2520
    invoke-virtual/range {v20 .. v20}, Landroid/drm/mobile1/DrmRawContent;->getRawType()I

    move-result v59

    .line 2522
    .local v59, method:I
    const-string v4, "HtcWrapDrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "method = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v59

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2525
    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/drm/mobile1/DrmRawContent;->getContentOffset(Landroid/drm/mobile1/DrmRights;)I

    move-result v21

    .line 2532
    .local v21, contentOffset:I
    const-string v4, "video"

    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10

    const-string v4, "audio"

    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    :cond_10
    const/4 v4, 0x1

    move/from16 v0, v59

    if-eq v0, v4, :cond_11

    const/4 v4, 0x2

    move/from16 v0, v59

    if-ne v0, v4, :cond_24

    .line 2535
    :cond_11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0x2e

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v60 .. v60}, Landroid/media/MediaFile;->getExtensionForMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    .line 2540
    .local v40, extention:Ljava/lang/String;
    new-instance v64, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/data/data/com.android.providers.drm/rights/DRM"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v64

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 2547
    .local v64, outFile:Ljava/io/File;
    const/16 v47, 0x0

    .line 2548
    .local v47, fis:Ljava/io/FileInputStream;
    const/16 v49, 0x0

    .line 2550
    .local v49, fis2:Ljava/io/FileInputStream;
    const/16 v51, 0x0

    .line 2551
    .local v51, fos:Ljava/io/FileOutputStream;
    const/16 v55, 0x0

    .line 2552
    .local v55, is:Ljava/io/InputStream;
    const/16 v56, 0x0

    .line 2559
    .local v56, isTerminated:Z
    :try_start_c
    new-instance v48, Ljava/io/FileInputStream;

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    .line 2568
    .end local v47           #fis:Ljava/io/FileInputStream;
    .local v48, fis:Ljava/io/FileInputStream;
    :try_start_d
    new-instance v80, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {v48 .. v48}, Ljava/io/FileInputStream;->available()I

    move-result v4

    move-object/from16 v0, v80

    move-object/from16 v1, v48

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v4, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 2572
    .local v80, tempContent:Landroid/drm/mobile1/DrmRawContent;
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v57

    .line 2573
    .local v57, manager:Landroid/drm/mobile1/DrmRightsManager;
    move-object/from16 v0, v57

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v73

    .line 2578
    .local v73, rights:Landroid/drm/mobile1/DrmRights;
    const/16 v27, 0x0

    .line 2579
    .local v27, deleteRights:Z
    if-nez v73, :cond_65

    const/4 v4, 0x2

    move/from16 v0, v59

    if-ne v0, v4, :cond_65

    .line 2597
    if-eqz v48, :cond_12

    .line 2598
    invoke-virtual/range {v48 .. v48}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1f

    .line 2599
    const/16 v47, 0x0

    .end local v48           #fis:Ljava/io/FileInputStream;
    .restart local v47       #fis:Ljava/io/FileInputStream;
    move-object/from16 v48, v47

    .line 2601
    .end local v47           #fis:Ljava/io/FileInputStream;
    .restart local v48       #fis:Ljava/io/FileInputStream;
    :try_start_e
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_d
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    .line 2604
    :cond_12
    :try_start_f
    new-instance v47, Ljava/io/FileInputStream;

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_e
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1f

    .line 2608
    .end local v48           #fis:Ljava/io/FileInputStream;
    .restart local v47       #fis:Ljava/io/FileInputStream;
    :try_start_10
    invoke-virtual/range {v47 .. v47}, Ljava/io/FileInputStream;->available()I

    move-result v4

    move-object/from16 v0, v57

    move-object/from16 v1, v47

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v4, v2}, Landroid/drm/mobile1/DrmRightsManager;->installRights(Ljava/io/InputStream;ILjava/lang/String;)Landroid/drm/mobile1/DrmRights;

    move-result-object v73

    .line 2610
    const/16 v27, 0x1

    .line 2616
    :goto_7
    if-eqz v47, :cond_13

    .line 2617
    invoke-virtual/range {v47 .. v47}, Ljava/io/FileInputStream;->close()V

    .line 2618
    const/16 v47, 0x0

    .line 2622
    :cond_13
    if-eqz v73, :cond_1c

    .line 2629
    new-instance v50, Ljava/io/FileInputStream;

    move-object/from16 v0, v50

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6

    .line 2630
    .end local v49           #fis2:Ljava/io/FileInputStream;
    .local v50, fis2:Ljava/io/FileInputStream;
    :try_start_11
    new-instance v80, Landroid/drm/mobile1/DrmRawContent;

    .end local v80           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    invoke-virtual/range {v50 .. v50}, Ljava/io/FileInputStream;->available()I

    move-result v4

    move-object/from16 v0, v80

    move-object/from16 v1, v50

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v4, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 2634
    .restart local v80       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    move-object/from16 v0, v80

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRawContent;->getContentInputStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;

    move-result-object v55

    .line 2635
    new-instance v52, Ljava/io/FileOutputStream;

    move-object/from16 v0, v52

    move-object/from16 v1, v64

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_f
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_20

    .line 2637
    .end local v51           #fos:Ljava/io/FileOutputStream;
    .local v52, fos:Ljava/io/FileOutputStream;
    :try_start_12
    move-object/from16 v0, v55

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->saveFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)I

    .line 2639
    if-eqz v27, :cond_14

    .line 2640
    move-object/from16 v0, v57

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRightsManager;->deleteRights(Landroid/drm/mobile1/DrmRights;)V

    .line 2645
    :cond_14
    sget-object v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->CMD_CHMOD:[Ljava/lang/String;

    const/4 v8, 0x2

    invoke-virtual/range {v64 .. v64}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v8

    .line 2646
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    sget-object v8, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->CMD_CHMOD:[Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    .line 2648
    new-instance v58, Landroid/media/MediaInfo;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/media/MediaInfo;-><init>(Landroid/content/Context;)V

    .line 2649
    .local v58, mediaInfo:Landroid/media/MediaInfo;
    invoke-virtual/range {v64 .. v64}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v58

    invoke-virtual {v0, v4}, Landroid/media/MediaInfo;->getFileType(Ljava/lang/String;)I

    move-result v88

    .line 2650
    .local v88, type:I
    const/4 v4, 0x1

    move/from16 v0, v88

    if-ne v0, v4, :cond_1b

    .line 2651
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "audio/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/"

    move-object/from16 v0, v60

    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, v60

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    .line 2660
    :cond_15
    :goto_8
    const-string v4, "HtcWrapDrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MIME type by MediaInfo: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v60

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_10
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_21

    move-object/from16 v51, v52

    .end local v52           #fos:Ljava/io/FileOutputStream;
    .restart local v51       #fos:Ljava/io/FileOutputStream;
    move-object/from16 v49, v50

    .line 2669
    .end local v50           #fis2:Ljava/io/FileInputStream;
    .end local v58           #mediaInfo:Landroid/media/MediaInfo;
    .end local v88           #type:I
    .restart local v49       #fis2:Ljava/io/FileInputStream;
    :goto_9
    if-eqz v51, :cond_16

    .line 2670
    :try_start_13
    invoke-virtual/range {v51 .. v51}, Ljava/io/FileOutputStream;->close()V

    .line 2671
    const/16 v51, 0x0

    .line 2673
    :cond_16
    if-eqz v55, :cond_17

    .line 2674
    invoke-virtual/range {v55 .. v55}, Ljava/io/InputStream;->close()V

    .line 2675
    const/16 v55, 0x0

    .line 2684
    :cond_17
    if-eqz v47, :cond_18

    .line 2685
    invoke-virtual/range {v47 .. v47}, Ljava/io/FileInputStream;->close()V

    .line 2686
    const/16 v47, 0x0

    .line 2688
    :cond_18
    if-eqz v49, :cond_19

    .line 2689
    invoke-virtual/range {v49 .. v49}, Ljava/io/FileInputStream;->close()V

    .line 2690
    const/16 v49, 0x0

    .line 2693
    :cond_19
    invoke-virtual/range {v64 .. v64}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 2694
    invoke-virtual/range {v64 .. v64}, Ljava/io/File;->delete()Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_3

    .line 2696
    :cond_1a
    if-eqz v56, :cond_24

    .line 2697
    const/16 v53, 0x0

    .line 3388
    .end local v53           #intent:Landroid/content/Intent;
    if-eqz v46, :cond_1

    .line 3389
    :try_start_14
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_5

    goto/16 :goto_0

    .line 3391
    :catch_5
    move-exception v38

    .line 3393
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "HtcWrapDrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 2653
    .end local v38           #e:Ljava/lang/Exception;
    .end local v49           #fis2:Ljava/io/FileInputStream;
    .end local v51           #fos:Ljava/io/FileOutputStream;
    .restart local v50       #fis2:Ljava/io/FileInputStream;
    .restart local v52       #fos:Ljava/io/FileOutputStream;
    .restart local v53       #intent:Landroid/content/Intent;
    .restart local v58       #mediaInfo:Landroid/media/MediaInfo;
    .restart local v88       #type:I
    :cond_1b
    const/4 v4, 0x2

    move/from16 v0, v88

    if-ne v0, v4, :cond_15

    .line 2654
    :try_start_15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "video/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/"

    move-object/from16 v0, v60

    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, v60

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_10
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_21

    move-result-object v60

    goto :goto_8

    .line 2663
    .end local v50           #fis2:Ljava/io/FileInputStream;
    .end local v52           #fos:Ljava/io/FileOutputStream;
    .end local v58           #mediaInfo:Landroid/media/MediaInfo;
    .end local v88           #type:I
    .restart local v49       #fis2:Ljava/io/FileInputStream;
    .restart local v51       #fos:Ljava/io/FileOutputStream;
    :cond_1c
    :try_start_16
    const-string v4, "HtcWrapDrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MIME type from DRM header: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v60

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_d
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_6

    goto :goto_9

    .line 2665
    .end local v27           #deleteRights:Z
    .end local v47           #fis:Ljava/io/FileInputStream;
    .end local v57           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v73           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v80           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    :catch_6
    move-exception v38

    .line 2666
    .restart local v38       #e:Ljava/lang/Exception;
    :goto_a
    :try_start_17
    const-string v4, "HtcWrapDrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_d

    .line 2667
    const/16 v56, 0x1

    .line 2669
    if-eqz v51, :cond_1d

    .line 2670
    :try_start_18
    invoke-virtual/range {v51 .. v51}, Ljava/io/FileOutputStream;->close()V

    .line 2671
    const/16 v51, 0x0

    .line 2673
    :cond_1d
    if-eqz v55, :cond_1e

    .line 2674
    invoke-virtual/range {v55 .. v55}, Ljava/io/InputStream;->close()V

    .line 2675
    const/16 v55, 0x0

    .line 2684
    :cond_1e
    if-eqz v47, :cond_1f

    .line 2685
    invoke-virtual/range {v47 .. v47}, Ljava/io/FileInputStream;->close()V

    .line 2686
    const/16 v47, 0x0

    .line 2688
    :cond_1f
    if-eqz v49, :cond_20

    .line 2689
    invoke-virtual/range {v49 .. v49}, Ljava/io/FileInputStream;->close()V

    .line 2690
    const/16 v49, 0x0

    .line 2693
    :cond_20
    invoke-virtual/range {v64 .. v64}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 2694
    invoke-virtual/range {v64 .. v64}, Ljava/io/File;->delete()Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_3

    .line 2696
    :cond_21
    if-eqz v56, :cond_24

    .line 2697
    const/16 v53, 0x0

    .line 3388
    .end local v53           #intent:Landroid/content/Intent;
    if-eqz v46, :cond_1

    .line 3389
    :try_start_19
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_7

    goto/16 :goto_0

    .line 3391
    :catch_7
    move-exception v38

    .line 3393
    const-string v4, "HtcWrapDrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 2669
    .end local v38           #e:Ljava/lang/Exception;
    .restart local v53       #intent:Landroid/content/Intent;
    :cond_22
    :try_start_1a
    throw v4
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_3

    .line 3387
    .end local v6           #cr:Landroid/content/ContentResolver;
    .end local v20           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v21           #contentOffset:I
    .end local v40           #extention:Ljava/lang/String;
    .end local v49           #fis2:Ljava/io/FileInputStream;
    .end local v51           #fos:Ljava/io/FileOutputStream;
    .end local v55           #is:Ljava/io/InputStream;
    .end local v56           #isTerminated:Z
    .end local v59           #method:I
    .end local v60           #mimeType:Ljava/lang/String;
    .end local v64           #outFile:Ljava/io/File;
    .end local v87           #transferEncoding:I
    :catchall_0
    move-exception v4

    move-object/from16 v45, v46

    .line 3388
    .end local v46           #fin:Ljava/io/FileInputStream;
    .restart local v45       #fin:Ljava/io/FileInputStream;
    :goto_b
    if-eqz v45, :cond_23

    .line 3389
    :try_start_1b
    invoke-virtual/range {v45 .. v45}, Ljava/io/FileInputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_1b

    .line 3387
    :cond_23
    :goto_c
    throw v4

    .line 2703
    .end local v45           #fin:Ljava/io/FileInputStream;
    .restart local v6       #cr:Landroid/content/ContentResolver;
    .restart local v20       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v21       #contentOffset:I
    .restart local v46       #fin:Ljava/io/FileInputStream;
    .restart local v59       #method:I
    .restart local v60       #mimeType:Ljava/lang/String;
    .restart local v87       #transferEncoding:I
    :cond_24
    :try_start_1c
    const-string v22, ""

    .line 2705
    .local v22, contentUid:Ljava/lang/String;
    const/4 v7, 0x0

    .line 2708
    .local v7, contentUri:Landroid/net/Uri;
    const-string v4, "audio/"

    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 2709
    sget-object v7, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    .line 2725
    :goto_d
    const/16 v36, 0x0

    .line 2726
    .local v36, duplicate:Z
    const/16 v66, 0x0

    .line 2727
    .local v66, overwrite:Z
    const/16 v89, 0x0

    .line 2729
    .local v89, uri:Landroid/net/Uri;
    sget-object v8, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->TITLE_PROJECTION:[Ljava/lang/String;

    const-string v9, "content_url=?"

    const/4 v4, 0x1

    new-array v10, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p4, v10, v4

    const-string v11, "_id"

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 2730
    .local v15, c:Landroid/database/Cursor;
    if-eqz v15, :cond_64

    .line 2731
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_63

    .line 2735
    const-string v4, "HtcWrapDrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " duplicated."

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2737
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2738
    const-string v4, "_id"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 2739
    .local v19, columnIdIndex:I
    move/from16 v0, v19

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 2740
    .local v18, columnId:I
    const-string v4, "_data"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v44

    .line 2741
    .local v44, filePathIndex:I
    move/from16 v0, v44

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v43

    .line 2742
    .local v43, filePath:Ljava/lang/String;
    const-string v4, "title"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v86

    .line 2743
    .local v86, titleInddex:I
    move/from16 v0, v86

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 2744
    .local v35, dup_title:Ljava/lang/String;
    const/16 v34, 0x0

    .line 2746
    .local v34, downloadPath:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v89

    .line 2747
    new-instance v54, Landroid/content/Intent;

    invoke-direct/range {v54 .. v54}, Landroid/content/Intent;-><init>()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_3

    .line 2748
    .end local v53           #intent:Landroid/content/Intent;
    .local v54, intent:Landroid/content/Intent;
    :try_start_1d
    move-object/from16 v0, v54

    move-object/from16 v1, v89

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2750
    const-string v4, "HtcWrapDrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dup_title:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v35

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2752
    const-string v4, "title"

    move-object/from16 v0, v54

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2753
    const/16 v36, 0x1

    .line 2759
    const-string v4, "HtcWrapDrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Check file path: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v43

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2762
    new-instance v41, Ljava/io/File;

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2763
    .local v41, f:Ljava/io/File;
    invoke-virtual/range {v41 .. v41}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v42

    .line 2764
    invoke-virtual/range {v41 .. v41}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 2765
    invoke-virtual/range {v41 .. v41}, Ljava/io/File;->delete()Z

    .line 2769
    :cond_25
    const/4 v4, 0x7

    move/from16 v0, p5

    if-ne v0, v4, :cond_2d

    .line 2779
    invoke-static {}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getInternalStorageDownloadPath()Ljava/lang/String;

    move-result-object v34

    .line 2781
    if-eqz v34, :cond_26

    const-string v4, ""

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 2782
    :cond_26
    const-string v4, "HtcWrapDrmStore"

    const-string v8, " @@@@@ internal download path doesn\'t exist!"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2784
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_c

    .line 2785
    const/16 v53, 0x0

    .line 3388
    if-eqz v46, :cond_1

    .line 3389
    :try_start_1e
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_8

    goto/16 :goto_0

    .line 3391
    :catch_8
    move-exception v38

    .line 3393
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "HtcWrapDrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 2710
    .end local v15           #c:Landroid/database/Cursor;
    .end local v18           #columnId:I
    .end local v19           #columnIdIndex:I
    .end local v34           #downloadPath:Ljava/lang/String;
    .end local v35           #dup_title:Ljava/lang/String;
    .end local v36           #duplicate:Z
    .end local v38           #e:Ljava/lang/Exception;
    .end local v41           #f:Ljava/io/File;
    .end local v43           #filePath:Ljava/lang/String;
    .end local v44           #filePathIndex:I
    .end local v54           #intent:Landroid/content/Intent;
    .end local v66           #overwrite:Z
    .end local v86           #titleInddex:I
    .end local v89           #uri:Landroid/net/Uri;
    .restart local v53       #intent:Landroid/content/Intent;
    :cond_27
    :try_start_1f
    const-string v4, "image/"

    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 2711
    sget-object v7, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_d

    .line 2712
    :cond_28
    const-string v4, "video/"

    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 2713
    sget-object v7, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_d

    .line 2714
    :cond_29
    const-string v4, "application/java-archive"

    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 2715
    sget-object v7, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_d

    .line 2718
    :cond_2a
    const-string v4, "HtcWrapDrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unsupported mime type "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v60

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2720
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_3

    .line 2721
    const/16 v53, 0x0

    .line 3388
    .end local v53           #intent:Landroid/content/Intent;
    if-eqz v46, :cond_1

    .line 3389
    :try_start_20
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_9

    goto/16 :goto_0

    .line 3391
    :catch_9
    move-exception v38

    .line 3393
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "HtcWrapDrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 2788
    .end local v38           #e:Ljava/lang/Exception;
    .restart local v15       #c:Landroid/database/Cursor;
    .restart local v18       #columnId:I
    .restart local v19       #columnIdIndex:I
    .restart local v34       #downloadPath:Ljava/lang/String;
    .restart local v35       #dup_title:Ljava/lang/String;
    .restart local v36       #duplicate:Z
    .restart local v41       #f:Ljava/io/File;
    .restart local v43       #filePath:Ljava/lang/String;
    .restart local v44       #filePathIndex:I
    .restart local v54       #intent:Landroid/content/Intent;
    .restart local v66       #overwrite:Z
    .restart local v86       #titleInddex:I
    .restart local v89       #uri:Landroid/net/Uri;
    :cond_2b
    :try_start_21
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    .line 2824
    :goto_e
    const-string v4, "HtcWrapDrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Saved file path: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v43

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2830
    new-instance v41, Ljava/io/File;

    .end local v41           #f:Ljava/io/File;
    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2831
    .restart local v41       #f:Ljava/io/File;
    invoke-virtual/range {v41 .. v41}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 2833
    const-string v4, "HtcWrapDrmStore"

    const-string v8, "File exists, use a new name"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2835
    const-string v4, "."

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v39

    .line 2836
    .local v39, ext:I
    const/16 v69, 0x0

    .line 2837
    .local v69, prefix:Ljava/lang/String;
    const/16 v79, 0x0

    .line 2838
    .local v79, suffix:Ljava/lang/String;
    if-lez v39, :cond_30

    .line 2839
    const/4 v4, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v39

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v69

    .line 2840
    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, v42

    move/from16 v1, v39

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v79

    .line 2845
    :goto_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v69

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "---"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v41 .. v41}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    move-object/from16 v0, v79

    invoke-static {v4, v0, v8}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v61

    .line 2847
    .local v61, newFile:Ljava/io/File;
    invoke-virtual/range {v61 .. v61}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v43

    .line 2849
    const-string v4, "HtcWrapDrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "New file path: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v43

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2854
    .end local v39           #ext:I
    .end local v61           #newFile:Ljava/io/File;
    .end local v69           #prefix:Ljava/lang/String;
    .end local v79           #suffix:Ljava/lang/String;
    :cond_2c
    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    .line 2856
    .local v26, cv:Landroid/content/ContentValues;
    sget-object v9, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    sget-object v10, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "_id"

    move-object v8, v6

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v76

    .line 2858
    .local v76, stampCursor:Landroid/database/Cursor;
    if-eqz v76, :cond_32

    .line 2859
    invoke-interface/range {v76 .. v76}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 2865
    const-string v4, "time_differential"

    move-object/from16 v0, v76

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v31

    .line 2867
    .local v31, differentialColumnId:I
    move-object/from16 v0, v76

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    .line 2868
    .local v29, differential:J
    const-string v4, "timezone_stamp"

    move-object/from16 v0, v76

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v84

    .line 2869
    .local v84, timeZoneColumnIndex:I
    move-object/from16 v0, v76

    move/from16 v1, v84

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v82

    .line 2870
    .local v82, timeZone:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 2871
    .local v24, currentClock:J
    const-string v4, "date_modified"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2872
    const-string v4, "date_added"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2877
    .end local v24           #currentClock:J
    .end local v29           #differential:J
    .end local v31           #differentialColumnId:I
    .end local v82           #timeZone:J
    .end local v84           #timeZoneColumnIndex:I
    :goto_10
    invoke-interface/range {v76 .. v76}, Landroid/database/Cursor;->close()V

    .line 2883
    :goto_11
    const/16 v66, 0x1

    .line 2885
    const-string v4, "existence"

    const-string v8, "exist"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2887
    const-string v4, "_data"

    move-object/from16 v0, v26

    move-object/from16 v1, v43

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2894
    const-string v4, "/"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v74

    .line 2895
    .local v74, slashPos:I
    add-int/lit8 v4, v74, 0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v33

    .line 2897
    .local v33, downloadName:Ljava/lang/String;
    const-string v4, "bucket_display_name"

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2900
    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v89

    move-object/from16 v1, v26

    invoke-virtual {v6, v0, v1, v4, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_c

    move-object/from16 v9, v89

    .end local v89           #uri:Landroid/net/Uri;
    .local v9, uri:Landroid/net/Uri;
    move-object/from16 v53, v54

    .line 2902
    .end local v18           #columnId:I
    .end local v19           #columnIdIndex:I
    .end local v26           #cv:Landroid/content/ContentValues;
    .end local v33           #downloadName:Ljava/lang/String;
    .end local v34           #downloadPath:Ljava/lang/String;
    .end local v35           #dup_title:Ljava/lang/String;
    .end local v41           #f:Ljava/io/File;
    .end local v43           #filePath:Ljava/lang/String;
    .end local v44           #filePathIndex:I
    .end local v54           #intent:Landroid/content/Intent;
    .end local v74           #slashPos:I
    .end local v76           #stampCursor:Landroid/database/Cursor;
    .end local v86           #titleInddex:I
    .restart local v53       #intent:Landroid/content/Intent;
    :goto_12
    :try_start_22
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 2904
    if-eqz v36, :cond_33

    if-nez v66, :cond_33

    .line 2906
    const-string v4, "HtcWrapDrmStore"

    const-string v8, "File is duplicated and exist."

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2908
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_3

    .line 3388
    if-eqz v46, :cond_1

    .line 3389
    :try_start_23
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_a

    goto/16 :goto_0

    .line 3391
    :catch_a
    move-exception v38

    .line 3393
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "HtcWrapDrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 2810
    .end local v9           #uri:Landroid/net/Uri;
    .end local v38           #e:Ljava/lang/Exception;
    .end local v53           #intent:Landroid/content/Intent;
    .restart local v18       #columnId:I
    .restart local v19       #columnIdIndex:I
    .restart local v34       #downloadPath:Ljava/lang/String;
    .restart local v35       #dup_title:Ljava/lang/String;
    .restart local v41       #f:Ljava/io/File;
    .restart local v43       #filePath:Ljava/lang/String;
    .restart local v44       #filePathIndex:I
    .restart local v54       #intent:Landroid/content/Intent;
    .restart local v86       #titleInddex:I
    .restart local v89       #uri:Landroid/net/Uri;
    :cond_2d
    :try_start_24
    invoke-static {}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getExternalStorageDownloadPath()Ljava/lang/String;

    move-result-object v34

    .line 2812
    if-eqz v34, :cond_2e

    const-string v4, ""

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 2813
    :cond_2e
    const-string v4, "HtcWrapDrmStore"

    const-string v8, " @@@@@ external download path doesn\'t exist!"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2815
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_c

    .line 2816
    const/16 v53, 0x0

    .line 3388
    if-eqz v46, :cond_1

    .line 3389
    :try_start_25
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_b

    goto/16 :goto_0

    .line 3391
    :catch_b
    move-exception v38

    .line 3393
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "HtcWrapDrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 2819
    .end local v38           #e:Ljava/lang/Exception;
    :cond_2f
    :try_start_26
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    goto/16 :goto_e

    .line 2842
    .restart local v39       #ext:I
    .restart local v69       #prefix:Ljava/lang/String;
    .restart local v79       #suffix:Ljava/lang/String;
    :cond_30
    move-object/from16 v69, v42

    .line 2843
    const-string v79, ""

    goto/16 :goto_f

    .line 2874
    .end local v39           #ext:I
    .end local v69           #prefix:Ljava/lang/String;
    .end local v79           #suffix:Ljava/lang/String;
    .restart local v26       #cv:Landroid/content/ContentValues;
    .restart local v76       #stampCursor:Landroid/database/Cursor;
    :cond_31
    const-string v4, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2875
    const-string v4, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_10

    .line 3376
    .end local v18           #columnId:I
    .end local v19           #columnIdIndex:I
    .end local v26           #cv:Landroid/content/ContentValues;
    .end local v34           #downloadPath:Ljava/lang/String;
    .end local v35           #dup_title:Ljava/lang/String;
    .end local v41           #f:Ljava/io/File;
    .end local v43           #filePath:Ljava/lang/String;
    .end local v44           #filePathIndex:I
    .end local v76           #stampCursor:Landroid/database/Cursor;
    .end local v86           #titleInddex:I
    .end local v89           #uri:Landroid/net/Uri;
    :catch_c
    move-exception v38

    move-object/from16 v45, v46

    .end local v46           #fin:Ljava/io/FileInputStream;
    .restart local v45       #fin:Ljava/io/FileInputStream;
    move-object/from16 v53, v54

    .end local v54           #intent:Landroid/content/Intent;
    .restart local v53       #intent:Landroid/content/Intent;
    goto/16 :goto_6

    .line 2879
    .end local v45           #fin:Ljava/io/FileInputStream;
    .end local v53           #intent:Landroid/content/Intent;
    .restart local v18       #columnId:I
    .restart local v19       #columnIdIndex:I
    .restart local v26       #cv:Landroid/content/ContentValues;
    .restart local v34       #downloadPath:Ljava/lang/String;
    .restart local v35       #dup_title:Ljava/lang/String;
    .restart local v41       #f:Ljava/io/File;
    .restart local v43       #filePath:Ljava/lang/String;
    .restart local v44       #filePathIndex:I
    .restart local v46       #fin:Ljava/io/FileInputStream;
    .restart local v54       #intent:Landroid/content/Intent;
    .restart local v76       #stampCursor:Landroid/database/Cursor;
    .restart local v86       #titleInddex:I
    .restart local v89       #uri:Landroid/net/Uri;
    :cond_32
    const-string v4, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2880
    const-string v4, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_c

    goto/16 :goto_11

    .line 3387
    .end local v18           #columnId:I
    .end local v19           #columnIdIndex:I
    .end local v26           #cv:Landroid/content/ContentValues;
    .end local v34           #downloadPath:Ljava/lang/String;
    .end local v35           #dup_title:Ljava/lang/String;
    .end local v41           #f:Ljava/io/File;
    .end local v43           #filePath:Ljava/lang/String;
    .end local v44           #filePathIndex:I
    .end local v76           #stampCursor:Landroid/database/Cursor;
    .end local v86           #titleInddex:I
    .end local v89           #uri:Landroid/net/Uri;
    :catchall_1
    move-exception v4

    move-object/from16 v45, v46

    .end local v46           #fin:Ljava/io/FileInputStream;
    .restart local v45       #fin:Ljava/io/FileInputStream;
    move-object/from16 v53, v54

    .end local v54           #intent:Landroid/content/Intent;
    .restart local v53       #intent:Landroid/content/Intent;
    goto/16 :goto_b

    .line 2910
    .end local v45           #fin:Ljava/io/FileInputStream;
    .restart local v9       #uri:Landroid/net/Uri;
    .restart local v46       #fin:Ljava/io/FileInputStream;
    :cond_33
    if-eqz v36, :cond_44

    if-eqz v66, :cond_44

    .line 2912
    :try_start_27
    const-string v4, "HtcWrapDrmStore"

    const-string v8, "Overwrite the file."

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2917
    invoke-static {v6, v9}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v37

    .line 2918
    .local v37, duplicatePath:Ljava/lang/String;
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2919
    .local v17, checkFile:Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_34

    .line 2920
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 2925
    :cond_34
    invoke-static/range {v60 .. v60}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->NeedToEncrypt(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_35

    const/4 v4, 0x3

    move/from16 v0, v59

    if-ne v0, v4, :cond_39

    .line 2928
    :cond_35
    new-instance v77, Ljava/io/FileInputStream;

    move-object/from16 v0, v77

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2931
    .local v77, stream:Ljava/io/FileInputStream;
    new-instance v63, Ljava/io/FileOutputStream;

    move-object/from16 v0, v63

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 2932
    .local v63, os:Ljava/io/FileOutputStream;
    if-nez v63, :cond_38

    .line 2933
    invoke-virtual/range {v77 .. v77}, Ljava/io/FileInputStream;->close()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_3

    .line 3054
    .end local v63           #os:Ljava/io/FileOutputStream;
    .end local v77           #stream:Ljava/io/FileInputStream;
    :cond_36
    :goto_13
    :try_start_28
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_e

    move-object/from16 v45, v46

    .line 3065
    .end local v46           #fin:Ljava/io/FileInputStream;
    .restart local v45       #fin:Ljava/io/FileInputStream;
    :goto_14
    :try_start_29
    const-string v4, "audio"

    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 3066
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, v60

    invoke-static {v0, v1, v2, v3, v9}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->parseAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/ContentValues;
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_10

    .line 3388
    :cond_37
    :goto_15
    if-eqz v45, :cond_1

    .line 3389
    :try_start_2a
    invoke-virtual/range {v45 .. v45}, Ljava/io/FileInputStream;->close()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_d

    goto/16 :goto_0

    .line 3391
    :catch_d
    move-exception v38

    .line 3393
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "HtcWrapDrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 2936
    .end local v38           #e:Ljava/lang/Exception;
    .end local v45           #fin:Ljava/io/FileInputStream;
    .restart local v46       #fin:Ljava/io/FileInputStream;
    .restart local v63       #os:Ljava/io/FileOutputStream;
    .restart local v77       #stream:Ljava/io/FileInputStream;
    :cond_38
    :try_start_2b
    move-object/from16 v0, v77

    move-object/from16 v1, v63

    invoke-static {v0, v1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->saveFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)I
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_2

    .line 2938
    :try_start_2c
    invoke-virtual/range {v77 .. v77}, Ljava/io/FileInputStream;->close()V

    .line 2939
    invoke-virtual/range {v63 .. v63}, Ljava/io/FileOutputStream;->close()V

    goto :goto_13

    .line 2938
    :catchall_2
    move-exception v4

    invoke-virtual/range {v77 .. v77}, Ljava/io/FileInputStream;->close()V

    .line 2939
    invoke-virtual/range {v63 .. v63}, Ljava/io/FileOutputStream;->close()V

    .line 2938
    throw v4

    .line 2942
    .end local v63           #os:Ljava/io/FileOutputStream;
    .end local v77           #stream:Ljava/io/FileInputStream;
    :cond_39
    const-string v4, "application/vnd.oma.drm.message"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 2944
    const/4 v4, 0x2

    move/from16 v0, v59

    if-ne v0, v4, :cond_3a

    .line 2954
    :cond_3a
    const-string v4, "ro.board.platform"

    const/4 v8, 0x0

    invoke-static {v4, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v67

    .line 2957
    .local v67, platform:Ljava/lang/String;
    if-eqz v67, :cond_3b

    const-string v4, ""

    move-object/from16 v0, v67

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 2958
    :cond_3b
    const/16 v68, 0x0

    .line 2963
    .local v68, platformLowerCase:Ljava/lang/String;
    :goto_16
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0x62

    if-eq v4, v8, :cond_3c

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0x42

    if-eq v4, v8, :cond_3c

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0x10

    if-eq v4, v8, :cond_3c

    if-eqz v68, :cond_42

    const-string v4, ""

    move-object/from16 v0, v68

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_42

    const-string v4, "msm7k"

    move-object/from16 v0, v68

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3c

    const-string v4, "7x27"

    move-object/from16 v0, v68

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 2978
    :cond_3c
    const-string v4, "HtcWrapDrmStore"

    const-string v8, " @@@@@ save Duplicate File for MSM7K case."

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_3

    .line 2982
    :try_start_2d
    new-instance v23, Ljava/io/File;

    move-object/from16 v0, v23

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2984
    .local v23, createFile:Ljava/io/File;
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_4

    move-result v4

    if-nez v4, :cond_3d

    .line 2986
    :try_start_2e
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->createNewFile()Z
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_18

    .line 2989
    const/16 v23, 0x0

    .line 2990
    :try_start_2f
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2994
    :cond_3d
    :goto_17
    const/16 v70, 0x0

    .line 2995
    .local v70, repeat:I
    const/16 v78, 0x0

    .line 2996
    .local v78, success:Z
    const/16 v72, 0x0

    .line 2998
    .local v72, resultSaveFile:I
    :goto_18
    const/4 v4, 0x3

    move/from16 v0, v70

    if-ge v0, v4, :cond_41

    .line 3000
    if-ltz v70, :cond_3f

    .line 3001
    new-instance v81, Ljava/io/FileInputStream;

    move-object/from16 v0, v81

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3002
    .local v81, tempFin:Ljava/io/FileInputStream;
    new-instance v80, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {v81 .. v81}, Ljava/io/FileInputStream;->available()I

    move-result v4

    move-object/from16 v0, v80

    move-object/from16 v1, v81

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v4, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 3005
    .restart local v80       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    move-object/from16 v0, p1

    move-object/from16 v1, v80

    move-object/from16 v2, v37

    invoke-static {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_4

    move-result v72

    .line 3008
    :try_start_30
    invoke-virtual/range {v81 .. v81}, Ljava/io/FileInputStream;->close()V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_19

    .line 3017
    .end local v80           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v81           #tempFin:Ljava/io/FileInputStream;
    :goto_19
    const/4 v4, -0x1

    move/from16 v0, v72

    if-ne v0, v4, :cond_40

    .line 3018
    add-int/lit8 v70, v70, 0x1

    goto :goto_18

    .line 2960
    .end local v23           #createFile:Ljava/io/File;
    .end local v68           #platformLowerCase:Ljava/lang/String;
    .end local v70           #repeat:I
    .end local v72           #resultSaveFile:I
    .end local v78           #success:Z
    :cond_3e
    :try_start_31
    invoke-virtual/range {v67 .. v67}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_3

    move-result-object v68

    .restart local v68       #platformLowerCase:Ljava/lang/String;
    goto/16 :goto_16

    .line 2989
    .restart local v23       #createFile:Ljava/io/File;
    :catchall_3
    move-exception v4

    const/16 v23, 0x0

    .line 2990
    :try_start_32
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2989
    throw v4
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_4

    .line 3029
    .end local v23           #createFile:Ljava/io/File;
    :catchall_4
    move-exception v4

    :try_start_33
    throw v4
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_3

    .line 3010
    .restart local v23       #createFile:Ljava/io/File;
    .restart local v70       #repeat:I
    .restart local v72       #resultSaveFile:I
    .restart local v78       #success:Z
    .restart local v80       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v81       #tempFin:Ljava/io/FileInputStream;
    :catchall_5
    move-exception v4

    :try_start_34
    throw v4

    .line 3014
    .end local v80           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v81           #tempFin:Ljava/io/FileInputStream;
    :cond_3f
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v37

    invoke-static {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_4

    move-result v72

    goto :goto_19

    .line 3021
    :cond_40
    const/16 v70, 0x3

    .line 3022
    const/16 v78, 0x1

    goto :goto_18

    .line 3026
    :cond_41
    if-nez v78, :cond_36

    .line 3027
    const/16 v53, 0x0

    goto/16 :goto_13

    .line 3033
    .end local v23           #createFile:Ljava/io/File;
    .end local v70           #repeat:I
    .end local v72           #resultSaveFile:I
    .end local v78           #success:Z
    :cond_42
    :try_start_35
    new-instance v63, Ljava/io/FileOutputStream;

    move-object/from16 v0, v63

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_3

    .line 3034
    .restart local v63       #os:Ljava/io/FileOutputStream;
    if-eqz v63, :cond_36

    .line 3040
    const/4 v4, -0x1

    :try_start_36
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v63

    invoke-static {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/io/FileOutputStream;)I
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_6

    move-result v8

    if-ne v4, v8, :cond_43

    .line 3042
    const/16 v53, 0x0

    .line 3046
    :cond_43
    :try_start_37
    invoke-virtual/range {v63 .. v63}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_13

    :catchall_6
    move-exception v4

    invoke-virtual/range {v63 .. v63}, Ljava/io/FileOutputStream;->close()V

    throw v4

    .line 3055
    .end local v63           #os:Ljava/io/FileOutputStream;
    .end local v67           #platform:Ljava/lang/String;
    .end local v68           #platformLowerCase:Ljava/lang/String;
    :catch_e
    move-exception v38

    .line 3056
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "HtcWrapDrmStore"

    const-string v8, " @@@@@  ERROR: close file failed!!! (addDrmFileWithoutRights)"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3057
    const-string v4, "HtcWrapDrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3058
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_3

    .line 3060
    const/16 v45, 0x0

    .line 3061
    .end local v46           #fin:Ljava/io/FileInputStream;
    .restart local v45       #fin:Ljava/io/FileInputStream;
    :try_start_38
    invoke-static {}, Ljava/lang/System;->gc()V

    goto/16 :goto_14

    .line 3376
    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v9           #uri:Landroid/net/Uri;
    .end local v15           #c:Landroid/database/Cursor;
    .end local v17           #checkFile:Ljava/io/File;
    .end local v20           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v21           #contentOffset:I
    .end local v22           #contentUid:Ljava/lang/String;
    .end local v36           #duplicate:Z
    .end local v37           #duplicatePath:Ljava/lang/String;
    .end local v38           #e:Ljava/lang/Exception;
    .end local v59           #method:I
    .end local v60           #mimeType:Ljava/lang/String;
    .end local v66           #overwrite:Z
    .end local v87           #transferEncoding:I
    :catch_f
    move-exception v38

    goto/16 :goto_6

    .line 3068
    .restart local v7       #contentUri:Landroid/net/Uri;
    .restart local v9       #uri:Landroid/net/Uri;
    .restart local v15       #c:Landroid/database/Cursor;
    .restart local v17       #checkFile:Ljava/io/File;
    .restart local v20       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v21       #contentOffset:I
    .restart local v22       #contentUid:Ljava/lang/String;
    .restart local v36       #duplicate:Z
    .restart local v37       #duplicatePath:Ljava/lang/String;
    .restart local v59       #method:I
    .restart local v60       #mimeType:Ljava/lang/String;
    .restart local v66       #overwrite:Z
    .restart local v87       #transferEncoding:I
    :catch_10
    move-exception v38

    .line 3070
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "HtcWrapDrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File duplicate parse Media: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_38} :catch_f

    goto/16 :goto_15

    .line 3387
    .end local v6           #cr:Landroid/content/ContentResolver;
    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v9           #uri:Landroid/net/Uri;
    .end local v15           #c:Landroid/database/Cursor;
    .end local v17           #checkFile:Ljava/io/File;
    .end local v20           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v21           #contentOffset:I
    .end local v22           #contentUid:Ljava/lang/String;
    .end local v36           #duplicate:Z
    .end local v37           #duplicatePath:Ljava/lang/String;
    .end local v38           #e:Ljava/lang/Exception;
    .end local v59           #method:I
    .end local v60           #mimeType:Ljava/lang/String;
    .end local v66           #overwrite:Z
    .end local v87           #transferEncoding:I
    :catchall_7
    move-exception v4

    goto/16 :goto_b

    .line 3076
    .end local v45           #fin:Ljava/io/FileInputStream;
    .restart local v6       #cr:Landroid/content/ContentResolver;
    .restart local v7       #contentUri:Landroid/net/Uri;
    .restart local v9       #uri:Landroid/net/Uri;
    .restart local v15       #c:Landroid/database/Cursor;
    .restart local v20       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v21       #contentOffset:I
    .restart local v22       #contentUid:Ljava/lang/String;
    .restart local v36       #duplicate:Z
    .restart local v46       #fin:Ljava/io/FileInputStream;
    .restart local v59       #method:I
    .restart local v60       #mimeType:Ljava/lang/String;
    .restart local v66       #overwrite:Z
    .restart local v87       #transferEncoding:I
    :cond_44
    :try_start_39
    const-string v4, "HtcWrapDrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Prepare to install: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_39} :catch_3

    move-object/from16 v54, v53

    .line 3082
    .end local v53           #intent:Landroid/content/Intent;
    .restart local v54       #intent:Landroid/content/Intent;
    :goto_1a
    :try_start_3a
    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    .line 3084
    .restart local v26       #cv:Landroid/content/ContentValues;
    const-string v4, "_size"

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3086
    const-string v4, "title"

    move-object/from16 v0, v26

    move-object/from16 v1, v42

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3088
    const-string v4, "mime_type"

    move-object/from16 v0, v26

    move-object/from16 v1, v60

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3089
    const-string v4, "message_type"

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3090
    const-string v4, "delivery_type"

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3091
    const-string v4, "content_offset"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3092
    const-string v4, "content_url"

    move-object/from16 v0, v26

    move-object/from16 v1, p4

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3095
    sget-object v9, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    .end local v9           #uri:Landroid/net/Uri;
    sget-object v10, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "_id"

    move-object v8, v6

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v76

    .line 3097
    .restart local v76       #stampCursor:Landroid/database/Cursor;
    if-eqz v76, :cond_46

    .line 3098
    invoke-interface/range {v76 .. v76}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_45

    .line 3104
    const-string v4, "time_differential"

    move-object/from16 v0, v76

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v31

    .line 3105
    .restart local v31       #differentialColumnId:I
    move-object/from16 v0, v76

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    .line 3106
    .restart local v29       #differential:J
    const-string v4, "timezone_stamp"

    move-object/from16 v0, v76

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v84

    .line 3107
    .restart local v84       #timeZoneColumnIndex:I
    move-object/from16 v0, v76

    move/from16 v1, v84

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v82

    .line 3108
    .restart local v82       #timeZone:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 3109
    .restart local v24       #currentClock:J
    const-string v4, "date_added"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3113
    .end local v24           #currentClock:J
    .end local v29           #differential:J
    .end local v31           #differentialColumnId:I
    .end local v82           #timeZone:J
    .end local v84           #timeZoneColumnIndex:I
    :goto_1b
    invoke-interface/range {v76 .. v76}, Landroid/database/Cursor;->close()V

    .line 3119
    :goto_1c
    const-string v4, "Destination"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3122
    move-object/from16 v0, v26

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    .line 3123
    .restart local v9       #uri:Landroid/net/Uri;
    if-nez v9, :cond_47

    .line 3125
    const-string v4, "HtcWrapDrmStore"

    const-string v8, "Insert to DRM db failed."

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3127
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3a} :catch_c

    .line 3128
    const/16 v53, 0x0

    .line 3388
    if-eqz v46, :cond_1

    .line 3389
    :try_start_3b
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3b} :catch_11

    goto/16 :goto_0

    .line 3391
    :catch_11
    move-exception v38

    .line 3393
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "HtcWrapDrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 3111
    .end local v9           #uri:Landroid/net/Uri;
    .end local v38           #e:Ljava/lang/Exception;
    :cond_45
    :try_start_3c
    const-string v4, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1b

    .line 3115
    :cond_46
    const-string v4, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1c

    .line 3130
    .restart local v9       #uri:Landroid/net/Uri;
    :cond_47
    const/4 v14, 0x0

    .line 3134
    .local v14, boundary_length:I
    invoke-static/range {v60 .. v60}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->NeedToEncrypt(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_48

    const/4 v4, 0x3

    move/from16 v0, v59

    if-ne v0, v4, :cond_4a

    .line 3136
    :cond_48
    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/drm/mobile1/DrmRawContent;->getContentId(Landroid/drm/mobile1/DrmRights;)Ljava/lang/String;

    move-result-object v22

    .line 3137
    new-instance v77, Ljava/io/FileInputStream;

    move-object/from16 v0, v77

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3140
    .restart local v77       #stream:Ljava/io/FileInputStream;
    new-instance v63, Ljava/io/FileOutputStream;

    invoke-static {v6, v9}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v63

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3c} :catch_c

    .line 3141
    .restart local v63       #os:Ljava/io/FileOutputStream;
    if-eqz v63, :cond_49

    .line 3143
    :try_start_3d
    move-object/from16 v0, v77

    move-object/from16 v1, v63

    invoke-static {v0, v1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->saveFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)I
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_8

    .line 3145
    :try_start_3e
    invoke-virtual/range {v63 .. v63}, Ljava/io/FileOutputStream;->close()V
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3e} :catch_c

    .line 3314
    .end local v63           #os:Ljava/io/FileOutputStream;
    .end local v77           #stream:Ljava/io/FileInputStream;
    :cond_49
    :goto_1d
    const/4 v4, -0x1

    if-ne v14, v4, :cond_58

    .line 3315
    const/16 v53, 0x0

    .line 3388
    if-eqz v46, :cond_1

    .line 3389
    :try_start_3f
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_12

    goto/16 :goto_0

    .line 3391
    :catch_12
    move-exception v38

    .line 3393
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "HtcWrapDrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 3145
    .end local v38           #e:Ljava/lang/Exception;
    .restart local v63       #os:Ljava/io/FileOutputStream;
    .restart local v77       #stream:Ljava/io/FileInputStream;
    :catchall_8
    move-exception v4

    :try_start_40
    invoke-virtual/range {v63 .. v63}, Ljava/io/FileOutputStream;->close()V

    throw v4

    .line 3148
    .end local v63           #os:Ljava/io/FileOutputStream;
    .end local v77           #stream:Ljava/io/FileInputStream;
    :cond_4a
    const/4 v4, 0x1

    move/from16 v0, v59

    if-ne v0, v4, :cond_50

    .line 3158
    sget-boolean v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->REBUILD_DATABASE:Z

    const/4 v8, 0x1

    if-ne v4, v8, :cond_4f

    .line 3160
    new-instance v75, Ljava/io/FileInputStream;

    move-object/from16 v0, v75

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3162
    .local v75, sourceFileInputStream:Ljava/io/FileInputStream;
    new-instance v28, Ljava/io/FileOutputStream;

    invoke-static {v6, v9}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_40} :catch_c

    .line 3165
    .local v28, destinationFileOutputStream:Ljava/io/FileOutputStream;
    if-eqz v28, :cond_49

    .line 3169
    :try_start_41
    move-object/from16 v0, v75

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->saveFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)I
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_9
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_41} :catch_14

    .line 3179
    if-eqz v75, :cond_4b

    .line 3181
    :try_start_42
    invoke-virtual/range {v75 .. v75}, Ljava/io/FileInputStream;->close()V

    .line 3184
    :cond_4b
    if-eqz v28, :cond_49

    .line 3186
    invoke-virtual/range {v28 .. v28}, Ljava/io/FileOutputStream;->close()V
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_42} :catch_13

    goto :goto_1d

    .line 3189
    :catch_13
    move-exception v38

    .line 3191
    .restart local v38       #e:Ljava/lang/Exception;
    :try_start_43
    const-string v4, "HtcWrapDrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_43} :catch_c

    goto :goto_1d

    .line 3171
    .end local v38           #e:Ljava/lang/Exception;
    :catch_14
    move-exception v38

    .line 3173
    .restart local v38       #e:Ljava/lang/Exception;
    :try_start_44
    const-string v4, "HtcWrapDrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_9

    .line 3179
    if-eqz v75, :cond_4c

    .line 3181
    :try_start_45
    invoke-virtual/range {v75 .. v75}, Ljava/io/FileInputStream;->close()V

    .line 3184
    :cond_4c
    if-eqz v28, :cond_49

    .line 3186
    invoke-virtual/range {v28 .. v28}, Ljava/io/FileOutputStream;->close()V
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_45} :catch_15

    goto :goto_1d

    .line 3189
    :catch_15
    move-exception v38

    .line 3191
    :try_start_46
    const-string v4, "HtcWrapDrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_46} :catch_c

    goto :goto_1d

    .line 3177
    .end local v38           #e:Ljava/lang/Exception;
    :catchall_9
    move-exception v4

    .line 3179
    if-eqz v75, :cond_4d

    .line 3181
    :try_start_47
    invoke-virtual/range {v75 .. v75}, Ljava/io/FileInputStream;->close()V

    .line 3184
    :cond_4d
    if-eqz v28, :cond_4e

    .line 3186
    invoke-virtual/range {v28 .. v28}, Ljava/io/FileOutputStream;->close()V
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_47} :catch_1e

    .line 3177
    :cond_4e
    :goto_1e
    :try_start_48
    throw v4

    .line 3200
    .end local v28           #destinationFileOutputStream:Ljava/io/FileOutputStream;
    .end local v75           #sourceFileInputStream:Ljava/io/FileInputStream;
    :cond_4f
    new-instance v63, Ljava/io/FileOutputStream;

    invoke-static {v6, v9}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v63

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_48} :catch_c

    .line 3201
    .restart local v63       #os:Ljava/io/FileOutputStream;
    if-eqz v63, :cond_49

    .line 3203
    :try_start_49
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v63

    invoke-static {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/io/FileOutputStream;)I
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_a

    move-result v14

    .line 3205
    :try_start_4a
    invoke-virtual/range {v63 .. v63}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_1d

    :catchall_a
    move-exception v4

    invoke-virtual/range {v63 .. v63}, Ljava/io/FileOutputStream;->close()V

    throw v4

    .line 3211
    .end local v63           #os:Ljava/io/FileOutputStream;
    :cond_50
    const/4 v4, 0x2

    move/from16 v0, v59

    if-ne v0, v4, :cond_57

    .line 3226
    const-string v4, "ro.board.platform"

    const/4 v8, 0x0

    invoke-static {v4, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v67

    .line 3229
    .restart local v67       #platform:Ljava/lang/String;
    if-eqz v67, :cond_51

    const-string v4, ""

    move-object/from16 v0, v67

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 3230
    :cond_51
    const/16 v68, 0x0

    .line 3235
    .restart local v68       #platformLowerCase:Ljava/lang/String;
    :goto_1f
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0x62

    if-eq v4, v8, :cond_52

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0x42

    if-eq v4, v8, :cond_52

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0x10

    if-eq v4, v8, :cond_52

    if-eqz v68, :cond_56

    const-string v4, ""

    move-object/from16 v0, v68

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_56

    const-string v4, "msm7k"

    move-object/from16 v0, v68

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_52

    const-string v4, "7x27"

    move-object/from16 v0, v68

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 3250
    :cond_52
    const-string v4, "HtcWrapDrmStore"

    const-string v8, " @@@@@ saveFile for MSM7K case."

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3253
    const/16 v70, 0x0

    .line 3255
    .restart local v70       #repeat:I
    :goto_20
    const/4 v4, 0x3

    move/from16 v0, v70

    if-ge v0, v4, :cond_49

    .line 3257
    if-ltz v70, :cond_54

    .line 3258
    new-instance v81, Ljava/io/FileInputStream;

    move-object/from16 v0, v81

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3259
    .restart local v81       #tempFin:Ljava/io/FileInputStream;
    new-instance v80, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {v81 .. v81}, Ljava/io/FileInputStream;->available()I

    move-result v4

    move-object/from16 v0, v80

    move-object/from16 v1, v81

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v4, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 3262
    .restart local v80       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    invoke-static {v6, v9}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move-object/from16 v1, v80

    invoke-static {v0, v1, v4}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/lang/String;)I
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4a} :catch_c

    move-result v14

    .line 3265
    :try_start_4b
    invoke-virtual/range {v81 .. v81}, Ljava/io/FileInputStream;->close()V
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_b
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4b} :catch_1a

    .line 3274
    .end local v80           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v81           #tempFin:Ljava/io/FileInputStream;
    :goto_21
    const/4 v4, -0x1

    if-ne v14, v4, :cond_55

    .line 3275
    add-int/lit8 v70, v70, 0x1

    goto :goto_20

    .line 3232
    .end local v68           #platformLowerCase:Ljava/lang/String;
    .end local v70           #repeat:I
    :cond_53
    :try_start_4c
    invoke-virtual/range {v67 .. v67}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v68

    .restart local v68       #platformLowerCase:Ljava/lang/String;
    goto :goto_1f

    .line 3267
    .restart local v70       #repeat:I
    .restart local v80       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v81       #tempFin:Ljava/io/FileInputStream;
    :catchall_b
    move-exception v4

    throw v4

    .line 3271
    .end local v80           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v81           #tempFin:Ljava/io/FileInputStream;
    :cond_54
    invoke-static {v6, v9}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/lang/String;)I

    move-result v14

    goto :goto_21

    .line 3278
    :cond_55
    const/16 v70, 0x3

    goto :goto_20

    .line 3287
    .end local v70           #repeat:I
    :cond_56
    const-string v4, "HtcWrapDrmStore"

    const-string v8, " @@@@@ saveFile for NORMAL case."

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3290
    new-instance v63, Ljava/io/FileOutputStream;

    invoke-static {v6, v9}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v63

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4c} :catch_c

    .line 3292
    .restart local v63       #os:Ljava/io/FileOutputStream;
    if-eqz v63, :cond_49

    .line 3294
    :try_start_4d
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v63

    invoke-static {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/io/FileOutputStream;)I
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_c

    move-result v14

    .line 3297
    :try_start_4e
    invoke-virtual/range {v63 .. v63}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_1d

    :catchall_c
    move-exception v4

    invoke-virtual/range {v63 .. v63}, Ljava/io/FileOutputStream;->close()V

    throw v4

    .line 3304
    .end local v63           #os:Ljava/io/FileOutputStream;
    .end local v67           #platform:Ljava/lang/String;
    .end local v68           #platformLowerCase:Ljava/lang/String;
    :cond_57
    const-string v4, "HtcWrapDrmStore"

    const-string v8, "Unknown method."

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3306
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_4e} :catch_c

    .line 3307
    const/16 v53, 0x0

    .line 3388
    if-eqz v46, :cond_1

    .line 3389
    :try_start_4f
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_4f} :catch_16

    goto/16 :goto_0

    .line 3391
    :catch_16
    move-exception v38

    .line 3393
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "HtcWrapDrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 3319
    .end local v38           #e:Ljava/lang/Exception;
    :cond_58
    :try_start_50
    new-instance v53, Landroid/content/Intent;

    invoke-direct/range {v53 .. v53}, Landroid/content/Intent;-><init>()V
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_50} :catch_c

    .line 3320
    .end local v54           #intent:Landroid/content/Intent;
    .restart local v53       #intent:Landroid/content/Intent;
    :try_start_51
    move-object/from16 v0, v53

    move-object/from16 v1, v60

    invoke-virtual {v0, v9, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 3322
    sget-object v10, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->TITLE_PROJECTION:[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "_id"

    move-object v8, v6

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 3323
    .local v16, c_title:Landroid/database/Cursor;
    if-eqz v16, :cond_5a

    .line 3324
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_59

    .line 3325
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3326
    const-string v4, "title"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v85

    .line 3327
    .local v85, titleIdIndex:I
    move-object/from16 v0, v16

    move/from16 v1, v85

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v62

    .line 3329
    .local v62, newTitle:Ljava/lang/String;
    const-string v4, "HtcWrapDrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "newTitle:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v62

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3331
    if-eqz v62, :cond_59

    .line 3332
    const-string v4, "title"

    move-object/from16 v0, v53

    move-object/from16 v1, v62

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3333
    const-string v4, "title"

    move-object/from16 v0, v26

    move-object/from16 v1, v62

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3336
    .end local v62           #newTitle:Ljava/lang/String;
    .end local v85           #titleIdIndex:I
    :cond_59
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 3340
    :cond_5a
    const-string v4, "audio"

    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 3341
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, v60

    invoke-static {v0, v1, v2, v3, v9}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->parseAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/ContentValues;

    move-result-object v90

    .line 3342
    .local v90, values:Landroid/content/ContentValues;
    if-eqz v90, :cond_5b

    .line 3343
    const-string v4, "album_id"

    const-string v8, "album_id"

    move-object/from16 v0, v90

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3344
    const-string v4, "artist_id"

    const-string v8, "artist_id"

    move-object/from16 v0, v90

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3346
    const-string v4, "title"

    move-object/from16 v0, v90

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5b

    const-string v4, "title"

    move-object/from16 v0, v90

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5b

    .line 3348
    const-string v4, "title"

    const-string v8, "title"

    move-object/from16 v0, v90

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3352
    :cond_5b
    invoke-static {}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->SupportForwardLockOnly()Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 3353
    const/4 v4, 0x1

    move/from16 v0, v59

    if-ne v0, v4, :cond_5c

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/32 v12, 0x4b000

    cmp-long v4, v10, v12

    if-gez v4, :cond_5c

    .line 3354
    const-string v4, "is_ringtone"

    const-string v8, "1"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3359
    .end local v90           #values:Landroid/content/ContentValues;
    :cond_5c
    const-string v4, "content_id"

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3360
    const-string v4, "content_boundary_offset"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3368
    sget-boolean v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->REBUILD_DATABASE:Z

    const/4 v8, 0x1

    if-ne v4, v8, :cond_5d

    .line 3370
    const-string v4, "content_url"

    invoke-static {v6, v9}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3371
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z

    .line 3375
    :cond_5d
    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v6, v9, v0, v4, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_51} :catch_3

    .line 3388
    if-eqz v46, :cond_1

    .line 3389
    :try_start_52
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_52} :catch_17

    goto/16 :goto_0

    .line 3391
    :catch_17
    move-exception v38

    .line 3393
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "HtcWrapDrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 2987
    .end local v14           #boundary_length:I
    .end local v16           #c_title:Landroid/database/Cursor;
    .end local v26           #cv:Landroid/content/ContentValues;
    .end local v38           #e:Ljava/lang/Exception;
    .end local v76           #stampCursor:Landroid/database/Cursor;
    .restart local v17       #checkFile:Ljava/io/File;
    .restart local v23       #createFile:Ljava/io/File;
    .restart local v37       #duplicatePath:Ljava/lang/String;
    .restart local v67       #platform:Ljava/lang/String;
    .restart local v68       #platformLowerCase:Ljava/lang/String;
    :catch_18
    move-exception v4

    .line 2989
    const/16 v23, 0x0

    .line 2990
    :try_start_53
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_4

    goto/16 :goto_17

    .line 3009
    .restart local v70       #repeat:I
    .restart local v72       #resultSaveFile:I
    .restart local v78       #success:Z
    .restart local v80       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v81       #tempFin:Ljava/io/FileInputStream;
    :catch_19
    move-exception v4

    goto/16 :goto_19

    .line 3266
    .end local v17           #checkFile:Ljava/io/File;
    .end local v23           #createFile:Ljava/io/File;
    .end local v37           #duplicatePath:Ljava/lang/String;
    .end local v53           #intent:Landroid/content/Intent;
    .end local v72           #resultSaveFile:I
    .end local v78           #success:Z
    .restart local v14       #boundary_length:I
    .restart local v26       #cv:Landroid/content/ContentValues;
    .restart local v54       #intent:Landroid/content/Intent;
    .restart local v76       #stampCursor:Landroid/database/Cursor;
    :catch_1a
    move-exception v4

    goto/16 :goto_21

    .line 3391
    .end local v6           #cr:Landroid/content/ContentResolver;
    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v9           #uri:Landroid/net/Uri;
    .end local v14           #boundary_length:I
    .end local v15           #c:Landroid/database/Cursor;
    .end local v20           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v21           #contentOffset:I
    .end local v22           #contentUid:Ljava/lang/String;
    .end local v26           #cv:Landroid/content/ContentValues;
    .end local v36           #duplicate:Z
    .end local v46           #fin:Ljava/io/FileInputStream;
    .end local v54           #intent:Landroid/content/Intent;
    .end local v59           #method:I
    .end local v60           #mimeType:Ljava/lang/String;
    .end local v66           #overwrite:Z
    .end local v67           #platform:Ljava/lang/String;
    .end local v68           #platformLowerCase:Ljava/lang/String;
    .end local v70           #repeat:I
    .end local v76           #stampCursor:Landroid/database/Cursor;
    .end local v80           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v81           #tempFin:Ljava/io/FileInputStream;
    .end local v87           #transferEncoding:I
    .restart local v45       #fin:Ljava/io/FileInputStream;
    .restart local v53       #intent:Landroid/content/Intent;
    :catch_1b
    move-exception v38

    .line 3393
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v8, "HtcWrapDrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 3391
    .end local v38           #e:Ljava/lang/Exception;
    .end local v45           #fin:Ljava/io/FileInputStream;
    .restart local v5       #binaryFile:Ljava/io/File;
    .restart local v20       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v46       #fin:Ljava/io/FileInputStream;
    .restart local v65       #outputBinaryFilePath:Ljava/lang/String;
    .restart local v71       #resultIntent:Landroid/content/Intent;
    .restart local v87       #transferEncoding:I
    :catch_1c
    move-exception v38

    .line 3393
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "HtcWrapDrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 2669
    .end local v5           #binaryFile:Ljava/io/File;
    .end local v38           #e:Ljava/lang/Exception;
    .end local v65           #outputBinaryFilePath:Ljava/lang/String;
    .end local v71           #resultIntent:Landroid/content/Intent;
    .restart local v6       #cr:Landroid/content/ContentResolver;
    .restart local v21       #contentOffset:I
    .restart local v40       #extention:Ljava/lang/String;
    .restart local v49       #fis2:Ljava/io/FileInputStream;
    .restart local v51       #fos:Ljava/io/FileOutputStream;
    .restart local v55       #is:Ljava/io/InputStream;
    .restart local v56       #isTerminated:Z
    .restart local v59       #method:I
    .restart local v60       #mimeType:Ljava/lang/String;
    .restart local v64       #outFile:Ljava/io/File;
    :catchall_d
    move-exception v4

    :goto_22
    if-eqz v51, :cond_5e

    .line 2670
    :try_start_54
    invoke-virtual/range {v51 .. v51}, Ljava/io/FileOutputStream;->close()V

    .line 2671
    const/16 v51, 0x0

    .line 2673
    :cond_5e
    if-eqz v55, :cond_5f

    .line 2674
    invoke-virtual/range {v55 .. v55}, Ljava/io/InputStream;->close()V

    .line 2675
    const/16 v55, 0x0

    .line 2684
    :cond_5f
    if-eqz v47, :cond_60

    .line 2685
    invoke-virtual/range {v47 .. v47}, Ljava/io/FileInputStream;->close()V

    .line 2686
    const/16 v47, 0x0

    .line 2688
    :cond_60
    if-eqz v49, :cond_61

    .line 2689
    invoke-virtual/range {v49 .. v49}, Ljava/io/FileInputStream;->close()V

    .line 2690
    const/16 v49, 0x0

    .line 2693
    :cond_61
    invoke-virtual/range {v64 .. v64}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_62

    .line 2694
    invoke-virtual/range {v64 .. v64}, Ljava/io/File;->delete()Z
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_54} :catch_3

    .line 2696
    :cond_62
    if-eqz v56, :cond_22

    .line 2697
    const/16 v53, 0x0

    .line 3388
    .end local v53           #intent:Landroid/content/Intent;
    if-eqz v46, :cond_1

    .line 3389
    :try_start_55
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_55} :catch_1d

    goto/16 :goto_0

    .line 3391
    :catch_1d
    move-exception v38

    .line 3393
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "HtcWrapDrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 3189
    .end local v38           #e:Ljava/lang/Exception;
    .end local v40           #extention:Ljava/lang/String;
    .end local v49           #fis2:Ljava/io/FileInputStream;
    .end local v51           #fos:Ljava/io/FileOutputStream;
    .end local v55           #is:Ljava/io/InputStream;
    .end local v56           #isTerminated:Z
    .end local v64           #outFile:Ljava/io/File;
    .restart local v7       #contentUri:Landroid/net/Uri;
    .restart local v9       #uri:Landroid/net/Uri;
    .restart local v14       #boundary_length:I
    .restart local v15       #c:Landroid/database/Cursor;
    .restart local v22       #contentUid:Ljava/lang/String;
    .restart local v26       #cv:Landroid/content/ContentValues;
    .restart local v28       #destinationFileOutputStream:Ljava/io/FileOutputStream;
    .restart local v36       #duplicate:Z
    .restart local v54       #intent:Landroid/content/Intent;
    .restart local v66       #overwrite:Z
    .restart local v75       #sourceFileInputStream:Ljava/io/FileInputStream;
    .restart local v76       #stampCursor:Landroid/database/Cursor;
    :catch_1e
    move-exception v38

    .line 3191
    .restart local v38       #e:Ljava/lang/Exception;
    :try_start_56
    const-string v8, "HtcWrapDrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_56 .. :try_end_56} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_56} :catch_c

    goto/16 :goto_1e

    .line 2669
    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v9           #uri:Landroid/net/Uri;
    .end local v14           #boundary_length:I
    .end local v15           #c:Landroid/database/Cursor;
    .end local v22           #contentUid:Ljava/lang/String;
    .end local v26           #cv:Landroid/content/ContentValues;
    .end local v28           #destinationFileOutputStream:Ljava/io/FileOutputStream;
    .end local v36           #duplicate:Z
    .end local v38           #e:Ljava/lang/Exception;
    .end local v54           #intent:Landroid/content/Intent;
    .end local v66           #overwrite:Z
    .end local v75           #sourceFileInputStream:Ljava/io/FileInputStream;
    .end local v76           #stampCursor:Landroid/database/Cursor;
    .restart local v40       #extention:Ljava/lang/String;
    .restart local v48       #fis:Ljava/io/FileInputStream;
    .restart local v49       #fis2:Ljava/io/FileInputStream;
    .restart local v51       #fos:Ljava/io/FileOutputStream;
    .restart local v53       #intent:Landroid/content/Intent;
    .restart local v55       #is:Ljava/io/InputStream;
    .restart local v56       #isTerminated:Z
    .restart local v64       #outFile:Ljava/io/File;
    :catchall_e
    move-exception v4

    move-object/from16 v47, v48

    .end local v48           #fis:Ljava/io/FileInputStream;
    .restart local v47       #fis:Ljava/io/FileInputStream;
    goto :goto_22

    .end local v49           #fis2:Ljava/io/FileInputStream;
    .restart local v27       #deleteRights:Z
    .restart local v50       #fis2:Ljava/io/FileInputStream;
    .restart local v57       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v73       #rights:Landroid/drm/mobile1/DrmRights;
    :catchall_f
    move-exception v4

    move-object/from16 v49, v50

    .end local v50           #fis2:Ljava/io/FileInputStream;
    .restart local v49       #fis2:Ljava/io/FileInputStream;
    goto :goto_22

    .end local v49           #fis2:Ljava/io/FileInputStream;
    .end local v51           #fos:Ljava/io/FileOutputStream;
    .restart local v50       #fis2:Ljava/io/FileInputStream;
    .restart local v52       #fos:Ljava/io/FileOutputStream;
    .restart local v80       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    :catchall_10
    move-exception v4

    move-object/from16 v51, v52

    .end local v52           #fos:Ljava/io/FileOutputStream;
    .restart local v51       #fos:Ljava/io/FileOutputStream;
    move-object/from16 v49, v50

    .end local v50           #fis2:Ljava/io/FileInputStream;
    .restart local v49       #fis2:Ljava/io/FileInputStream;
    goto :goto_22

    .line 2665
    .end local v27           #deleteRights:Z
    .end local v47           #fis:Ljava/io/FileInputStream;
    .end local v57           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v73           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v80           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v48       #fis:Ljava/io/FileInputStream;
    :catch_1f
    move-exception v38

    move-object/from16 v47, v48

    .end local v48           #fis:Ljava/io/FileInputStream;
    .restart local v47       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_a

    .end local v49           #fis2:Ljava/io/FileInputStream;
    .restart local v27       #deleteRights:Z
    .restart local v50       #fis2:Ljava/io/FileInputStream;
    .restart local v57       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v73       #rights:Landroid/drm/mobile1/DrmRights;
    :catch_20
    move-exception v38

    move-object/from16 v49, v50

    .end local v50           #fis2:Ljava/io/FileInputStream;
    .restart local v49       #fis2:Ljava/io/FileInputStream;
    goto/16 :goto_a

    .end local v49           #fis2:Ljava/io/FileInputStream;
    .end local v51           #fos:Ljava/io/FileOutputStream;
    .restart local v50       #fis2:Ljava/io/FileInputStream;
    .restart local v52       #fos:Ljava/io/FileOutputStream;
    .restart local v80       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    :catch_21
    move-exception v38

    move-object/from16 v51, v52

    .end local v52           #fos:Ljava/io/FileOutputStream;
    .restart local v51       #fos:Ljava/io/FileOutputStream;
    move-object/from16 v49, v50

    .end local v50           #fis2:Ljava/io/FileInputStream;
    .restart local v49       #fis2:Ljava/io/FileInputStream;
    goto/16 :goto_a

    .end local v27           #deleteRights:Z
    .end local v40           #extention:Ljava/lang/String;
    .end local v47           #fis:Ljava/io/FileInputStream;
    .end local v49           #fis2:Ljava/io/FileInputStream;
    .end local v51           #fos:Ljava/io/FileOutputStream;
    .end local v55           #is:Ljava/io/InputStream;
    .end local v56           #isTerminated:Z
    .end local v57           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v64           #outFile:Ljava/io/File;
    .end local v73           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v80           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v7       #contentUri:Landroid/net/Uri;
    .restart local v15       #c:Landroid/database/Cursor;
    .restart local v22       #contentUid:Ljava/lang/String;
    .restart local v36       #duplicate:Z
    .restart local v66       #overwrite:Z
    .restart local v89       #uri:Landroid/net/Uri;
    :cond_63
    move-object/from16 v9, v89

    .end local v89           #uri:Landroid/net/Uri;
    .restart local v9       #uri:Landroid/net/Uri;
    goto/16 :goto_12

    .end local v9           #uri:Landroid/net/Uri;
    .restart local v89       #uri:Landroid/net/Uri;
    :cond_64
    move-object/from16 v9, v89

    .end local v89           #uri:Landroid/net/Uri;
    .restart local v9       #uri:Landroid/net/Uri;
    move-object/from16 v54, v53

    .end local v53           #intent:Landroid/content/Intent;
    .restart local v54       #intent:Landroid/content/Intent;
    goto/16 :goto_1a

    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v9           #uri:Landroid/net/Uri;
    .end local v15           #c:Landroid/database/Cursor;
    .end local v22           #contentUid:Ljava/lang/String;
    .end local v36           #duplicate:Z
    .end local v54           #intent:Landroid/content/Intent;
    .end local v66           #overwrite:Z
    .restart local v27       #deleteRights:Z
    .restart local v40       #extention:Ljava/lang/String;
    .restart local v48       #fis:Ljava/io/FileInputStream;
    .restart local v49       #fis2:Ljava/io/FileInputStream;
    .restart local v51       #fos:Ljava/io/FileOutputStream;
    .restart local v53       #intent:Landroid/content/Intent;
    .restart local v55       #is:Ljava/io/InputStream;
    .restart local v56       #isTerminated:Z
    .restart local v57       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v64       #outFile:Ljava/io/File;
    .restart local v73       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v80       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    :cond_65
    move-object/from16 v47, v48

    .end local v48           #fis:Ljava/io/FileInputStream;
    .restart local v47       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_7
.end method

.method public static final addDrmFileWithoutRightsAndRebuild(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 3
    .parameter "cx"
    .parameter "file"
    .parameter "title"
    .parameter "mediaType"
    .parameter "url"
    .parameter "destination"

    .prologue
    .line 2309
    const-string v1, "HtcWrapDrmStore"

    const-string v2, " @@@@@     addDrmFileWithoutRightsAndRebuild() - BEGIN. "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2312
    const/4 v0, 0x0

    .line 2316
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x1

    sput-boolean v1, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->REBUILD_DATABASE:Z

    .line 2317
    invoke-static/range {p0 .. p5}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->addDrmFileWithoutRights(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 2318
    const/4 v1, 0x0

    sput-boolean v1, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->REBUILD_DATABASE:Z

    .line 2323
    const-string v1, "HtcWrapDrmStore"

    const-string v2, " @@@@@     addDrmFileWithoutRightsAndRebuild() - END. "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2326
    return-object v0
.end method

.method private static checkAndCreateFolder(Ljava/lang/String;Z)Z
    .locals 6
    .parameter "checkFolderPath"
    .parameter "setPermission"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 6684
    if-eqz p0, :cond_0

    const-string v4, ""

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v2, v3

    .line 6706
    :cond_1
    :goto_0
    return v2

    .line 6688
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6691
    .local v0, checkF:Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 6692
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 6695
    :cond_3
    if-eqz p1, :cond_1

    .line 6696
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/io/File;->setWritable(ZZ)Z

    .line 6697
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/io/File;->setReadable(ZZ)Z

    .line 6698
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/io/File;->setExecutable(ZZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6702
    :catch_0
    move-exception v1

    .line 6703
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "HtcWrapDrmStore"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6704
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v3

    .line 6706
    goto :goto_0
.end method

.method public static checkBeforeDownload(Landroid/content/Context;[BLjava/lang/String;)I
    .locals 26
    .parameter "context"
    .parameter "buffer"
    .parameter "mediaType"

    .prologue
    .line 565
    const-string v23, "HtcWrapDrmStore"

    const-string v24, "********checkBeforeDownload"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 570
    :cond_0
    const-string v23, "HtcWrapDrmStore"

    const-string v24, "checkBeforeDownload :-2"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    const/16 v23, -0x2

    .line 746
    :goto_0
    return v23

    .line 578
    :cond_1
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x800

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_3

    const/16 v5, 0x800

    .line 580
    .local v5, dataSize:I
    :goto_1
    new-array v4, v5, [B

    .line 582
    .local v4, data:[B
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    if-ge v7, v5, :cond_5

    .line 585
    const-string v23, "application/vnd.oma.drm.message"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_4

    aget-byte v23, p1, v7

    const/16 v24, 0xa

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_2

    aget-byte v23, p1, v7

    const/16 v24, 0xd

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_2

    aget-byte v23, p1, v7

    const/16 v24, 0x3b

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    .line 586
    :cond_2
    const/16 v23, 0x20

    aput-byte v23, v4, v7

    .line 582
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 578
    .end local v4           #data:[B
    .end local v5           #dataSize:I
    .end local v7           #i:I
    :cond_3
    move-object/from16 v0, p1

    array-length v5, v0

    goto :goto_1

    .line 588
    .restart local v4       #data:[B
    .restart local v5       #dataSize:I
    .restart local v7       #i:I
    :cond_4
    aget-byte v23, p1, v7

    aput-byte v23, v4, v7

    goto :goto_3

    .line 592
    :cond_5
    new-instance v23, Ljava/lang/String;

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v0, v4, v1, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    .line 593
    .local v21, segment:Ljava/lang/String;
    const-string v18, "content-type: "

    .line 594
    .local v18, pattern:Ljava/lang/String;
    const/4 v2, 0x0

    .line 596
    .local v2, MIMEType:Ljava/lang/String;
    const-string v23, "application/vnd.oma.drm.message"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_b

    .line 597
    const-string v23, "content-type: "

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 598
    .local v12, indexOfPattern:I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v12, v0, :cond_6

    .line 600
    const-string v23, "HtcWrapDrmStore"

    const-string v24, "checkBeforeDownload :-7"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    const/16 v23, -0x7

    goto/16 :goto_0

    .line 604
    :cond_6
    const-string v23, "content-type: "

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    add-int v8, v12, v23

    .line 605
    .local v8, indexOfContentType:I
    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    .line 606
    .local v22, subString:Ljava/lang/String;
    const/16 v23, 0x20

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 607
    .local v13, indexOfReturn:I
    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 608
    const-string v23, "application/vnd.oma.drm.rights+xml"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 614
    invoke-static {}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->fnIsDisableCombinedDeliveryAndSeparateDelivery()Z

    move-result v23

    if-nez v23, :cond_7

    invoke-static {}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->fnIsDisableCombinedDeliveryOnly()Z

    move-result v23

    if-eqz v23, :cond_8

    .line 619
    :cond_7
    const-string v23, "HtcWrapDrmStore"

    const-string v24, "checkBeforeDownload :-8 for FIESTA_ATT"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    const/16 v23, -0x8

    goto/16 :goto_0

    .line 641
    :cond_8
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 642
    .local v16, nextSegment:Ljava/lang/String;
    const-string v23, "content-type: "

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 643
    .local v10, indexOfNextPattern:I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v10, v0, :cond_9

    .line 645
    const-string v23, "HtcWrapDrmStore"

    const-string v24, "checkBeforeDownload :-7"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    const/16 v23, -0x7

    goto/16 :goto_0

    .line 649
    :cond_9
    const-string v23, "content-type: "

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    add-int v9, v10, v23

    .line 650
    .local v9, indexOfNextContentType:I
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    .line 651
    .local v17, nextSubString:Ljava/lang/String;
    const/16 v23, 0x20

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    .line 652
    .local v11, indexOfNextReturn:I
    const/16 v23, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 705
    .end local v8           #indexOfContentType:I
    .end local v9           #indexOfNextContentType:I
    .end local v10           #indexOfNextPattern:I
    .end local v11           #indexOfNextReturn:I
    .end local v12           #indexOfPattern:I
    .end local v13           #indexOfReturn:I
    .end local v16           #nextSegment:Ljava/lang/String;
    .end local v17           #nextSubString:Ljava/lang/String;
    .end local v22           #subString:Ljava/lang/String;
    :cond_a
    :goto_4
    if-nez v2, :cond_10

    .line 707
    const-string v23, "HtcWrapDrmStore"

    const-string v24, "checkBeforeDownload :-7"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    const/16 v23, -0x7

    goto/16 :goto_0

    .line 656
    :cond_b
    const-string v23, "application/vnd.oma.drm.content"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_e

    .line 662
    invoke-static {}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->fnIsDisableCombinedDeliveryAndSeparateDelivery()Z

    move-result v23

    if-nez v23, :cond_c

    invoke-static {}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->fnIsDisableSeparateDeliveryOnly()Z

    move-result v23

    if-eqz v23, :cond_d

    .line 667
    :cond_c
    const-string v23, "HtcWrapDrmStore"

    const-string v24, "checkBeforeDownload :-8 for FIESTA_ATT"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    const/16 v23, -0x8

    goto/16 :goto_0

    .line 688
    :cond_d
    const/16 v23, 0x1

    aget-byte v3, v4, v23

    .line 690
    .local v3, contentTypeLen:I
    :try_start_0
    new-instance v2, Ljava/lang/String;

    .end local v2           #MIMEType:Ljava/lang/String;
    const/16 v23, 0x3

    move/from16 v0, v23

    invoke-direct {v2, v4, v0, v3}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2       #MIMEType:Ljava/lang/String;
    goto :goto_4

    .line 691
    .end local v2           #MIMEType:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 693
    .local v6, e:Ljava/lang/Exception;
    const-string v23, "HtcWrapDrmStore"

    const-string v24, "checkBeforeDownload :-7"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    const/16 v23, -0x7

    goto/16 :goto_0

    .line 697
    .end local v3           #contentTypeLen:I
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v2       #MIMEType:Ljava/lang/String;
    :cond_e
    const-string v23, "application/vnd.oma.drm.rights+wbxml"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_f

    const-string v23, "application/vnd.oma.drm.rights+xml"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 700
    :cond_f
    const-string v23, "HtcWrapDrmStore"

    const-string v24, "checkBeforeDownload :0"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 712
    :cond_10
    new-instance v14, Landroid/content/Intent;

    const-string v23, "android.intent.action.VIEW"

    move-object/from16 v0, v23

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 713
    .local v14, intent:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    .line 714
    .local v19, pm:Landroid/content/pm/PackageManager;
    const/16 v20, 0x0

    .line 716
    .local v20, result:Z
    const-string v23, "HtcWrapDrmStore"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Check Before Download MIME = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    const-string v23, "application/java-archive"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_11

    .line 720
    const/16 v20, 0x1

    .line 737
    :goto_5
    if-eqz v20, :cond_18

    .line 739
    const-string v23, "HtcWrapDrmStore"

    const-string v24, "checkBeforeDownload :0"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 721
    :cond_11
    const-string v23, "image/"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_13

    .line 722
    const-string v23, "content://media"

    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v14, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 723
    const/high16 v23, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v14, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v15

    .line 724
    .local v15, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_12

    const/16 v20, 0x1

    .line 725
    :goto_6
    goto :goto_5

    .line 724
    :cond_12
    const/16 v20, 0x0

    goto :goto_6

    .line 725
    .end local v15           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_13
    const-string v23, "audio/"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_15

    .line 726
    const-string v23, "content://media"

    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v14, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 727
    const/high16 v23, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v14, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v15

    .line 728
    .restart local v15       #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_14

    const/16 v20, 0x1

    .line 729
    :goto_7
    goto :goto_5

    .line 728
    :cond_14
    const/16 v20, 0x0

    goto :goto_7

    .line 729
    .end local v15           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_15
    const-string v23, "video/"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_17

    .line 730
    const-string v23, "content://media"

    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v14, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 731
    const/high16 v23, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v14, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v15

    .line 732
    .restart local v15       #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_16

    const/16 v20, 0x1

    .line 733
    :goto_8
    goto/16 :goto_5

    .line 732
    :cond_16
    const/16 v20, 0x0

    goto :goto_8

    .line 734
    .end local v15           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_17
    const/16 v20, 0x0

    goto/16 :goto_5

    .line 744
    :cond_18
    const-string v23, "HtcWrapDrmStore"

    const-string v24, "checkBeforeDownload :-8"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    const/16 v23, -0x8

    goto/16 :goto_0
.end method

.method public static final checkExpiration(Landroid/content/ContentResolver;Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;Landroid/net/Uri;)I
    .locals 35
    .parameter "cr"
    .parameter "dcr"
    .parameter "contentUri"

    .prologue
    .line 5371
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "********checkExpiration"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5372
    const-string v3, "HtcWrapDrmStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5375
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 5377
    :cond_0
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "checkExpiration (1): -2"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5379
    const/4 v3, -0x2

    .line 5546
    :goto_0
    return v3

    .line 5382
    :cond_1
    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->FILEPATH_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 5383
    .local v11, cursor:Landroid/database/Cursor;
    if-nez v11, :cond_2

    .line 5385
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "checkExpiration (2): -6"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5387
    const/4 v3, -0x6

    goto :goto_0

    .line 5388
    :cond_2
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_3

    .line 5390
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "checkExpiration (3): -2"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5392
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 5393
    const/4 v3, -0x2

    goto :goto_0

    .line 5396
    :cond_3
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5397
    const-string v3, "_data"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 5398
    .local v10, columnIndex:I
    invoke-interface {v11, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 5399
    .local v20, filePath:Ljava/lang/String;
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 5401
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getDrmRight(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/drm/mobile1/DrmRights;

    move-result-object v24

    .line 5402
    .local v24, rights:Landroid/drm/mobile1/DrmRights;
    if-nez v24, :cond_4

    .line 5404
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "checkExpiration (4): -3"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5406
    const/4 v3, -0x3

    goto :goto_0

    .line 5412
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->isNoConstraint()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 5413
    const/4 v3, 0x0

    goto :goto_0

    .line 5419
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->getCount()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->getInterval()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->getStartDate()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->getEndDate()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_6

    .line 5421
    const-string v3, "HtcWrapDrmStore"

    const-string v4, " checkExpiration (5): All constraint expired."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5422
    const/4 v3, -0x4

    goto :goto_0

    .line 5427
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->getCount()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_8

    .line 5429
    invoke-virtual/range {p1 .. p1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->getCount()I

    move-result v3

    if-gtz v3, :cond_7

    .line 5431
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "checkExpiration (6): counts expired"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5433
    const/4 v3, -0x4

    goto/16 :goto_0

    .line 5435
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 5439
    :cond_8
    const/16 v23, 0x0

    .line 5440
    .local v23, permissionType:I
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 5441
    const/16 v23, 0x2

    .line 5450
    :cond_9
    :goto_1
    sget-object v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id"

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 5452
    .local v9, c:Landroid/database/Cursor;
    if-nez v9, :cond_d

    .line 5454
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "checkExpiration (7): -6"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5456
    const/4 v3, -0x6

    goto/16 :goto_0

    .line 5442
    .end local v9           #c:Landroid/database/Cursor;
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 5443
    const/16 v23, 0x1

    goto :goto_1

    .line 5444
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 5445
    const/16 v23, 0x1

    goto :goto_1

    .line 5446
    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 5447
    const/16 v23, 0x3

    goto :goto_1

    .line 5457
    .restart local v9       #c:Landroid/database/Cursor;
    :cond_d
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_e

    .line 5459
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "checkExpiration (8): -5"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5461
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 5462
    const/4 v3, -0x5

    goto/16 :goto_0

    .line 5465
    :cond_e
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5466
    const-string v3, "time_stamp"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    .line 5467
    .local v31, syncTimeColumnId:I
    move/from16 v0, v31

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    .line 5468
    .local v29, syncTime:J
    const-string v3, "clock_stamp"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    .line 5469
    .local v28, syncClockColumnId:I
    move/from16 v0, v28

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 5470
    .local v26, syncClock:J
    const-string v3, "timezone_stamp"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    .line 5471
    .local v34, syncTimeZoneColumnId:I
    move/from16 v0, v34

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    .line 5472
    .local v32, syncTimeZone:J
    const-string v3, "time_differential"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 5473
    .local v14, differentColumnId:I
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 5474
    .local v15, differential:J
    const-string v3, "network_sync"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 5475
    .local v22, network_sync:I
    move/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 5476
    .local v21, networkSync:Ljava/lang/String;
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 5478
    const-wide/16 v3, 0x0

    cmp-long v3, v29, v3

    if-eqz v3, :cond_f

    const-wide/16 v3, 0x0

    cmp-long v3, v26, v3

    if-nez v3, :cond_10

    .line 5480
    :cond_f
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "checkExpiration (9): -5"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5482
    const/4 v3, -0x5

    goto/16 :goto_0

    .line 5485
    :cond_10
    if-nez v21, :cond_11

    .line 5487
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "checkExpiration (10): -5"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5489
    const/4 v3, -0x5

    goto/16 :goto_0

    .line 5490
    :cond_11
    const-string v3, "TRUE"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 5492
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "checkExpiration (11): -5"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5494
    const/4 v3, -0x5

    goto/16 :goto_0

    .line 5498
    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 5499
    .local v12, date:J
    new-instance v18, Ljava/util/Date;

    move-object/from16 v0, v18

    invoke-direct {v0, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 5501
    .local v18, drmDate:Ljava/util/Date;
    const-string v3, "HtcWrapDrmStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkExpiration (12): Current Date-Time (UTC) is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getYear()I

    move-result v5

    add-int/lit16 v5, v5, 0x76c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getMonth()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getDate()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getHours()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getMinutes()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getSeconds()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5504
    invoke-virtual/range {p1 .. p1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->getStartDate()Ljava/util/Date;

    move-result-object v25

    .line 5505
    .local v25, startDate:Ljava/util/Date;
    if-eqz v25, :cond_13

    .line 5507
    const-string v3, "HtcWrapDrmStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkExpiration (13): Start Date (UTC) is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Ljava/util/Date;->getYear()I

    move-result v5

    add-int/lit16 v5, v5, 0x76c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Ljava/util/Date;->getMonth()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Ljava/util/Date;->getDate()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Ljava/util/Date;->getHours()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Ljava/util/Date;->getMinutes()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Ljava/util/Date;->getSeconds()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5509
    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 5511
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "checkExpiration (14): start date expired."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5513
    const/4 v3, -0x4

    goto/16 :goto_0

    .line 5517
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->getEndDate()Ljava/util/Date;

    move-result-object v19

    .line 5518
    .local v19, endDate:Ljava/util/Date;
    if-eqz v19, :cond_14

    .line 5520
    const-string v3, "HtcWrapDrmStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkExpiration (15): End Date (UTC) is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getYear()I

    move-result v5

    add-int/lit16 v5, v5, 0x76c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getMonth()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getDate()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getHours()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getMinutes()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getSeconds()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5522
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 5524
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "checkExpiration (16): end date expired."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5526
    new-instance v17, Ljava/util/Date;

    sub-long v3, v12, v15

    sub-long v3, v3, v32

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 5527
    .local v17, drmClock:Ljava/util/Date;
    move-object/from16 v0, v24

    move/from16 v1, v23

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/drm/mobile1/DrmRights;->consumeRightsWithSync(ILjava/util/Date;)Z

    .line 5528
    const/4 v3, -0x4

    goto/16 :goto_0

    .line 5533
    .end local v17           #drmClock:Ljava/util/Date;
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->getInterval()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_15

    .line 5535
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "checkExpiration (17): Interval constraint, pass anyway"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5538
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 5542
    :cond_15
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "checkExpiration (18): Unknown Error!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5546
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method public static final checkExpiration(Landroid/net/Uri;Landroid/app/Activity;)I
    .locals 1
    .parameter "uri"
    .parameter "activity"

    .prologue
    .line 7163
    const/4 v0, 0x0

    return v0
.end method

.method public static final checkExpiration(Ljava/lang/String;Landroid/app/Activity;)I
    .locals 1
    .parameter "fileName"
    .parameter "activity"

    .prologue
    .line 7167
    const/4 v0, 0x0

    return v0
.end method

.method public static checkFileExistence(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    .locals 11
    .parameter "cr"
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    const/4 v10, 0x0

    .line 6465
    sget-object v2, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->FILEPATH_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 6466
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 6468
    const-string v0, "HtcWrapDrmStore"

    const-string v1, "checkFileExistence query DRM db failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 6489
    :goto_0
    return v0

    .line 6471
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 6473
    const-string v0, "HtcWrapDrmStore"

    const-string v1, "checkFileExistence no record."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6475
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 6476
    goto :goto_0

    .line 6478
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6479
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 6480
    .local v8, fileColumnIndex:I
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 6481
    .local v9, fileName:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 6483
    const-string v0, "HtcWrapDrmStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Check if "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exists."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6485
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6486
    .local v7, file:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6487
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v10

    .line 6489
    goto :goto_0
.end method

.method public static final consumeRights(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 1
    .parameter "cx"
    .parameter "uri"

    .prologue
    .line 7171
    const/4 v0, 0x0

    return v0
.end method

.method public static final consumeRights(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)I
    .locals 41
    .parameter "cx"
    .parameter "contentUri"
    .parameter "strFilePath"
    .parameter "permissionType"

    .prologue
    .line 5559
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "********consumeRights"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5562
    const/4 v9, 0x0

    .line 5563
    .local v9, c:Landroid/database/Cursor;
    if-nez p2, :cond_0

    .line 5564
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id"

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 5571
    :goto_0
    const/16 v22, 0x0

    .line 5572
    .local v22, filePath:Ljava/lang/String;
    if-nez v9, :cond_1

    .line 5574
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "consumeRights(1): -6"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5576
    const/4 v3, -0x6

    .line 5751
    :goto_1
    return v3

    .line 5567
    .end local v22           #filePath:Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    const-string v6, "_data=?"

    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v7, v4

    const-string v8, "_id"

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_0

    .line 5577
    .restart local v22       #filePath:Ljava/lang/String;
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 5579
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "consumeRights(2): -6"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5581
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 5582
    const/4 v3, -0x6

    goto :goto_1

    .line 5583
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_6

    .line 5584
    if-nez p2, :cond_3

    .line 5586
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "consumeRights(3): -2"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5588
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 5589
    const/4 v3, -0x2

    goto :goto_1

    .line 5591
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5592
    const-string v3, "_data"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 5593
    .local v23, filePathColumnId:I
    move/from16 v0, v23

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 5594
    move-object/from16 v22, p2

    .line 5609
    :cond_4
    :goto_2
    if-nez v22, :cond_7

    .line 5611
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "consumeRights(4): -1"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5613
    const/4 v3, -0x1

    goto :goto_1

    .line 5596
    :cond_5
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 5597
    move/from16 v0, v23

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 5598
    move-object/from16 v22, p2

    .line 5599
    goto :goto_2

    .line 5604
    .end local v23           #filePathColumnId:I
    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5605
    const-string v3, "_data"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 5606
    .restart local v23       #filePathColumnId:I
    move/from16 v0, v23

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    goto :goto_2

    .line 5616
    :cond_7
    const-string v3, "message_type"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 5617
    .local v27, messageTypeColumnId:I
    move/from16 v0, v27

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 5618
    .local v26, messageType:Ljava/lang/String;
    const-string v3, "delivery_type"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 5619
    .local v15, deliveryTypeColumnId:I
    invoke-interface {v9, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 5620
    .local v14, deliveryType:I
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 5622
    const/4 v3, 0x1

    if-ne v14, v3, :cond_8

    .line 5623
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 5627
    :cond_8
    :try_start_0
    new-instance v21, Ljava/io/File;

    invoke-direct/range {v21 .. v22}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5628
    .local v21, file:Ljava/io/File;
    if-nez v21, :cond_9

    .line 5630
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "consumeRights(5): -2"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5632
    const/4 v3, -0x2

    goto/16 :goto_1

    .line 5634
    :cond_9
    new-instance v24, Ljava/io/FileInputStream;

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 5635
    .local v24, fis:Ljava/io/InputStream;
    new-instance v11, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->available()I

    move-result v3

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-direct {v11, v0, v3, v1}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 5636
    .local v11, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v25

    .line 5637
    .local v25, manager:Landroid/drm/mobile1/DrmRightsManager;
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v30

    .line 5639
    .local v30, rights:Landroid/drm/mobile1/DrmRights;
    if-nez v30, :cond_a

    .line 5641
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "consumeRights(7): -3"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5643
    const/4 v3, -0x3

    goto/16 :goto_1

    .line 5646
    :cond_a
    move-object/from16 v0, v30

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRights;->getConstraint(I)Landroid/drm/mobile1/DrmConstraintInfo;

    move-result-object v10

    .line 5647
    .local v10, constraintInfo:Landroid/drm/mobile1/DrmConstraintInfo;
    if-nez v10, :cond_b

    .line 5649
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "consumeRights(9): -1"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5651
    const/4 v3, -0x1

    goto/16 :goto_1

    .line 5655
    :cond_b
    invoke-virtual {v10}, Landroid/drm/mobile1/DrmConstraintInfo;->isNoConstraint()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_c

    .line 5661
    const-string v3, "HtcWrapDrmStore"

    const-string v4, " @@@@@     consumeRights(10): NO Constraint."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5664
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 5669
    :cond_c
    invoke-virtual {v10}, Landroid/drm/mobile1/DrmConstraintInfo;->getCount()I

    move-result v3

    if-ltz v3, :cond_e

    .line 5670
    move-object/from16 v0, v30

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRights;->consumeRights(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 5671
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 5674
    :cond_d
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "consumeRights(11): -4"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5676
    const/4 v3, -0x4

    goto/16 :goto_1

    .line 5681
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v31

    .line 5683
    .local v31, stamp:Landroid/database/Cursor;
    if-nez v31, :cond_f

    .line 5685
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "consumeRights query stamp failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5687
    const/4 v3, -0x6

    goto/16 :goto_1

    .line 5688
    :cond_f
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_10

    .line 5690
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "consumeRights(12): -5"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5692
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 5693
    const/4 v3, -0x5

    goto/16 :goto_1

    .line 5696
    :cond_10
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5697
    const-string v3, "time_stamp"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v37

    .line 5698
    .local v37, syncTimeColumnId:I
    move-object/from16 v0, v31

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v35

    .line 5699
    .local v35, syncTime:J
    const-string v3, "clock_stamp"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    .line 5700
    .local v34, syncClockColumnId:I
    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    .line 5701
    .local v32, syncClock:J
    const-string v3, "timezone_stamp"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v40

    .line 5702
    .local v40, syncTimeZoneColumnId:I
    move-object/from16 v0, v31

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v38

    .line 5703
    .local v38, syncTimeZone:J
    const-string v3, "time_differential"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 5704
    .local v16, differentColumnId:I
    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 5705
    .local v17, differential:J
    const-string v3, "network_sync"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    .line 5706
    .local v29, network_sync:I
    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 5707
    .local v28, networkSync:Ljava/lang/String;
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 5709
    const-wide/16 v3, 0x0

    cmp-long v3, v35, v3

    if-eqz v3, :cond_11

    const-wide/16 v3, 0x0

    cmp-long v3, v32, v3

    if-nez v3, :cond_12

    .line 5711
    :cond_11
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "consumeRights(13): -5"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5713
    const/4 v3, -0x5

    goto/16 :goto_1

    .line 5716
    :cond_12
    if-nez v28, :cond_13

    .line 5718
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "consumeRights(14): checkExpiration : -5"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5720
    const/4 v3, -0x5

    goto/16 :goto_1

    .line 5721
    :cond_13
    const-string v3, "TRUE"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 5723
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "consumeRights(15): checkExpiration : -5"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5725
    const/4 v3, -0x5

    goto/16 :goto_1

    .line 5729
    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v17

    sub-long v12, v3, v38

    .line 5731
    .local v12, date:J
    const-string v3, "HtcWrapDrmStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syncTimeZone = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    div-long v5, v38, v5

    const-wide/16 v7, 0x3c

    div-long/2addr v5, v7

    const-wide/16 v7, 0x3c

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5733
    new-instance v19, Ljava/util/Date;

    move-object/from16 v0, v19

    invoke-direct {v0, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 5734
    .local v19, drmDate:Ljava/util/Date;
    move-object/from16 v0, v30

    move/from16 v1, p3

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/drm/mobile1/DrmRights;->consumeRightsWithSync(ILjava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 5735
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 5738
    :cond_15
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "consumeRights(16): -4"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5740
    const/4 v3, -0x4

    goto/16 :goto_1

    .line 5743
    .end local v10           #constraintInfo:Landroid/drm/mobile1/DrmConstraintInfo;
    .end local v11           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v12           #date:J
    .end local v16           #differentColumnId:I
    .end local v17           #differential:J
    .end local v19           #drmDate:Ljava/util/Date;
    .end local v21           #file:Ljava/io/File;
    .end local v24           #fis:Ljava/io/InputStream;
    .end local v25           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v28           #networkSync:Ljava/lang/String;
    .end local v29           #network_sync:I
    .end local v30           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v31           #stamp:Landroid/database/Cursor;
    .end local v32           #syncClock:J
    .end local v34           #syncClockColumnId:I
    .end local v35           #syncTime:J
    .end local v37           #syncTimeColumnId:I
    .end local v38           #syncTimeZone:J
    .end local v40           #syncTimeZoneColumnId:I
    :catch_0
    move-exception v20

    .line 5745
    .local v20, e:Ljava/lang/Exception;
    const-string v3, "HtcWrapDrmStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "consumeRights(17): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5749
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "consumeRights(18): -1"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5751
    const/4 v3, -0x1

    goto/16 :goto_1
.end method

.method public static final consumeRights(Ljava/lang/String;)I
    .locals 1
    .parameter "fileName"

    .prologue
    .line 7175
    const/4 v0, 0x0

    return v0
.end method

.method public static final deleteDrmFile(Landroid/content/ContentResolver;Landroid/net/Uri;)I
    .locals 1
    .parameter "cr"
    .parameter "uri"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4826
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->deleteDrmFile(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final deleteDrmFile(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)I
    .locals 13
    .parameter "cr"
    .parameter "uri"
    .parameter "filePath"

    .prologue
    .line 4755
    const-string v0, "HtcWrapDrmStore"

    const-string v1, "********deleteDrmFile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4757
    const/4 v6, 0x0

    .line 4758
    .local v6, c:Landroid/database/Cursor;
    if-eqz p2, :cond_0

    .line 4759
    sget-object v2, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    const-string v3, "_data=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const-string v5, "_id"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4765
    :goto_0
    if-nez v6, :cond_1

    .line 4767
    const-string v0, "HtcWrapDrmStore"

    const-string v1, "deleteDrmFile : -6"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4769
    const/4 v0, -0x6

    .line 4814
    :goto_1
    return v0

    .line 4762
    :cond_0
    sget-object v2, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "_id"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_0

    .line 4770
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4772
    const-string v0, "HtcWrapDrmStore"

    const-string v1, "deleteDrmFile : -6"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4774
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4775
    const/4 v0, -0x6

    goto :goto_1

    .line 4778
    :cond_2
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 4779
    .local v10, filenameColumnId:I
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 4781
    .local v9, filename:Ljava/lang/String;
    const-string v0, "delivery_type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 4782
    .local v8, deliveryTypeColumnId:I
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 4784
    .local v7, deliveryType:I
    const-string v0, "message_type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 4785
    .local v12, messageTypeColumnId:I
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 4787
    .local v11, messageType:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4814
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_1
.end method

.method public static enforceAccessDrmPermission(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 548
    const-string v0, "HtcWrapDrmStore"

    const-string v1, "********enforceAccessDrmPermission()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-static {p0}, Landroid/provider/DrmStore;->enforceAccessDrmPermission(Landroid/content/Context;)V

    .line 552
    return-void
.end method

.method private static final fnIsDisableCombinedDeliveryAndSeparateDelivery()Z
    .locals 1

    .prologue
    .line 6586
    sget-boolean v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->SWITCH_TO_CID:Z

    if-eqz v0, :cond_1

    .line 6587
    sget-boolean v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DISABLE_FORWORD_LOCK:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DISABLE_COMBINED_DELIVERY:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DISABLE_SEPARATE_DELIVERY:Z

    if-eqz v0, :cond_0

    .line 6589
    const/4 v0, 0x1

    .line 6596
    :goto_0
    return v0

    .line 6592
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 6596
    :cond_1
    invoke-static {}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->SupportForwardLockOnly()Z

    move-result v0

    goto :goto_0
.end method

.method private static final fnIsDisableCombinedDeliveryOnly()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 6608
    sget-boolean v1, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->SWITCH_TO_CID:Z

    if-eqz v1, :cond_0

    .line 6610
    sget-boolean v1, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DISABLE_FORWORD_LOCK:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DISABLE_COMBINED_DELIVERY:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DISABLE_SEPARATE_DELIVERY:Z

    if-nez v1, :cond_0

    .line 6612
    const/4 v0, 0x1

    .line 6622
    :cond_0
    return v0
.end method

.method private static final fnIsDisableSeparateDeliveryOnly()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 6632
    sget-boolean v2, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->SWITCH_TO_CID:Z

    if-eqz v2, :cond_2

    .line 6633
    sget-boolean v2, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DISABLE_FORWORD_LOCK:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DISABLE_COMBINED_DELIVERY:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DISABLE_SEPARATE_DELIVERY:Z

    if-eqz v2, :cond_1

    .line 6661
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 6638
    goto :goto_0

    .line 6642
    :cond_2
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x31

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x88

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 6661
    goto :goto_0
.end method

.method private static getCipher(Ljavax/crypto/spec/SecretKeySpec;I)Ljavax/crypto/Cipher;
    .locals 6
    .parameter "skeySpec"
    .parameter "mode"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 6368
    const/4 v0, 0x0

    .line 6370
    .local v0, cipher:Ljavax/crypto/Cipher;
    if-nez p0, :cond_0

    .line 6372
    const-string v4, "HtcWrapDrmStore"

    const-string v5, "skeySpec == null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6407
    :goto_0
    return-object v3

    .line 6375
    :cond_0
    const/4 v4, 0x1

    if-eq p1, v4, :cond_1

    const/4 v4, 0x2

    if-eq p1, v4, :cond_1

    .line 6377
    const-string v4, "HtcWrapDrmStore"

    const-string v5, "Cipher mode error."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6384
    :cond_1
    :try_start_0
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 6386
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    const-string v3, "f45gt7g83sd56210"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 6388
    .local v2, ivSpec:Ljavax/crypto/spec/IvParameterSpec;
    invoke-virtual {v0, p1, p0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3

    .end local v2           #ivSpec:Ljavax/crypto/spec/IvParameterSpec;
    :goto_1
    move-object v3, v0

    .line 6407
    goto :goto_0

    .line 6390
    :catch_0
    move-exception v1

    .line 6392
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    const-string v3, "HtcWrapDrmStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NoSuchAlgorithmException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 6394
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 6396
    .local v1, e:Ljavax/crypto/NoSuchPaddingException;
    const-string v3, "HtcWrapDrmStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NoSuchPaddingException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 6398
    .end local v1           #e:Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v1

    .line 6400
    .local v1, e:Ljava/security/InvalidKeyException;
    const-string v3, "HtcWrapDrmStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InvalidKeyException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 6402
    .end local v1           #e:Ljava/security/InvalidKeyException;
    :catch_3
    move-exception v1

    .line 6404
    .local v1, e:Ljava/security/InvalidAlgorithmParameterException;
    const-string v3, "HtcWrapDrmStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InvalidAlgorithmParameterException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getDcfFileList(Landroid/content/ContentResolver;Landroid/net/Uri;)[Ljava/lang/String;
    .locals 11
    .parameter "contentResolver"
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    .line 6496
    sget-object v2, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DCFLIST_PROJECTION:[Ljava/lang/String;

    const-string v3, "delivery_type=\'3\'"

    const-string v5, "_id"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 6498
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 6499
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 6500
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 6501
    .local v7, count:I
    new-array v10, v7, [Ljava/lang/String;

    .line 6502
    .local v10, result:[Ljava/lang/String;
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 6503
    .local v8, dataColumnIndex:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v7, :cond_1

    .line 6504
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6505
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v9

    .line 6503
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 6508
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 6513
    .end local v7           #count:I
    .end local v8           #dataColumnIndex:I
    .end local v9           #i:I
    .end local v10           #result:[Ljava/lang/String;
    :goto_1
    return-object v10

    .line 6511
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v10, v4

    .line 6513
    goto :goto_1
.end method

.method public static getDmFileList(Landroid/content/ContentResolver;Landroid/net/Uri;)[Ljava/lang/String;
    .locals 11
    .parameter "contentResolver"
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    .line 6520
    sget-object v2, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DCFLIST_PROJECTION:[Ljava/lang/String;

    const-string v3, "delivery_type=\'1\' OR delivery_type=\'2\'"

    const-string v5, "_id"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 6525
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 6526
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 6527
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 6528
    .local v7, count:I
    new-array v10, v7, [Ljava/lang/String;

    .line 6529
    .local v10, result:[Ljava/lang/String;
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 6530
    .local v8, dataColumnIndex:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v7, :cond_1

    .line 6531
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6532
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v9

    .line 6530
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 6535
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 6540
    .end local v7           #count:I
    .end local v8           #dataColumnIndex:I
    .end local v9           #i:I
    .end local v10           #result:[Ljava/lang/String;
    :goto_1
    return-object v10

    .line 6538
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v10, v4

    .line 6540
    goto :goto_1
.end method

.method public static getDrmAudioConstraint(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    .locals 1
    .parameter "cx"
    .parameter "strFilePath"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7083
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getDrmConstraint(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;

    move-result-object v0

    return-object v0
.end method

.method public static getDrmAudioCursor(Landroid/content/Context;I)Landroid/database/Cursor;
    .locals 1
    .parameter "cx"
    .parameter "nDeliveryType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7035
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final getDrmAudioStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .parameter "cx"
    .parameter "strFilePath"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7131
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getDrmContentStream(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static final getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    .locals 31
    .parameter "cr"
    .parameter "uri"
    .parameter "permissionType"

    .prologue
    .line 5260
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "********getDrmConstraint (2)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5262
    const/16 v27, 0x0

    .line 5264
    .local v27, res:Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id"

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 5265
    .local v9, c:Landroid/database/Cursor;
    if-nez v9, :cond_0

    .line 5267
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "getDrmConstraint query DRM db failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5269
    const/4 v3, 0x0

    .line 5356
    :goto_0
    return-object v3

    .line 5270
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 5272
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "getDrmConstraint no record."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5274
    const/4 v3, 0x0

    goto :goto_0

    .line 5277
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToLast()Z

    .line 5278
    const-string v3, "_data"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 5279
    .local v21, filenameColumnId:I
    move/from16 v0, v21

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 5281
    .local v20, filename:Ljava/lang/String;
    const-string v3, "message_type"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 5282
    .local v26, messageTypeColumnId:I
    move/from16 v0, v26

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 5284
    .local v25, messageType:Ljava/lang/String;
    const-string v3, "delivery_type"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 5285
    .local v12, deliveryTypeColumnId:I
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 5287
    .local v11, deliveryType:I
    const-string v3, "_size"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 5288
    .local v19, fileSizeColumnId:I
    move/from16 v0, v19

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 5289
    .local v18, fileSize:I
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 5291
    const/4 v3, 0x1

    if-ne v11, v3, :cond_2

    .line 5293
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "FL doesn\'t have constraint."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5295
    const/4 v3, 0x0

    goto :goto_0

    .line 5297
    :cond_2
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5299
    .local v17, file:Ljava/io/File;
    :try_start_0
    new-instance v22, Ljava/io/FileInputStream;

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 5300
    .local v22, fis:Ljava/io/InputStream;
    new-instance v10, Landroid/drm/mobile1/DrmRawContent;

    move-object/from16 v0, v22

    move/from16 v1, v18

    move-object/from16 v2, v25

    invoke-direct {v10, v0, v1, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 5301
    .local v10, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v24

    .line 5302
    .local v24, manager:Landroid/drm/mobile1/DrmRightsManager;
    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v29

    .line 5305
    .local v29, rights:Landroid/drm/mobile1/DrmRights;
    const-string v3, "HtcWrapDrmStore"

    const-string v4, " @@@@@ getDrmConstraint (2) - (1)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5308
    if-eqz v29, :cond_7

    .line 5309
    move-object/from16 v0, v29

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRights;->getConstraint(I)Landroid/drm/mobile1/DrmConstraintInfo;

    move-result-object v23

    .line 5311
    .local v23, info:Landroid/drm/mobile1/DrmConstraintInfo;
    if-eqz v23, :cond_6

    .line 5312
    new-instance v28, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;-><init>(Landroid/drm/mobile1/DrmConstraintInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 5313
    .end local v27           #res:Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    .local v28, res:Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    if-eqz v28, :cond_8

    .line 5314
    const-wide/16 v13, 0x0

    .line 5315
    .local v13, differential:J
    const/16 v30, 0x0

    .line 5317
    .local v30, stampCursor:Landroid/database/Cursor;
    :try_start_1
    sget-object v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id"

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v30

    .line 5319
    if-eqz v30, :cond_3

    .line 5320
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5321
    const-string v3, "time_differential"

    move-object/from16 v0, v30

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 5323
    .local v15, differentialColumnId:I
    move-object/from16 v0, v30

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v13

    .line 5331
    .end local v15           #differentialColumnId:I
    :cond_3
    if-eqz v30, :cond_4

    .line 5332
    :try_start_2
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->close()V

    .line 5335
    :cond_4
    :goto_1
    move-object/from16 v0, v28

    invoke-virtual {v0, v13, v14}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->setDisserential(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v27, v28

    .line 5346
    .end local v13           #differential:J
    .end local v23           #info:Landroid/drm/mobile1/DrmConstraintInfo;
    .end local v28           #res:Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    .end local v30           #stampCursor:Landroid/database/Cursor;
    .restart local v27       #res:Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    :goto_2
    :try_start_3
    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .end local v10           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v22           #fis:Ljava/io/InputStream;
    .end local v24           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v29           #rights:Landroid/drm/mobile1/DrmRights;
    :goto_3
    move-object/from16 v3, v27

    .line 5356
    goto/16 :goto_0

    .line 5326
    .end local v27           #res:Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    .restart local v10       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v13       #differential:J
    .restart local v22       #fis:Ljava/io/InputStream;
    .restart local v23       #info:Landroid/drm/mobile1/DrmConstraintInfo;
    .restart local v24       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v28       #res:Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    .restart local v29       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v30       #stampCursor:Landroid/database/Cursor;
    :catch_0
    move-exception v16

    .line 5328
    .local v16, e:Ljava/lang/Exception;
    :try_start_4
    const-string v3, "HtcWrapDrmStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get differential: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 5331
    if-eqz v30, :cond_4

    .line 5332
    :try_start_5
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 5347
    .end local v16           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v16

    move-object/from16 v27, v28

    .line 5349
    .end local v10           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v13           #differential:J
    .end local v22           #fis:Ljava/io/InputStream;
    .end local v23           #info:Landroid/drm/mobile1/DrmConstraintInfo;
    .end local v24           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v28           #res:Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    .end local v29           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v30           #stampCursor:Landroid/database/Cursor;
    .restart local v16       #e:Ljava/lang/Exception;
    .restart local v27       #res:Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    :goto_4
    :try_start_6
    const-string v3, "HtcWrapDrmStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDrmConstraint : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 5351
    .end local v16           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :goto_5
    throw v3

    .line 5331
    .end local v27           #res:Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    .restart local v10       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v13       #differential:J
    .restart local v22       #fis:Ljava/io/InputStream;
    .restart local v23       #info:Landroid/drm/mobile1/DrmConstraintInfo;
    .restart local v24       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v28       #res:Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    .restart local v29       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v30       #stampCursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v3

    if-eqz v30, :cond_5

    .line 5332
    :try_start_7
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->close()V

    .line 5331
    :cond_5
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 5351
    :catchall_2
    move-exception v3

    move-object/from16 v27, v28

    .end local v28           #res:Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    .restart local v27       #res:Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    goto :goto_5

    .line 5339
    .end local v13           #differential:J
    .end local v30           #stampCursor:Landroid/database/Cursor;
    :cond_6
    :try_start_8
    const-string v3, "HtcWrapDrmStore"

    const-string v4, " @@@@@ NO Drm Constraint Info !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 5347
    .end local v10           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v22           #fis:Ljava/io/InputStream;
    .end local v23           #info:Landroid/drm/mobile1/DrmConstraintInfo;
    .end local v24           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v29           #rights:Landroid/drm/mobile1/DrmRights;
    :catch_2
    move-exception v16

    goto :goto_4

    .line 5343
    .restart local v10       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v22       #fis:Ljava/io/InputStream;
    .restart local v24       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v29       #rights:Landroid/drm/mobile1/DrmRights;
    :cond_7
    const-string v3, "HtcWrapDrmStore"

    const-string v4, " @@@@@ NO Drm Rights !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_2

    .end local v27           #res:Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    .restart local v23       #info:Landroid/drm/mobile1/DrmConstraintInfo;
    .restart local v28       #res:Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    :cond_8
    move-object/from16 v27, v28

    .end local v28           #res:Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    .restart local v27       #res:Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    goto :goto_2
.end method

.method public static final getDrmConstraint(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    .locals 36
    .parameter "cx"
    .parameter "uri"
    .parameter "strFilePath"

    .prologue
    .line 4840
    const-string v4, "HtcWrapDrmStore"

    const-string v5, "********getDrmConstraint without renew call back"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4841
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4843
    const/4 v9, 0x0

    .line 4844
    .local v9, c:Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 4845
    .local v12, contentUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 4846
    .local v3, cr:Landroid/content/ContentResolver;
    if-nez p2, :cond_1

    .line 4847
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 4852
    :goto_0
    if-nez v9, :cond_2

    .line 4854
    const-string v4, "HtcWrapDrmStore"

    const-string v5, "getDrmConstraint query DRM db failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4856
    const/4 v10, 0x0

    .line 5018
    :cond_0
    :goto_1
    return-object v10

    .line 4849
    :cond_1
    const/4 v5, 0x0

    const-string v6, "_data=?"

    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v7, v4

    const/4 v8, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_0

    .line 4857
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_3

    .line 4858
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 4860
    const-string v4, "HtcWrapDrmStore"

    const-string v5, "getDrmConstraint no record."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4862
    const/4 v10, 0x0

    goto :goto_1

    .line 4865
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4866
    if-eqz p2, :cond_e

    .line 4867
    const/4 v4, 0x0

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 4868
    .local v25, index:I
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 4869
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 4888
    .end local v25           #index:I
    :goto_2
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "contentUri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4891
    const-string v4, "delivery_type"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 4892
    .local v15, deliveryTypeColumnId:I
    invoke-interface {v9, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 4893
    .local v14, deliveryType:I
    const-string v4, "message_type"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    .line 4894
    .local v29, messageTypeColumnId:I
    move/from16 v0, v29

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 4895
    .local v28, messageType:Ljava/lang/String;
    const-string v4, "_size"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 4896
    .local v23, fileSizeColumnId:I
    move/from16 v0, v23

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 4897
    .local v22, fileSize:I
    const/16 v31, 0x2

    .line 4898
    .local v31, permissionType:I
    if-nez p2, :cond_4

    .line 4899
    const-string v4, "_data"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 4900
    .local v21, filePathColumnId:I
    move/from16 v0, v21

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 4902
    .end local v21           #filePathColumnId:I
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 4904
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 4905
    const/16 v31, 0x2

    .line 4921
    :goto_3
    :try_start_0
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4924
    .local v20, file:Ljava/io/File;
    const/4 v4, 0x3

    if-eq v14, v4, :cond_5

    const/4 v4, 0x2

    if-ne v14, v4, :cond_13

    .line 4926
    :cond_5
    new-instance v24, Ljava/io/FileInputStream;

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4934
    .local v24, fis:Ljava/io/InputStream;
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v27

    .line 4938
    .local v27, manager:Landroid/drm/mobile1/DrmRightsManager;
    const/4 v10, 0x0

    .line 4939
    .local v10, constraint:Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    new-instance v11, Landroid/drm/mobile1/DrmRawContent;

    move-object/from16 v0, v24

    move/from16 v1, v22

    move-object/from16 v2, v28

    invoke-direct {v11, v0, v1, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 4940
    .local v11, content:Landroid/drm/mobile1/DrmRawContent;
    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v33

    .line 4943
    .local v33, rights:Landroid/drm/mobile1/DrmRights;
    if-nez v33, :cond_6

    const/4 v4, 0x3

    if-ne v14, v4, :cond_6

    .line 4945
    move-object/from16 v13, p0

    .line 4946
    .local v13, context:Landroid/content/Context;
    new-instance v35, Landroid/widget/TextView;

    invoke-direct/range {v35 .. v36}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 4947
    .local v35, tv:Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.htc"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v32

    .line 4948
    .local v32, rc:Landroid/content/res/Resources;
    const v4, 0x20c00e0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    .line 4949
    .local v30, notify:Ljava/lang/String;
    move-object/from16 v0, v35

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4950
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x20c00e1

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "OK"

    new-instance v6, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$2;

    move-object/from16 v0, v33

    invoke-direct {v6, v0, v11, v13}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$2;-><init>(Landroid/drm/mobile1/DrmRights;Landroid/drm/mobile1/DrmRawContent;Landroid/content/Context;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "Cancel"

    new-instance v6, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$1;

    invoke-direct {v6}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$1;-><init>()V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 4983
    .end local v13           #context:Landroid/content/Context;
    .end local v30           #notify:Ljava/lang/String;
    .end local v32           #rc:Landroid/content/res/Resources;
    .end local v35           #tv:Landroid/widget/TextView;
    :cond_6
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->close()V

    .line 4985
    if-eqz v33, :cond_9

    .line 4986
    move-object/from16 v0, v33

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRights;->getConstraint(I)Landroid/drm/mobile1/DrmConstraintInfo;

    move-result-object v26

    .line 4987
    .local v26, info:Landroid/drm/mobile1/DrmConstraintInfo;
    new-instance v10, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;

    .end local v10           #constraint:Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    move-object/from16 v0, v26

    invoke-direct {v10, v0}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;-><init>(Landroid/drm/mobile1/DrmConstraintInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4988
    .restart local v10       #constraint:Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    if-eqz v10, :cond_0

    .line 4989
    const-wide/16 v16, 0x0

    .line 4990
    .local v16, differential:J
    const/16 v34, 0x0

    .line 4992
    .local v34, stampCursor:Landroid/database/Cursor;
    :try_start_1
    sget-object v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v34

    .line 4994
    if-eqz v34, :cond_7

    .line 4995
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 4996
    const-string v4, "time_differential"

    move-object/from16 v0, v34

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 4997
    .local v18, differentialColumnId:I
    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v16

    .line 5005
    .end local v18           #differentialColumnId:I
    :cond_7
    if-eqz v34, :cond_8

    .line 5006
    :try_start_2
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V

    .line 5009
    :cond_8
    :goto_4
    move-wide/from16 v0, v16

    invoke-virtual {v10, v0, v1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->setDisserential(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 5013
    .end local v10           #constraint:Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    .end local v11           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v16           #differential:J
    .end local v20           #file:Ljava/io/File;
    .end local v24           #fis:Ljava/io/InputStream;
    .end local v26           #info:Landroid/drm/mobile1/DrmConstraintInfo;
    .end local v27           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v33           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v34           #stampCursor:Landroid/database/Cursor;
    :catch_0
    move-exception v19

    .line 5015
    .local v19, e:Ljava/lang/Exception;
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDrmConstraint : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5018
    .end local v19           #e:Ljava/lang/Exception;
    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 4871
    .end local v14           #deliveryType:I
    .end local v15           #deliveryTypeColumnId:I
    .end local v22           #fileSize:I
    .end local v23           #fileSizeColumnId:I
    .end local v28           #messageType:Ljava/lang/String;
    .end local v29           #messageTypeColumnId:I
    .end local v31           #permissionType:I
    .restart local v25       #index:I
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 4872
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    goto/16 :goto_2

    .line 4874
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 4875
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    goto/16 :goto_2

    .line 4877
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 4878
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    goto/16 :goto_2

    .line 4881
    :cond_d
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 4882
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 4885
    .end local v25           #index:I
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    goto/16 :goto_2

    .line 4907
    .restart local v14       #deliveryType:I
    .restart local v15       #deliveryTypeColumnId:I
    .restart local v22       #fileSize:I
    .restart local v23       #fileSizeColumnId:I
    .restart local v28       #messageType:Ljava/lang/String;
    .restart local v29       #messageTypeColumnId:I
    .restart local v31       #permissionType:I
    :cond_f
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 4908
    const/16 v31, 0x1

    goto/16 :goto_3

    .line 4910
    :cond_10
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 4911
    const/16 v31, 0x1

    goto/16 :goto_3

    .line 4913
    :cond_11
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 4914
    const/16 v31, 0x3

    goto/16 :goto_3

    .line 4917
    :cond_12
    const/16 v31, 0x2

    goto/16 :goto_3

    .line 4929
    .restart local v20       #file:Ljava/io/File;
    :cond_13
    :try_start_3
    const-string v4, "HtcWrapDrmStore"

    const-string v5, "getDrmConstraint no rights."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 4931
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 5000
    .restart local v10       #constraint:Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    .restart local v11       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v16       #differential:J
    .restart local v24       #fis:Ljava/io/InputStream;
    .restart local v26       #info:Landroid/drm/mobile1/DrmConstraintInfo;
    .restart local v27       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v33       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v34       #stampCursor:Landroid/database/Cursor;
    :catch_1
    move-exception v19

    .line 5002
    .restart local v19       #e:Ljava/lang/Exception;
    :try_start_4
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get differential: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 5005
    if-eqz v34, :cond_8

    .line 5006
    :try_start_5
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .line 5005
    .end local v19           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v34, :cond_14

    .line 5006
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V

    .line 5005
    :cond_14
    throw v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method public static final getDrmConstraint(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/htc/wrap/android/provider/HtcWrapDrmStore$UpdateLicense;)Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    .locals 33
    .parameter "cx"
    .parameter "uri"
    .parameter "strFilePath"
    .parameter "updateLicense"

    .prologue
    .line 5033
    const-string v4, "HtcWrapDrmStore"

    const-string v5, "********getDrmConstraint (1)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5035
    const/4 v9, 0x0

    .line 5036
    .local v9, c:Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 5037
    .local v12, contentUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 5038
    .local v3, cr:Landroid/content/ContentResolver;
    if-nez p2, :cond_0

    .line 5039
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 5044
    :goto_0
    if-nez v9, :cond_1

    .line 5046
    const-string v4, "HtcWrapDrmStore"

    const-string v5, "getDrmConstraint query DRM db failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5048
    const/4 v10, 0x0

    .line 5232
    :goto_1
    return-object v10

    .line 5041
    :cond_0
    const/4 v5, 0x0

    const-string v6, "_data=?"

    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v7, v4

    const/4 v8, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_0

    .line 5049
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_2

    .line 5050
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 5052
    const-string v4, "HtcWrapDrmStore"

    const-string v5, "getDrmConstraint no record."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5054
    const/4 v10, 0x0

    goto :goto_1

    .line 5057
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5058
    if-eqz p2, :cond_d

    .line 5059
    const/4 v4, 0x0

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 5060
    .local v24, index:I
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 5061
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 5080
    .end local v24           #index:I
    :goto_2
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "contentUri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5083
    const-string v4, "delivery_type"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 5084
    .local v14, deliveryTypeColumnId:I
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 5085
    .local v13, deliveryType:I
    const-string v4, "message_type"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    .line 5086
    .local v28, messageTypeColumnId:I
    move/from16 v0, v28

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 5087
    .local v27, messageType:Ljava/lang/String;
    const-string v4, "_size"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 5088
    .local v22, fileSizeColumnId:I
    move/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 5089
    .local v21, fileSize:I
    const/16 v29, 0x2

    .line 5090
    .local v29, permissionType:I
    if-nez p2, :cond_3

    .line 5091
    const-string v4, "_data"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 5092
    .local v20, filePathColumnId:I
    move/from16 v0, v20

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 5094
    .end local v20           #filePathColumnId:I
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 5096
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 5097
    const/16 v29, 0x2

    .line 5113
    :goto_3
    :try_start_0
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5116
    .local v19, file:Ljava/io/File;
    const/4 v4, 0x3

    if-eq v13, v4, :cond_4

    const/4 v4, 0x2

    if-ne v13, v4, :cond_12

    .line 5118
    :cond_4
    new-instance v23, Ljava/io/FileInputStream;

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 5126
    .local v23, fis:Ljava/io/InputStream;
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v26

    .line 5133
    .local v26, manager:Landroid/drm/mobile1/DrmRightsManager;
    new-instance v11, Landroid/drm/mobile1/DrmRawContent;

    move-object/from16 v0, v23

    move/from16 v1, v21

    move-object/from16 v2, v27

    invoke-direct {v11, v0, v1, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 5134
    .local v11, content:Landroid/drm/mobile1/DrmRawContent;
    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v30

    .line 5137
    .local v30, rights:Landroid/drm/mobile1/DrmRights;
    if-nez v30, :cond_5

    const/4 v4, 0x3

    if-ne v13, v4, :cond_5

    .line 5139
    if-eqz p3, :cond_5

    .line 5140
    invoke-virtual {v11}, Landroid/drm/mobile1/DrmRawContent;->getRightsAddress()Ljava/lang/String;

    move-result-object v31

    .line 5141
    .local v31, rightsIssuer:Ljava/lang/String;
    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$UpdateLicense;->update(Ljava/lang/String;)V

    .line 5182
    .end local v31           #rightsIssuer:Ljava/lang/String;
    :cond_5
    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->close()V

    .line 5184
    if-eqz v30, :cond_14

    .line 5185
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRights;->getConstraint(I)Landroid/drm/mobile1/DrmConstraintInfo;

    move-result-object v25

    .line 5188
    .local v25, info:Landroid/drm/mobile1/DrmConstraintInfo;
    new-instance v10, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;

    move-object/from16 v0, v25

    invoke-direct {v10, v0}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;-><init>(Landroid/drm/mobile1/DrmConstraintInfo;)V

    .line 5191
    .local v10, constraint:Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5193
    if-eqz v10, :cond_8

    .line 5194
    const-wide/16 v15, 0x0

    .line 5195
    .local v15, differential:J
    const/16 v32, 0x0

    .line 5197
    .local v32, stampCursor:Landroid/database/Cursor;
    :try_start_1
    sget-object v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v32

    .line 5199
    if-eqz v32, :cond_6

    .line 5200
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 5201
    const-string v4, "time_differential"

    move-object/from16 v0, v32

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 5203
    .local v17, differentialColumnId:I
    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v15

    .line 5211
    .end local v17           #differentialColumnId:I
    :cond_6
    if-eqz v32, :cond_7

    .line 5212
    :try_start_2
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    .line 5215
    :cond_7
    :goto_4
    move-wide v0, v15

    invoke-virtual {v10, v0, v1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;->setDisserential(J)V

    .line 5217
    .end local v15           #differential:J
    .end local v32           #stampCursor:Landroid/database/Cursor;
    :cond_8
    monitor-exit v10

    goto/16 :goto_1

    .line 5219
    :catchall_0
    move-exception v4

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 5226
    .end local v10           #constraint:Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    .end local v11           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v19           #file:Ljava/io/File;
    .end local v23           #fis:Ljava/io/InputStream;
    .end local v25           #info:Landroid/drm/mobile1/DrmConstraintInfo;
    .end local v26           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v30           #rights:Landroid/drm/mobile1/DrmRights;
    :catch_0
    move-exception v18

    .line 5228
    .local v18, e:Ljava/lang/Exception;
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDrmConstraint : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5232
    .end local v18           #e:Ljava/lang/Exception;
    :goto_5
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 5063
    .end local v13           #deliveryType:I
    .end local v14           #deliveryTypeColumnId:I
    .end local v21           #fileSize:I
    .end local v22           #fileSizeColumnId:I
    .end local v27           #messageType:Ljava/lang/String;
    .end local v28           #messageTypeColumnId:I
    .end local v29           #permissionType:I
    .restart local v24       #index:I
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 5064
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    goto/16 :goto_2

    .line 5066
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 5067
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    goto/16 :goto_2

    .line 5069
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 5070
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    goto/16 :goto_2

    .line 5073
    :cond_c
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 5074
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 5077
    .end local v24           #index:I
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    goto/16 :goto_2

    .line 5099
    .restart local v13       #deliveryType:I
    .restart local v14       #deliveryTypeColumnId:I
    .restart local v21       #fileSize:I
    .restart local v22       #fileSizeColumnId:I
    .restart local v27       #messageType:Ljava/lang/String;
    .restart local v28       #messageTypeColumnId:I
    .restart local v29       #permissionType:I
    :cond_e
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 5100
    const/16 v29, 0x1

    goto/16 :goto_3

    .line 5102
    :cond_f
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 5103
    const/16 v29, 0x1

    goto/16 :goto_3

    .line 5105
    :cond_10
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 5106
    const/16 v29, 0x3

    goto/16 :goto_3

    .line 5109
    :cond_11
    const/16 v29, 0x2

    goto/16 :goto_3

    .line 5121
    .restart local v19       #file:Ljava/io/File;
    :cond_12
    :try_start_4
    const-string v4, "HtcWrapDrmStore"

    const-string v5, "getDrmConstraint no rights."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 5123
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 5206
    .restart local v10       #constraint:Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    .restart local v11       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v15       #differential:J
    .restart local v23       #fis:Ljava/io/InputStream;
    .restart local v25       #info:Landroid/drm/mobile1/DrmConstraintInfo;
    .restart local v26       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v30       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v32       #stampCursor:Landroid/database/Cursor;
    :catch_1
    move-exception v18

    .line 5208
    .restart local v18       #e:Ljava/lang/Exception;
    :try_start_5
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get differential: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 5211
    if-eqz v32, :cond_7

    .line 5212
    :try_start_6
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .line 5211
    .end local v18           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    if-eqz v32, :cond_13

    .line 5212
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    .line 5211
    :cond_13
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 5223
    .end local v10           #constraint:Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    .end local v15           #differential:J
    .end local v25           #info:Landroid/drm/mobile1/DrmConstraintInfo;
    .end local v32           #stampCursor:Landroid/database/Cursor;
    :cond_14
    :try_start_7
    const-string v4, "HtcWrapDrmStore"

    const-string v5, "getDrmConstraint : rights is null."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_5
.end method

.method public static final getDrmContentStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 1
    .parameter "cx"
    .parameter "uri"

    .prologue
    .line 7191
    const/4 v0, 0x0

    return-object v0
.end method

.method public static final getDrmContentStream(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 24
    .parameter "cx"
    .parameter "uri"
    .parameter "strFilePath"

    .prologue
    .line 6104
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "********getDrmContentStream"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6107
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 6108
    .local v2, cr:Landroid/content/ContentResolver;
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v20

    .line 6109
    .local v20, manager:Landroid/drm/mobile1/DrmRightsManager;
    const/4 v10, 0x0

    .line 6110
    .local v10, content:Landroid/drm/mobile1/DrmRawContent;
    const/16 v22, 0x0

    .line 6111
    .local v22, rights:Landroid/drm/mobile1/DrmRights;
    const/4 v14, 0x0

    .line 6112
    .local v14, drmContentStream:Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 6114
    .local v8, c:Landroid/database/Cursor;
    if-nez p2, :cond_0

    .line 6115
    sget-object v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id"

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 6121
    :goto_0
    if-nez v8, :cond_1

    .line 6123
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "getDrmContentStream query failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6125
    const/4 v3, 0x0

    .line 6197
    :goto_1
    return-object v3

    .line 6117
    :cond_0
    sget-object v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    const-string v5, "_data=?"

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v6, v3

    const-string v7, "_id"

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_0

    .line 6126
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 6128
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "getDrmContentStream no record."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6130
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 6131
    const/4 v3, 0x0

    goto :goto_1

    .line 6134
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6135
    const-string v3, "delivery_type"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 6136
    .local v13, deliveryTypeColumnId:I
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 6137
    .local v12, deliveryType:I
    const-string v3, "_size"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 6138
    .local v19, fileSizeColumnId:I
    move/from16 v0, v19

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 6139
    .local v18, fileSize:I
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 6142
    :try_start_0
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6143
    .local v17, file:Ljava/io/File;
    new-instance v23, Ljava/io/FileInputStream;

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 6145
    .local v23, tempFin:Ljava/io/InputStream;
    packed-switch v12, :pswitch_data_0

    .end local v17           #file:Ljava/io/File;
    .end local v23           #tempFin:Ljava/io/InputStream;
    :goto_2
    move-object v3, v14

    .line 6197
    goto :goto_1

    .line 6148
    .restart local v17       #file:Ljava/io/File;
    .restart local v23       #tempFin:Ljava/io/InputStream;
    :pswitch_0
    new-instance v11, Landroid/drm/mobile1/DrmRawContent;

    const-string v3, "application/vnd.oma.drm.message"

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-direct {v11, v0, v1, v3}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6149
    .end local v10           #content:Landroid/drm/mobile1/DrmRawContent;
    .local v11, content:Landroid/drm/mobile1/DrmRawContent;
    :try_start_1
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v21

    .line 6150
    .local v21, right:Landroid/drm/mobile1/DrmRights;
    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/drm/mobile1/DrmRawContent;->getContentDecryptStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v14

    move-object v10, v11

    .line 6151
    .end local v11           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v10       #content:Landroid/drm/mobile1/DrmRawContent;
    goto :goto_2

    .line 6155
    .end local v21           #right:Landroid/drm/mobile1/DrmRights;
    :pswitch_1
    :try_start_2
    new-instance v11, Landroid/drm/mobile1/DrmRawContent;

    const-string v3, "application/vnd.oma.drm.message"

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-direct {v11, v0, v1, v3}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 6156
    .end local v10           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v11       #content:Landroid/drm/mobile1/DrmRawContent;
    :try_start_3
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v22

    .line 6158
    if-eqz v22, :cond_4

    .line 6159
    invoke-static/range {p0 .. p2}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getDrmConstraint(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;

    move-result-object v9

    .line 6161
    .local v9, constraint:Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    move-object/from16 v0, p1

    invoke-static {v2, v9, v0}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->checkExpiration(Landroid/content/ContentResolver;Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;Landroid/net/Uri;)I

    move-result v3

    if-nez v3, :cond_3

    .line 6162
    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/drm/mobile1/DrmRawContent;->getContentDecryptStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;

    move-result-object v14

    move-object v10, v11

    .line 6169
    .end local v11           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v10       #content:Landroid/drm/mobile1/DrmRawContent;
    goto :goto_2

    .line 6165
    .end local v10           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v11       #content:Landroid/drm/mobile1/DrmRawContent;
    :cond_3
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "getDrmContentStream constraint expired."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6167
    const/4 v3, 0x0

    move-object v10, v11

    .end local v11           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v10       #content:Landroid/drm/mobile1/DrmRawContent;
    goto/16 :goto_1

    .line 6171
    .end local v9           #constraint:Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    .end local v10           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v11       #content:Landroid/drm/mobile1/DrmRawContent;
    :cond_4
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "getDrmContentStream no rights installed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 6173
    const/4 v3, 0x0

    move-object v10, v11

    .end local v11           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v10       #content:Landroid/drm/mobile1/DrmRawContent;
    goto/16 :goto_1

    .line 6178
    :pswitch_2
    :try_start_4
    new-instance v15, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 6179
    .local v15, drmStream:Ljava/io/FileInputStream;
    new-instance v11, Landroid/drm/mobile1/DrmRawContent;

    const-string v3, "application/vnd.oma.drm.content"

    move/from16 v0, v18

    invoke-direct {v11, v15, v0, v3}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 6180
    .end local v10           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v11       #content:Landroid/drm/mobile1/DrmRawContent;
    :try_start_5
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v22

    .line 6181
    if-nez v22, :cond_5

    .line 6183
    const-string v3, "HtcWrapDrmStore"

    const-string v4, "getDrmContentStream no rights installed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6185
    const/4 v3, 0x0

    move-object v10, v11

    .end local v11           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v10       #content:Landroid/drm/mobile1/DrmRawContent;
    goto/16 :goto_1

    .line 6187
    .end local v10           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v11       #content:Landroid/drm/mobile1/DrmRawContent;
    :cond_5
    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/drm/mobile1/DrmRawContent;->getContentInputStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v14

    move-object v10, v11

    .end local v11           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v10       #content:Landroid/drm/mobile1/DrmRawContent;
    goto/16 :goto_2

    .line 6190
    .end local v15           #drmStream:Ljava/io/FileInputStream;
    .end local v17           #file:Ljava/io/File;
    .end local v23           #tempFin:Ljava/io/InputStream;
    :catch_0
    move-exception v16

    .line 6192
    .local v16, e:Ljava/lang/Exception;
    :goto_3
    :try_start_6
    const-string v3, "HtcWrapDrmStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDrmContentStream : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    .line 6194
    .end local v16           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :goto_4
    throw v3

    .end local v10           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v11       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v17       #file:Ljava/io/File;
    .restart local v23       #tempFin:Ljava/io/InputStream;
    :catchall_1
    move-exception v3

    move-object v10, v11

    .end local v11           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v10       #content:Landroid/drm/mobile1/DrmRawContent;
    goto :goto_4

    .line 6190
    .end local v10           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v11       #content:Landroid/drm/mobile1/DrmRawContent;
    :catch_1
    move-exception v16

    move-object v10, v11

    .end local v11           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v10       #content:Landroid/drm/mobile1/DrmRawContent;
    goto :goto_3

    .line 6145
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static final getDrmContrain(Landroid/content/ContentResolver;Landroid/net/Uri;I)Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    .locals 1
    .parameter "cr"
    .parameter "uri"
    .parameter "permissionType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5246
    invoke-static {p0, p1, p2}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;

    move-result-object v0

    return-object v0
.end method

.method public static getDrmCursor(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/database/Cursor;
    .locals 8
    .parameter "cr"
    .parameter "uri"
    .parameter "nDeliveryType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 6325
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 6329
    .local v3, strWhere:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "existence=\'exist\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6331
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    .line 6334
    .local v7, nHeadLength:I
    and-int/lit8 v0, p2, 0xf

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 6335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "delivery_type=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6337
    :cond_0
    and-int/lit16 v0, p2, 0xf0

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_2

    .line 6338
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v7, :cond_1

    .line 6339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6340
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "delivery_type=2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6342
    :cond_2
    and-int/lit16 v0, p2, 0xf00

    const/16 v1, 0xf00

    if-ne v0, v1, :cond_4

    .line 6343
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v7, :cond_3

    .line 6344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6345
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "delivery_type=3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6349
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6352
    const-string v0, "HtcWrapDrmStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start query where "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6356
    sget-object v2, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 6358
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 6359
    invoke-interface {v6}, Landroid/database/Cursor;->moveToLast()Z

    .line 6362
    :cond_5
    return-object v6
.end method

.method private static getDrmCursor(Landroid/content/Context;Landroid/net/Uri;I)Landroid/database/Cursor;
    .locals 2
    .parameter "cx"
    .parameter "uri"
    .parameter "nDeliveryType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 6311
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 6313
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-static {v0, p1, p2}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getDrmCursor(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public static final getDrmFileStatus(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 1
    .parameter "cx"
    .parameter "uri"

    .prologue
    .line 7179
    const/4 v0, 0x0

    return v0
.end method

.method public static final getDrmFileStatus(Ljava/lang/String;)I
    .locals 1
    .parameter "fileName"

    .prologue
    .line 7183
    const/4 v0, 0x0

    return v0
.end method

.method public static getDrmImageConstraint(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    .locals 1
    .parameter "cx"
    .parameter "strFilePath"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7070
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getDrmConstraint(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;

    move-result-object v0

    return-object v0
.end method

.method public static getDrmImageCursor(Landroid/content/Context;I)Landroid/database/Cursor;
    .locals 1
    .parameter "cx"
    .parameter "nDeliveryType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7024
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final getDrmImageStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .parameter "cx"
    .parameter "strFilePath"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7120
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getDrmContentStream(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static getDrmJarConstraint(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    .locals 1
    .parameter "cx"
    .parameter "strFilePath"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7109
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getDrmConstraint(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;

    move-result-object v0

    return-object v0
.end method

.method public static getDrmJarCursor(Landroid/content/Context;I)Landroid/database/Cursor;
    .locals 1
    .parameter "cx"
    .parameter "nDeliveryType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7057
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final getDrmJarStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .parameter "cx"
    .parameter "strFilePath"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7153
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getDrmContentStream(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static final getDrmLicenseInfo(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "cx"
    .parameter "uri"

    .prologue
    .line 7159
    const/4 v0, 0x0

    return-object v0
.end method

.method private static final getDrmRight(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/drm/mobile1/DrmRights;
    .locals 17
    .parameter "cr"
    .parameter "uri"
    .parameter "strFilePath"

    .prologue
    .line 6257
    const/4 v3, 0x0

    const-string v4, "_data=?"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v5, v1

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 6258
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_1

    .line 6260
    const-string v1, "HtcWrapDrmStore"

    const-string v2, "getDrmRight query DRM db failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6262
    const/16 v16, 0x0

    .line 6299
    :cond_0
    :goto_0
    return-object v16

    .line 6263
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 6265
    const-string v1, "HtcWrapDrmStore"

    const-string v2, "getDrmRight no record."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6267
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 6268
    const/16 v16, 0x0

    goto :goto_0

    .line 6271
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6272
    const-string v1, "message_type"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 6273
    .local v15, messageTypeColumnId:I
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 6274
    .local v14, messageType:Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 6276
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6277
    .local v10, file:Ljava/io/File;
    const/4 v11, 0x0

    .line 6278
    .local v11, fis:Ljava/io/FileInputStream;
    const/16 v16, 0x0

    .line 6280
    .local v16, rights:Landroid/drm/mobile1/DrmRights;
    :try_start_0
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6281
    .end local v11           #fis:Ljava/io/FileInputStream;
    .local v12, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v8, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-direct {v8, v12, v1, v14}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 6282
    .local v8, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v13

    .line 6283
    .local v13, manager:Landroid/drm/mobile1/DrmRightsManager;
    invoke-virtual {v13, v8}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v16

    .line 6290
    if-eqz v12, :cond_3

    .line 6291
    :try_start_2
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_3
    :goto_1
    move-object v11, v12

    .line 6298
    .end local v12           #fis:Ljava/io/FileInputStream;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    goto :goto_0

    .line 6284
    .end local v8           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v13           #manager:Landroid/drm/mobile1/DrmRightsManager;
    :catch_0
    move-exception v9

    .line 6286
    .local v9, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string v1, "HtcWrapDrmStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDrmRight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6290
    if-eqz v11, :cond_0

    .line 6291
    :try_start_4
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 6293
    :catch_1
    move-exception v9

    .line 6295
    const-string v1, "HtcWrapDrmStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDrmRight : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6289
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 6290
    :goto_3
    if-eqz v11, :cond_4

    .line 6291
    :try_start_5
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 6289
    :cond_4
    :goto_4
    throw v1

    .line 6293
    :catch_2
    move-exception v9

    .line 6295
    .restart local v9       #e:Ljava/lang/Exception;
    const-string v2, "HtcWrapDrmStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDrmRight : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 6293
    .end local v9           #e:Ljava/lang/Exception;
    .end local v11           #fis:Ljava/io/FileInputStream;
    .restart local v8       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v12       #fis:Ljava/io/FileInputStream;
    .restart local v13       #manager:Landroid/drm/mobile1/DrmRightsManager;
    :catch_3
    move-exception v9

    .line 6295
    .restart local v9       #e:Ljava/lang/Exception;
    const-string v1, "HtcWrapDrmStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDrmRight : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 6289
    .end local v8           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v9           #e:Ljava/lang/Exception;
    .end local v13           #manager:Landroid/drm/mobile1/DrmRightsManager;
    :catchall_1
    move-exception v1

    move-object v11, v12

    .end local v12           #fis:Ljava/io/FileInputStream;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .line 6284
    .end local v11           #fis:Ljava/io/FileInputStream;
    .restart local v12       #fis:Ljava/io/FileInputStream;
    :catch_4
    move-exception v9

    move-object v11, v12

    .end local v12           #fis:Ljava/io/FileInputStream;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method

.method public static getDrmVideoConstraint(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;
    .locals 1
    .parameter "cx"
    .parameter "strFilePath"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7096
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getDrmConstraint(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/htc/wrap/android/provider/HtcWrapDrmStore$DrmConstraint;

    move-result-object v0

    return-object v0
.end method

.method public static getDrmVideoCursor(Landroid/content/Context;I)Landroid/database/Cursor;
    .locals 1
    .parameter "cx"
    .parameter "nDeliveryType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7046
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final getDrmVideoStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .parameter "cx"
    .parameter "strFilePath"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7142
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getDrmContentStream(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static getExternalStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 7000
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getExternalStorageDownloadPath()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 6798
    const/4 v7, 0x0

    .line 6799
    .local v7, resultDownloadPath:Ljava/lang/String;
    const/4 v3, 0x0

    .line 6801
    .local v3, findName:Ljava/lang/String;
    invoke-static {}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    const-string v10, "mounted"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 6802
    const-string v9, "HtcWrapDrmStore"

    const-string v10, " @@@@@ HtcWrapDrmStore.getExternalStorageState() is not mounted!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 6866
    .end local v7           #resultDownloadPath:Ljava/lang/String;
    :goto_0
    return-object v7

    .line 6807
    .restart local v7       #resultDownloadPath:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 6809
    .local v2, external_storage_file:Ljava/io/File;
    if-nez v2, :cond_1

    .line 6810
    const-string v9, "HtcWrapDrmStore"

    const-string v10, " @@@@@ HtcWrapDrmStore.getExternalStorageDirectory() ERROR!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 6812
    goto :goto_0

    .line 6814
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 6815
    const-string v9, "HtcWrapDrmStore"

    const-string v10, " @@@@@ HtcWrapDrmStore.getExternalStorageDirectory() doesn\'t exist!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 6817
    goto :goto_0

    .line 6821
    :cond_2
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v6, :cond_3

    aget-object v5, v0, v4

    .line 6822
    .local v5, item:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 6823
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 6824
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 6838
    .end local v5           #item:Ljava/io/File;
    :cond_3
    if-eqz v3, :cond_5

    .line 6839
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 6843
    const-string v9, "HtcWrapDrmStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " @@@@@ the name of download folder in sdcard is="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6844
    const-string v9, "HtcWrapDrmStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " @@@@@ we got download path is = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 6858
    :catch_0
    move-exception v1

    .line 6859
    .local v1, e:Ljava/lang/Exception;
    const-string v9, "HtcWrapDrmStore"

    const-string v10, " @@@@@ get external storage directory ERROR!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6860
    const-string v9, "HtcWrapDrmStore"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6861
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v7, v8

    .line 6863
    goto/16 :goto_0

    .line 6821
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v5       #item:Ljava/io/File;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 6829
    .end local v0           #arr$:[Ljava/io/File;
    .end local v4           #i$:I
    .end local v5           #item:Ljava/io/File;
    .end local v6           #len$:I
    :catch_1
    move-exception v1

    .line 6830
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v9, "HtcWrapDrmStore"

    const-string v10, " @@@@@ list files ERROR!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6831
    const-string v9, "HtcWrapDrmStore"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6832
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v7, v8

    .line 6834
    goto/16 :goto_0

    .line 6848
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #arr$:[Ljava/io/File;
    .restart local v4       #i$:I
    .restart local v6       #len$:I
    :cond_5
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 6854
    const-string v9, "HtcWrapDrmStore"

    const-string v10, " @@@@@ No download folder in sdcard."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6855
    const-string v9, "HtcWrapDrmStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " @@@@@ we got download path is = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method public static getExternalStorageState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6963
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .parameter "cr"
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 3402
    const/4 v8, 0x0

    .line 3403
    .local v8, result:Ljava/lang/String;
    sget-object v2, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->FILEPATH_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3404
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 3405
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3406
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 3407
    .local v7, filePathColumnIndex:I
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3409
    .end local v7           #filePathColumnIndex:I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3411
    :cond_1
    return-object v8
.end method

.method public static getInternalStorageDownloadPath()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 6723
    const/4 v7, 0x0

    .line 6724
    .local v7, resultDownloadPath:Ljava/lang/String;
    const/4 v2, 0x0

    .line 6727
    .local v2, findName:Ljava/lang/String;
    invoke-static {}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v9

    const-string v10, "mounted"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 6728
    const-string v9, "HtcWrapDrmStore"

    const-string v10, " @@@@@ HtcWrapDrmStore.getPhoneStorageDirectory() is not mounted!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 6794
    .end local v7           #resultDownloadPath:Ljava/lang/String;
    :goto_0
    return-object v7

    .line 6734
    .restart local v7       #resultDownloadPath:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 6736
    .local v4, internal_storage_file:Ljava/io/File;
    if-nez v4, :cond_1

    .line 6738
    const-string v9, "HtcWrapDrmStore"

    const-string v10, " @@@@@ HtcWrapDrmStore.getPhoneStorageDirectory() ERROR!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 6741
    goto :goto_0

    .line 6743
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 6744
    const-string v9, "HtcWrapDrmStore"

    const-string v10, " @@@@@ HtcWrapDrmStore.getPhoneStorageDirectory() doesn\'t exist!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 6746
    goto :goto_0

    .line 6750
    :cond_2
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v6, :cond_3

    aget-object v5, v0, v3

    .line 6751
    .local v5, item:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 6752
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 6753
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 6768
    .end local v5           #item:Ljava/io/File;
    :cond_3
    if-eqz v2, :cond_5

    .line 6769
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 6773
    const-string v9, "HtcWrapDrmStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " @@@@@ the name of download folder in internal storage is="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6774
    const-string v9, "HtcWrapDrmStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " @@@@@ we got download path is = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 6786
    :catch_0
    move-exception v1

    .line 6787
    .local v1, e:Ljava/lang/Exception;
    const-string v9, "HtcWrapDrmStore"

    const-string v10, " @@@@@ get phone storage directory ERROR!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6788
    const-string v9, "HtcWrapDrmStore"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6789
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v7, v8

    .line 6791
    goto/16 :goto_0

    .line 6750
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v5       #item:Ljava/io/File;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 6758
    .end local v0           #arr$:[Ljava/io/File;
    .end local v3           #i$:I
    .end local v5           #item:Ljava/io/File;
    .end local v6           #len$:I
    :catch_1
    move-exception v1

    .line 6759
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v9, "HtcWrapDrmStore"

    const-string v10, " @@@@@ list files ERROR!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6760
    const-string v9, "HtcWrapDrmStore"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6761
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v7, v8

    .line 6763
    goto/16 :goto_0

    .line 6778
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #arr$:[Ljava/io/File;
    .restart local v3       #i$:I
    .restart local v6       #len$:I
    :cond_5
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 6782
    const-string v9, "HtcWrapDrmStore"

    const-string v10, " @@@@@ No download folder in internal storage."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6783
    const-string v9, "HtcWrapDrmStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " @@@@@ we got download path is = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method public static getPhoneStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 6886
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneStorageState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6931
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSecretKeySpecUsingKeyGenerator()Ljavax/crypto/spec/SecretKeySpec;
    .locals 9

    .prologue
    .line 6411
    const/4 v4, 0x0

    .line 6414
    .local v4, skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    :try_start_0
    const-string v6, "AES"

    invoke-static {v6}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .line 6416
    .local v1, kgen:Ljavax/crypto/KeyGenerator;
    const/16 v6, 0x80

    invoke-virtual {v1, v6}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 6419
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 6421
    .local v3, skey:Ljavax/crypto/SecretKey;
    invoke-interface {v3}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    .line 6423
    .local v2, raw:[B
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    const-string v6, "AES"

    invoke-direct {v5, v2, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4           #skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    .local v5, skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    move-object v4, v5

    .line 6429
    .end local v1           #kgen:Ljavax/crypto/KeyGenerator;
    .end local v2           #raw:[B
    .end local v3           #skey:Ljavax/crypto/SecretKey;
    .end local v5           #skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v4       #skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v4

    .line 6424
    :catch_0
    move-exception v0

    .line 6426
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    const-string v6, "HtcWrapDrmStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NoSuchAlgorithmException "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getSecretKeySpecUsingSimNumber()Ljavax/crypto/spec/SecretKeySpec;
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 6434
    const/4 v3, 0x0

    .line 6437
    .local v3, skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    :try_start_0
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 6439
    .local v1, md:Ljava/security/MessageDigest;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    .line 6441
    .local v5, telMngr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v2

    .line 6443
    .local v2, simNumber:Ljava/lang/String;
    const-string v6, "HtcWrapDrmStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SIM number: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6446
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 6448
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    const-string v7, "AES"

    invoke-direct {v4, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3           #skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    .local v4, skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    move-object v3, v4

    .line 6455
    .end local v1           #md:Ljava/security/MessageDigest;
    .end local v2           #simNumber:Ljava/lang/String;
    .end local v4           #skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    .end local v5           #telMngr:Landroid/telephony/TelephonyManager;
    .restart local v3       #skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v3

    .line 6450
    :catch_0
    move-exception v0

    .line 6452
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    const-string v6, "HtcWrapDrmStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NoSuchAlgorithmException "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getSupportedStorages()I
    .locals 1

    .prologue
    .line 6909
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getSupportedStorages()I

    move-result v0

    return v0
.end method

.method public static final getUTC(Landroid/content/Context;)Ljava/util/Date;
    .locals 24
    .parameter "cx"

    .prologue
    .line 6203
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "_id"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 6205
    .local v14, stamp:Landroid/database/Cursor;
    if-nez v14, :cond_0

    .line 6206
    const-string v1, "HtcWrapDrmStore"

    const-string v2, "consumeRights query stamp failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6207
    const/4 v1, 0x0

    .line 6245
    :goto_0
    return-object v1

    .line 6208
    :cond_0
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 6209
    const-string v1, "HtcWrapDrmStore"

    const-string v2, "consumeRights: -5"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6210
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 6211
    const/4 v1, 0x0

    goto :goto_0

    .line 6214
    :cond_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6215
    const-string v1, "time_stamp"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 6216
    .local v20, syncTimeColumnId:I
    move/from16 v0, v20

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 6217
    .local v18, syncTime:J
    const-string v1, "clock_stamp"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 6218
    .local v17, syncClockColumnId:I
    move/from16 v0, v17

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 6219
    .local v15, syncClock:J
    const-string v1, "timezone_stamp"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 6220
    .local v23, syncTimeZoneColumnId:I
    move/from16 v0, v23

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 6221
    .local v21, syncTimeZone:J
    const-string v1, "time_differential"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 6222
    .local v9, differentColumnId:I
    invoke-interface {v14, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 6223
    .local v10, differential:J
    const-string v1, "network_sync"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 6224
    .local v13, network_sync:I
    invoke-interface {v14, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 6225
    .local v12, networkSync:Ljava/lang/String;
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 6227
    const-wide/16 v1, 0x0

    cmp-long v1, v18, v1

    if-eqz v1, :cond_2

    const-wide/16 v1, 0x0

    cmp-long v1, v15, v1

    if-nez v1, :cond_3

    .line 6228
    :cond_2
    const-string v1, "HtcWrapDrmStore"

    const-string v2, "consumeRights: -5"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6229
    const/4 v1, 0x0

    goto :goto_0

    .line 6232
    :cond_3
    if-nez v12, :cond_4

    .line 6233
    const-string v1, "HtcWrapDrmStore"

    const-string v2, "checkExpiration : -5"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6234
    const/4 v1, 0x0

    goto :goto_0

    .line 6235
    :cond_4
    const-string v1, "TRUE"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 6236
    const-string v1, "HtcWrapDrmStore"

    const-string v2, "checkExpiration : -5"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6237
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 6241
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v10

    sub-long v7, v1, v21

    .line 6243
    .local v7, date:J
    const-string v1, "HtcWrapDrmStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncTimeZone = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    div-long v3, v21, v3

    const-wide/16 v5, 0x3c

    div-long/2addr v3, v5

    const-wide/16 v5, 0x3c

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6245
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v7, v8}, Ljava/util/Date;-><init>(J)V

    goto/16 :goto_0
.end method

.method public static hasPhoneStorage()Z
    .locals 1

    .prologue
    .line 6915
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasPhoneStorage()Z

    move-result v0

    return v0
.end method

.method private static final installRightsObject(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "file"
    .parameter "mediaType"

    .prologue
    const/4 v7, 0x0

    .line 4090
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 4092
    :cond_0
    const-string v8, "HtcWrapDrmStore"

    const-string v9, "installRightsObject Input error."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4148
    :cond_1
    :goto_0
    return-object v7

    .line 4096
    :cond_2
    const/4 v3, 0x0

    .line 4098
    .local v3, fin:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4099
    .end local v3           #fin:Ljava/io/FileInputStream;
    .local v4, fin:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v5

    .line 4100
    .local v5, manager:Landroid/drm/mobile1/DrmRightsManager;
    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v8

    invoke-virtual {v5, v4, v8, p1}, Landroid/drm/mobile1/DrmRightsManager;->installRights(Ljava/io/InputStream;ILjava/lang/String;)Landroid/drm/mobile1/DrmRights;

    move-result-object v6

    .line 4101
    .local v6, rights:Landroid/drm/mobile1/DrmRights;
    if-eqz v6, :cond_3

    .line 4102
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 4103
    invoke-virtual {v6}, Landroid/drm/mobile1/DrmRights;->getUid()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    move-result-object v7

    .line 4139
    if-eqz v4, :cond_1

    .line 4140
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 4142
    :catch_0
    move-exception v0

    .line 4144
    .local v0, e:Ljava/lang/Exception;
    const-string v8, "HtcWrapDrmStore"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    .end local v4           #fin:Ljava/io/FileInputStream;
    .end local v5           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v6           #rights:Landroid/drm/mobile1/DrmRights;
    :goto_1
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4105
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    .restart local v5       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v6       #rights:Landroid/drm/mobile1/DrmRights;
    :cond_3
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9

    .line 4139
    if-eqz v4, :cond_4

    .line 4140
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    :cond_4
    :goto_2
    move-object v3, v4

    .line 4147
    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    goto :goto_0

    .line 4106
    .end local v5           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v6           #rights:Landroid/drm/mobile1/DrmRights;
    :catch_1
    move-exception v0

    move-object v4, v3

    .line 4108
    .end local v3           #fin:Ljava/io/FileInputStream;
    .restart local v0       #e:Ljava/lang/Exception;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    :goto_3
    :try_start_5
    const-string v8, "HtcWrapDrmStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Install right: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4112
    if-eqz v4, :cond_5

    .line 4113
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 4122
    :cond_5
    :goto_4
    :try_start_7
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 4123
    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    :try_start_8
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v5

    .line 4124
    .restart local v5       #manager:Landroid/drm/mobile1/DrmRightsManager;
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v8

    invoke-virtual {v5, v3, v8, p1}, Landroid/drm/mobile1/DrmRightsManager;->installRights(Ljava/io/InputStream;ILjava/lang/String;)Landroid/drm/mobile1/DrmRights;

    move-result-object v6

    .line 4126
    .restart local v6       #rights:Landroid/drm/mobile1/DrmRights;
    if-eqz v6, :cond_7

    .line 4127
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 4128
    invoke-virtual {v6}, Landroid/drm/mobile1/DrmRights;->getUid()Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    move-result-object v7

    .line 4139
    if-eqz v3, :cond_1

    .line 4140
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_0

    .line 4142
    :catch_2
    move-exception v0

    .line 4144
    const-string v8, "HtcWrapDrmStore"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 4115
    .end local v3           #fin:Ljava/io/FileInputStream;
    .end local v5           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v6           #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    :catch_3
    move-exception v1

    .line 4117
    .local v1, e2:Ljava/lang/Exception;
    :try_start_a
    const-string v8, "HtcWrapDrmStore"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_4

    .line 4138
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #e2:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    move-object v3, v4

    .line 4139
    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    :goto_5
    if-eqz v3, :cond_6

    .line 4140
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    .line 4138
    :cond_6
    :goto_6
    throw v7

    .line 4131
    .restart local v0       #e:Ljava/lang/Exception;
    .restart local v5       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v6       #rights:Landroid/drm/mobile1/DrmRights;
    :cond_7
    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    .line 4139
    .end local v5           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v6           #rights:Landroid/drm/mobile1/DrmRights;
    :goto_7
    if-eqz v3, :cond_1

    .line 4140
    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    goto/16 :goto_0

    .line 4142
    :catch_4
    move-exception v0

    .line 4144
    const-string v8, "HtcWrapDrmStore"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 4132
    .end local v3           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    :catch_5
    move-exception v2

    move-object v3, v4

    .line 4134
    .end local v4           #fin:Ljava/io/FileInputStream;
    .local v2, e3:Ljava/lang/Exception;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    :goto_8
    :try_start_e
    const-string v8, "HtcWrapDrmStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Install right: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_7

    .line 4138
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #e3:Ljava/lang/Exception;
    :catchall_1
    move-exception v7

    goto :goto_5

    .line 4142
    :catch_6
    move-exception v0

    .line 4144
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v8, "HtcWrapDrmStore"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 4142
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    .restart local v5       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v6       #rights:Landroid/drm/mobile1/DrmRights;
    :catch_7
    move-exception v0

    .line 4144
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v8, "HtcWrapDrmStore"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 4132
    .end local v4           #fin:Ljava/io/FileInputStream;
    .end local v5           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v6           #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    :catch_8
    move-exception v2

    goto :goto_8

    .line 4106
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    :catch_9
    move-exception v0

    goto/16 :goto_3
.end method

.method public static final isDrmContent(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 1
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 7195
    const/4 v0, 0x1

    return v0
.end method

.method public static final isDrmContent(Ljava/lang/String;)Z
    .locals 1
    .parameter "filePath"

    .prologue
    .line 7199
    const/4 v0, 0x1

    return v0
.end method

.method public static final isFLDrmFile(Ljava/io/File;)Z
    .locals 10
    .parameter "file"

    .prologue
    .line 2241
    const-string v7, "HtcWrapDrmStore"

    const-string v8, " @@@@@     isFLDrmFile() - BEGIN. "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2244
    const/4 v0, 0x0

    .line 2245
    .local v0, bResult:Z
    const/4 v4, 0x0

    .line 2246
    .local v4, fin:Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 2250
    .local v1, drmContent:Landroid/drm/mobile1/DrmRawContent;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2251
    .end local v4           #fin:Ljava/io/FileInputStream;
    .local v5, fin:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v2, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual {v5}, Ljava/io/FileInputStream;->available()I

    move-result v7

    const-string v8, "application/vnd.oma.drm.message"

    invoke-direct {v2, v5, v7, v8}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 2255
    .end local v1           #drmContent:Landroid/drm/mobile1/DrmRawContent;
    .local v2, drmContent:Landroid/drm/mobile1/DrmRawContent;
    :try_start_2
    invoke-virtual {v2}, Landroid/drm/mobile1/DrmRawContent;->getRawType()I

    move-result v6

    .line 2259
    .local v6, method:I
    const-string v7, "HtcWrapDrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " @@@@@     method = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 2262
    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 2264
    const/4 v0, 0x1

    .line 2280
    :cond_0
    if-eqz v5, :cond_1

    .line 2282
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_1
    :goto_0
    move-object v1, v2

    .end local v2           #drmContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v1       #drmContent:Landroid/drm/mobile1/DrmRawContent;
    move-object v4, v5

    .line 2293
    .end local v5           #fin:Ljava/io/FileInputStream;
    .end local v6           #method:I
    .restart local v4       #fin:Ljava/io/FileInputStream;
    :cond_2
    :goto_1
    const-string v7, "HtcWrapDrmStore"

    const-string v8, " @@@@@     isFLDrmFile() - END. "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2296
    return v0

    .line 2267
    :catch_0
    move-exception v3

    .line 2269
    .local v3, e:Ljava/lang/Exception;
    :goto_2
    const/4 v0, 0x0

    .line 2273
    :try_start_4
    const-string v7, "HtcWrapDrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " @@@@@     "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2280
    if-eqz v4, :cond_2

    .line 2282
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 2285
    :catch_1
    move-exception v3

    .line 2287
    const-string v7, "HtcWrapDrmStore"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2278
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 2280
    :goto_3
    if-eqz v4, :cond_3

    .line 2282
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 2278
    :cond_3
    :goto_4
    throw v7

    .line 2285
    :catch_2
    move-exception v3

    .line 2287
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v8, "HtcWrapDrmStore"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2285
    .end local v1           #drmContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v2       #drmContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v5       #fin:Ljava/io/FileInputStream;
    .restart local v6       #method:I
    :catch_3
    move-exception v3

    .line 2287
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v7, "HtcWrapDrmStore"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2278
    .end local v2           #drmContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v3           #e:Ljava/lang/Exception;
    .end local v6           #method:I
    .restart local v1       #drmContent:Landroid/drm/mobile1/DrmRawContent;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    goto :goto_3

    .end local v1           #drmContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v2       #drmContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v5       #fin:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v7

    move-object v1, v2

    .end local v2           #drmContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v1       #drmContent:Landroid/drm/mobile1/DrmRawContent;
    move-object v4, v5

    .end local v5           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    goto :goto_3

    .line 2267
    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v5       #fin:Ljava/io/FileInputStream;
    :catch_4
    move-exception v3

    move-object v4, v5

    .end local v5           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    goto :goto_2

    .end local v1           #drmContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v2       #drmContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v5       #fin:Ljava/io/FileInputStream;
    :catch_5
    move-exception v3

    move-object v1, v2

    .end local v2           #drmContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v1       #drmContent:Landroid/drm/mobile1/DrmRawContent;
    move-object v4, v5

    .end local v5           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static final isRightsUnlimited(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 1
    .parameter "cx"
    .parameter "uri"

    .prologue
    .line 7207
    const/4 v0, 0x1

    return v0
.end method

.method public static final isRightsValidByResultCode(I)Z
    .locals 1
    .parameter "resultCode"

    .prologue
    .line 7203
    const/4 v0, 0x1

    return v0
.end method

.method private static final parseAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/ContentValues;
    .locals 6
    .parameter "cx"
    .parameter "file"
    .parameter "mediaType"
    .parameter "mimeType"
    .parameter "uri"

    .prologue
    .line 4425
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->parseAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;I)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method private static final parseAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;I)Landroid/content/ContentValues;
    .locals 7
    .parameter "cx"
    .parameter "file"
    .parameter "mediaType"
    .parameter "mimeType"
    .parameter "uri"
    .parameter "destination"

    .prologue
    .line 4432
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->parseAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;IZ)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method private static final parseAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;IZ)Landroid/content/ContentValues;
    .locals 31
    .parameter "cx"
    .parameter "file"
    .parameter "mediaType"
    .parameter "mimeType"
    .parameter "uri"
    .parameter "destination"
    .parameter "skipMediaDbUpdate"

    .prologue
    .line 4449
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 4450
    .local v3, cr:Landroid/content/ContentResolver;
    new-instance v29, Landroid/content/ContentValues;

    const/4 v4, 0x3

    move-object/from16 v0, v29

    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 4451
    .local v29, values:Landroid/content/ContentValues;
    new-instance v19, Landroid/media/MediaInfo;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/media/MediaInfo;-><init>(Landroid/content/Context;)V

    .line 4452
    .local v19, mediaInfo:Landroid/media/MediaInfo;
    const/16 v20, 0x0

    .line 4453
    .local v20, mediaTag:Landroid/media/MediaInfo$MediaTag;
    const/16 v23, 0x0

    .line 4455
    .local v23, parseFile:Ljava/io/File;
    :try_start_0
    const-string v4, "application/vnd.oma.drm.content"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4456
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/media/MediaInfo;->parseSingleFile(Ljava/lang/String;)Landroid/media/MediaInfo$MediaTag;

    move-result-object v20

    .line 4457
    if-eqz v20, :cond_0

    .line 4458
    const/4 v4, 0x3

    move-object/from16 v0, v20

    iput v4, v0, Landroid/media/MediaInfo$MediaTag;->mDrmType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4554
    :cond_0
    :goto_0
    if-eqz v20, :cond_14

    .line 4557
    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->TITLE_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p4

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 4558
    .local v13, cursor:Landroid/database/Cursor;
    if-eqz v13, :cond_b

    .line 4559
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 4560
    const-string v4, "_data"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 4561
    .local v25, pathIndex:I
    move/from16 v0, v25

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    .line 4562
    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 4563
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    .line 4568
    .end local v25           #pathIndex:I
    :cond_1
    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 4574
    :goto_2
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mediaTag.mPath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    iget-object v6, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4575
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mediaTag.mAlbum = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    iget-object v6, v0, Landroid/media/MediaInfo$MediaTag;->mAlbum:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4576
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mediaTag.mArtist = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    iget-object v6, v0, Landroid/media/MediaInfo$MediaTag;->mArtist:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4577
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mediaTag.mFilename = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    iget-object v6, v0, Landroid/media/MediaInfo$MediaTag;->mFilename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4578
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mediaTag.mTitle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    iget-object v6, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4582
    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    if-nez v4, :cond_e

    .line 4584
    const-string v4, "HtcWrapDrmStore"

    const-string v5, "No title information in content, we have to decide one"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4586
    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->TITLE_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p4

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 4587
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_d

    .line 4588
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 4589
    const-string v4, "title"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 4590
    .local v28, titleIndex:I
    move/from16 v0, v28

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    .line 4591
    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 4592
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    .line 4597
    .end local v28           #titleIndex:I
    :cond_2
    :goto_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 4602
    :goto_4
    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 4603
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "We decide the tilte is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    iget-object v6, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4613
    .end local v9           #c:Landroid/database/Cursor;
    :cond_3
    :goto_5
    sget-object v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Albums;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->ALBUMS_PROJECTION:[Ljava/lang/String;

    const-string v6, "album=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/media/MediaInfo$MediaTag;->mAlbum:Ljava/lang/String;

    move-object/from16 v30, v0

    aput-object v30, v7, v8

    const-string v8, "album_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 4615
    .local v10, cAlbums:Landroid/database/Cursor;
    if-nez v10, :cond_f

    .line 4617
    const-string v4, "HtcWrapDrmStore"

    const-string v5, "query Albums failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4624
    const/16 v29, 0x0

    .line 4743
    .end local v10           #cAlbums:Landroid/database/Cursor;
    .end local v13           #cursor:Landroid/database/Cursor;
    .end local v29           #values:Landroid/content/ContentValues;
    :cond_4
    :goto_6
    return-object v29

    .line 4462
    .restart local v29       #values:Landroid/content/ContentValues;
    :cond_5
    const/16 v16, 0x0

    .line 4464
    .local v16, extention:Ljava/lang/String;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p3 .. p3}, Landroid/media/MediaFile;->getExtensionForMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 4485
    const/4 v4, 0x7

    move/from16 v0, p5

    if-ne v0, v4, :cond_8

    .line 4488
    new-instance v24, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/data/com.android.providers.drm/rights/PHONE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v23           #parseFile:Ljava/io/File;
    .local v24, parseFile:Ljava/io/File;
    move-object/from16 v23, v24

    .line 4503
    .end local v24           #parseFile:Ljava/io/File;
    .restart local v23       #parseFile:Ljava/io/File;
    :goto_7
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Create template file:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4506
    new-instance v22, Ljava/io/FileOutputStream;

    invoke-direct/range {v22 .. v23}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 4507
    .local v22, os:Ljava/io/FileOutputStream;
    new-instance v17, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4508
    .local v17, fin:Ljava/io/FileInputStream;
    new-instance v12, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->available()I

    move-result v4

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v12, v0, v4, v1}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 4509
    .local v12, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v18

    .line 4510
    .local v18, manager:Landroid/drm/mobile1/DrmRightsManager;
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v26

    .line 4511
    .local v26, rights:Landroid/drm/mobile1/DrmRights;
    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Landroid/drm/mobile1/DrmRawContent;->getContentInputStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;

    move-result-object v27

    .line 4512
    .local v27, stream:Ljava/io/InputStream;
    invoke-virtual {v12}, Landroid/drm/mobile1/DrmRawContent;->getRawType()I

    move-result v21

    .line 4513
    .local v21, method:I
    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->saveFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)I

    .line 4514
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileOutputStream;->close()V

    .line 4515
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V

    .line 4516
    if-eqz v27, :cond_6

    .line 4517
    invoke-virtual/range {v27 .. v27}, Ljava/io/InputStream;->close()V

    .line 4522
    :cond_6
    sget-object v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->CMD_CHMOD:[Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 4523
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->CMD_CHMOD:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    .line 4526
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/media/MediaInfo;->parseSingleFile(Ljava/lang/String;)Landroid/media/MediaInfo$MediaTag;

    move-result-object v20

    .line 4527
    if-eqz v20, :cond_7

    .line 4528
    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/media/MediaInfo$MediaTag;->mDrmType:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4538
    :cond_7
    if-eqz v23, :cond_0

    :try_start_2
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4539
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4540
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to delete: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 4546
    .end local v12           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v16           #extention:Ljava/lang/String;
    .end local v17           #fin:Ljava/io/FileInputStream;
    .end local v18           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v21           #method:I
    .end local v22           #os:Ljava/io/FileOutputStream;
    .end local v26           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v27           #stream:Ljava/io/InputStream;
    .end local v29           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v15

    .line 4548
    .local v15, e:Ljava/lang/Exception;
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parse DCF audio. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v15}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4550
    const/16 v29, 0x0

    goto/16 :goto_6

    .line 4493
    .end local v15           #e:Ljava/lang/Exception;
    .restart local v16       #extention:Ljava/lang/String;
    .restart local v29       #values:Landroid/content/ContentValues;
    :cond_8
    :try_start_3
    new-instance v24, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/data/com.android.providers.drm/rights/DRM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .end local v23           #parseFile:Ljava/io/File;
    .restart local v24       #parseFile:Ljava/io/File;
    move-object/from16 v23, v24

    .end local v24           #parseFile:Ljava/io/File;
    .restart local v23       #parseFile:Ljava/io/File;
    goto/16 :goto_7

    .line 4530
    :catch_1
    move-exception v15

    .line 4532
    .local v15, e:Ljava/io/IOException;
    :try_start_4
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parse DM audio. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v15}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4534
    const/16 v29, 0x0

    .line 4538
    .end local v29           #values:Landroid/content/ContentValues;
    if-eqz v23, :cond_4

    :try_start_5
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4539
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_4

    .line 4540
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to delete: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 4538
    .end local v15           #e:Ljava/io/IOException;
    .restart local v29       #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    if-eqz v23, :cond_9

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 4539
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_9

    .line 4540
    const-string v5, "HtcWrapDrmStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to delete: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4538
    :cond_9
    throw v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 4566
    .end local v16           #extention:Ljava/lang/String;
    .restart local v13       #cursor:Landroid/database/Cursor;
    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    goto/16 :goto_1

    .line 4570
    :cond_b
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    goto/16 :goto_2

    .line 4595
    .restart local v9       #c:Landroid/database/Cursor;
    :cond_c
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    goto/16 :goto_3

    .line 4599
    :cond_d
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    goto/16 :goto_4

    .line 4608
    .end local v9           #c:Landroid/database/Cursor;
    :cond_e
    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    if-eqz v4, :cond_3

    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    const-string v5, "<unknown>"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 4609
    const-string v4, "title"

    move-object/from16 v0, v20

    iget-object v5, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 4627
    .restart local v10       #cAlbums:Landroid/database/Cursor;
    :cond_f
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cAlbums.getCount() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4629
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_10

    .line 4630
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 4632
    const-string v4, "HtcWrapDrmStore"

    const-string v5, "Insert a new album."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4634
    new-instance v14, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v14, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 4635
    .local v14, cv:Landroid/content/ContentValues;
    const-string v4, "album"

    move-object/from16 v0, v20

    iget-object v5, v0, Landroid/media/MediaInfo$MediaTag;->mAlbum:Ljava/lang/String;

    invoke-virtual {v14, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4636
    sget-object v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Albums;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 4637
    sget-object v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Albums;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->ALBUMS_PROJECTION:[Ljava/lang/String;

    const-string v6, "album=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/media/MediaInfo$MediaTag;->mAlbum:Ljava/lang/String;

    move-object/from16 v30, v0

    aput-object v30, v7, v8

    const-string v8, "album_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 4639
    if-nez v10, :cond_10

    .line 4641
    const-string v4, "HtcWrapDrmStore"

    const-string v5, "query Albums failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4648
    const/16 v29, 0x0

    goto/16 :goto_6

    .line 4651
    .end local v14           #cv:Landroid/content/ContentValues;
    :cond_10
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4652
    const-string v4, "album_id"

    const/4 v5, 0x0

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4654
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Insert album id is = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4656
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 4659
    sget-object v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Artists;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->ARTISTS_PROJECTION:[Ljava/lang/String;

    const-string v6, "artist=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/media/MediaInfo$MediaTag;->mArtist:Ljava/lang/String;

    move-object/from16 v30, v0

    aput-object v30, v7, v8

    const-string v8, "artist_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 4661
    .local v11, cArtists:Landroid/database/Cursor;
    if-nez v11, :cond_11

    .line 4663
    const-string v4, "HtcWrapDrmStore"

    const-string v5, "query Artists failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4670
    const/16 v29, 0x0

    goto/16 :goto_6

    .line 4673
    :cond_11
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cArtists.getCount() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4675
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_12

    .line 4676
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 4678
    const-string v4, "HtcWrapDrmStore"

    const-string v5, "Insert a new artist."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4680
    new-instance v14, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v14, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 4681
    .restart local v14       #cv:Landroid/content/ContentValues;
    const-string v4, "artist"

    move-object/from16 v0, v20

    iget-object v5, v0, Landroid/media/MediaInfo$MediaTag;->mArtist:Ljava/lang/String;

    invoke-virtual {v14, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4682
    sget-object v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Artists;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 4683
    sget-object v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Artists;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->ARTISTS_PROJECTION:[Ljava/lang/String;

    const-string v6, "artist=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/media/MediaInfo$MediaTag;->mArtist:Ljava/lang/String;

    move-object/from16 v30, v0

    aput-object v30, v7, v8

    const-string v8, "artist_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 4685
    if-nez v11, :cond_12

    .line 4687
    const-string v4, "HtcWrapDrmStore"

    const-string v5, "query Artists failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4691
    .end local v14           #cv:Landroid/content/ContentValues;
    :cond_12
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4692
    const-string v4, "artist_id"

    const/4 v5, 0x0

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4694
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Insert artist id is = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4696
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 4698
    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mMimeType:Ljava/lang/String;

    if-nez v4, :cond_13

    .line 4699
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/media/MediaInfo$MediaTag;->mMimeType:Ljava/lang/String;

    .line 4705
    :cond_13
    if-nez p6, :cond_4

    .line 4707
    :try_start_6
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaInfo;->insertDRMAudioToMediaProvider(Landroid/media/MediaInfo$MediaTag;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_4

    .line 4709
    const-string v4, "HtcWrapDrmStore"

    const-string v5, "Insert DRM content to MediaProvider failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 4716
    const/16 v29, 0x0

    goto/16 :goto_6

    .line 4718
    :catch_2
    move-exception v15

    .line 4720
    .local v15, e:Ljava/lang/Exception;
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Insert DRM content to MediaProvider Exceptoin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v15}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4727
    const/16 v29, 0x0

    goto/16 :goto_6

    .line 4733
    .end local v10           #cAlbums:Landroid/database/Cursor;
    .end local v11           #cArtists:Landroid/database/Cursor;
    .end local v13           #cursor:Landroid/database/Cursor;
    .end local v15           #e:Ljava/lang/Exception;
    :cond_14
    const-string v4, "HtcWrapDrmStore"

    const-string v5, "Parse mediaTag return null."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6
.end method

.method public static final renewRights(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 1
    .parameter "cx"
    .parameter "uri"

    .prologue
    .line 7187
    const/4 v0, 0x0

    return v0
.end method

.method public static final renewRights(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)I
    .locals 18
    .parameter "cx"
    .parameter "contentUri"
    .parameter "strFilePath"

    .prologue
    .line 5762
    const/16 v16, 0x0

    .line 5764
    .local v16, res:I
    const-string v1, "HtcWrapDrmStore"

    const-string v2, "renewRights"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5766
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 5768
    :cond_0
    const-string v1, "HtcWrapDrmStore"

    const-string v2, "renewRights : -2"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5770
    const/4 v1, -0x2

    .line 5830
    :goto_0
    return v1

    .line 5773
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    const-string v4, "_data=?"

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v5, v2

    const-string v6, "_id"

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 5775
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_2

    .line 5777
    const-string v1, "HtcWrapDrmStore"

    const-string v2, "renewRights query failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5779
    const/4 v1, -0x6

    goto :goto_0

    .line 5780
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_3

    .line 5782
    const-string v1, "HtcWrapDrmStore"

    const-string v2, "renewRights no record."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5784
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 5785
    const/4 v1, -0x6

    goto :goto_0

    .line 5788
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5789
    const-string v1, "message_type"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 5790
    .local v15, messageTypeColumnId:I
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 5791
    .local v14, messageType:Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 5793
    const-string v1, "application/vnd.oma.drm.content"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 5795
    const-string v1, "HtcWrapDrmStore"

    const-string v2, "renewRights : -2"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5797
    const/4 v1, -0x2

    goto :goto_0

    .line 5800
    :cond_4
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5802
    .local v10, file:Ljava/io/File;
    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 5803
    .local v11, fis:Ljava/io/InputStream;
    new-instance v8, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual {v11}, Ljava/io/InputStream;->available()I

    move-result v1

    invoke-direct {v8, v11, v1, v14}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 5804
    .local v8, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-virtual {v8}, Landroid/drm/mobile1/DrmRawContent;->getRightsAddress()Ljava/lang/String;

    move-result-object v13

    .line 5805
    .local v13, issuer:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 5806
    if-nez v13, :cond_5

    .line 5808
    const-string v1, "HtcWrapDrmStore"

    const-string v2, "renewRights : -7"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5810
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 5811
    const/4 v1, -0x7

    goto :goto_0

    .line 5813
    :cond_5
    const-string v1, "\\"

    const-string v2, "/"

    invoke-virtual {v13, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 5815
    const-string v1, "HtcWrapDrmStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Right Issure = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5817
    new-instance v12, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v12, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5818
    .local v12, intent:Landroid/content/Intent;
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 5819
    .local v17, righturi:Landroid/net/Uri;
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 5820
    const/high16 v1, 0x1000

    invoke-virtual {v12, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5822
    const-string v1, "com.android.browser.application_id"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5823
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v8           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v11           #fis:Ljava/io/InputStream;
    .end local v12           #intent:Landroid/content/Intent;
    .end local v13           #issuer:Ljava/lang/String;
    .end local v17           #righturi:Landroid/net/Uri;
    :goto_1
    move/from16 v1, v16

    .line 5830
    goto/16 :goto_0

    .line 5824
    :catch_0
    move-exception v9

    .line 5826
    .local v9, e:Ljava/lang/Exception;
    const-string v1, "HtcWrapDrmStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "renewRights : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5828
    const/16 v16, -0x1

    goto :goto_1
.end method

.method public static final renewRights(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)I
    .locals 16
    .parameter "cx"
    .parameter "contentUri"
    .parameter "strFilePath"
    .parameter "className"

    .prologue
    .line 5972
    const-string v1, "HtcWrapDrmStore"

    const-string v2, "********renewRights  (2)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5975
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 5977
    :cond_0
    const-string v1, "HtcWrapDrmStore"

    const-string v2, "renewRights  (2) : -2"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5979
    const/4 v1, -0x2

    .line 6092
    :goto_0
    return v1

    .line 5982
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    const-string v4, "_data=?"

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v5, v2

    const-string v6, "_id"

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 5984
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_2

    .line 5986
    const-string v1, "HtcWrapDrmStore"

    const-string v2, "renewRights  (2) : -6"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5988
    const/4 v1, -0x6

    goto :goto_0

    .line 5989
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_3

    .line 5991
    const-string v1, "HtcWrapDrmStore"

    const-string v2, "renewRights  (2) :  no record."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5993
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 5994
    const/4 v1, -0x6

    goto :goto_0

    .line 5997
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5998
    const-string v1, "message_type"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 5999
    .local v14, messageTypeColumnId:I
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 6000
    .local v13, messageType:Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 6002
    const-string v1, "application/vnd.oma.drm.content"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 6004
    const-string v1, "HtcWrapDrmStore"

    const-string v2, "renewRights  (2) : -2"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6006
    const/4 v1, -0x2

    goto :goto_0

    .line 6009
    :cond_4
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6011
    .local v10, file:Ljava/io/File;
    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 6012
    .local v11, fis:Ljava/io/InputStream;
    new-instance v8, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual {v11}, Ljava/io/InputStream;->available()I

    move-result v1

    invoke-direct {v8, v11, v1, v13}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 6013
    .local v8, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-virtual {v8}, Landroid/drm/mobile1/DrmRawContent;->getRightsAddress()Ljava/lang/String;

    move-result-object v12

    .line 6014
    .local v12, issuer:Ljava/lang/String;
    if-nez v12, :cond_5

    .line 6016
    const-string v1, "HtcWrapDrmStore"

    const-string v2, "Null issuer : -9"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6018
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 6019
    const/16 v1, -0x9

    goto :goto_0

    .line 6020
    :cond_5
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_6

    .line 6022
    const-string v1, "HtcWrapDrmStore"

    const-string v2, "Empty issuer : -9"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6024
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 6025
    const/16 v1, -0x9

    goto/16 :goto_0

    .line 6027
    :cond_6
    const-string v1, "\\"

    const-string v2, "/"

    invoke-virtual {v12, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 6029
    const-string v1, "HtcWrapDrmStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Right Issure = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 6033
    :try_start_1
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 6035
    .local v15, values:Landroid/content/ContentValues;
    const-string v1, "uri"

    invoke-virtual {v15, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6036
    const-string v1, "notificationpackage"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6038
    const-string v1, "notificationclass"

    move-object/from16 v0, p3

    invoke-virtual {v15, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6040
    const-string v1, "visibility"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6042
    const-string v1, "is_visible_in_downloads_ui"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 6047
    const-string v1, "restriction"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6077
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v15}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 6092
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 6079
    .end local v15           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v9

    .line 6081
    .local v9, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "HtcWrapDrmStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "renewRights  (2) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6083
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 6084
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 6086
    .end local v8           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v9           #e:Ljava/lang/Exception;
    .end local v11           #fis:Ljava/io/InputStream;
    .end local v12           #issuer:Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 6088
    .restart local v9       #e:Ljava/lang/Exception;
    const-string v1, "HtcWrapDrmStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "renewRights  (2) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6090
    const/4 v1, -0x1

    goto/16 :goto_0
.end method

.method private static final saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/io/FileOutputStream;)I
    .locals 22
    .parameter "file"
    .parameter "content"
    .parameter "os"

    .prologue
    .line 3449
    const/4 v15, 0x0

    .line 3451
    .local v15, res:I
    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3452
    .local v11, fin_header:Ljava/io/FileInputStream;
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRawContent;->getContentOffset(Landroid/drm/mobile1/DrmRights;)I

    move-result v5

    .line 3454
    .local v5, contentOffset:I
    new-array v13, v5, [B

    .line 3455
    .local v13, header_buffer:[B
    invoke-virtual {v11, v13}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .line 3456
    .local v6, count:I
    if-ne v6, v5, :cond_1

    .line 3457
    const/16 v19, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v13, v1, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 3459
    const-string v19, "HtcWrapDrmStore"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Header has "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " bytes"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3468
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 3472
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v14

    .line 3473
    .local v14, manager:Landroid/drm/mobile1/DrmRightsManager;
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v16

    .line 3474
    .local v16, rights:Landroid/drm/mobile1/DrmRights;
    if-nez v16, :cond_0

    .line 3476
    const-string v19, "HtcWrapDrmStore"

    const-string v20, "rights == null."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3479
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRawContent;->getContentInputStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;

    move-result-object v17

    .line 3480
    .local v17, stream:Ljava/io/InputStream;
    move v10, v5

    .line 3481
    .local v10, endOfContent:I
    const/16 v19, 0x400

    move/from16 v0, v19

    new-array v3, v0, [B

    .line 3482
    .local v3, buffer:[B
    const/16 v19, 0x400

    move/from16 v0, v19

    new-array v8, v0, [B

    .line 3483
    .local v8, encryptBuffer:[B
    :goto_0
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v6, v0, :cond_4

    .line 3484
    add-int/2addr v10, v6

    .line 3485
    array-length v0, v8

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v6, v0, :cond_2

    const/16 v19, 0x1

    :goto_1
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v3, v8, v6, v1}, Landroid/drm/mobile1/DrmRawContent;->encrypt([B[BIZ)I

    move-result v9

    .line 3486
    .local v9, encryptRes:I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v9, v0, :cond_3

    .line 3487
    const/16 v19, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v8, v1, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3526
    .end local v3           #buffer:[B
    .end local v5           #contentOffset:I
    .end local v6           #count:I
    .end local v8           #encryptBuffer:[B
    .end local v9           #encryptRes:I
    .end local v10           #endOfContent:I
    .end local v11           #fin_header:Ljava/io/FileInputStream;
    .end local v13           #header_buffer:[B
    .end local v14           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v16           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v17           #stream:Ljava/io/InputStream;
    :catch_0
    move-exception v7

    .line 3528
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v19, "HtcWrapDrmStore"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3530
    const/4 v15, -0x1

    move v6, v15

    .line 3534
    .end local v7           #e:Ljava/lang/Exception;
    :goto_2
    return v6

    .line 3462
    .restart local v5       #contentOffset:I
    .restart local v6       #count:I
    .restart local v11       #fin_header:Ljava/io/FileInputStream;
    .restart local v13       #header_buffer:[B
    :cond_1
    :try_start_2
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 3464
    const-string v19, "HtcWrapDrmStore"

    const-string v20, "Read header failed."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3466
    const/4 v6, -0x1

    goto :goto_2

    .line 3485
    .restart local v3       #buffer:[B
    .restart local v8       #encryptBuffer:[B
    .restart local v10       #endOfContent:I
    .restart local v14       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v16       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v17       #stream:Ljava/io/InputStream;
    :cond_2
    const/16 v19, 0x0

    goto :goto_1

    .line 3489
    .restart local v9       #encryptRes:I
    :cond_3
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    .line 3491
    const-string v19, "HtcWrapDrmStore"

    const-string v20, "Encrypt content failed."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3493
    const/4 v6, -0x1

    goto :goto_2

    .line 3498
    .end local v9           #encryptRes:I
    :cond_4
    sub-int v4, v10, v5

    .line 3499
    .local v4, contentCount:I
    const-string v19, "HtcWrapDrmStore"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Content has "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " bytes"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3502
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    .line 3506
    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3507
    .local v12, fin_tailer:Ljava/io/FileInputStream;
    int-to-long v0, v10

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    invoke-virtual {v12, v0, v1}, Ljava/io/FileInputStream;->skip(J)J

    .line 3508
    const/16 v19, 0x100

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 3509
    .local v18, tailerBuffer:[B
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .line 3510
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v6, v0, :cond_5

    .line 3511
    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 3513
    const-string v19, "HtcWrapDrmStore"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Tail has "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " bytes"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3522
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 3523
    invoke-virtual/range {p2 .. p2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/FileDescriptor;->sync()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 3531
    .end local v3           #buffer:[B
    .end local v4           #contentCount:I
    .end local v5           #contentOffset:I
    .end local v6           #count:I
    .end local v8           #encryptBuffer:[B
    .end local v10           #endOfContent:I
    .end local v11           #fin_header:Ljava/io/FileInputStream;
    .end local v12           #fin_tailer:Ljava/io/FileInputStream;
    .end local v13           #header_buffer:[B
    .end local v14           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v16           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v17           #stream:Ljava/io/InputStream;
    .end local v18           #tailerBuffer:[B
    :catchall_0
    move-exception v19

    throw v19

    .line 3516
    .restart local v3       #buffer:[B
    .restart local v4       #contentCount:I
    .restart local v5       #contentOffset:I
    .restart local v6       #count:I
    .restart local v8       #encryptBuffer:[B
    .restart local v10       #endOfContent:I
    .restart local v11       #fin_header:Ljava/io/FileInputStream;
    .restart local v12       #fin_tailer:Ljava/io/FileInputStream;
    .restart local v13       #header_buffer:[B
    .restart local v14       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v16       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v17       #stream:Ljava/io/InputStream;
    .restart local v18       #tailerBuffer:[B
    :cond_5
    :try_start_3
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 3518
    const-string v19, "HtcWrapDrmStore"

    const-string v20, "Output tailer failed."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 3520
    const/4 v6, -0x1

    goto/16 :goto_2
.end method

.method private static final declared-synchronized saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/lang/String;)I
    .locals 31
    .parameter "file"
    .parameter "content"
    .parameter "outpath"

    .prologue
    .line 3546
    const-class v28, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;

    monitor-enter v28

    const/16 v23, 0x0

    .line 3549
    .local v23, res:I
    :try_start_0
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v29, "/"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    sget-object v29, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 3551
    .local v14, garbageFileDir:Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v29, "/"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 3554
    .local v13, garbageDir:Ljava/io/File;
    :try_start_1
    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    .line 3558
    :goto_0
    :try_start_2
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v29, "/"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v29, "garbage"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 3559
    .local v15, garbageFilePath:Ljava/lang/String;
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3560
    .local v16, garbagefile:Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->createNewFile()Z

    .line 3562
    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 3563
    .local v17, garbageos:Ljava/io/FileOutputStream;
    new-instance v21, Ljava/io/FileOutputStream;

    const/16 v27, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 3565
    .local v21, os:Ljava/io/FileOutputStream;
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRawContent;->getContentOffset(Landroid/drm/mobile1/DrmRights;)I

    move-result v5

    .line 3568
    .local v5, contentOffset:I
    new-instance v11, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3569
    .local v11, fin_header:Ljava/io/FileInputStream;
    new-array v0, v5, [B

    move-object/from16 v19, v0

    .line 3570
    .local v19, header_buffer:[B
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .line 3572
    .local v6, count:I
    if-ne v6, v5, :cond_5

    .line 3573
    const/16 v27, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 3574
    const/16 v27, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 3577
    const-string v27, "HtcWrapDrmStore"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Header has "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " bytes"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 3600
    :try_start_3
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 3622
    :goto_1
    :try_start_4
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v20

    .line 3623
    .local v20, manager:Landroid/drm/mobile1/DrmRightsManager;
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v24

    .line 3625
    .local v24, rights:Landroid/drm/mobile1/DrmRights;
    if-nez v24, :cond_0

    .line 3627
    const-string v27, "HtcWrapDrmStore"

    const-string v29, "rights == null."

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3633
    :cond_0
    const/16 v25, 0x0

    .line 3634
    .local v25, stream:Ljava/io/InputStream;
    const/16 v18, 0x0

    .line 3635
    .local v18, hasFailed:Z
    const/16 v22, 0x0

    .line 3636
    .local v22, repeat:I
    const/4 v3, 0x0

    .line 3637
    .local v3, buffer:[B
    const/4 v8, 0x0

    .line 3638
    .local v8, encryptBuffer:[B
    const/4 v10, 0x0

    .line 3641
    .local v10, endOfContent:I
    const-string v27, "HtcWrapDrmStore"

    const-string v29, " @@@@@ Retrieve content!!! (saveFile)"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 3646
    :cond_1
    const/16 v18, 0x0

    .line 3648
    :try_start_5
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRawContent;->getContentInputStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v25

    .line 3661
    :goto_2
    if-nez v18, :cond_1

    .line 3664
    :try_start_6
    const-string v27, "HtcWrapDrmStore"

    const-string v29, " @@@@@ Encrypt content!!! (saveFile)"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3670
    move v10, v5

    .line 3671
    const/16 v27, 0x400

    move/from16 v0, v27

    new-array v3, v0, [B

    .line 3672
    const/16 v27, 0x400

    move/from16 v0, v27

    new-array v8, v0, [B

    .line 3674
    :goto_3
    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/16 v27, -0x1

    move/from16 v0, v27

    if-eq v6, v0, :cond_b

    .line 3675
    add-int/2addr v10, v6

    .line 3676
    array-length v0, v8

    move/from16 v27, v0

    move/from16 v0, v27

    if-eq v6, v0, :cond_8

    const/16 v27, 0x1

    :goto_4
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v3, v8, v6, v1}, Landroid/drm/mobile1/DrmRawContent;->encrypt([B[BIZ)I

    move-result v9

    .line 3679
    .local v9, encryptRes:I
    const/16 v27, -0x1

    move/from16 v0, v27

    if-eq v9, v0, :cond_9

    .line 3680
    const/16 v27, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-virtual {v0, v8, v1, v9}, Ljava/io/FileOutputStream;->write([BII)V

    .line 3681
    const/16 v27, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v8, v1, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_3

    .line 3707
    .end local v9           #encryptRes:I
    :catch_0
    move-exception v7

    .line 3709
    .local v7, e:Ljava/lang/Exception;
    :try_start_7
    const-string v27, "HtcWrapDrmStore"

    const-string v29, " @@@@@ ERROR: read content stream failed. (saveFile)"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3711
    const-string v27, "HtcWrapDrmStore"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3712
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 3714
    const/4 v3, 0x0

    .line 3715
    const/4 v8, 0x0

    .line 3718
    if-eqz v25, :cond_2

    .line 3719
    :try_start_8
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9

    .line 3723
    :cond_2
    :goto_5
    const/16 v25, 0x0

    .line 3726
    :try_start_9
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/io/FileDescriptor;->sync()V

    .line 3728
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/io/FileDescriptor;->sync()V

    .line 3729
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V

    .line 3730
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V

    .line 3732
    if-eqz v16, :cond_3

    .line 3733
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 3736
    :cond_3
    const/4 v6, -0x1

    .line 3846
    .end local v3           #buffer:[B
    .end local v5           #contentOffset:I
    .end local v6           #count:I
    .end local v7           #e:Ljava/lang/Exception;
    .end local v8           #encryptBuffer:[B
    .end local v10           #endOfContent:I
    .end local v11           #fin_header:Ljava/io/FileInputStream;
    .end local v13           #garbageDir:Ljava/io/File;
    .end local v14           #garbageFileDir:Ljava/lang/String;
    .end local v15           #garbageFilePath:Ljava/lang/String;
    .end local v16           #garbagefile:Ljava/io/File;
    .end local v17           #garbageos:Ljava/io/FileOutputStream;
    .end local v18           #hasFailed:Z
    .end local v19           #header_buffer:[B
    .end local v20           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v21           #os:Ljava/io/FileOutputStream;
    .end local v22           #repeat:I
    .end local v24           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v25           #stream:Ljava/io/InputStream;
    :cond_4
    :goto_6
    monitor-exit v28

    return v6

    .line 3580
    .restart local v5       #contentOffset:I
    .restart local v6       #count:I
    .restart local v11       #fin_header:Ljava/io/FileInputStream;
    .restart local v13       #garbageDir:Ljava/io/File;
    .restart local v14       #garbageFileDir:Ljava/lang/String;
    .restart local v15       #garbageFilePath:Ljava/lang/String;
    .restart local v16       #garbagefile:Ljava/io/File;
    .restart local v17       #garbageos:Ljava/io/FileOutputStream;
    .restart local v19       #header_buffer:[B
    .restart local v21       #os:Ljava/io/FileOutputStream;
    :cond_5
    :try_start_a
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 3583
    const-string v27, "HtcWrapDrmStore"

    const-string v29, "Read header failed."

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3586
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/io/FileDescriptor;->sync()V

    .line 3588
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/io/FileDescriptor;->sync()V

    .line 3589
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V

    .line 3590
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V

    .line 3592
    if-eqz v16, :cond_6

    .line 3593
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 3596
    :cond_6
    const/4 v6, -0x1

    goto :goto_6

    .line 3601
    :catch_1
    move-exception v7

    .line 3603
    .restart local v7       #e:Ljava/lang/Exception;
    const-string v27, "HtcWrapDrmStore"

    const-string v29, " @@@@@ ERROR: close Read header failed. (saveFile)"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3605
    const-string v27, "HtcWrapDrmStore"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3606
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_1

    .line 3836
    .end local v5           #contentOffset:I
    .end local v6           #count:I
    .end local v7           #e:Ljava/lang/Exception;
    .end local v11           #fin_header:Ljava/io/FileInputStream;
    .end local v13           #garbageDir:Ljava/io/File;
    .end local v14           #garbageFileDir:Ljava/lang/String;
    .end local v15           #garbageFilePath:Ljava/lang/String;
    .end local v16           #garbagefile:Ljava/io/File;
    .end local v17           #garbageos:Ljava/io/FileOutputStream;
    .end local v19           #header_buffer:[B
    .end local v21           #os:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v7

    .line 3839
    .restart local v7       #e:Ljava/lang/Exception;
    :try_start_b
    const-string v27, "HtcWrapDrmStore"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 3842
    const/16 v23, -0x1

    move/from16 v6, v23

    .line 3846
    goto :goto_6

    .line 3649
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v3       #buffer:[B
    .restart local v5       #contentOffset:I
    .restart local v6       #count:I
    .restart local v8       #encryptBuffer:[B
    .restart local v10       #endOfContent:I
    .restart local v11       #fin_header:Ljava/io/FileInputStream;
    .restart local v13       #garbageDir:Ljava/io/File;
    .restart local v14       #garbageFileDir:Ljava/lang/String;
    .restart local v15       #garbageFilePath:Ljava/lang/String;
    .restart local v16       #garbagefile:Ljava/io/File;
    .restart local v17       #garbageos:Ljava/io/FileOutputStream;
    .restart local v18       #hasFailed:Z
    .restart local v19       #header_buffer:[B
    .restart local v20       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v21       #os:Ljava/io/FileOutputStream;
    .restart local v22       #repeat:I
    .restart local v24       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v25       #stream:Ljava/io/InputStream;
    :catch_3
    move-exception v7

    .line 3651
    .restart local v7       #e:Ljava/lang/Exception;
    :try_start_c
    const-string v27, "HtcWrapDrmStore"

    const-string v29, " @@@@@ ERROR: get content input stream ERROR!!! (saveFile)"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3654
    const/16 v27, 0x3

    move/from16 v0, v22

    move/from16 v1, v27

    if-ge v0, v1, :cond_7

    .line 3655
    const/16 v18, 0x1

    .line 3658
    :cond_7
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_2

    .line 3676
    .end local v7           #e:Ljava/lang/Exception;
    :cond_8
    const/16 v27, 0x0

    goto/16 :goto_4

    .line 3683
    .restart local v9       #encryptRes:I
    :cond_9
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->close()V

    .line 3686
    const-string v27, "HtcWrapDrmStore"

    const-string v29, "Encrypt content failed."

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3689
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/io/FileDescriptor;->sync()V

    .line 3691
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/io/FileDescriptor;->sync()V

    .line 3692
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V

    .line 3693
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V

    .line 3695
    if-eqz v16, :cond_a

    .line 3696
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 3699
    :cond_a
    const/4 v6, -0x1

    goto/16 :goto_6

    .line 3704
    .end local v9           #encryptRes:I
    :cond_b
    sub-int v4, v10, v5

    .line 3705
    .local v4, contentCount:I
    const-string v27, "HtcWrapDrmStore"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Content has "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " bytes"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 3740
    :try_start_d
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    .line 3762
    :goto_7
    :try_start_e
    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3763
    .local v12, fin_tailer:Ljava/io/FileInputStream;
    const/16 v27, 0x100

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v26, v0

    .line 3765
    .local v26, tailerBuffer:[B
    int-to-long v0, v10

    move-wide/from16 v29, v0

    move-wide/from16 v0, v29

    invoke-virtual {v12, v0, v1}, Ljava/io/FileInputStream;->skip(J)J

    .line 3766
    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .line 3768
    const/16 v27, -0x1

    move/from16 v0, v27

    if-eq v6, v0, :cond_c

    .line 3769
    const/16 v27, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 3770
    const/16 v27, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 3773
    const-string v27, "HtcWrapDrmStore"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Tail has "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " bytes"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    .line 3797
    :try_start_f
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 3799
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/io/FileDescriptor;->sync()V

    .line 3800
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5

    .line 3811
    :goto_8
    :try_start_10
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/io/FileDescriptor;->sync()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6

    .line 3821
    :goto_9
    :try_start_11
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7

    .line 3830
    :goto_a
    if-eqz v16, :cond_4

    .line 3831
    :try_start_12
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2

    goto/16 :goto_6

    .line 3843
    .end local v3           #buffer:[B
    .end local v4           #contentCount:I
    .end local v5           #contentOffset:I
    .end local v6           #count:I
    .end local v8           #encryptBuffer:[B
    .end local v10           #endOfContent:I
    .end local v11           #fin_header:Ljava/io/FileInputStream;
    .end local v12           #fin_tailer:Ljava/io/FileInputStream;
    .end local v13           #garbageDir:Ljava/io/File;
    .end local v14           #garbageFileDir:Ljava/lang/String;
    .end local v15           #garbageFilePath:Ljava/lang/String;
    .end local v16           #garbagefile:Ljava/io/File;
    .end local v17           #garbageos:Ljava/io/FileOutputStream;
    .end local v18           #hasFailed:Z
    .end local v19           #header_buffer:[B
    .end local v20           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v21           #os:Ljava/io/FileOutputStream;
    .end local v22           #repeat:I
    .end local v24           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v25           #stream:Ljava/io/InputStream;
    .end local v26           #tailerBuffer:[B
    :catchall_0
    move-exception v27

    :try_start_13
    throw v27
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 3546
    :catchall_1
    move-exception v27

    monitor-exit v28

    throw v27

    .line 3723
    .restart local v3       #buffer:[B
    .restart local v5       #contentOffset:I
    .restart local v6       #count:I
    .restart local v7       #e:Ljava/lang/Exception;
    .restart local v8       #encryptBuffer:[B
    .restart local v10       #endOfContent:I
    .restart local v11       #fin_header:Ljava/io/FileInputStream;
    .restart local v13       #garbageDir:Ljava/io/File;
    .restart local v14       #garbageFileDir:Ljava/lang/String;
    .restart local v15       #garbageFilePath:Ljava/lang/String;
    .restart local v16       #garbagefile:Ljava/io/File;
    .restart local v17       #garbageos:Ljava/io/FileOutputStream;
    .restart local v18       #hasFailed:Z
    .restart local v19       #header_buffer:[B
    .restart local v20       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v21       #os:Ljava/io/FileOutputStream;
    .restart local v22       #repeat:I
    .restart local v24       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v25       #stream:Ljava/io/InputStream;
    :catchall_2
    move-exception v27

    const/16 v25, 0x0

    :try_start_14
    throw v27

    .line 3741
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v4       #contentCount:I
    :catch_4
    move-exception v7

    .line 3743
    .restart local v7       #e:Ljava/lang/Exception;
    const-string v27, "HtcWrapDrmStore"

    const-string v29, " @@@@@ ERROR: close content stream failed. (saveFile)"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3745
    const-string v27, "HtcWrapDrmStore"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3746
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    .line 3776
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v12       #fin_tailer:Ljava/io/FileInputStream;
    .restart local v26       #tailerBuffer:[B
    :cond_c
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 3779
    const-string v27, "HtcWrapDrmStore"

    const-string v29, "Output tailer failed."

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3782
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/io/FileDescriptor;->sync()V

    .line 3784
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/io/FileDescriptor;->sync()V

    .line 3785
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V

    .line 3786
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V

    .line 3788
    if-eqz v16, :cond_d

    .line 3789
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 3792
    :cond_d
    const/4 v6, -0x1

    goto/16 :goto_6

    .line 3801
    :catch_5
    move-exception v7

    .line 3803
    .restart local v7       #e:Ljava/lang/Exception;
    const-string v27, "HtcWrapDrmStore"

    const-string v29, " @@@@@ ERROR: close Read tail failed. (saveFile)"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3805
    const-string v27, "HtcWrapDrmStore"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3806
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 3812
    .end local v7           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v7

    .line 3814
    .restart local v7       #e:Ljava/lang/Exception;
    const-string v27, "HtcWrapDrmStore"

    const-string v29, " @@@@@ ERROR: sync Output Read tail failed. (saveFile)"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3816
    const-string v27, "HtcWrapDrmStore"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3817
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_9

    .line 3822
    .end local v7           #e:Ljava/lang/Exception;
    :catch_7
    move-exception v7

    .line 3824
    .restart local v7       #e:Ljava/lang/Exception;
    const-string v27, "HtcWrapDrmStore"

    const-string v29, " @@@@@ ERROR: close Output Read tail failed. (saveFile)"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3826
    const-string v27, "HtcWrapDrmStore"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3827
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_2

    goto/16 :goto_a

    .line 3555
    .end local v3           #buffer:[B
    .end local v4           #contentCount:I
    .end local v5           #contentOffset:I
    .end local v6           #count:I
    .end local v7           #e:Ljava/lang/Exception;
    .end local v8           #encryptBuffer:[B
    .end local v10           #endOfContent:I
    .end local v11           #fin_header:Ljava/io/FileInputStream;
    .end local v12           #fin_tailer:Ljava/io/FileInputStream;
    .end local v15           #garbageFilePath:Ljava/lang/String;
    .end local v16           #garbagefile:Ljava/io/File;
    .end local v17           #garbageos:Ljava/io/FileOutputStream;
    .end local v18           #hasFailed:Z
    .end local v19           #header_buffer:[B
    .end local v20           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v21           #os:Ljava/io/FileOutputStream;
    .end local v22           #repeat:I
    .end local v24           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v25           #stream:Ljava/io/InputStream;
    .end local v26           #tailerBuffer:[B
    :catch_8
    move-exception v27

    goto/16 :goto_0

    .line 3721
    .restart local v3       #buffer:[B
    .restart local v5       #contentOffset:I
    .restart local v6       #count:I
    .restart local v7       #e:Ljava/lang/Exception;
    .restart local v8       #encryptBuffer:[B
    .restart local v10       #endOfContent:I
    .restart local v11       #fin_header:Ljava/io/FileInputStream;
    .restart local v15       #garbageFilePath:Ljava/lang/String;
    .restart local v16       #garbagefile:Ljava/io/File;
    .restart local v17       #garbageos:Ljava/io/FileOutputStream;
    .restart local v18       #hasFailed:Z
    .restart local v19       #header_buffer:[B
    .restart local v20       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v21       #os:Ljava/io/FileOutputStream;
    .restart local v22       #repeat:I
    .restart local v24       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v25       #stream:Ljava/io/InputStream;
    :catch_9
    move-exception v27

    goto/16 :goto_5
.end method

.method private static final saveFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)I
    .locals 7
    .parameter "stream"
    .parameter "os"

    .prologue
    .line 3421
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 3423
    .local v0, buffer:[B
    const/4 v3, 0x0

    .line 3425
    .local v3, res:I
    :goto_0
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, count:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 3426
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3429
    .end local v1           #count:I
    :catch_0
    move-exception v2

    .line 3430
    .local v2, e:Ljava/lang/Exception;
    const/4 v3, -0x1

    .line 3432
    :try_start_1
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content inputstream read "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3437
    .end local v2           #e:Ljava/lang/Exception;
    :goto_1
    return v3

    .line 3428
    .restart local v1       #count:I
    :cond_0
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->sync()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 3434
    .end local v1           #count:I
    :catchall_0
    move-exception v4

    throw v4
.end method

.method private static final declared-synchronized saveFileFromBase64ToBinary(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/lang/String;)I
    .locals 27
    .parameter "file"
    .parameter "content"
    .parameter "outpath"

    .prologue
    .line 3856
    const-class v24, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;

    monitor-enter v24

    const/16 v17, 0x0

    .line 3859
    .local v17, res:I
    :try_start_0
    new-instance v14, Ljava/io/FileOutputStream;

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-direct {v14, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 3860
    .local v14, os:Ljava/io/FileOutputStream;
    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRawContent;->getContentOffset(Landroid/drm/mobile1/DrmRights;)I

    move-result v4

    .line 3863
    .local v4, contentOffset:I
    new-instance v8, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3864
    .local v8, fin_header:Ljava/io/FileInputStream;
    new-array v10, v4, [B

    .line 3865
    .local v10, header_buffer:[B
    invoke-virtual {v8, v10}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .line 3867
    .local v5, count:I
    if-ne v5, v4, :cond_3

    .line 3868
    new-instance v22, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-direct {v0, v10}, Ljava/lang/String;-><init>([B)V

    .line 3869
    .local v22, tempHeader:Ljava/lang/String;
    const-string v23, "Content-Transfer-Encoding: base64"

    const-string v25, "Content-Transfer-Encoding: binary"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3870
    .local v12, newTempHeader:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v23

    move-object/from16 v0, v23

    array-length v13, v0

    .line 3872
    .local v13, newTempHeaderCount:I
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v23

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v14, v0, v1, v13}, Ljava/io/FileOutputStream;->write([BII)V

    .line 3875
    const-string v23, "HtcWrapDrmStore"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Header has "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "("

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ") bytes. (saveFileFromBase64)"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 3878
    move v4, v13

    .line 3894
    :try_start_1
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3915
    :goto_0
    :try_start_2
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v11

    .line 3916
    .local v11, manager:Landroid/drm/mobile1/DrmRightsManager;
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v18

    .line 3918
    .local v18, rights:Landroid/drm/mobile1/DrmRights;
    if-nez v18, :cond_0

    .line 3920
    const-string v23, "HtcWrapDrmStore"

    const-string v25, "rights == null."

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3926
    :cond_0
    const/16 v19, 0x0

    .line 3927
    .local v19, stream:Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 3928
    .local v9, hasFailed:Z
    const/16 v16, 0x0

    .line 3929
    .local v16, repeat:I
    const/4 v3, 0x0

    .line 3930
    .local v3, buffer:[B
    const/4 v7, 0x0

    .line 3931
    .local v7, endOfContent:I
    const/4 v15, 0x0

    .line 3934
    .local v15, realContentLength:I
    const-string v23, "HtcWrapDrmStore"

    const-string v25, " @@@@@ Retrieve content!!! (saveFileFromBase64)"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 3939
    :cond_1
    const/4 v9, 0x0

    .line 3941
    :try_start_3
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRawContent;->getContentInputStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v19

    .line 3954
    :goto_1
    if-nez v9, :cond_1

    .line 3957
    :try_start_4
    const-string v23, "HtcWrapDrmStore"

    const-string v25, " @@@@@ Encrypt content!!! (saveFileFromBase64)"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3961
    const/16 v23, 0x400

    move/from16 v0, v23

    new-array v3, v0, [B

    .line 3963
    :goto_2
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v5, v0, :cond_5

    .line 3964
    add-int/2addr v15, v5

    .line 3965
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v14, v3, v0, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 3975
    :catch_0
    move-exception v6

    .line 3977
    .local v6, e:Ljava/lang/Exception;
    :try_start_5
    const-string v23, "HtcWrapDrmStore"

    const-string v25, " @@@@@ ERROR: read content stream failed. (saveFileFromBase64)"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3979
    const-string v23, "HtcWrapDrmStore"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3980
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 3982
    const/4 v3, 0x0

    .line 3985
    if-eqz v19, :cond_2

    .line 3986
    :try_start_6
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    .line 3990
    :cond_2
    :goto_3
    const/16 v19, 0x0

    .line 3993
    :try_start_7
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/io/FileDescriptor;->sync()V

    .line 3994
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 3996
    const/4 v5, -0x1

    .line 4079
    .end local v3           #buffer:[B
    .end local v4           #contentOffset:I
    .end local v5           #count:I
    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #endOfContent:I
    .end local v8           #fin_header:Ljava/io/FileInputStream;
    .end local v9           #hasFailed:Z
    .end local v10           #header_buffer:[B
    .end local v11           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v12           #newTempHeader:Ljava/lang/String;
    .end local v13           #newTempHeaderCount:I
    .end local v14           #os:Ljava/io/FileOutputStream;
    .end local v15           #realContentLength:I
    .end local v16           #repeat:I
    .end local v18           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v19           #stream:Ljava/io/InputStream;
    .end local v22           #tempHeader:Ljava/lang/String;
    :goto_4
    monitor-exit v24

    return v5

    .line 3880
    .restart local v4       #contentOffset:I
    .restart local v5       #count:I
    .restart local v8       #fin_header:Ljava/io/FileInputStream;
    .restart local v10       #header_buffer:[B
    .restart local v14       #os:Ljava/io/FileOutputStream;
    :cond_3
    :try_start_8
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 3883
    const-string v23, "HtcWrapDrmStore"

    const-string v25, "Read header failed."

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3887
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/io/FileDescriptor;->sync()V

    .line 3888
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    .line 3890
    const/4 v5, -0x1

    goto :goto_4

    .line 3895
    .restart local v12       #newTempHeader:Ljava/lang/String;
    .restart local v13       #newTempHeaderCount:I
    .restart local v22       #tempHeader:Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 3897
    .restart local v6       #e:Ljava/lang/Exception;
    const-string v23, "HtcWrapDrmStore"

    const-string v25, " @@@@@ ERROR: close Read header failed. (saveFileFromBase64)"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3899
    const-string v23, "HtcWrapDrmStore"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3900
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    .line 4069
    .end local v4           #contentOffset:I
    .end local v5           #count:I
    .end local v6           #e:Ljava/lang/Exception;
    .end local v8           #fin_header:Ljava/io/FileInputStream;
    .end local v10           #header_buffer:[B
    .end local v12           #newTempHeader:Ljava/lang/String;
    .end local v13           #newTempHeaderCount:I
    .end local v14           #os:Ljava/io/FileOutputStream;
    .end local v22           #tempHeader:Ljava/lang/String;
    :catch_2
    move-exception v6

    .line 4072
    .restart local v6       #e:Ljava/lang/Exception;
    :try_start_9
    const-string v23, "HtcWrapDrmStore"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 4075
    const/16 v17, -0x1

    move/from16 v5, v17

    .line 4079
    goto :goto_4

    .line 3942
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v3       #buffer:[B
    .restart local v4       #contentOffset:I
    .restart local v5       #count:I
    .restart local v7       #endOfContent:I
    .restart local v8       #fin_header:Ljava/io/FileInputStream;
    .restart local v9       #hasFailed:Z
    .restart local v10       #header_buffer:[B
    .restart local v11       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v12       #newTempHeader:Ljava/lang/String;
    .restart local v13       #newTempHeaderCount:I
    .restart local v14       #os:Ljava/io/FileOutputStream;
    .restart local v15       #realContentLength:I
    .restart local v16       #repeat:I
    .restart local v18       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v19       #stream:Ljava/io/InputStream;
    .restart local v22       #tempHeader:Ljava/lang/String;
    :catch_3
    move-exception v6

    .line 3944
    .restart local v6       #e:Ljava/lang/Exception;
    :try_start_a
    const-string v23, "HtcWrapDrmStore"

    const-string v25, " @@@@@ ERROR: get content input stream ERROR!!! (saveFileFromBase64)"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3947
    const/16 v23, 0x3

    move/from16 v0, v16

    move/from16 v1, v23

    if-ge v0, v1, :cond_4

    .line 3948
    const/4 v9, 0x1

    .line 3951
    :cond_4
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 3973
    .end local v6           #e:Ljava/lang/Exception;
    :cond_5
    const-string v23, "HtcWrapDrmStore"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, " @@@@@ Real Content has "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " bytes."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 4000
    :try_start_b
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 4022
    :goto_5
    :try_start_c
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "\r\n"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Landroid/drm/mobile1/DrmRawContent;->getBoundary()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v25, "--\r\n"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 4023
    .local v20, tail:Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v23

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v21, v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    .line 4026
    .local v21, tailCount:I
    :try_start_d
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v23

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    move/from16 v2, v21

    invoke-virtual {v14, v0, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 4029
    const-string v23, "HtcWrapDrmStore"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Tail has "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " bytes"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    .line 4046
    :try_start_e
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/io/FileDescriptor;->sync()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    .line 4056
    :goto_6
    :try_start_f
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    .line 4066
    :goto_7
    add-int v23, v4, v15

    add-int v5, v23, v21

    .line 4068
    goto/16 :goto_4

    .line 3990
    .end local v20           #tail:Ljava/lang/String;
    .end local v21           #tailCount:I
    .restart local v6       #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v23

    const/16 v19, 0x0

    :try_start_10
    throw v23
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2

    .line 4076
    .end local v3           #buffer:[B
    .end local v4           #contentOffset:I
    .end local v5           #count:I
    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #endOfContent:I
    .end local v8           #fin_header:Ljava/io/FileInputStream;
    .end local v9           #hasFailed:Z
    .end local v10           #header_buffer:[B
    .end local v11           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v12           #newTempHeader:Ljava/lang/String;
    .end local v13           #newTempHeaderCount:I
    .end local v14           #os:Ljava/io/FileOutputStream;
    .end local v15           #realContentLength:I
    .end local v16           #repeat:I
    .end local v18           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v19           #stream:Ljava/io/InputStream;
    .end local v22           #tempHeader:Ljava/lang/String;
    :catchall_1
    move-exception v23

    :try_start_11
    throw v23
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 3856
    :catchall_2
    move-exception v23

    monitor-exit v24

    throw v23

    .line 4001
    .restart local v3       #buffer:[B
    .restart local v4       #contentOffset:I
    .restart local v5       #count:I
    .restart local v7       #endOfContent:I
    .restart local v8       #fin_header:Ljava/io/FileInputStream;
    .restart local v9       #hasFailed:Z
    .restart local v10       #header_buffer:[B
    .restart local v11       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v12       #newTempHeader:Ljava/lang/String;
    .restart local v13       #newTempHeaderCount:I
    .restart local v14       #os:Ljava/io/FileOutputStream;
    .restart local v15       #realContentLength:I
    .restart local v16       #repeat:I
    .restart local v18       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v19       #stream:Ljava/io/InputStream;
    .restart local v22       #tempHeader:Ljava/lang/String;
    :catch_4
    move-exception v6

    .line 4003
    .restart local v6       #e:Ljava/lang/Exception;
    :try_start_12
    const-string v23, "HtcWrapDrmStore"

    const-string v25, " @@@@@ ERROR: close content stream failed. (saveFileFromBase64)"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4005
    const-string v23, "HtcWrapDrmStore"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4006
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 4031
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v20       #tail:Ljava/lang/String;
    .restart local v21       #tailCount:I
    :catch_5
    move-exception v6

    .line 4034
    .restart local v6       #e:Ljava/lang/Exception;
    const-string v23, "HtcWrapDrmStore"

    const-string v25, "Output tailer failed."

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4038
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/io/FileDescriptor;->sync()V

    .line 4039
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    .line 4041
    const/4 v5, -0x1

    goto/16 :goto_4

    .line 4047
    .end local v6           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v6

    .line 4049
    .restart local v6       #e:Ljava/lang/Exception;
    const-string v23, "HtcWrapDrmStore"

    const-string v25, " @@@@@ ERROR: sync Output Read tail failed. (saveFileFromBase64)"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4051
    const-string v23, "HtcWrapDrmStore"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4052
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 4057
    .end local v6           #e:Ljava/lang/Exception;
    :catch_7
    move-exception v6

    .line 4059
    .restart local v6       #e:Ljava/lang/Exception;
    const-string v23, "HtcWrapDrmStore"

    const-string v25, " @@@@@ ERROR: close Output Read tail failed. (saveFileFromBase64)"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4061
    const-string v23, "HtcWrapDrmStore"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4062
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2

    goto :goto_7

    .line 3988
    .end local v20           #tail:Ljava/lang/String;
    .end local v21           #tailCount:I
    :catch_8
    move-exception v23

    goto/16 :goto_3
.end method

.method public static setEnableCombinedDelivery(Z)V
    .locals 2
    .parameter "isEnabled"

    .prologue
    const/4 v1, 0x1

    .line 6670
    if-eqz p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DISABLE_COMBINED_DELIVERY:Z

    .line 6671
    sput-boolean v1, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->SWITCH_TO_CID:Z

    .line 6672
    return-void

    :cond_0
    move v0, v1

    .line 6670
    goto :goto_0
.end method

.method public static setEnableSeparateDelivery(Z)V
    .locals 2
    .parameter "isEnabled"

    .prologue
    const/4 v1, 0x1

    .line 6677
    if-eqz p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->DISABLE_SEPARATE_DELIVERY:Z

    .line 6678
    sput-boolean v1, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->SWITCH_TO_CID:Z

    .line 6679
    return-void

    :cond_0
    move v0, v1

    .line 6677
    goto :goto_0
.end method

.method private static final updateAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/ContentValues;
    .locals 7
    .parameter "cx"
    .parameter "file"
    .parameter "mediaType"
    .parameter "mimeType"
    .parameter "uri"

    .prologue
    const/4 v5, 0x0

    .line 4154
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->updateAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;IZ)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public static final updateAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;IZ)Landroid/content/ContentValues;
    .locals 29
    .parameter "cx"
    .parameter "file"
    .parameter "mediaType"
    .parameter "mimeType"
    .parameter "uri"
    .parameter "destination"
    .parameter "skipMediaDbUpdate"

    .prologue
    .line 4162
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 4163
    .local v3, cr:Landroid/content/ContentResolver;
    new-instance v27, Landroid/content/ContentValues;

    const/4 v4, 0x3

    move-object/from16 v0, v27

    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 4164
    .local v27, values:Landroid/content/ContentValues;
    new-instance v18, Landroid/media/MediaInfo;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/media/MediaInfo;-><init>(Landroid/content/Context;)V

    .line 4165
    .local v18, mediaInfo:Landroid/media/MediaInfo;
    const/16 v19, 0x0

    .line 4166
    .local v19, mediaTag:Landroid/media/MediaInfo$MediaTag;
    const/16 v22, 0x0

    .line 4169
    .local v22, parseFile:Ljava/io/File;
    const/4 v15, 0x0

    .line 4171
    .local v15, extention:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p3 .. p3}, Landroid/media/MediaFile;->getExtensionForMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 4192
    const/4 v4, 0x7

    move/from16 v0, p5

    if-ne v0, v4, :cond_6

    .line 4195
    new-instance v23, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/data/com.android.providers.drm/rights/PHONE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v22           #parseFile:Ljava/io/File;
    .local v23, parseFile:Ljava/io/File;
    move-object/from16 v22, v23

    .line 4211
    .end local v23           #parseFile:Ljava/io/File;
    .restart local v22       #parseFile:Ljava/io/File;
    :goto_0
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Create template file:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4214
    new-instance v21, Ljava/io/FileOutputStream;

    invoke-direct/range {v21 .. v22}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 4215
    .local v21, os:Ljava/io/FileOutputStream;
    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4216
    .local v16, fin:Ljava/io/FileInputStream;
    new-instance v11, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->available()I

    move-result v4

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-direct {v11, v0, v4, v1}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 4217
    .local v11, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v17

    .line 4218
    .local v17, manager:Landroid/drm/mobile1/DrmRightsManager;
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v25

    .line 4219
    .local v25, rights:Landroid/drm/mobile1/DrmRights;
    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/drm/mobile1/DrmRawContent;->getContentInputStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;

    move-result-object v26

    .line 4220
    .local v26, stream:Ljava/io/InputStream;
    invoke-virtual {v11}, Landroid/drm/mobile1/DrmRawContent;->getRawType()I

    move-result v20

    .line 4221
    .local v20, method:I
    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->saveFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)I

    .line 4222
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V

    .line 4226
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V

    .line 4227
    if-eqz v26, :cond_0

    .line 4228
    invoke-virtual/range {v26 .. v26}, Ljava/io/InputStream;->close()V

    .line 4230
    :cond_0
    sget-object v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->CMD_CHMOD:[Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 4231
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->CMD_CHMOD:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    .line 4234
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/media/MediaInfo;->parseSingleFile(Ljava/lang/String;)Landroid/media/MediaInfo$MediaTag;

    move-result-object v19

    .line 4235
    if-eqz v19, :cond_1

    .line 4236
    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/media/MediaInfo$MediaTag;->mDrmType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4246
    :cond_1
    if-eqz v22, :cond_2

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4247
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_2

    .line 4248
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to delete: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4254
    :cond_2
    if-eqz v19, :cond_f

    .line 4257
    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->TITLE_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p4

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 4258
    .local v12, cursor:Landroid/database/Cursor;
    if-eqz v12, :cond_9

    .line 4259
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 4260
    const-string v4, "_data"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 4261
    .local v24, pathIndex:I
    move/from16 v0, v24

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    .line 4262
    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 4263
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    .line 4268
    .end local v24           #pathIndex:I
    :cond_3
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 4275
    :goto_2
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mediaTag.mPath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    iget-object v6, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4276
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mediaTag.mAlbum = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    iget-object v6, v0, Landroid/media/MediaInfo$MediaTag;->mAlbum:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4277
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mediaTag.mArtist = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    iget-object v6, v0, Landroid/media/MediaInfo$MediaTag;->mArtist:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4278
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mediaTag.mFilename = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    iget-object v6, v0, Landroid/media/MediaInfo$MediaTag;->mFilename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4279
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mediaTag.mTitle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    iget-object v6, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4283
    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    if-eqz v4, :cond_4

    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    const-string v5, "<unknown>"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 4284
    const-string v4, "title"

    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4288
    :cond_4
    sget-object v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Albums;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->ALBUMS_PROJECTION:[Ljava/lang/String;

    const-string v6, "album=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/media/MediaInfo$MediaTag;->mAlbum:Ljava/lang/String;

    move-object/from16 v28, v0

    aput-object v28, v7, v8

    const-string v8, "album_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 4290
    .local v9, cAlbums:Landroid/database/Cursor;
    if-nez v9, :cond_a

    .line 4292
    const-string v4, "HtcWrapDrmStore"

    const-string v5, "query Albums failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4299
    const/16 v27, 0x0

    .line 4418
    .end local v9           #cAlbums:Landroid/database/Cursor;
    .end local v11           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v12           #cursor:Landroid/database/Cursor;
    .end local v16           #fin:Ljava/io/FileInputStream;
    .end local v17           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v20           #method:I
    .end local v21           #os:Ljava/io/FileOutputStream;
    .end local v25           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v26           #stream:Ljava/io/InputStream;
    .end local v27           #values:Landroid/content/ContentValues;
    :cond_5
    :goto_3
    return-object v27

    .line 4200
    .restart local v27       #values:Landroid/content/ContentValues;
    :cond_6
    :try_start_1
    new-instance v23, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/data/com.android.providers.drm/rights/DRM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v22           #parseFile:Ljava/io/File;
    .restart local v23       #parseFile:Ljava/io/File;
    move-object/from16 v22, v23

    .end local v23           #parseFile:Ljava/io/File;
    .restart local v22       #parseFile:Ljava/io/File;
    goto/16 :goto_0

    .line 4238
    :catch_0
    move-exception v14

    .line 4240
    .local v14, e:Ljava/lang/Exception;
    :try_start_2
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parse DCF audio. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4242
    const/16 v27, 0x0

    .line 4246
    .end local v27           #values:Landroid/content/ContentValues;
    if-eqz v22, :cond_5

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4247
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_5

    .line 4248
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to delete: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 4246
    .end local v14           #e:Ljava/lang/Exception;
    .restart local v27       #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    if-eqz v22, :cond_7

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 4247
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_7

    .line 4248
    const-string v5, "HtcWrapDrmStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to delete: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4246
    :cond_7
    throw v4

    .line 4266
    .restart local v11       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v12       #cursor:Landroid/database/Cursor;
    .restart local v16       #fin:Ljava/io/FileInputStream;
    .restart local v17       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v20       #method:I
    .restart local v21       #os:Ljava/io/FileOutputStream;
    .restart local v25       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v26       #stream:Ljava/io/InputStream;
    :cond_8
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    goto/16 :goto_1

    .line 4270
    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    goto/16 :goto_2

    .line 4302
    .restart local v9       #cAlbums:Landroid/database/Cursor;
    :cond_a
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cAlbums.getCount() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4304
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_b

    .line 4305
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 4307
    const-string v4, "HtcWrapDrmStore"

    const-string v5, "Insert a new album."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4309
    new-instance v13, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v13, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 4310
    .local v13, cv:Landroid/content/ContentValues;
    const-string v4, "album"

    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/media/MediaInfo$MediaTag;->mAlbum:Ljava/lang/String;

    invoke-virtual {v13, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4311
    sget-object v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Albums;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 4312
    sget-object v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Albums;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->ALBUMS_PROJECTION:[Ljava/lang/String;

    const-string v6, "album=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/media/MediaInfo$MediaTag;->mAlbum:Ljava/lang/String;

    move-object/from16 v28, v0

    aput-object v28, v7, v8

    const-string v8, "album_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 4314
    if-nez v9, :cond_b

    .line 4316
    const-string v4, "HtcWrapDrmStore"

    const-string v5, "query Albums failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4323
    const/16 v27, 0x0

    goto/16 :goto_3

    .line 4326
    .end local v13           #cv:Landroid/content/ContentValues;
    :cond_b
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4327
    const-string v4, "album_id"

    const/4 v5, 0x0

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4329
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Insert album id is = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4331
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 4334
    sget-object v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Artists;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->ARTISTS_PROJECTION:[Ljava/lang/String;

    const-string v6, "artist=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/media/MediaInfo$MediaTag;->mArtist:Ljava/lang/String;

    move-object/from16 v28, v0

    aput-object v28, v7, v8

    const-string v8, "artist_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 4336
    .local v10, cArtists:Landroid/database/Cursor;
    if-nez v10, :cond_c

    .line 4338
    const-string v4, "HtcWrapDrmStore"

    const-string v5, "query Artists failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4345
    const/16 v27, 0x0

    goto/16 :goto_3

    .line 4348
    :cond_c
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cArtists.getCount() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4350
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_d

    .line 4351
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 4353
    const-string v4, "HtcWrapDrmStore"

    const-string v5, "Insert a new artist."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4355
    new-instance v13, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v13, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 4356
    .restart local v13       #cv:Landroid/content/ContentValues;
    const-string v4, "artist"

    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/media/MediaInfo$MediaTag;->mArtist:Ljava/lang/String;

    invoke-virtual {v13, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4357
    sget-object v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Artists;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 4358
    sget-object v4, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Artists;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->ARTISTS_PROJECTION:[Ljava/lang/String;

    const-string v6, "artist=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/media/MediaInfo$MediaTag;->mArtist:Ljava/lang/String;

    move-object/from16 v28, v0

    aput-object v28, v7, v8

    const-string v8, "artist_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 4360
    if-nez v10, :cond_d

    .line 4362
    const-string v4, "HtcWrapDrmStore"

    const-string v5, "query Artists failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4366
    .end local v13           #cv:Landroid/content/ContentValues;
    :cond_d
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4367
    const-string v4, "artist_id"

    const/4 v5, 0x0

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4369
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Insert artist id is = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4371
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 4373
    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mMimeType:Ljava/lang/String;

    if-nez v4, :cond_e

    .line 4374
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/media/MediaInfo$MediaTag;->mMimeType:Ljava/lang/String;

    .line 4380
    :cond_e
    if-nez p6, :cond_5

    .line 4382
    :try_start_3
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaInfo;->updateDRMAudio(Landroid/media/MediaInfo$MediaTag;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_5

    .line 4384
    const-string v4, "HtcWrapDrmStore"

    const-string v5, "Update DRM content to MediaProvider failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 4391
    const/16 v27, 0x0

    goto/16 :goto_3

    .line 4393
    :catch_1
    move-exception v14

    .line 4395
    .restart local v14       #e:Ljava/lang/Exception;
    const-string v4, "HtcWrapDrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update DRM content to MediaProvider Exceptoin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4402
    const/16 v27, 0x0

    goto/16 :goto_3

    .line 4408
    .end local v9           #cAlbums:Landroid/database/Cursor;
    .end local v10           #cArtists:Landroid/database/Cursor;
    .end local v12           #cursor:Landroid/database/Cursor;
    .end local v14           #e:Ljava/lang/Exception;
    :cond_f
    const-string v4, "HtcWrapDrmStore"

    const-string v5, "Parse mediaTag return null."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method
