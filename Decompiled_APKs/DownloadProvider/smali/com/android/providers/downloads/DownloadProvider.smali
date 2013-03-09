.class public final Lcom/android/providers/downloads/DownloadProvider;
.super Landroid/content/ContentProvider;
.source "DownloadProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/downloads/DownloadProvider$1;,
        Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;,
        Lcom/android/providers/downloads/DownloadProvider$SqlSelection;
    }
.end annotation


# static fields
.field private static final ALL_DOWNLOADS:I = 0x3

.field private static final ALL_DOWNLOADS_ID:I = 0x4

.field private static final BASE_URIS:[Landroid/net/Uri; = null

.field private static final DB_NAME:Ljava/lang/String; = "downloads.db"

.field private static final DB_TABLE:Ljava/lang/String; = "downloads"

.field private static final DB_VERSION:I = 0x6b

.field private static final DOWNLOAD_LIST_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/download"

.field private static final DOWNLOAD_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/download"

.field private static final MY_DOWNLOADS:I = 0x1

.field private static final MY_DOWNLOADS_ID:I = 0x2

.field private static final PUBLIC_DOWNLOAD_ID:I = 0x6

.field private static final REQUEST_HEADERS_URI:I = 0x5

.field private static final downloadManagerColumnsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sAppReadableColumnsArray:[Ljava/lang/String;

.field private static sAppReadableColumnsSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mDefContainerUid:I

.field private mDownloadsDataDir:Ljava/io/File;

.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field mSystemFacade:Lcom/android/providers/downloads/SystemFacade;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mSystemUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 76
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v1, Lcom/android/providers/downloads/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 93
    sget-object v1, Lcom/android/providers/downloads/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v2, "downloads"

    const-string v3, "my_downloads"

    invoke-virtual {v1, v2, v3, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 94
    sget-object v1, Lcom/android/providers/downloads/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v2, "downloads"

    const-string v3, "my_downloads/#"

    invoke-virtual {v1, v2, v3, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 95
    sget-object v1, Lcom/android/providers/downloads/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v2, "downloads"

    const-string v3, "all_downloads"

    invoke-virtual {v1, v2, v3, v9}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 96
    sget-object v1, Lcom/android/providers/downloads/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v2, "downloads"

    const-string v3, "all_downloads/#"

    const/4 v4, 0x4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 97
    sget-object v1, Lcom/android/providers/downloads/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v2, "downloads"

    const-string v3, "my_downloads/#/headers"

    invoke-virtual {v1, v2, v3, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 100
    sget-object v1, Lcom/android/providers/downloads/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v2, "downloads"

    const-string v3, "all_downloads/#/headers"

    invoke-virtual {v1, v2, v3, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 104
    sget-object v1, Lcom/android/providers/downloads/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v2, "downloads"

    const-string v3, "download"

    invoke-virtual {v1, v2, v3, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 105
    sget-object v1, Lcom/android/providers/downloads/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v2, "downloads"

    const-string v3, "download/#"

    invoke-virtual {v1, v2, v3, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 106
    sget-object v1, Lcom/android/providers/downloads/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v2, "downloads"

    const-string v3, "download/#/headers"

    invoke-virtual {v1, v2, v3, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 109
    sget-object v1, Lcom/android/providers/downloads/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v2, "downloads"

    const-string v3, "public_downloads/#"

    const/4 v4, 0x6

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 115
    new-array v1, v6, [Landroid/net/Uri;

    sget-object v2, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    aput-object v2, v1, v8

    sget-object v2, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    aput-object v2, v1, v5

    sput-object v1, Lcom/android/providers/downloads/DownloadProvider;->BASE_URIS:[Landroid/net/Uri;

    .line 120
    const/16 v1, 0x19

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v8

    const-string v2, "entity"

    aput-object v2, v1, v5

    const-string v2, "_data"

    aput-object v2, v1, v6

    const-string v2, "mimetype"

    aput-object v2, v1, v9

    const/4 v2, 0x4

    const-string v3, "visibility"

    aput-object v3, v1, v2

    const-string v2, "destination"

    aput-object v2, v1, v7

    const/4 v2, 0x6

    const-string v3, "control"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "status"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "lastmod"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "notificationpackage"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "notificationclass"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "total_bytes"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "current_bytes"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "title"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "description"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "uri"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "is_visible_in_downloads_ui"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "hint"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "mediaprovider_uri"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "deleted"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "useragent"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "notificationextras"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "auth_header_name"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "auth_header_value"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "otaupdate"

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/providers/downloads/DownloadProvider;->sAppReadableColumnsArray:[Ljava/lang/String;

    .line 153
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/android/providers/downloads/DownloadProvider;->sAppReadableColumnsSet:Ljava/util/HashSet;

    .line 154
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/providers/downloads/DownloadProvider;->sAppReadableColumnsArray:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 155
    sget-object v1, Lcom/android/providers/downloads/DownloadProvider;->sAppReadableColumnsSet:Ljava/util/HashSet;

    sget-object v2, Lcom/android/providers/downloads/DownloadProvider;->sAppReadableColumnsArray:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_0
    sget-object v1, Landroid/app/DownloadManager;->UNDERLYING_COLUMNS:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/android/providers/downloads/DownloadProvider;->downloadManagerColumnsList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 62
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 165
    iput v1, p0, Lcom/android/providers/downloads/DownloadProvider;->mSystemUid:I

    .line 166
    iput v1, p0, Lcom/android/providers/downloads/DownloadProvider;->mDefContainerUid:I

    .line 215
    return-void
.end method

.method private checkFileUriDestination(Landroid/content/ContentValues;)V
    .locals 10
    .parameter "values"

    .prologue
    .line 800
    const-string v7, "hint"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 801
    .local v3, fileUri:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 802
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "DESTINATION_FILE_URI must include a file URI under COLUMN_FILE_NAME_HINT"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 805
    :cond_0
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 806
    .local v6, uri:Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 807
    .local v5, scheme:Ljava/lang/String;
    if-eqz v5, :cond_1

    const-string v7, "file"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 808
    :cond_1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Not a file URI: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 810
    :cond_2
    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 811
    .local v4, path:Ljava/lang/String;
    if-nez v4, :cond_3

    .line 812
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid file URI: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 815
    :cond_3
    :try_start_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 816
    .local v0, canonicalPath:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 817
    .local v2, externalPath:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 818
    new-instance v7, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Destination must be on external storage: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 820
    .end local v0           #canonicalPath:Ljava/lang/String;
    .end local v2           #externalPath:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 821
    .local v1, e:Ljava/io/IOException;
    new-instance v7, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Problem resolving path: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 823
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #canonicalPath:Ljava/lang/String;
    .restart local v2       #externalPath:Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private checkInsertPermissions(Landroid/content/ContentValues;)V
    .locals 11
    .parameter "values"

    .prologue
    .line 834
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "android.permission.ACCESS_DOWNLOAD_MANAGER"

    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_0

    .line 910
    :goto_0
    return-void

    .line 839
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "android.permission.INTERNET"

    const-string v9, "INTERNET permission is required to use the download manager"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6, p1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 847
    .end local p1
    .local v6, values:Landroid/content/ContentValues;
    const-string v7, "is_public_api"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v10, v8, v9

    invoke-direct {p0, v6, v7, v8}, Lcom/android/providers/downloads/DownloadProvider;->enforceAllowedValues(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 850
    const-string v7, "destination"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x6

    if-ne v7, v8, :cond_1

    .line 856
    const-string v7, "total_bytes"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 857
    const-string v7, "_data"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 858
    const-string v7, "status"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 860
    :cond_1
    const-string v7, "destination"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const/4 v10, 0x6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-direct {p0, v6, v7, v8}, Lcom/android/providers/downloads/DownloadProvider;->enforceAllowedValues(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 865
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "android.permission.DOWNLOAD_WITHOUT_NOTIFICATION"

    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_3

    .line 867
    const-string v7, "visibility"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const/4 v10, 0x3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-direct {p0, v6, v7, v8}, Lcom/android/providers/downloads/DownloadProvider;->enforceAllowedValues(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 880
    :goto_1
    const-string v7, "uri"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 881
    const-string v7, "title"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 882
    const-string v7, "description"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 883
    const-string v7, "mimetype"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 884
    const-string v7, "hint"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 885
    const-string v7, "notificationpackage"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 886
    const-string v7, "allowed_network_types"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 887
    const-string v7, "allow_roaming"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 888
    const-string v7, "is_visible_in_downloads_ui"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 889
    const-string v7, "scanned"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 890
    invoke-virtual {v6}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 891
    .local v4, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 892
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 893
    .local v5, key:Ljava/lang/String;
    const-string v7, "http_header_"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 894
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 873
    .end local v4           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v5           #key:Ljava/lang/String;
    :cond_3
    const-string v7, "visibility"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const/4 v10, 0x3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-direct {p0, v6, v7, v8}, Lcom/android/providers/downloads/DownloadProvider;->enforceAllowedValues(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 899
    .restart local v4       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_4
    invoke-virtual {v6}, Landroid/content/ContentValues;->size()I

    move-result v7

    if-lez v7, :cond_7

    .line 900
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "Invalid columns in request: "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 901
    .local v1, error:Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 902
    .local v2, first:Z
    invoke-virtual {v6}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 903
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v2, :cond_5

    .line 904
    const-string v7, ", "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    :cond_5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 908
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_6
    new-instance v7, Ljava/lang/SecurityException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .end local v1           #error:Ljava/lang/StringBuilder;
    .end local v2           #first:Z
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_7
    move-object p1, v6

    .line 910
    .end local v6           #values:Landroid/content/ContentValues;
    .restart local p1
    goto/16 :goto_0
.end method

.method private static final copyBoolean(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 1
    .parameter "key"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 1403
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 1404
    .local v0, b:Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 1405
    invoke-virtual {p2, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1407
    :cond_0
    return-void
.end method

.method private static final copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 1
    .parameter "key"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 1396
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1397
    .local v0, i:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 1398
    invoke-virtual {p2, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1400
    :cond_0
    return-void
.end method

.method private static final copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 1
    .parameter "key"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 1410
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1411
    .local v0, s:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1412
    invoke-virtual {p2, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    :cond_0
    return-void
.end method

.method private static final copyStringWithDefault(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "from"
    .parameter "to"
    .parameter "defaultValue"

    .prologue
    .line 1418
    invoke-static {p0, p1, p2}, Lcom/android/providers/downloads/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 1419
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1420
    invoke-virtual {p2, p0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    :cond_0
    return-void
.end method

.method private deleteFile(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 16
    .parameter "db"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 1429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "entity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mark4del"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1430
    const-string v2, "downloads"

    sget-object v3, Lcom/android/providers/downloads/DownloadProvider;->sAppReadableColumnsArray:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1431
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_2

    .line 1432
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1433
    const-string v1, "_data"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 1434
    .local v9, _dataColumnIdx:I
    const-string v1, "mimetype"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 1435
    .local v14, mimetypeColumnIdx:I
    const/4 v1, -0x1

    if-le v9, v1, :cond_1

    .line 1436
    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v12, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1437
    .local v12, deletes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v15, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1439
    .local v15, mimetypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1440
    const/4 v1, -0x1

    if-le v14, v1, :cond_3

    .line 1441
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1445
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1447
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1448
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/downloads/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 1449
    .local v11, context:Landroid/content/Context;
    new-instance v13, Landroid/content/Intent;

    const-class v1, Lcom/android/providers/downloads/DownloadService;

    invoke-direct {v13, v11, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1450
    .local v13, i:Landroid/content/Intent;
    const-string v1, "mark4del"

    invoke-virtual {v13, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1451
    const-string v1, "mimetype"

    invoke-virtual {v13, v1, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1452
    invoke-virtual {v11, v13}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1456
    .end local v9           #_dataColumnIdx:I
    .end local v11           #context:Landroid/content/Context;
    .end local v12           #deletes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13           #i:Landroid/content/Intent;
    .end local v14           #mimetypeColumnIdx:I
    .end local v15           #mimetypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1458
    :cond_2
    return-void

    .line 1443
    .restart local v9       #_dataColumnIdx:I
    .restart local v12       #deletes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v14       #mimetypeColumnIdx:I
    .restart local v15       #mimetypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private deleteRequestHeaders(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 14
    .parameter "db"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 1090
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 1091
    .local v2, projection:[Ljava/lang/String;
    const-string v1, "downloads"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1093
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1094
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1095
    .local v11, id:J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1096
    .local v13, idWhere:Ljava/lang/String;
    const-string v0, "request_headers"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v13, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1093
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1101
    .end local v11           #id:J
    .end local v13           #idWhere:Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 1102
    .local v10, e:Landroid/database/sqlite/SQLiteDatabaseLockedException;
    :try_start_1
    const-string v0, "DownloadManager"

    const-string v1, "fail to delete due to DB been locked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1105
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1107
    .end local v10           #e:Landroid/database/sqlite/SQLiteDatabaseLockedException;
    :goto_1
    return-void

    .line 1105
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private varargs enforceAllowedValues(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8
    .parameter "values"
    .parameter "column"
    .parameter "allowedValues"

    .prologue
    .line 918
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 919
    .local v4, value:Ljava/lang/Object;
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 920
    move-object v1, p3

    .local v1, arr$:[Ljava/lang/Object;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v0, v1, v2

    .line 921
    .local v0, allowedValue:Ljava/lang/Object;
    if-nez v4, :cond_1

    if-nez v0, :cond_1

    .line 925
    :cond_0
    return-void

    .line 924
    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 920
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 928
    .end local v0           #allowedValue:Ljava/lang/Object;
    :cond_3
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid value for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private getDownloadIdFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .parameter "uri"

    .prologue
    .line 1050
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private getValueFromApp(Landroid/content/ContentValues;)V
    .locals 6
    .parameter "values"

    .prologue
    .line 529
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 530
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 531
    .local v2, s:Ljava/lang/String;
    const/4 v1, 0x0

    .line 532
    .local v1, i:Ljava/lang/Integer;
    const/4 v0, 0x0

    .line 534
    .local v0, b:Ljava/lang/Boolean;
    const-string v4, "the insert value from APP:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    const-string v4, "mimetype"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 536
    if-eqz v2, :cond_0

    .line 537
    const-string v4, " Mimetype:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    :cond_0
    const-string v4, "hint"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 541
    if-eqz v2, :cond_1

    .line 542
    const-string v4, " hint:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    :cond_1
    const-string v4, "is_public_api"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 547
    if-eqz v0, :cond_2

    .line 548
    const-string v4, " is_public_api:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 551
    :cond_2
    const-string v4, "destination"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 552
    if-eqz v1, :cond_3

    .line 553
    const-string v4, " dest:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 556
    :cond_3
    const-string v4, "restriction"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 557
    if-eqz v1, :cond_4

    .line 558
    const-string v4, " restriction:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 561
    :cond_4
    const-string v4, "DownloadManager"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    return-void
.end method

.method private getWhereClause(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;I)Lcom/android/providers/downloads/DownloadProvider$SqlSelection;
    .locals 7
    .parameter "uri"
    .parameter "where"
    .parameter "whereArgs"
    .parameter "uriMatch"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1246
    new-instance v0, Lcom/android/providers/downloads/DownloadProvider$SqlSelection;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/providers/downloads/DownloadProvider$SqlSelection;-><init>(Lcom/android/providers/downloads/DownloadProvider$1;)V

    .line 1247
    .local v0, selection:Lcom/android/providers/downloads/DownloadProvider$SqlSelection;
    invoke-virtual {v0, p2, p3}, Lcom/android/providers/downloads/DownloadProvider$SqlSelection;->appendClause(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1248
    if-eq p4, v5, :cond_0

    const/4 v1, 0x4

    if-eq p4, v1, :cond_0

    const/4 v1, 0x6

    if-ne p4, v1, :cond_1

    .line 1250
    :cond_0
    const-string v1, "_id = ?"

    new-array v2, v4, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadProvider;->getDownloadIdFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/downloads/DownloadProvider$SqlSelection;->appendClause(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1252
    :cond_1
    if-eq p4, v4, :cond_2

    if-ne p4, v5, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_ALL_DOWNLOADS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    .line 1255
    const-string v1, "uid= ? OR otheruid= ?"

    new-array v2, v5, [Ljava/lang/Integer;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/downloads/DownloadProvider$SqlSelection;->appendClause(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1259
    :cond_3
    return-object v0
.end method

.method private insertRequestHeaders(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)V
    .locals 9
    .parameter "db"
    .parameter "downloadId"
    .parameter "values"

    .prologue
    .line 1057
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1058
    .local v5, rowValues:Landroid/content/ContentValues;
    const-string v6, "download_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1059
    invoke-virtual {p4}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1060
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1061
    .local v3, key:Ljava/lang/String;
    const-string v6, "http_header_"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1062
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1063
    .local v1, headerLine:Ljava/lang/String;
    const-string v6, ":"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1064
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid HTTP header line: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1066
    :cond_1
    const-string v6, ":"

    const/4 v7, 0x2

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 1067
    .local v4, parts:[Ljava/lang/String;
    const-string v6, "header"

    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    const-string v6, "value"

    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    const-string v6, "request_headers"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    .line 1072
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1           #headerLine:Ljava/lang/String;
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #parts:[Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private logVerboseOpenFileInfo(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 10
    .parameter "uri"
    .parameter "mode"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 1362
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openFile uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    sget-object v1, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    const-string v5, "_id"

    move-object v0, p0

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/downloads/DownloadProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1366
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 1367
    const-string v0, "DownloadManager"

    const-string v1, "null cursor in openFile"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    :goto_0
    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v8

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/downloads/DownloadProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1379
    if-nez v6, :cond_2

    .line 1380
    const-string v0, "DownloadManager"

    const-string v1, "null cursor in openFile"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    :goto_1
    return-void

    .line 1369
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1370
    const-string v0, "DownloadManager"

    const-string v1, "empty cursor in openFile"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1373
    :cond_1
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "row "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 1382
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1383
    const-string v0, "DownloadManager"

    const-string v1, "empty cursor in openFile"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    :cond_3
    :goto_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1385
    :cond_4
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1386
    .local v7, filename:Ljava/lang/String;
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filename in openFile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1388
    const-string v0, "DownloadManager"

    const-string v1, "file exists in openFile"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private logVerboseQueryInfo([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"
    .parameter "db"

    .prologue
    .line 1008
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1009
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "starting query, database is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1010
    if-eqz p5, :cond_0

    .line 1011
    const-string v2, "not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1013
    :cond_0
    const-string v2, "null; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1014
    if-nez p1, :cond_3

    .line 1015
    const-string v2, "projection is null; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1027
    :cond_1
    :goto_0
    const-string v2, "selection is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1028
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1029
    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1030
    if-nez p3, :cond_5

    .line 1031
    const-string v2, "selectionArgs is null; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1043
    :cond_2
    :goto_1
    const-string v2, "sort is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1044
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1045
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1046
    const-string v2, "DownloadManager"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    return-void

    .line 1016
    :cond_3
    array-length v2, p1

    if-nez v2, :cond_4

    .line 1017
    const-string v2, "projection is empty; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1019
    :cond_4
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 1020
    const-string v2, "projection["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1021
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1022
    const-string v2, "] is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1023
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1024
    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1019
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1032
    .end local v0           #i:I
    :cond_5
    array-length v2, p3

    if-nez v2, :cond_6

    .line 1033
    const-string v2, "selectionArgs is empty; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1035
    :cond_6
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    array-length v2, p3

    if-ge v0, v2, :cond_2

    .line 1036
    const-string v2, "selectionArgs["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1037
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1038
    const-string v2, "] is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1039
    aget-object v2, p3, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1040
    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1035
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method private notifyContentChanged(Landroid/net/Uri;I)V
    .locals 7
    .parameter "uri"
    .parameter "uriMatch"

    .prologue
    .line 1232
    const/4 v1, 0x0

    .line 1233
    .local v1, downloadId:Ljava/lang/Long;
    const/4 v5, 0x2

    if-eq p2, v5, :cond_0

    const/4 v5, 0x4

    if-ne p2, v5, :cond_1

    .line 1234
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadProvider;->getDownloadIdFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1236
    :cond_1
    sget-object v0, Lcom/android/providers/downloads/DownloadProvider;->BASE_URIS:[Landroid/net/Uri;

    .local v0, arr$:[Landroid/net/Uri;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v4, v0, v2

    .line 1237
    .local v4, uriToNotify:Landroid/net/Uri;
    if-eqz v1, :cond_2

    .line 1238
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 1240
    :cond_2
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1236
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1242
    .end local v4           #uriToNotify:Landroid/net/Uri;
    :cond_3
    return-void
.end method

.method private queryRequestHeaders(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 8
    .parameter "db"
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    .line 1078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/android/providers/downloads/DownloadProvider;->getDownloadIdFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1080
    .local v3, where:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "header"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "value"

    aput-object v1, v2, v0

    .line 1082
    .local v2, projection:[Ljava/lang/String;
    const-string v1, "request_headers"

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private shouldRestrictVisibility()Z
    .locals 3

    .prologue
    .line 1113
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1114
    .local v0, callingUid:I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/providers/downloads/DownloadProvider;->mSystemUid:I

    if-eq v0, v1, :cond_0

    iget v1, p0, Lcom/android/providers/downloads/DownloadProvider;->mDefContainerUid:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Landroid/os/Process;->supportsProcesses()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .parameter "uri"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 1269
    sget-object v6, Lcom/android/providers/downloads/DownloadProvider;->sAppReadableColumnsSet:Ljava/util/HashSet;

    invoke-static {p2, v6}, Lcom/android/providers/downloads/Helpers;->validateSelection(Ljava/lang/String;Ljava/util/Set;)V

    .line 1271
    iget-object v6, p0, Lcom/android/providers/downloads/DownloadProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1273
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v6, Lcom/android/providers/downloads/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    .line 1274
    .local v4, match:I
    packed-switch v4, :pswitch_data_0

    .line 1299
    const-string v6, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deleting unknown/invalid URI: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot delete URI: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1279
    :pswitch_0
    invoke-direct {p0, p1, p2, p3, v4}, Lcom/android/providers/downloads/DownloadProvider;->getWhereClause(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;I)Lcom/android/providers/downloads/DownloadProvider$SqlSelection;

    move-result-object v5

    .line 1283
    .local v5, selection:Lcom/android/providers/downloads/DownloadProvider$SqlSelection;
    invoke-virtual {v5}, Lcom/android/providers/downloads/DownloadProvider$SqlSelection;->getSelection()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/providers/downloads/DownloadProvider$SqlSelection;->getParameters()[Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v2, v6, v7}, Lcom/android/providers/downloads/DownloadProvider;->deleteFile(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1286
    invoke-virtual {v5}, Lcom/android/providers/downloads/DownloadProvider$SqlSelection;->getSelection()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/providers/downloads/DownloadProvider$SqlSelection;->getParameters()[Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v2, v6, v7}, Lcom/android/providers/downloads/DownloadProvider;->deleteRequestHeaders(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1290
    :try_start_0
    const-string v6, "downloads"

    invoke-virtual {v5}, Lcom/android/providers/downloads/DownloadProvider$SqlSelection;->getSelection()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/providers/downloads/DownloadProvider$SqlSelection;->getParameters()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1302
    .local v1, count:I
    invoke-direct {p0, p1, v4}, Lcom/android/providers/downloads/DownloadProvider;->notifyContentChanged(Landroid/net/Uri;I)V

    .line 1304
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1305
    .local v0, context:Landroid/content/Context;
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/android/providers/downloads/DownloadService;

    invoke-direct {v6, v0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1307
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #count:I
    :goto_0
    return v1

    .line 1291
    :catch_0
    move-exception v3

    .line 1292
    .local v3, e:Ljava/lang/Exception;
    const-string v6, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dump catch java exception:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    const/4 v1, 0x0

    goto :goto_0

    .line 1274
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6
    .parameter "uri"

    .prologue
    .line 499
    sget-object v3, Lcom/android/providers/downloads/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 500
    .local v2, match:I
    packed-switch v2, :pswitch_data_0

    .line 517
    :pswitch_0
    sget-boolean v3, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v3, :cond_0

    .line 518
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calling getType on an unknown URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 502
    :pswitch_1
    const-string v3, "vnd.android.cursor.dir/download"

    .line 511
    :goto_0
    return-object v3

    .line 505
    :pswitch_2
    const-string v3, "vnd.android.cursor.item/download"

    goto :goto_0

    .line 509
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadProvider;->getDownloadIdFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 510
    .local v1, id:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/providers/downloads/DownloadProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 511
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "SELECT mimetype FROM downloads WHERE _id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v0, v3, v4}, Landroid/database/DatabaseUtils;->stringForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 500
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 26
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 574
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/providers/downloads/DownloadProvider;->checkInsertPermissions(Landroid/content/ContentValues;)V

    .line 575
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/downloads/DownloadProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14

    .line 578
    .local v14, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v6, Lcom/android/providers/downloads/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v20

    .line 579
    .local v20, match:I
    const/4 v6, 0x1

    move/from16 v0, v20

    if-eq v0, v6, :cond_0

    .line 580
    const-string v6, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "calling insert on an unknown/invalid URI: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown/Invalid URI "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 585
    :cond_0
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 586
    .local v16, filteredValues:Landroid/content/ContentValues;
    const-string v6, "uri"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v6, v0, v1}, Lcom/android/providers/downloads/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 587
    const-string v6, "entity"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v6, v0, v1}, Lcom/android/providers/downloads/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 588
    const-string v6, "no_integrity"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v6, v0, v1}, Lcom/android/providers/downloads/DownloadProvider;->copyBoolean(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 589
    const-string v6, "hint"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v6, v0, v1}, Lcom/android/providers/downloads/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 590
    const-string v6, "mimetype"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v6, v0, v1}, Lcom/android/providers/downloads/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 591
    const-string v6, "is_public_api"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v6, v0, v1}, Lcom/android/providers/downloads/DownloadProvider;->copyBoolean(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 593
    const-string v6, "is_public_api"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v6, v7, :cond_2

    const/16 v19, 0x1

    .line 597
    .local v19, isPublicApi:Z
    :goto_0
    const-string v6, "destination"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    .line 598
    .local v15, dest:Ljava/lang/Integer;
    if-eqz v15, :cond_6

    .line 599
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/downloads/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "android.permission.ACCESS_DOWNLOAD_MANAGER_ADVANCED"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_3

    .line 604
    :cond_1
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setting destination to : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not allowed, unless PERMISSION_ACCESS_ADVANCED is granted"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 593
    .end local v15           #dest:Ljava/lang/Integer;
    .end local v19           #isPublicApi:Z
    :cond_2
    const/16 v19, 0x0

    goto :goto_0

    .line 609
    .restart local v15       #dest:Ljava/lang/Integer;
    .restart local v19       #isPublicApi:Z
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/downloads/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "android.permission.DOWNLOAD_CACHE_NON_PURGEABLE"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_f

    const/16 v17, 0x1

    .line 613
    .local v17, hasNonPurgeablePermission:Z
    :goto_1
    if-eqz v19, :cond_4

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    if-eqz v17, :cond_4

    .line 615
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 617
    :cond_4
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_10

    .line 618
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/downloads/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v24

    const-string v25, "need WRITE_EXTERNAL_STORAGE permission to use DESTINATION_FILE_URI"

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v6, v7, v8, v0, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 622
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/providers/downloads/DownloadProvider;->checkFileUriDestination(Landroid/content/ContentValues;)V

    .line 629
    :cond_5
    :goto_2
    const-string v6, "destination"

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 633
    .end local v17           #hasNonPurgeablePermission:Z
    :cond_6
    const-string v6, "visibility"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    .line 634
    .local v23, vis:Ljava/lang/Integer;
    if-nez v23, :cond_12

    .line 639
    if-eqz v15, :cond_7

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lcom/android/providers/downloads/Helpers;->isExternalStorage(I)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x7

    if-ne v6, v7, :cond_11

    .line 642
    :cond_7
    const-string v6, "visibility"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 652
    :goto_3
    const-string v6, "control"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v6, v0, v1}, Lcom/android/providers/downloads/DownloadProvider;->copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 662
    const-string v6, "destination"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    .line 663
    .local v12, clumnDes:Ljava/lang/Integer;
    if-eqz v12, :cond_13

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_13

    .line 668
    const-string v6, "status"

    const/16 v7, 0xc8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 669
    const-string v6, "total_bytes"

    const-string v7, "total_bytes"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 671
    const-string v6, "current_bytes"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 672
    const-string v6, "scanned"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v6, v0, v1}, Lcom/android/providers/downloads/DownloadProvider;->copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 673
    const-string v6, "_data"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v6, v0, v1}, Lcom/android/providers/downloads/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 681
    :goto_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/downloads/DownloadProvider;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-interface {v6}, Lcom/android/providers/downloads/SystemFacade;->currentTimeMillis()J

    move-result-wide v9

    .line 682
    .local v9, lastMod:J
    const-string v6, "lastmod"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 685
    const-string v6, "notificationpackage"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 686
    .local v21, pckg:Ljava/lang/String;
    const-string v6, "notificationclass"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 687
    .local v11, clazz:Ljava/lang/String;
    if-eqz v21, :cond_a

    if-nez v11, :cond_8

    if-eqz v19, :cond_a

    .line 688
    :cond_8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v22

    .line 690
    .local v22, uid:I
    if-eqz v22, :cond_9

    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/downloads/DownloadProvider;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    move/from16 v0, v22

    move-object/from16 v1, v21

    invoke-interface {v6, v0, v1}, Lcom/android/providers/downloads/SystemFacade;->userOwnsPackage(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 691
    :cond_9
    const-string v6, "notificationpackage"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    if-eqz v11, :cond_a

    .line 693
    const-string v6, "notificationclass"

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    .end local v22           #uid:I
    :cond_a
    :goto_5
    const-string v6, "notificationextras"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v6, v0, v1}, Lcom/android/providers/downloads/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 703
    const-string v6, "cookiedata"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v6, v0, v1}, Lcom/android/providers/downloads/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 704
    const-string v6, "useragent"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v6, v0, v1}, Lcom/android/providers/downloads/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 705
    const-string v6, "referer"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v6, v0, v1}, Lcom/android/providers/downloads/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 708
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/downloads/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "android.permission.ACCESS_DOWNLOAD_MANAGER_ADVANCED"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_b

    .line 710
    const-string v6, "otheruid"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v6, v0, v1}, Lcom/android/providers/downloads/DownloadProvider;->copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 712
    :cond_b
    const-string v6, "uid"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 713
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    if-nez v6, :cond_c

    .line 714
    const-string v6, "uid"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v6, v0, v1}, Lcom/android/providers/downloads/DownloadProvider;->copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 718
    :cond_c
    const-string v6, "title"

    const-string v7, ""

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v6, v0, v1, v7}, Lcom/android/providers/downloads/DownloadProvider;->copyStringWithDefault(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 719
    const-string v6, "description"

    const-string v7, ""

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v6, v0, v1, v7}, Lcom/android/providers/downloads/DownloadProvider;->copyStringWithDefault(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 723
    const-string v6, "otaupdate"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v6, v0, v1}, Lcom/android/providers/downloads/DownloadProvider;->copyBoolean(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 724
    const-string v6, "restriction"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v6, v0, v1}, Lcom/android/providers/downloads/DownloadProvider;->copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 725
    const-string v6, "auth_header_name"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v6, v0, v1}, Lcom/android/providers/downloads/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 726
    const-string v6, "auth_header_value"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v6, v0, v1}, Lcom/android/providers/downloads/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 730
    const-string v6, "is_visible_in_downloads_ui"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 731
    const-string v6, "is_visible_in_downloads_ui"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v6, v0, v1}, Lcom/android/providers/downloads/DownloadProvider;->copyBoolean(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 744
    :goto_6
    if-eqz v19, :cond_d

    .line 745
    const-string v6, "allowed_network_types"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v6, v0, v1}, Lcom/android/providers/downloads/DownloadProvider;->copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 746
    const-string v6, "allow_roaming"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v6, v0, v1}, Lcom/android/providers/downloads/DownloadProvider;->copyBoolean(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 749
    :cond_d
    sget-boolean v6, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v6, :cond_e

    .line 750
    const-string v6, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initiating download with UID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "uid"

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    const-string v6, "otheruid"

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 753
    const-string v6, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "other UID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "otheruid"

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :cond_e
    const-string v6, "downloads"

    const/4 v7, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v14, v6, v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 759
    .local v4, rowID:J
    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-nez v6, :cond_17

    .line 760
    const-string v6, "DownloadManager"

    const-string v7, "couldn\'t insert into downloads database"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    const/4 v6, 0x0

    .line 793
    :goto_7
    return-object v6

    .line 609
    .end local v4           #rowID:J
    .end local v9           #lastMod:J
    .end local v11           #clazz:Ljava/lang/String;
    .end local v12           #clumnDes:Ljava/lang/Integer;
    .end local v21           #pckg:Ljava/lang/String;
    .end local v23           #vis:Ljava/lang/Integer;
    :cond_f
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 623
    .restart local v17       #hasNonPurgeablePermission:Z
    :cond_10
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_5

    .line 624
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/downloads/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "android.permission.ACCESS_CACHE_FILESYSTEM"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v24

    const-string v25, "need ACCESS_CACHE_FILESYSTEM permission to use system cache"

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v6, v7, v8, v0, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto/16 :goto_2

    .line 645
    .end local v17           #hasNonPurgeablePermission:Z
    .restart local v23       #vis:Ljava/lang/Integer;
    :cond_11
    const-string v6, "visibility"

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_3

    .line 649
    :cond_12
    const-string v6, "visibility"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_3

    .line 675
    .restart local v12       #clumnDes:Ljava/lang/Integer;
    :cond_13
    const-string v6, "status"

    const/16 v7, 0xbe

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 676
    const-string v6, "total_bytes"

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 677
    const-string v6, "current_bytes"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_4

    .line 738
    .restart local v9       #lastMod:J
    .restart local v11       #clazz:Ljava/lang/String;
    .restart local v21       #pckg:Ljava/lang/String;
    :cond_14
    if-eqz v15, :cond_15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lcom/android/providers/downloads/Helpers;->isExternalStorage(I)Z

    move-result v6

    if-eqz v6, :cond_16

    :cond_15
    const/16 v18, 0x1

    .line 740
    .local v18, isExternal:Z
    :goto_8
    const-string v6, "is_visible_in_downloads_ui"

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_6

    .line 738
    .end local v18           #isExternal:Z
    :cond_16
    const/16 v18, 0x0

    goto :goto_8

    .line 764
    .restart local v4       #rowID:J
    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v14, v4, v5, v1}, Lcom/android/providers/downloads/DownloadProvider;->insertRequestHeaders(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)V

    .line 770
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/downloads/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v13

    .line 775
    .local v13, context:Landroid/content/Context;
    if-eqz v12, :cond_19

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_19

    .line 781
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Landroid/provider/Downloads$Impl;->isNotificationToBeDisplayed(I)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 782
    new-instance v3, Lcom/android/providers/downloads/DownloadNotification;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/downloads/DownloadProvider;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-direct {v3, v13, v6}, Lcom/android/providers/downloads/DownloadNotification;-><init>(Landroid/content/Context;Lcom/android/providers/downloads/SystemFacade;)V

    .line 783
    .local v3, notifier:Lcom/android/providers/downloads/DownloadNotification;
    const-string v6, "title"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xc8

    const/4 v8, 0x6

    invoke-virtual/range {v3 .. v10}, Lcom/android/providers/downloads/DownloadNotification;->notificationForCompletedDownload(JLjava/lang/String;IIJ)V

    .line 792
    .end local v3           #notifier:Lcom/android/providers/downloads/DownloadNotification;
    :cond_18
    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/providers/downloads/DownloadProvider;->notifyContentChanged(Landroid/net/Uri;I)V

    .line 793
    sget-object v6, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    goto/16 :goto_7

    .line 790
    :cond_19
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/android/providers/downloads/DownloadService;

    invoke-direct {v6, v13, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v13, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_9

    .line 696
    .end local v4           #rowID:J
    .end local v13           #context:Landroid/content/Context;
    .restart local v22       #uid:I
    :catch_0
    move-exception v6

    goto/16 :goto_5
.end method

.method public onCreate()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 457
    iget-object v3, p0, Lcom/android/providers/downloads/DownloadProvider;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    if-nez v3, :cond_0

    .line 458
    new-instance v3, Lcom/android/providers/downloads/RealSystemFacade;

    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/providers/downloads/RealSystemFacade;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/providers/downloads/DownloadProvider;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    .line 461
    :cond_0
    new-instance v3, Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;-><init>(Lcom/android/providers/downloads/DownloadProvider;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/providers/downloads/DownloadProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 463
    const/16 v3, 0x3e8

    iput v3, p0, Lcom/android/providers/downloads/DownloadProvider;->mSystemUid:I

    .line 466
    const/4 v0, 0x0

    .line 468
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.android.defcontainer"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 474
    :goto_0
    if-eqz v0, :cond_1

    .line 475
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v3, p0, Lcom/android/providers/downloads/DownloadProvider;->mDefContainerUid:I

    .line 479
    :cond_1
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 482
    .local v1, context:Landroid/content/Context;
    const-string v3, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v6, :cond_2

    .line 483
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/providers/downloads/DownloadService;

    invoke-direct {v3, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 484
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/providers/downloads/StorageManager;->getInstance(Landroid/content/Context;)Lcom/android/providers/downloads/StorageManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/providers/downloads/StorageManager;->getDownloadDataDirectory()Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/downloads/DownloadProvider;->mDownloadsDataDir:Ljava/io/File;

    .line 490
    :goto_1
    return v6

    .line 470
    .end local v1           #context:Landroid/content/Context;
    :catch_0
    move-exception v2

    .line 472
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 486
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1       #context:Landroid/content/Context;
    :cond_2
    const-string v3, "DownloadManager"

    const-string v4, "DownloadProvider check: SD card is not ready "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/downloads/DownloadProvider;->mDownloadsDataDir:Ljava/io/File;

    goto :goto_1
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 11
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 1315
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v0, :cond_0

    .line 1316
    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/DownloadProvider;->logVerboseOpenFileInfo(Landroid/net/Uri;Ljava/lang/String;)V

    .line 1319
    :cond_0
    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/downloads/DownloadProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1322
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 1323
    .local v6, count:I
    :cond_1
    if-eq v6, v10, :cond_4

    .line 1325
    if-nez v6, :cond_3

    .line 1326
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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1334
    .end local v6           #count:I
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 1335
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 1328
    .restart local v6       #count:I
    :cond_3
    :try_start_1
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

    .line 1331
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1332
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 1334
    .local v8, path:Ljava/lang/String;
    if-eqz v7, :cond_5

    .line 1335
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1339
    :cond_5
    if-nez v8, :cond_6

    .line 1340
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "No filename found."

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1342
    :cond_6
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadProvider;->mDownloadsDataDir:Ljava/io/File;

    invoke-static {v8, v0}, Lcom/android/providers/downloads/Helpers;->isFilenameValid(Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1343
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid filename: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1345
    :cond_7
    const-string v0, "r"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1346
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

    .line 1349
    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v9

    .line 1352
    .local v9, ret:Landroid/os/ParcelFileDescriptor;
    if-nez v9, :cond_a

    .line 1353
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v0, :cond_9

    .line 1354
    const-string v0, "DownloadManager"

    const-string v1, "couldn\'t open file"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    :cond_9
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "couldn\'t open file"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1358
    :cond_a
    return-object v9
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 23
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    .line 939
    sget-object v5, Lcom/android/providers/downloads/DownloadProvider;->sAppReadableColumnsSet:Ljava/util/HashSet;

    move-object/from16 v0, p3

    invoke-static {v0, v5}, Lcom/android/providers/downloads/Helpers;->validateSelection(Ljava/lang/String;Ljava/util/Set;)V

    .line 941
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/downloads/DownloadProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    .line 943
    .local v10, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v5, Lcom/android/providers/downloads/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v21

    .line 944
    .local v21, match:I
    const/4 v5, -0x1

    move/from16 v0, v21

    if-ne v0, v5, :cond_1

    .line 945
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v5, :cond_0

    .line 946
    const-string v5, "DownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "querying unknown URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 951
    :cond_1
    const/4 v5, 0x5

    move/from16 v0, v21

    if-ne v0, v5, :cond_5

    .line 952
    if-nez p2, :cond_2

    if-nez p3, :cond_2

    if-eqz p5, :cond_3

    .line 953
    :cond_2
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    const-string v6, "Request header queries do not support projections, selections or sorting"

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 956
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v10, v1}, Lcom/android/providers/downloads/DownloadProvider;->queryRequestHeaders(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v22

    .line 1003
    :cond_4
    :goto_0
    return-object v22

    .line 959
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/downloads/DownloadProvider;->getWhereClause(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;I)Lcom/android/providers/downloads/DownloadProvider$SqlSelection;

    move-result-object v19

    .line 961
    .local v19, fullSelection:Lcom/android/providers/downloads/DownloadProvider$SqlSelection;
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/downloads/DownloadProvider;->shouldRestrictVisibility()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 962
    if-nez p2, :cond_8

    .line 963
    sget-object p2, Lcom/android/providers/downloads/DownloadProvider;->sAppReadableColumnsArray:[Ljava/lang/String;

    .line 976
    :cond_6
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v5, :cond_7

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 977
    invoke-direct/range {v5 .. v10}, Lcom/android/providers/downloads/DownloadProvider;->logVerboseQueryInfo([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 981
    :cond_7
    const/16 v22, 0x0

    .line 983
    .local v22, ret:Landroid/database/Cursor;
    :try_start_0
    const-string v11, "downloads"

    invoke-virtual/range {v19 .. v19}, Lcom/android/providers/downloads/DownloadProvider$SqlSelection;->getSelection()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {v19 .. v19}, Lcom/android/providers/downloads/DownloadProvider$SqlSelection;->getParameters()[Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v12, p2

    move-object/from16 v17, p5

    invoke-virtual/range {v10 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v22

    .line 991
    :goto_1
    if-eqz v22, :cond_a

    .line 992
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/downloads/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-interface {v0, v5, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 993
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v5, :cond_4

    .line 994
    const-string v5, "DownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "created cursor "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " on behalf of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 966
    .end local v22           #ret:Landroid/database/Cursor;
    :cond_8
    const/16 v20, 0x0

    .local v20, i:I
    :goto_2
    move-object/from16 v0, p2

    array-length v5, v0

    move/from16 v0, v20

    if-ge v0, v5, :cond_6

    .line 967
    sget-object v5, Lcom/android/providers/downloads/DownloadProvider;->sAppReadableColumnsSet:Ljava/util/HashSet;

    aget-object v6, p2, v20

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    sget-object v5, Lcom/android/providers/downloads/DownloadProvider;->downloadManagerColumnsList:Ljava/util/List;

    aget-object v6, p2, v20

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 969
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "column "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p2, v20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not allowed in queries"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 966
    :cond_9
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 986
    .end local v20           #i:I
    .restart local v22       #ret:Landroid/database/Cursor;
    :catch_0
    move-exception v18

    .line 987
    .local v18, e:Ljava/lang/Exception;
    const-string v5, "DownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "catch java exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 998
    .end local v18           #e:Ljava/lang/Exception;
    :cond_a
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v5, :cond_4

    .line 999
    const-string v5, "DownloadManager"

    const-string v6, "query failed in downloads database"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 25
    .parameter "uri"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 1130
    sget-object v5, Lcom/android/providers/downloads/DownloadProvider;->sAppReadableColumnsSet:Ljava/util/HashSet;

    move-object/from16 v0, p3

    invoke-static {v0, v5}, Lcom/android/providers/downloads/Helpers;->validateSelection(Ljava/lang/String;Ljava/util/Set;)V

    .line 1132
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/downloads/DownloadProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14

    .line 1135
    .local v14, db:Landroid/database/sqlite/SQLiteDatabase;
    const/16 v23, 0x0

    .line 1137
    .local v23, startService:Z
    const-string v5, "deleted"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1138
    const-string v5, "deleted"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 1140
    const/16 v23, 0x1

    .line 1145
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    if-eq v5, v6, :cond_3

    .line 1146
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 1147
    .local v17, filteredValues:Landroid/content/ContentValues;
    const-string v5, "entity"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v5, v0, v1}, Lcom/android/providers/downloads/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 1148
    const-string v5, "visibility"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v5, v0, v1}, Lcom/android/providers/downloads/DownloadProvider;->copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 1149
    const-string v5, "control"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    .line 1150
    .local v18, i:Ljava/lang/Integer;
    if-eqz v18, :cond_1

    .line 1151
    const-string v5, "control"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1152
    const/16 v23, 0x1

    .line 1155
    :cond_1
    const-string v5, "control"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v5, v0, v1}, Lcom/android/providers/downloads/DownloadProvider;->copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 1156
    const-string v5, "title"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v5, v0, v1}, Lcom/android/providers/downloads/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 1157
    const-string v5, "mediaprovider_uri"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v5, v0, v1}, Lcom/android/providers/downloads/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 1158
    const-string v5, "description"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v5, v0, v1}, Lcom/android/providers/downloads/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 1159
    const-string v5, "deleted"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v5, v0, v1}, Lcom/android/providers/downloads/DownloadProvider;->copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 1181
    .end local v18           #i:Ljava/lang/Integer;
    :cond_2
    :goto_0
    sget-object v5, Lcom/android/providers/downloads/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v21

    .line 1182
    .local v21, match:I
    packed-switch v21, :pswitch_data_0

    .line 1207
    const-string v5, "DownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updating unknown/invalid URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot update URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1161
    .end local v17           #filteredValues:Landroid/content/ContentValues;
    .end local v21           #match:I
    :cond_3
    move-object/from16 v17, p2

    .line 1162
    .restart local v17       #filteredValues:Landroid/content/ContentValues;
    const-string v5, "_data"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1163
    .local v16, filename:Ljava/lang/String;
    if-eqz v16, :cond_6

    .line 1164
    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "title"

    aput-object v6, v7, v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v10}, Lcom/android/providers/downloads/DownloadProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1166
    .local v11, c:Landroid/database/Cursor;
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1167
    :cond_4
    const-string v5, "title"

    new-instance v6, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    :cond_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1172
    .end local v11           #c:Landroid/database/Cursor;
    :cond_6
    const-string v5, "status"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v24

    .line 1173
    .local v24, status:Ljava/lang/Integer;
    if-eqz v24, :cond_8

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0xbe

    if-ne v5, v6, :cond_8

    const/16 v19, 0x1

    .line 1174
    .local v19, isRestart:Z
    :goto_1
    const-string v5, "bypass_recommended_size_limit"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v20

    .line 1176
    .local v20, isUserBypassingSizeLimit:Z
    if-nez v19, :cond_7

    if-eqz v20, :cond_2

    .line 1177
    :cond_7
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 1173
    .end local v19           #isRestart:Z
    .end local v20           #isUserBypassingSizeLimit:Z
    :cond_8
    const/16 v19, 0x0

    goto :goto_1

    .line 1187
    .end local v16           #filename:Ljava/lang/String;
    .end local v24           #status:Ljava/lang/Integer;
    .restart local v21       #match:I
    :pswitch_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/downloads/DownloadProvider;->getWhereClause(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;I)Lcom/android/providers/downloads/DownloadProvider$SqlSelection;

    move-result-object v22

    .line 1188
    .local v22, selection:Lcom/android/providers/downloads/DownloadProvider$SqlSelection;
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentValues;->size()I

    move-result v5

    if-lez v5, :cond_b

    .line 1194
    :try_start_0
    const-string v5, "downloads"

    invoke-virtual/range {v22 .. v22}, Lcom/android/providers/downloads/DownloadProvider$SqlSelection;->getSelection()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v22 .. v22}, Lcom/android/providers/downloads/DownloadProvider$SqlSelection;->getParameters()[Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v14, v5, v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 1211
    .local v13, count:I
    :goto_2
    const-string v5, "visibility"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1212
    const-string v5, "visibility"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_9

    .line 1213
    const/16 v23, 0x1

    .line 1218
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/providers/downloads/DownloadProvider;->notifyContentChanged(Landroid/net/Uri;I)V

    .line 1219
    if-eqz v23, :cond_a

    .line 1220
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/downloads/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v12

    .line 1221
    .local v12, context:Landroid/content/Context;
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/android/providers/downloads/DownloadService;

    invoke-direct {v5, v12, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v12, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1223
    .end local v12           #context:Landroid/content/Context;
    .end local v13           #count:I
    :cond_a
    :goto_3
    return v13

    .line 1196
    :catch_0
    move-exception v15

    .line 1197
    .local v15, e:Landroid/database/sqlite/SQLiteDatabaseLockedException;
    const-string v5, "DownloadManager"

    const-string v6, "fail to update due to DB been locked"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    const/4 v13, 0x0

    goto :goto_3

    .line 1202
    .end local v15           #e:Landroid/database/sqlite/SQLiteDatabaseLockedException;
    :cond_b
    const/4 v13, 0x0

    .line 1204
    .restart local v13       #count:I
    goto :goto_2

    .line 1182
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
