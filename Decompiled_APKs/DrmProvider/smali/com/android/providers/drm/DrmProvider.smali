.class public Lcom/android/providers/drm/DrmProvider;
.super Landroid/content/ContentProvider;
.source "DrmProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/drm/DrmProvider$1;,
        Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;,
        Lcom/android/providers/drm/DrmProvider$OpenDatabaseHelper;
    }
.end annotation


# static fields
.field private static final ALBUMART:I = 0x70

.field private static final ALBUMART_ID:I = 0x71

.field private static final ALBUMS:I = 0x6e

.field private static final ALBUMS_ID:I = 0x6f

.field private static final ALBUMS_PROJECTION:[Ljava/lang/String; = null

.field private static final ALBUM_ART_PROJECTION:[Ljava/lang/String; = null

.field private static final ARTISTS:I = 0x6c

.field private static final ARTISTS_ID:I = 0x6d

.field private static final ARTISTS_PROJECTION:[Ljava/lang/String; = null

.field private static final AUDIO:I = 0x64

.field private static final AUDIO_ID:I = 0x65

.field private static final BULK_UPDATE_AUDIO:I = 0x75

.field private static final BULK_UPDATE_IMAGES:I = 0x74

.field private static final BULK_UPDATE_JAR:I = 0x77

.field private static final BULK_UPDATE_VIDEO:I = 0x76

.field private static CMD_CHMOD:[Ljava/lang/String; = null

.field private static CMD_CHMOD1:[Ljava/lang/String; = null

.field private static CMD_CHOWN:[Ljava/lang/String; = null

.field private static final CONTENT_ID_PROJECTION:[Ljava/lang/String; = null

.field private static final DRM_DATABASE_BACKUP_FILE_POSTFIX:Ljava/lang/String; = "-backup"

.field private static final DRM_DATABASE_DEFAULT_FILE_PATH:Ljava/lang/String; = "/data/data/com.android.providers.drm/databases/drm.db"

.field private static DRM_FOLDER:Ljava/lang/String; = null

.field private static final DRM_FOLDER_AUDIO:Ljava/lang/String; = "Audio"

.field private static final DRM_FOLDER_AUDIO_PATH:Ljava/lang/String; = "MyCollections/Audio"

.field private static final DRM_FOLDER_IMAGE:Ljava/lang/String; = "Image"

.field private static final DRM_FOLDER_IMAGE_PATH:Ljava/lang/String; = "MyCollections/Image"

.field private static final DRM_FOLDER_JAVA:Ljava/lang/String; = "Java"

.field private static final DRM_FOLDER_JAVA_PATH:Ljava/lang/String; = "MyCollections/Java"

.field private static final DRM_FOLDER_VIDEO:Ljava/lang/String; = "Video"

.field private static final DRM_FOLDER_VIDEO_PATH:Ljava/lang/String; = "MyCollections/Video"

.field public static final DRM_PROVIDER_FOLDER_PATH:Ljava/lang/String; = "/data/data/com.android.providers.drm"

.field public static final DRM_PROVIDER_NETWORK_SYNC_TIME_FLAG_FILE_NAME:Ljava/lang/String; = "NetworkSyncTimeFlagFile"

.field public static final DRM_PROVIDER_RIGHTS_FOLDER:Ljava/lang/String; = "rights"

.field private static final DRM_TARGET_FOLDER_ROOT:Ljava/lang/String; = "MyCollections"

.field private static final FILE_NAME_PROJECTION:[Ljava/lang/String; = null

.field private static final IMAGES:I = 0x66

.field private static final IMAGES_ID:I = 0x67

.field private static final JAR:I = 0x68

.field private static final JAR_ID:I = 0x69

.field private static final LOGD:Z = false

.field private static final MIME_TYPE_PROJECTION:[Ljava/lang/String; = null

.field public static final REQUEST_TIMEOUT:I = 0x3a98

.field private static final STAMP:I = 0x72

.field private static final STAMP_ID:I = 0x73

.field private static final STAMP_PROJECTION:[Ljava/lang/String; = null

.field private static TAG:Ljava/lang/String; = null

.field private static final URI_MATCHER:Landroid/content/UriMatcher; = null

.field private static final VIDEO:I = 0x6a

.field private static final VIDEO_ID:I = 0x6b

.field static final sGetTableAndWhereParam:Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;


# instance fields
.field private mDrmDatabasePath:Ljava/lang/String;

.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1667
    new-instance v0, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;-><init>(Lcom/android/providers/drm/DrmProvider$1;)V

    sput-object v0, Lcom/android/providers/drm/DrmProvider;->sGetTableAndWhereParam:Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;

    .line 2970
    const-string v0, "DrmProvider"

    sput-object v0, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    .line 2971
    const-string v0, "download"

    sput-object v0, Lcom/android/providers/drm/DrmProvider;->DRM_FOLDER:Ljava/lang/String;

    .line 2980
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "chmod"

    aput-object v1, v0, v2

    const-string v1, "660"

    aput-object v1, v0, v3

    const-string v1, ""

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/providers/drm/DrmProvider;->CMD_CHMOD:[Ljava/lang/String;

    .line 2987
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "chmod"

    aput-object v1, v0, v2

    const-string v1, "770"

    aput-object v1, v0, v3

    const-string v1, ""

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/providers/drm/DrmProvider;->CMD_CHMOD1:[Ljava/lang/String;

    .line 2995
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "chown"

    aput-object v1, v0, v2

    const-string v1, "-1.oma_drm_group"

    aput-object v1, v0, v3

    const-string v1, ""

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/providers/drm/DrmProvider;->CMD_CHOWN:[Ljava/lang/String;

    .line 3047
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/drm/DrmProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 3050
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "mime_type"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/providers/drm/DrmProvider;->MIME_TYPE_PROJECTION:[Ljava/lang/String;

    .line 3055
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/providers/drm/DrmProvider;->FILE_NAME_PROJECTION:[Ljava/lang/String;

    .line 3060
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "content_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/providers/drm/DrmProvider;->CONTENT_ID_PROJECTION:[Ljava/lang/String;

    .line 3065
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "artist_id"

    aput-object v1, v0, v2

    const-string v1, "artist_key"

    aput-object v1, v0, v3

    const-string v1, "artist"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/providers/drm/DrmProvider;->ARTISTS_PROJECTION:[Ljava/lang/String;

    .line 3071
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "album_id"

    aput-object v1, v0, v2

    const-string v1, "album_key"

    aput-object v1, v0, v3

    const-string v1, "album"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/providers/drm/DrmProvider;->ALBUMS_PROJECTION:[Ljava/lang/String;

    .line 3077
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "album_id"

    aput-object v1, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/providers/drm/DrmProvider;->ALBUM_ART_PROJECTION:[Ljava/lang/String;

    .line 3082
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "time_stamp"

    aput-object v1, v0, v3

    const-string v1, "clock_stamp"

    aput-object v1, v0, v4

    const-string v1, "timezone_stamp"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/providers/drm/DrmProvider;->STAMP_PROJECTION:[Ljava/lang/String;

    .line 3093
    sget-object v0, Lcom/android/providers/drm/DrmProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "drm"

    const-string v2, "audio"

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3094
    sget-object v0, Lcom/android/providers/drm/DrmProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "drm"

    const-string v2, "audio/#"

    const/16 v3, 0x65

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3095
    sget-object v0, Lcom/android/providers/drm/DrmProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "drm"

    const-string v2, "images"

    const/16 v3, 0x66

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3096
    sget-object v0, Lcom/android/providers/drm/DrmProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "drm"

    const-string v2, "images/#"

    const/16 v3, 0x67

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3097
    sget-object v0, Lcom/android/providers/drm/DrmProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "drm"

    const-string v2, "jar"

    const/16 v3, 0x68

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3098
    sget-object v0, Lcom/android/providers/drm/DrmProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "drm"

    const-string v2, "jar/#"

    const/16 v3, 0x69

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3099
    sget-object v0, Lcom/android/providers/drm/DrmProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "drm"

    const-string v2, "video"

    const/16 v3, 0x6a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3100
    sget-object v0, Lcom/android/providers/drm/DrmProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "drm"

    const-string v2, "video/#"

    const/16 v3, 0x6b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3101
    sget-object v0, Lcom/android/providers/drm/DrmProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "drm"

    const-string v2, "artists"

    const/16 v3, 0x6c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3102
    sget-object v0, Lcom/android/providers/drm/DrmProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "drm"

    const-string v2, "artists/#"

    const/16 v3, 0x6d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3103
    sget-object v0, Lcom/android/providers/drm/DrmProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "drm"

    const-string v2, "albums"

    const/16 v3, 0x6e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3104
    sget-object v0, Lcom/android/providers/drm/DrmProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "drm"

    const-string v2, "albums/#"

    const/16 v3, 0x6f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3105
    sget-object v0, Lcom/android/providers/drm/DrmProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "drm"

    const-string v2, "album_art"

    const/16 v3, 0x70

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3106
    sget-object v0, Lcom/android/providers/drm/DrmProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "drm"

    const-string v2, "album_art/#"

    const/16 v3, 0x71

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3107
    sget-object v0, Lcom/android/providers/drm/DrmProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "drm"

    const-string v2, "stamp"

    const/16 v3, 0x72

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3108
    sget-object v0, Lcom/android/providers/drm/DrmProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "drm"

    const-string v2, "stamp/#"

    const/16 v3, 0x73

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3110
    sget-object v0, Lcom/android/providers/drm/DrmProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "drm"

    const-string v2, "bulk_update_images"

    const/16 v3, 0x74

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3111
    sget-object v0, Lcom/android/providers/drm/DrmProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "drm"

    const-string v2, "bulk_update_audio"

    const/16 v3, 0x75

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3112
    sget-object v0, Lcom/android/providers/drm/DrmProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "drm"

    const-string v2, "bulk_update_video"

    const/16 v3, 0x76

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3113
    sget-object v0, Lcom/android/providers/drm/DrmProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "drm"

    const-string v2, "bulk_update_jar"

    const/16 v3, 0x77

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3115
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 2979
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/drm/DrmProvider;->mDrmDatabasePath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/drm/DrmProvider;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/providers/drm/DrmProvider;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/providers/drm/DrmProvider;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/providers/drm/DrmProvider;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/providers/drm/DrmProvider;Ljava/io/File;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/providers/drm/DrmProvider;->changeFolderPermission(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/providers/drm/DrmProvider;Ljava/io/File;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/providers/drm/DrmProvider;->changeFolderGroup(Ljava/io/File;)V

    return-void
.end method

.method private declared-synchronized backupDrmDatabase()V
    .locals 15

    .prologue
    .line 2669
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/providers/drm/DrmProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    if-nez v2, :cond_1

    .line 2670
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v3, " @@@@@  The DRM database has an unknown ERROR!!! (backup)"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2776
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 2674
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/providers/drm/DrmProvider;->mDrmDatabasePath:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v2, ""

    iget-object v3, p0, Lcom/android/providers/drm/DrmProvider;->mDrmDatabasePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    .line 2675
    :cond_2
    const/4 v12, 0x0

    .line 2678
    .local v12, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_2
    iget-object v2, p0, Lcom/android/providers/drm/DrmProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    .line 2679
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/drm/DrmProvider;->mDrmDatabasePath:Ljava/lang/String;

    .line 2681
    iget-object v2, p0, Lcom/android/providers/drm/DrmProvider;->mDrmDatabasePath:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, ""

    iget-object v3, p0, Lcom/android/providers/drm/DrmProvider;->mDrmDatabasePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2689
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2700
    .end local v12           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_3
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/providers/drm/DrmProvider;->mDrmDatabasePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-backup"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2703
    .local v13, drmDatabaseBackupPath:Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    iget-object v2, p0, Lcom/android/providers/drm/DrmProvider;->mDrmDatabasePath:Ljava/lang/String;

    invoke-direct {v9, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2704
    .local v9, currentDatabaseFile:Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2706
    .local v6, backupDatabaseFile:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2708
    invoke-virtual {v6}, Ljava/io/File;->exists()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    if-nez v2, :cond_4

    .line 2712
    :try_start_4
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 2713
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 2715
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->CMD_CHMOD:[Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2716
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    sget-object v3, Lcom/android/providers/drm/DrmProvider;->CMD_CHMOD:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 2728
    :cond_4
    const/4 v10, 0x0

    .line 2729
    .local v10, currnetFileStream:Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 2730
    .local v7, backupFileStream:Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 2731
    .local v1, currentFileChannel:Ljava/nio/channels/FileChannel;
    const/4 v0, 0x0

    .line 2734
    .local v0, backupFileChannel:Ljava/nio/channels/FileChannel;
    :try_start_5
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 2735
    .end local v10           #currnetFileStream:Ljava/io/FileInputStream;
    .local v11, currnetFileStream:Ljava/io/FileInputStream;
    :try_start_6
    invoke-virtual {v11}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 2737
    new-instance v8, Ljava/io/FileOutputStream;

    const/4 v2, 0x0

    invoke-direct {v8, v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    .line 2738
    .end local v7           #backupFileStream:Ljava/io/FileOutputStream;
    .local v8, backupFileStream:Ljava/io/FileOutputStream;
    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 2740
    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_a

    .line 2748
    :try_start_8
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 2757
    :goto_1
    :try_start_9
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 2758
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_0

    .line 2759
    :catch_0
    move-exception v14

    .line 2760
    .local v14, e:Ljava/lang/Exception;
    :try_start_a
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v3, " @@@@@  ERROR: Close files error!!! (backup)"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2761
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2762
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 2763
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v3, " @@@@@  ERROR: Handle Exception Complete!!! (backup)-15"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 2669
    .end local v0           #backupFileChannel:Ljava/nio/channels/FileChannel;
    .end local v1           #currentFileChannel:Ljava/nio/channels/FileChannel;
    .end local v6           #backupDatabaseFile:Ljava/io/File;
    .end local v8           #backupFileStream:Ljava/io/FileOutputStream;
    .end local v9           #currentDatabaseFile:Ljava/io/File;
    .end local v11           #currnetFileStream:Ljava/io/FileInputStream;
    .end local v13           #drmDatabaseBackupPath:Ljava/lang/String;
    .end local v14           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 2690
    .restart local v12       #db:Landroid/database/sqlite/SQLiteDatabase;
    :catch_1
    move-exception v14

    .line 2691
    .restart local v14       #e:Ljava/lang/Exception;
    :try_start_b
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v3, " @@@@@  ERROR: The DRM database cannot be opened!!! (backup)"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2692
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2693
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 2694
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v3, " @@@@@  ERROR: Handle Exception Complete!!! (backup)-10"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2717
    .end local v12           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v14           #e:Ljava/lang/Exception;
    .restart local v6       #backupDatabaseFile:Ljava/io/File;
    .restart local v9       #currentDatabaseFile:Ljava/io/File;
    .restart local v13       #drmDatabaseBackupPath:Ljava/lang/String;
    :catch_2
    move-exception v14

    .line 2718
    .restart local v14       #e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v3, " @@@@@  ERROR: The DRM database backup cannot be created!!! (backup)"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2719
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2720
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 2721
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v3, " @@@@@  ERROR: Handle Exception Complete!!! (backup)-12"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    .line 2741
    .end local v14           #e:Ljava/lang/Exception;
    .restart local v0       #backupFileChannel:Ljava/nio/channels/FileChannel;
    .restart local v1       #currentFileChannel:Ljava/nio/channels/FileChannel;
    .restart local v7       #backupFileStream:Ljava/io/FileOutputStream;
    .restart local v10       #currnetFileStream:Ljava/io/FileInputStream;
    :catch_3
    move-exception v14

    .line 2742
    .restart local v14       #e:Ljava/lang/Exception;
    :goto_2
    :try_start_c
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v3, " @@@@@  ERROR: The DRM database cannot be backup!!! (backup)"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2743
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2744
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 2745
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v3, " @@@@@  ERROR: Handle Exception Complete!!! (backup)-13"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 2748
    :try_start_d
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    .line 2757
    :goto_3
    :try_start_e
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 2758
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    goto/16 :goto_0

    .line 2759
    :catch_4
    move-exception v14

    .line 2760
    :try_start_f
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v3, " @@@@@  ERROR: Close files error!!! (backup)"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2761
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2762
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 2763
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v3, " @@@@@  ERROR: Handle Exception Complete!!! (backup)-15"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_0

    .line 2747
    .end local v14           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    .line 2748
    :goto_4
    :try_start_10
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5

    .line 2757
    :goto_5
    :try_start_11
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 2758
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_6

    .line 2747
    :goto_6
    :try_start_12
    throw v2

    .line 2749
    :catch_5
    move-exception v14

    .line 2750
    .restart local v14       #e:Ljava/lang/Exception;
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v4, " @@@@@  ERROR: Sync files error!!! (backup)"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2751
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2752
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 2753
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v4, " @@@@@  ERROR: Handle Exception Complete!!! (backup)-14"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 2759
    .end local v14           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v14

    .line 2760
    .restart local v14       #e:Ljava/lang/Exception;
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v4, " @@@@@  ERROR: Close files error!!! (backup)"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2761
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2762
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 2763
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v4, " @@@@@  ERROR: Handle Exception Complete!!! (backup)-15"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 2749
    :catch_7
    move-exception v14

    .line 2750
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v3, " @@@@@  ERROR: Sync files error!!! (backup)"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2751
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2752
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 2753
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v3, " @@@@@  ERROR: Handle Exception Complete!!! (backup)-14"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2749
    .end local v7           #backupFileStream:Ljava/io/FileOutputStream;
    .end local v10           #currnetFileStream:Ljava/io/FileInputStream;
    .end local v14           #e:Ljava/lang/Exception;
    .restart local v8       #backupFileStream:Ljava/io/FileOutputStream;
    .restart local v11       #currnetFileStream:Ljava/io/FileInputStream;
    :catch_8
    move-exception v14

    .line 2750
    .restart local v14       #e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v3, " @@@@@  ERROR: Sync files error!!! (backup)"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2751
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2752
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 2753
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v3, " @@@@@  ERROR: Handle Exception Complete!!! (backup)-14"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_1

    .line 2747
    .end local v8           #backupFileStream:Ljava/io/FileOutputStream;
    .end local v14           #e:Ljava/lang/Exception;
    .restart local v7       #backupFileStream:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v2

    move-object v10, v11

    .end local v11           #currnetFileStream:Ljava/io/FileInputStream;
    .restart local v10       #currnetFileStream:Ljava/io/FileInputStream;
    goto/16 :goto_4

    .end local v7           #backupFileStream:Ljava/io/FileOutputStream;
    .end local v10           #currnetFileStream:Ljava/io/FileInputStream;
    .restart local v8       #backupFileStream:Ljava/io/FileOutputStream;
    .restart local v11       #currnetFileStream:Ljava/io/FileInputStream;
    :catchall_3
    move-exception v2

    move-object v7, v8

    .end local v8           #backupFileStream:Ljava/io/FileOutputStream;
    .restart local v7       #backupFileStream:Ljava/io/FileOutputStream;
    move-object v10, v11

    .end local v11           #currnetFileStream:Ljava/io/FileInputStream;
    .restart local v10       #currnetFileStream:Ljava/io/FileInputStream;
    goto/16 :goto_4

    .line 2741
    .end local v10           #currnetFileStream:Ljava/io/FileInputStream;
    .restart local v11       #currnetFileStream:Ljava/io/FileInputStream;
    :catch_9
    move-exception v14

    move-object v10, v11

    .end local v11           #currnetFileStream:Ljava/io/FileInputStream;
    .restart local v10       #currnetFileStream:Ljava/io/FileInputStream;
    goto/16 :goto_2

    .end local v7           #backupFileStream:Ljava/io/FileOutputStream;
    .end local v10           #currnetFileStream:Ljava/io/FileInputStream;
    .restart local v8       #backupFileStream:Ljava/io/FileOutputStream;
    .restart local v11       #currnetFileStream:Ljava/io/FileInputStream;
    :catch_a
    move-exception v14

    move-object v7, v8

    .end local v8           #backupFileStream:Ljava/io/FileOutputStream;
    .restart local v7       #backupFileStream:Ljava/io/FileOutputStream;
    move-object v10, v11

    .end local v11           #currnetFileStream:Ljava/io/FileInputStream;
    .restart local v10       #currnetFileStream:Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method

.method private changeFolderGroup(Ljava/io/File;)V
    .locals 4
    .parameter "folder"

    .prologue
    .line 3240
    sget-object v1, Lcom/android/providers/drm/DrmProvider;->CMD_CHOWN:[Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 3242
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    sget-object v2, Lcom/android/providers/drm/DrmProvider;->CMD_CHOWN:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3252
    :goto_0
    return-void

    .line 3243
    :catch_0
    move-exception v0

    .line 3245
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 3246
    sget-object v1, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "change folder group error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3247
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 3249
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 3250
    sget-object v1, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "change folder group error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private changeFolderPermission(Ljava/io/File;)V
    .locals 4
    .parameter "folder"

    .prologue
    .line 3222
    sget-object v1, Lcom/android/providers/drm/DrmProvider;->CMD_CHMOD1:[Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 3224
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    sget-object v2, Lcom/android/providers/drm/DrmProvider;->CMD_CHMOD1:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3234
    :goto_0
    return-void

    .line 3225
    :catch_0
    move-exception v0

    .line 3227
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 3228
    sget-object v1, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "change folder permission error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3229
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 3231
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 3232
    sget-object v1, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "change folder permission error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized checkDefaultDrmDatabaseExistOnCreate()V
    .locals 15

    .prologue
    .line 2612
    monitor-enter p0

    :try_start_0
    const-string v10, "/data/data/com.android.providers.drm/databases/drm.db"

    .line 2613
    .local v10, defaultDrmDatabasePath:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-backup"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2615
    .local v9, backupDrmDatabasePath:Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2616
    .local v11, drmDBFile:Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2618
    .local v6, backupDBFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v11}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 2622
    const/4 v7, 0x0

    .line 2623
    .local v7, backupDBFileStream:Ljava/io/FileInputStream;
    const/4 v12, 0x0

    .line 2624
    .local v12, drmDBFileStream:Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 2625
    .local v1, backupDBFileChannel:Ljava/nio/channels/FileChannel;
    const/4 v0, 0x0

    .line 2628
    .local v0, drmDBFileChannel:Ljava/nio/channels/FileChannel;
    :try_start_1
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2629
    .end local v7           #backupDBFileStream:Ljava/io/FileInputStream;
    .local v8, backupDBFileStream:Ljava/io/FileInputStream;
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 2631
    new-instance v13, Ljava/io/FileOutputStream;

    const/4 v2, 0x0

    invoke-direct {v13, v11, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    .line 2632
    .end local v12           #drmDBFileStream:Ljava/io/FileOutputStream;
    .local v13, drmDBFileStream:Ljava/io/FileOutputStream;
    :try_start_3
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 2634
    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    .line 2641
    :try_start_4
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 2649
    :goto_0
    :try_start_5
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 2650
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 2659
    .end local v0           #drmDBFileChannel:Ljava/nio/channels/FileChannel;
    .end local v1           #backupDBFileChannel:Ljava/nio/channels/FileChannel;
    .end local v8           #backupDBFileStream:Ljava/io/FileInputStream;
    .end local v13           #drmDBFileStream:Ljava/io/FileOutputStream;
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 2635
    .restart local v0       #drmDBFileChannel:Ljava/nio/channels/FileChannel;
    .restart local v1       #backupDBFileChannel:Ljava/nio/channels/FileChannel;
    .restart local v7       #backupDBFileStream:Ljava/io/FileInputStream;
    .restart local v12       #drmDBFileStream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v14

    .line 2636
    .local v14, e:Ljava/lang/Exception;
    :goto_2
    :try_start_6
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2637
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 2638
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v3, " @@@@@  ERROR: Handle Exception Complete!!! (checkDefault)-10"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2641
    :try_start_7
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 2649
    :goto_3
    :try_start_8
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 2650
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_1

    .line 2651
    :catch_1
    move-exception v14

    .line 2652
    :try_start_9
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2653
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 2654
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v3, " @@@@@  ERROR: Handle Exception Complete!!! (checkDefault)-12"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    .line 2612
    .end local v0           #drmDBFileChannel:Ljava/nio/channels/FileChannel;
    .end local v1           #backupDBFileChannel:Ljava/nio/channels/FileChannel;
    .end local v6           #backupDBFile:Ljava/io/File;
    .end local v7           #backupDBFileStream:Ljava/io/FileInputStream;
    .end local v9           #backupDrmDatabasePath:Ljava/lang/String;
    .end local v10           #defaultDrmDatabasePath:Ljava/lang/String;
    .end local v11           #drmDBFile:Ljava/io/File;
    .end local v12           #drmDBFileStream:Ljava/io/FileOutputStream;
    .end local v14           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 2640
    .restart local v0       #drmDBFileChannel:Ljava/nio/channels/FileChannel;
    .restart local v1       #backupDBFileChannel:Ljava/nio/channels/FileChannel;
    .restart local v6       #backupDBFile:Ljava/io/File;
    .restart local v7       #backupDBFileStream:Ljava/io/FileInputStream;
    .restart local v9       #backupDrmDatabasePath:Ljava/lang/String;
    .restart local v10       #defaultDrmDatabasePath:Ljava/lang/String;
    .restart local v11       #drmDBFile:Ljava/io/File;
    .restart local v12       #drmDBFileStream:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v2

    .line 2641
    :goto_4
    :try_start_a
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 2649
    :goto_5
    :try_start_b
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 2650
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 2640
    :goto_6
    :try_start_c
    throw v2

    .line 2642
    :catch_2
    move-exception v14

    .line 2643
    .restart local v14       #e:Ljava/lang/Exception;
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2644
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 2645
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v4, " @@@@@  ERROR: Handle Exception Complete!!! (checkDefault)-11"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 2651
    .end local v14           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v14

    .line 2652
    .restart local v14       #e:Ljava/lang/Exception;
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2653
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 2654
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v4, " @@@@@  ERROR: Handle Exception Complete!!! (checkDefault)-12"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 2642
    :catch_4
    move-exception v14

    .line 2643
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2644
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 2645
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v3, " @@@@@  ERROR: Handle Exception Complete!!! (checkDefault)-11"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2642
    .end local v7           #backupDBFileStream:Ljava/io/FileInputStream;
    .end local v12           #drmDBFileStream:Ljava/io/FileOutputStream;
    .end local v14           #e:Ljava/lang/Exception;
    .restart local v8       #backupDBFileStream:Ljava/io/FileInputStream;
    .restart local v13       #drmDBFileStream:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v14

    .line 2643
    .restart local v14       #e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2644
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 2645
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v3, " @@@@@  ERROR: Handle Exception Complete!!! (checkDefault)-11"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2651
    .end local v14           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v14

    .line 2652
    .restart local v14       #e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2653
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 2654
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v3, " @@@@@  ERROR: Handle Exception Complete!!! (checkDefault)-12"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_1

    .line 2640
    .end local v13           #drmDBFileStream:Ljava/io/FileOutputStream;
    .end local v14           #e:Ljava/lang/Exception;
    .restart local v12       #drmDBFileStream:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v2

    move-object v7, v8

    .end local v8           #backupDBFileStream:Ljava/io/FileInputStream;
    .restart local v7       #backupDBFileStream:Ljava/io/FileInputStream;
    goto :goto_4

    .end local v7           #backupDBFileStream:Ljava/io/FileInputStream;
    .end local v12           #drmDBFileStream:Ljava/io/FileOutputStream;
    .restart local v8       #backupDBFileStream:Ljava/io/FileInputStream;
    .restart local v13       #drmDBFileStream:Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v2

    move-object v12, v13

    .end local v13           #drmDBFileStream:Ljava/io/FileOutputStream;
    .restart local v12       #drmDBFileStream:Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8           #backupDBFileStream:Ljava/io/FileInputStream;
    .restart local v7       #backupDBFileStream:Ljava/io/FileInputStream;
    goto :goto_4

    .line 2635
    .end local v7           #backupDBFileStream:Ljava/io/FileInputStream;
    .restart local v8       #backupDBFileStream:Ljava/io/FileInputStream;
    :catch_7
    move-exception v14

    move-object v7, v8

    .end local v8           #backupDBFileStream:Ljava/io/FileInputStream;
    .restart local v7       #backupDBFileStream:Ljava/io/FileInputStream;
    goto/16 :goto_2

    .end local v7           #backupDBFileStream:Ljava/io/FileInputStream;
    .end local v12           #drmDBFileStream:Ljava/io/FileOutputStream;
    .restart local v8       #backupDBFileStream:Ljava/io/FileInputStream;
    .restart local v13       #drmDBFileStream:Ljava/io/FileOutputStream;
    :catch_8
    move-exception v14

    move-object v12, v13

    .end local v13           #drmDBFileStream:Ljava/io/FileOutputStream;
    .restart local v12       #drmDBFileStream:Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8           #backupDBFileStream:Ljava/io/FileInputStream;
    .restart local v7       #backupDBFileStream:Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method

.method private checkPermissionGranted(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 5
    .parameter "uri"
    .parameter "callFunctionName"

    .prologue
    .line 3150
    const/4 v0, 0x1

    .line 3152
    .local v0, permissionGranted:Z
    invoke-virtual {p0}, Lcom/android/providers/drm/DrmProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.INSTALL_DRM"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_4

    .line 3155
    const/4 v0, 0x0

    .line 3157
    invoke-virtual {p0}, Lcom/android/providers/drm/DrmProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.ACCESS_DRM"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_3

    .line 3160
    const/4 v0, 0x0

    .line 3162
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3163
    .local v2, uriString:Ljava/lang/String;
    sget-object v3, Landroid/provider/DrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3165
    .local v1, stampUriString:Ljava/lang/String;
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3166
    const/4 v0, 0x0

    .line 3181
    :goto_0
    if-nez v0, :cond_0

    .line 3198
    .end local v1           #stampUriString:Ljava/lang/String;
    .end local v2           #uriString:Ljava/lang/String;
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    .line 3214
    :cond_1
    :goto_2
    return v0

    .line 3174
    .restart local v1       #stampUriString:Ljava/lang/String;
    .restart local v2       #uriString:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 3191
    .end local v1           #stampUriString:Ljava/lang/String;
    .end local v2           #uriString:Ljava/lang/String;
    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    .line 3207
    :cond_4
    const/4 v0, 0x1

    goto :goto_2
.end method

.method private createTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 459
    const-string v0, "CREATE TABLE audio (_id INTEGER PRIMARY KEY,_data TEXT,_size INTEGER,_display_name TEXT,mime_type TEXT,date_added INTEGER,date_modified INTEGER,title TEXT,message_type TEXT,delivery_type INTEGER,date_install INTEGER,bucket_id TEXT,bucket_display_name TEXT,favorite INTEGER,existence TEXT,content_offset INTEGER,content_boundary_offset INTEGER,content_id TEXT,artist_id INTEGER,album_id INTEGER,is_ringtone INTEGER,is_music INTEGER,is_alarm INTEGER,is_notification INTEGER,content_url TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 487
    const-string v0, "CREATE TABLE images (_id INTEGER PRIMARY KEY,_data TEXT,_size INTEGER,_display_name TEXT,mime_type TEXT,date_added INTEGER,date_modified INTEGER,title TEXT NOT NULL,message_type TEXT,delivery_type INTEGER,date_install INTEGER,bucket_id TEXT,bucket_display_name TEXT,favorite INTEGER,existence TEXT,content_offset INTEGER,content_boundary_offset INTEGER,content_id TEXT,content_url TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 509
    const-string v0, "CREATE TABLE jar (_id INTEGER PRIMARY KEY,_data TEXT,_size INTEGER,_display_name TEXT,mime_type TEXT,date_added INTEGER,date_modified INTEGER,title TEXT,message_type TEXT,delivery_type INTEGER,date_install INTEGER,bucket_id TEXT,bucket_display_name TEXT,favorite INTEGER,existence TEXT,content_offset INTEGER,content_boundary_offset INTEGER,content_id TEXT,content_url TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 531
    const-string v0, "CREATE TABLE video (_id INTEGER PRIMARY KEY,_data TEXT,_size INTEGER,_display_name TEXT,mime_type TEXT,date_added INTEGER,date_modified INTEGER,title TEXT,message_type TEXT,delivery_type INTEGER,date_install INTEGER,bucket_id TEXT,bucket_display_name TEXT,favorite INTEGER,existence TEXT,content_offset INTEGER,content_boundary_offset INTEGER,content_id TEXT,artist_id INTEGER,album_id INTEGER,content_url TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 557
    const-string v0, "CREATE TABLE IF NOT EXISTS artists (artist_id INTEGER PRIMARY KEY,artist_key TEXT,artist TEXT NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 564
    const-string v0, "CREATE TABLE IF NOT EXISTS albums (album_id INTEGER PRIMARY KEY,album_key TEXT,album TEXT NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 570
    const-string v0, "CREATE TABLE IF NOT EXISTS album_art (album_id INTEGER PRIMARY KEY,_data TEXT NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 575
    const-string v0, "CREATE TABLE IF NOT EXISTS stamp (_id INTEGER PRIMARY KEY,time_stamp TEXT,clock_stamp TEXT,timezone_stamp TEXT,time_differential TEXT,network_sync TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 583
    return-void
.end method

.method private deleteDRMAudio(Landroid/net/Uri;)V
    .locals 7
    .parameter "drmUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2147
    if-nez p1, :cond_0

    .line 2166
    :goto_0
    return-void

    .line 2150
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/drm/DrmProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2152
    .local v2, resolver:Landroid/content/ContentResolver;
    const-string v3, "external"

    invoke-static {v3}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2155
    .local v0, audioUri:Landroid/net/Uri;
    :try_start_0
    const-string v3, "_data=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2157
    const-string v3, "content://media"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2162
    :goto_1
    const/4 v2, 0x0

    .line 2165
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v4, "DRMAudio deleted"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2159
    :catch_0
    move-exception v1

    .line 2160
    .local v1, ex:Ljava/lang/Exception;
    :try_start_1
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v4, "updateDRMAudio Exception "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2162
    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    const/4 v2, 0x0

    throw v3
.end method

.method private deleteFiles(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 26
    .parameter "uri"
    .parameter "userWhere"
    .parameter "whereArgs"

    .prologue
    .line 1782
    const/4 v9, 0x0

    .line 1785
    .local v9, c:Landroid/database/Cursor;
    const/4 v2, 0x1

    :try_start_0
    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_data"

    aput-object v3, v4, v2

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/providers/drm/DrmProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1787
    if-eqz v9, :cond_d

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result v2

    if-eqz v2, :cond_d

    .line 1835
    const/4 v10, 0x1

    .line 1836
    .local v10, checkExternal:Z
    const/4 v12, 0x1

    .line 1837
    .local v12, checkInternal:Z
    const/4 v11, 0x1

    .line 1838
    .local v11, checkExternalRoot:Z
    const/4 v13, 0x1

    .line 1839
    .local v13, checkInternalRoot:Z
    const/16 v16, 0x0

    .line 1840
    .local v16, externalStoragePath:Ljava/lang/String;
    const/16 v18, 0x0

    .line 1841
    .local v18, internalStoragePath:Ljava/lang/String;
    const/16 v17, 0x0

    .line 1842
    .local v17, externalStorageRootPath:Ljava/lang/String;
    const/16 v19, 0x0

    .line 1845
    .local v19, internalStorageRootPath:Ljava/lang/String;
    :try_start_1
    invoke-static {}, Landroid/provider/DrmHelper;->getExternalStorageDownloadPath()Ljava/lang/String;

    move-result-object v16

    .line 1847
    if-eqz v16, :cond_0

    const-string v2, ""

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    .line 1849
    :cond_0
    const/4 v10, 0x0

    .line 1856
    :cond_1
    :goto_0
    :try_start_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    .line 1858
    if-eqz v17, :cond_2

    const-string v2, ""

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    if-eqz v2, :cond_3

    .line 1860
    :cond_2
    const/4 v11, 0x0

    .line 1867
    :cond_3
    :goto_1
    :try_start_3
    invoke-static {}, Landroid/provider/DrmHelper;->getInternalStorageDownloadPath()Ljava/lang/String;

    move-result-object v18

    .line 1869
    if-eqz v18, :cond_4

    const-string v2, ""

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v2

    if-eqz v2, :cond_5

    .line 1871
    :cond_4
    const/4 v12, 0x0

    .line 1878
    :cond_5
    :goto_2
    :try_start_4
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    .line 1880
    if-eqz v19, :cond_6

    const-string v2, ""

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result v2

    if-eqz v2, :cond_7

    .line 1882
    :cond_6
    const/4 v13, 0x0

    .line 1888
    :cond_7
    :goto_3
    const/16 v21, 0x0

    .line 1889
    .local v21, prefix:Ljava/lang/String;
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/drm/DrmProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v22

    .line 1890
    .local v22, prefix2:Ljava/lang/String;
    const/16 v23, 0x0

    .line 1891
    .local v23, prefix3:Ljava/lang/String;
    const/16 v24, 0x0

    .line 1892
    .local v24, prefix4:Ljava/lang/String;
    const/16 v25, 0x0

    .line 1894
    .local v25, prefix5:Ljava/lang/String;
    if-eqz v10, :cond_8

    .line 1895
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1898
    :cond_8
    if-eqz v11, :cond_9

    .line 1899
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1902
    :cond_9
    if-eqz v12, :cond_a

    .line 1903
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 1906
    :cond_a
    if-eqz v13, :cond_b

    .line 1907
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 1916
    :cond_b
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 1917
    .local v20, path:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1922
    .local v8, bFind:Z
    const/4 v2, 0x1

    if-ne v10, v2, :cond_f

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1923
    const/4 v8, 0x1

    .line 1941
    :goto_4
    if-eqz v8, :cond_c

    .line 1947
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, v20

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1954
    :cond_c
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-result v2

    if-nez v2, :cond_b

    .line 1965
    .end local v8           #bFind:Z
    .end local v10           #checkExternal:Z
    .end local v11           #checkExternalRoot:Z
    .end local v12           #checkInternal:Z
    .end local v13           #checkInternalRoot:Z
    .end local v16           #externalStoragePath:Ljava/lang/String;
    .end local v17           #externalStorageRootPath:Ljava/lang/String;
    .end local v18           #internalStoragePath:Ljava/lang/String;
    .end local v19           #internalStorageRootPath:Ljava/lang/String;
    .end local v20           #path:Ljava/lang/String;
    .end local v21           #prefix:Ljava/lang/String;
    .end local v22           #prefix2:Ljava/lang/String;
    .end local v23           #prefix3:Ljava/lang/String;
    .end local v24           #prefix4:Ljava/lang/String;
    .end local v25           #prefix5:Ljava/lang/String;
    :cond_d
    if-eqz v9, :cond_e

    .line 1966
    :try_start_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    .line 1981
    :cond_e
    :goto_5
    return-void

    .line 1851
    .restart local v10       #checkExternal:Z
    .restart local v11       #checkExternalRoot:Z
    .restart local v12       #checkInternal:Z
    .restart local v13       #checkInternalRoot:Z
    .restart local v16       #externalStoragePath:Ljava/lang/String;
    .restart local v17       #externalStorageRootPath:Ljava/lang/String;
    .restart local v18       #internalStoragePath:Ljava/lang/String;
    .restart local v19       #internalStorageRootPath:Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 1852
    .local v14, e:Ljava/lang/Exception;
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 1862
    .end local v14           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v14

    .line 1863
    .restart local v14       #e:Ljava/lang/Exception;
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 1873
    .end local v14           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v14

    .line 1874
    .restart local v14       #e:Ljava/lang/Exception;
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 1884
    .end local v14           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v14

    .line 1885
    .restart local v14       #e:Ljava/lang/Exception;
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 1925
    .end local v14           #e:Ljava/lang/Exception;
    .restart local v8       #bFind:Z
    .restart local v20       #path:Ljava/lang/String;
    .restart local v21       #prefix:Ljava/lang/String;
    .restart local v22       #prefix2:Ljava/lang/String;
    .restart local v23       #prefix3:Ljava/lang/String;
    .restart local v24       #prefix4:Ljava/lang/String;
    .restart local v25       #prefix5:Ljava/lang/String;
    :cond_f
    :try_start_7
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1926
    const/4 v8, 0x1

    goto :goto_4

    .line 1928
    :cond_10
    const/4 v2, 0x1

    if-ne v12, v2, :cond_11

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1929
    const/4 v8, 0x1

    goto :goto_4

    .line 1931
    :cond_11
    const/4 v2, 0x1

    if-ne v11, v2, :cond_12

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1932
    const/4 v8, 0x1

    goto :goto_4

    .line 1934
    :cond_12
    const/4 v2, 0x1

    if-ne v13, v2, :cond_13

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    move-result v2

    if-eqz v2, :cond_13

    .line 1935
    const/4 v8, 0x1

    goto :goto_4

    .line 1938
    :cond_13
    const/4 v8, 0x0

    goto :goto_4

    .line 1958
    .end local v8           #bFind:Z
    .end local v10           #checkExternal:Z
    .end local v11           #checkExternalRoot:Z
    .end local v12           #checkInternal:Z
    .end local v13           #checkInternalRoot:Z
    .end local v16           #externalStoragePath:Ljava/lang/String;
    .end local v17           #externalStorageRootPath:Ljava/lang/String;
    .end local v18           #internalStoragePath:Ljava/lang/String;
    .end local v19           #internalStorageRootPath:Ljava/lang/String;
    .end local v20           #path:Ljava/lang/String;
    .end local v21           #prefix:Ljava/lang/String;
    .end local v22           #prefix2:Ljava/lang/String;
    .end local v23           #prefix3:Ljava/lang/String;
    .end local v24           #prefix4:Ljava/lang/String;
    .end local v25           #prefix5:Ljava/lang/String;
    :catch_4
    move-exception v14

    .line 1959
    .restart local v14       #e:Ljava/lang/Exception;
    :try_start_8
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v3, " @@@@@  ERROR: delete files FAIL!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1960
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 1962
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v3, " @@@@@  ERROR: Handle Exception Complete!!! (deleteFiles)-7"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1965
    if-eqz v9, :cond_e

    .line 1966
    :try_start_9
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_5

    .line 1968
    :catch_5
    move-exception v14

    .line 1970
    const-wide/16 v2, 0x12c

    :try_start_a
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 1971
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_5

    .line 1972
    :catch_6
    move-exception v15

    .line 1973
    .local v15, e2:Ljava/lang/Exception;
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v3, " @@@@@  ERROR: delete files FAIL!!!-(2)"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1975
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    .line 1976
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v3, " @@@@@  ERROR: Handle Exception Complete!!! (deleteFiles)-8"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    :goto_6
    const/4 v9, 0x0

    goto/16 :goto_5

    .line 1964
    .end local v14           #e:Ljava/lang/Exception;
    .end local v15           #e2:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 1965
    if-eqz v9, :cond_14

    .line 1966
    :try_start_b
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 1964
    :cond_14
    :goto_7
    throw v2

    .line 1968
    :catch_7
    move-exception v14

    .line 1970
    .restart local v14       #e:Ljava/lang/Exception;
    const-wide/16 v3, 0x12c

    :try_start_c
    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 1971
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_7

    .line 1972
    :catch_8
    move-exception v15

    .line 1973
    .restart local v15       #e2:Ljava/lang/Exception;
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v4, " @@@@@  ERROR: delete files FAIL!!!-(2)"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1975
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    .line 1976
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v4, " @@@@@  ERROR: Handle Exception Complete!!! (deleteFiles)-8"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    const/4 v9, 0x0

    goto :goto_7

    .line 1968
    .end local v14           #e:Ljava/lang/Exception;
    .end local v15           #e2:Ljava/lang/Exception;
    :catch_9
    move-exception v14

    .line 1970
    .restart local v14       #e:Ljava/lang/Exception;
    const-wide/16 v2, 0x12c

    :try_start_d
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 1971
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    goto/16 :goto_5

    .line 1972
    :catch_a
    move-exception v15

    .line 1973
    .restart local v15       #e2:Ljava/lang/Exception;
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v3, " @@@@@  ERROR: delete files FAIL!!!-(2)"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1975
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    .line 1976
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v3, " @@@@@  ERROR: Handle Exception Complete!!! (deleteFiles)-8"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method private dropTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 590
    const-string v0, "DROP TABLE IF EXISTS audio"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 591
    const-string v0, "DROP TABLE IF EXISTS images"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 592
    const-string v0, "DROP TABLE IF EXISTS jar"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 593
    const-string v0, "DROP TABLE IF EXISTS video"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 594
    const-string v0, "DROP TABLE IF EXISTS artists"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 595
    const-string v0, "DROP TABLE IF EXISTS albums"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 596
    const-string v0, "DROP TABLE IF EXISTS album_art"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 597
    const-string v0, "DROP TABLE IF EXISTS stamp"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 598
    return-void
.end method

.method private ensureFile(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 1
    .parameter "initialValues"

    .prologue
    .line 872
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/providers/drm/DrmProvider;->ensureFile(Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method private ensureFile(Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 29
    .parameter "initialValues"
    .parameter "subPath"

    .prologue
    .line 890
    const/16 v23, 0x0

    .line 892
    .local v23, useSubPath:Z
    if-eqz p2, :cond_0

    const-string v25, ""

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 893
    :cond_0
    const/16 v23, 0x0

    .line 901
    :goto_0
    :try_start_0
    new-instance v24, Landroid/content/ContentValues;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 903
    .local v24, values:Landroid/content/ContentValues;
    const-string v25, "Destination"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    const/16 v26, 0x7

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_7

    .line 904
    invoke-static {}, Landroid/provider/DrmHelper;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v25

    const-string v26, "mounted"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_6

    .line 905
    invoke-static {}, Landroid/provider/DrmHelper;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v17

    .line 907
    .local v17, parent:Ljava/io/File;
    new-instance v20, Landroid/os/StatFs;

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 911
    .local v20, stat:Landroid/os/StatFs;
    invoke-virtual/range {v20 .. v20}, Landroid/os/StatFs;->getBlockSize()I

    move-result v25

    move/from16 v0, v25

    int-to-long v5, v0

    .line 912
    .local v5, blockSize:J
    invoke-virtual/range {v20 .. v20}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v25

    move/from16 v0, v25

    int-to-long v3, v0

    .line 914
    .local v3, availableBlocks:J
    const-string v25, "_size"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    mul-long v27, v3, v5

    cmp-long v25, v25, v27

    if-ltz v25, :cond_2

    .line 919
    const/16 v24, 0x0

    .line 1205
    .end local v3           #availableBlocks:J
    .end local v5           #blockSize:J
    .end local v17           #parent:Ljava/io/File;
    .end local v20           #stat:Landroid/os/StatFs;
    .end local v24           #values:Landroid/content/ContentValues;
    :goto_1
    return-object v24

    .line 896
    :cond_1
    const/16 v23, 0x1

    goto :goto_0

    .line 939
    .restart local v3       #availableBlocks:J
    .restart local v5       #blockSize:J
    .restart local v17       #parent:Ljava/io/File;
    .restart local v20       #stat:Landroid/os/StatFs;
    .restart local v24       #values:Landroid/content/ContentValues;
    :cond_2
    invoke-static {}, Landroid/provider/DrmHelper;->getInternalStorageDownloadPath()Ljava/lang/String;

    move-result-object v8

    .line 940
    .local v8, downloadPath:Ljava/lang/String;
    const-string v25, "_data"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 942
    .local v22, targetFolder:Ljava/lang/String;
    if-eqz v22, :cond_3

    const-string v25, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_3

    .line 943
    move-object/from16 v8, v22

    .line 952
    :cond_3
    new-instance v9, Ljava/io/File;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 953
    .local v9, drmDirectory:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 955
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "title"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 957
    .local v16, filePath:Ljava/lang/String;
    const-string v25, "/"

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v19

    .line 958
    .local v19, slashPos:I
    add-int/lit8 v25, v19, 0x1

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    sput-object v25, Lcom/android/providers/drm/DrmProvider;->DRM_FOLDER:Ljava/lang/String;

    .line 965
    const/4 v15, 0x0

    .line 967
    .local v15, fileName:Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 969
    .local v14, file:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v25

    if-nez v25, :cond_4

    .line 970
    invoke-virtual {v14}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 972
    :try_start_1
    invoke-virtual {v14}, Ljava/io/File;->createNewFile()Z

    .line 973
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v15

    .line 1030
    :goto_2
    :try_start_2
    const-string v25, "_data"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    const-string v25, "_display_name"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    const-string v25, "title"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    const-string v25, "bucket_id"

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->hashCode()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1034
    const-string v25, "bucket_display_name"

    sget-object v26, Lcom/android/providers/drm/DrmProvider;->DRM_FOLDER:Ljava/lang/String;

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    const-string v25, "existence"

    const-string v26, "exist"

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    const-string v25, "Destination"

    invoke-virtual/range {v24 .. v25}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 1201
    .end local v3           #availableBlocks:J
    .end local v5           #blockSize:J
    .end local v8           #downloadPath:Ljava/lang/String;
    .end local v9           #drmDirectory:Ljava/io/File;
    .end local v14           #file:Ljava/io/File;
    .end local v15           #fileName:Ljava/lang/String;
    .end local v16           #filePath:Ljava/lang/String;
    .end local v17           #parent:Ljava/io/File;
    .end local v19           #slashPos:I
    .end local v20           #stat:Landroid/os/StatFs;
    .end local v22           #targetFolder:Ljava/lang/String;
    .end local v24           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v10

    .line 1202
    .local v10, e:Ljava/lang/Exception;
    sget-object v25, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v26, "Failed to create data file in ensureFile"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    sget-object v25, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 1205
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 974
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v3       #availableBlocks:J
    .restart local v5       #blockSize:J
    .restart local v8       #downloadPath:Ljava/lang/String;
    .restart local v9       #drmDirectory:Ljava/io/File;
    .restart local v14       #file:Ljava/io/File;
    .restart local v15       #fileName:Ljava/lang/String;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #parent:Ljava/io/File;
    .restart local v19       #slashPos:I
    .restart local v20       #stat:Landroid/os/StatFs;
    .restart local v22       #targetFolder:Ljava/lang/String;
    .restart local v24       #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v10

    .line 978
    .local v10, e:Ljava/io/IOException;
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 985
    .end local v10           #e:Ljava/io/IOException;
    :cond_4
    :try_start_3
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    .line 986
    const-string v25, "."

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 987
    .local v7, dot:I
    const/16 v18, 0x0

    .line 988
    .local v18, prefix:Ljava/lang/String;
    const/16 v21, 0x0

    .line 989
    .local v21, suffix:Ljava/lang/String;
    if-lez v7, :cond_5

    .line 990
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v15, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 991
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v15, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v21

    .line 1001
    :goto_3
    const/4 v13, 0x0

    .line 1004
    .local v13, extendFile:Ljava/io/File;
    :try_start_4
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "---"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual {v14}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v13

    .line 1023
    :goto_4
    :try_start_5
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    .line 1024
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_2

    .line 993
    .end local v13           #extendFile:Ljava/io/File;
    :cond_5
    move-object/from16 v18, v15

    .line 994
    const-string v21, ""

    goto :goto_3

    .line 1005
    .restart local v13       #extendFile:Ljava/io/File;
    :catch_2
    move-exception v11

    .line 1006
    .local v11, e2:Ljava/lang/Exception;
    const-wide/16 v25, 0x12c

    invoke-static/range {v25 .. v26}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 1009
    :try_start_6
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "---"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual {v14}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-result-object v13

    goto :goto_4

    .line 1010
    :catch_3
    move-exception v12

    .line 1011
    .local v12, e3:Ljava/lang/Exception;
    :try_start_7
    sget-object v25, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v26, " @@@@@  ERROR: create new file failed."

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    sget-object v25, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 1014
    sget-object v25, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v26, " @@@@@  ERROR: Handle Exception Complete!!! (ensureFile)-2"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 1041
    .end local v3           #availableBlocks:J
    .end local v5           #blockSize:J
    .end local v7           #dot:I
    .end local v8           #downloadPath:Ljava/lang/String;
    .end local v9           #drmDirectory:Ljava/io/File;
    .end local v11           #e2:Ljava/lang/Exception;
    .end local v12           #e3:Ljava/lang/Exception;
    .end local v13           #extendFile:Ljava/io/File;
    .end local v14           #file:Ljava/io/File;
    .end local v15           #fileName:Ljava/lang/String;
    .end local v16           #filePath:Ljava/lang/String;
    .end local v17           #parent:Ljava/io/File;
    .end local v18           #prefix:Ljava/lang/String;
    .end local v19           #slashPos:I
    .end local v20           #stat:Landroid/os/StatFs;
    .end local v21           #suffix:Ljava/lang/String;
    .end local v22           #targetFolder:Ljava/lang/String;
    :cond_6
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 1044
    :cond_7
    invoke-static {}, Landroid/provider/DrmHelper;->getExternalStorageState()Ljava/lang/String;

    move-result-object v25

    const-string v26, "mounted"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_c

    .line 1045
    invoke-static {}, Landroid/provider/DrmHelper;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v17

    .line 1047
    .restart local v17       #parent:Ljava/io/File;
    new-instance v20, Landroid/os/StatFs;

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1051
    .restart local v20       #stat:Landroid/os/StatFs;
    invoke-virtual/range {v20 .. v20}, Landroid/os/StatFs;->getBlockSize()I

    move-result v25

    move/from16 v0, v25

    int-to-long v5, v0

    .line 1052
    .restart local v5       #blockSize:J
    invoke-virtual/range {v20 .. v20}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v25

    move/from16 v0, v25

    int-to-long v3, v0

    .line 1054
    .restart local v3       #availableBlocks:J
    const-string v25, "_size"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    mul-long v27, v3, v5

    cmp-long v25, v25, v27

    if-ltz v25, :cond_8

    .line 1059
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 1090
    :cond_8
    invoke-static {}, Landroid/provider/DrmHelper;->getExternalStorageDownloadPath()Ljava/lang/String;

    move-result-object v8

    .line 1091
    .restart local v8       #downloadPath:Ljava/lang/String;
    const-string v25, "_data"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1093
    .restart local v22       #targetFolder:Ljava/lang/String;
    if-eqz v22, :cond_9

    const-string v25, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_9

    .line 1094
    move-object/from16 v8, v22

    .line 1103
    :cond_9
    new-instance v9, Ljava/io/File;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1104
    .restart local v9       #drmDirectory:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 1106
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "title"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1108
    .restart local v16       #filePath:Ljava/lang/String;
    const-string v25, "/"

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v19

    .line 1109
    .restart local v19       #slashPos:I
    add-int/lit8 v25, v19, 0x1

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    sput-object v25, Lcom/android/providers/drm/DrmProvider;->DRM_FOLDER:Ljava/lang/String;

    .line 1116
    const/4 v15, 0x0

    .line 1118
    .restart local v15       #fileName:Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1120
    .restart local v14       #file:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v25

    if-nez v25, :cond_a

    .line 1121
    invoke-virtual {v14}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->mkdirs()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 1123
    :try_start_8
    invoke-virtual {v14}, Ljava/io/File;->createNewFile()Z

    .line 1124
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    move-result-object v15

    .line 1186
    :goto_5
    :try_start_9
    const-string v25, "_data"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    const-string v25, "_display_name"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    const-string v25, "title"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    const-string v25, "bucket_id"

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->hashCode()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1190
    const-string v25, "bucket_display_name"

    sget-object v26, Lcom/android/providers/drm/DrmProvider;->DRM_FOLDER:Ljava/lang/String;

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    const-string v25, "existence"

    const-string v26, "exist"

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    const-string v25, "Destination"

    invoke-virtual/range {v24 .. v25}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1125
    :catch_4
    move-exception v10

    .line 1129
    .restart local v10       #e:Ljava/io/IOException;
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 1137
    .end local v10           #e:Ljava/io/IOException;
    :cond_a
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    .line 1138
    const-string v25, "."

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 1139
    .restart local v7       #dot:I
    const/16 v18, 0x0

    .line 1140
    .restart local v18       #prefix:Ljava/lang/String;
    const/16 v21, 0x0

    .line 1141
    .restart local v21       #suffix:Ljava/lang/String;
    if-lez v7, :cond_b

    .line 1142
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v15, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 1143
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v15, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    move-result-object v21

    .line 1156
    :goto_6
    const/4 v13, 0x0

    .line 1159
    .restart local v13       #extendFile:Ljava/io/File;
    :try_start_a
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "---"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual {v14}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    move-result-object v13

    .line 1178
    :goto_7
    :try_start_b
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    .line 1179
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_5

    .line 1145
    .end local v13           #extendFile:Ljava/io/File;
    :cond_b
    move-object/from16 v18, v15

    .line 1146
    const-string v21, ""

    goto :goto_6

    .line 1160
    .restart local v13       #extendFile:Ljava/io/File;
    :catch_5
    move-exception v11

    .line 1161
    .restart local v11       #e2:Ljava/lang/Exception;
    const-wide/16 v25, 0x12c

    invoke-static/range {v25 .. v26}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 1164
    :try_start_c
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "---"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual {v14}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    move-result-object v13

    goto :goto_7

    .line 1165
    :catch_6
    move-exception v12

    .line 1166
    .restart local v12       #e3:Ljava/lang/Exception;
    :try_start_d
    sget-object v25, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v26, " @@@@@  ERROR: create new file failed."

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    sget-object v25, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 1169
    sget-object v25, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v26, " @@@@@  ERROR: Handle Exception Complete!!! (ensureFile)-2"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    .line 1170
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 1198
    .end local v3           #availableBlocks:J
    .end local v5           #blockSize:J
    .end local v7           #dot:I
    .end local v8           #downloadPath:Ljava/lang/String;
    .end local v9           #drmDirectory:Ljava/io/File;
    .end local v11           #e2:Ljava/lang/Exception;
    .end local v12           #e3:Ljava/lang/Exception;
    .end local v13           #extendFile:Ljava/io/File;
    .end local v14           #file:Ljava/io/File;
    .end local v15           #fileName:Ljava/lang/String;
    .end local v16           #filePath:Ljava/lang/String;
    .end local v17           #parent:Ljava/io/File;
    .end local v18           #prefix:Ljava/lang/String;
    .end local v19           #slashPos:I
    .end local v20           #stat:Landroid/os/StatFs;
    .end local v21           #suffix:Ljava/lang/String;
    .end local v22           #targetFolder:Ljava/lang/String;
    :cond_c
    const/16 v24, 0x0

    goto/16 :goto_1
.end method

.method private getTableAndWhere(Landroid/net/Uri;ILjava/lang/String;Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;)V
    .locals 4
    .parameter "uri"
    .parameter "match"
    .parameter "userWhere"
    .parameter "out"

    .prologue
    const/4 v3, 0x1

    .line 1672
    const/4 v0, 0x0

    .line 1673
    .local v0, where:Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 1765
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown or unsupported URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1675
    :pswitch_0
    const-string v1, "audio"

    iput-object v1, p4, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 1770
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1771
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1772
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p4, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    .line 1779
    :goto_1
    return-void

    .line 1679
    :pswitch_1
    const-string v1, "audio"

    iput-object v1, p4, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 1680
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1681
    goto :goto_0

    .line 1684
    :pswitch_2
    const-string v1, "images"

    iput-object v1, p4, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto :goto_0

    .line 1688
    :pswitch_3
    const-string v1, "images"

    iput-object v1, p4, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 1689
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1690
    goto :goto_0

    .line 1693
    :pswitch_4
    const-string v1, "jar"

    iput-object v1, p4, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto :goto_0

    .line 1697
    :pswitch_5
    const-string v1, "jar"

    iput-object v1, p4, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 1698
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1699
    goto/16 :goto_0

    .line 1702
    :pswitch_6
    const-string v1, "video"

    iput-object v1, p4, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto/16 :goto_0

    .line 1706
    :pswitch_7
    const-string v1, "video"

    iput-object v1, p4, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 1707
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1708
    goto/16 :goto_0

    .line 1711
    :pswitch_8
    const-string v1, "atrists"

    iput-object v1, p4, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto/16 :goto_0

    .line 1715
    :pswitch_9
    const-string v1, "artists"

    iput-object v1, p4, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 1716
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1717
    goto/16 :goto_0

    .line 1720
    :pswitch_a
    const-string v1, "albums"

    iput-object v1, p4, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto/16 :goto_0

    .line 1724
    :pswitch_b
    const-string v1, "albums"

    iput-object v1, p4, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 1725
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1726
    goto/16 :goto_0

    .line 1729
    :pswitch_c
    const-string v1, "album_art"

    iput-object v1, p4, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto/16 :goto_0

    .line 1733
    :pswitch_d
    const-string v1, "album_art"

    iput-object v1, p4, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 1734
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1735
    goto/16 :goto_0

    .line 1738
    :pswitch_e
    const-string v1, "stamp"

    iput-object v1, p4, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto/16 :goto_0

    .line 1742
    :pswitch_f
    const-string v1, "stamp"

    iput-object v1, p4, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 1743
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1744
    goto/16 :goto_0

    .line 1748
    :pswitch_10
    const-string v1, "images"

    iput-object v1, p4, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto/16 :goto_0

    .line 1752
    :pswitch_11
    const-string v1, "audio"

    iput-object v1, p4, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto/16 :goto_0

    .line 1756
    :pswitch_12
    const-string v1, "video"

    iput-object v1, p4, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto/16 :goto_0

    .line 1760
    :pswitch_13
    const-string v1, "jar"

    iput-object v1, p4, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto/16 :goto_0

    .line 1774
    :cond_0
    iput-object p3, p4, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    goto/16 :goto_1

    .line 1777
    :cond_1
    iput-object v0, p4, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    goto/16 :goto_1

    .line 1673
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method private insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 10
    .parameter "db"
    .parameter "table"
    .parameter "nullColumnHack"
    .parameter "values"

    .prologue
    const-wide/16 v6, -0x1

    .line 1570
    const-wide/16 v4, -0x1

    .line 1571
    .local v4, rowId:J
    const/4 v2, 0x0

    .line 1572
    .local v2, hasException:Z
    const/4 v3, 0x0

    .line 1575
    .local v3, restart:Z
    :cond_0
    const/4 v2, 0x0

    .line 1578
    :try_start_0
    invoke-virtual {p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 1580
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-gez v8, :cond_1

    .line 1581
    sget-object v8, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v9, " @@@@@  ERROR: insert database failed!!! (insert)"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    if-nez v3, :cond_2

    .line 1584
    const/4 v2, 0x1

    .line 1585
    invoke-direct {p0}, Lcom/android/providers/drm/DrmProvider;->restoreDrmDatabase()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1587
    const/4 v3, 0x1

    .line 1608
    :try_start_1
    iget-object v8, p0, Lcom/android/providers/drm/DrmProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p1

    .line 1657
    :cond_1
    :goto_0
    if-nez v2, :cond_0

    move-wide v6, v4

    .line 1659
    :cond_2
    :goto_1
    return-wide v6

    .line 1609
    :catch_0
    move-exception v0

    .line 1610
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    sget-object v8, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v9, " @@@@@ ERROR: get writeable database fail. (insert)"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1617
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1618
    .local v0, e:Landroid/database/SQLException;
    sget-object v8, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v9, " @@@@@  ERROR: insert database fail!!! (insert)-2"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    sget-object v8, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    .line 1621
    sget-object v8, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v9, " @@@@@  ERROR: Handle Exception Complete!!! (insert)-6"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    if-nez v3, :cond_2

    .line 1624
    const/4 v2, 0x1

    .line 1625
    invoke-direct {p0}, Lcom/android/providers/drm/DrmProvider;->restoreDrmDatabase()V

    .line 1627
    const/4 v3, 0x1

    .line 1648
    :try_start_3
    iget-object v8, p0, Lcom/android/providers/drm/DrmProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object p1

    goto :goto_0

    .line 1649
    :catch_2
    move-exception v1

    .line 1650
    .local v1, e2:Ljava/lang/Exception;
    sget-object v8, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v9, " @@@@@ ERROR: get writeable database fail. (insert)-2"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private isFuseEnabled()Z
    .locals 1

    .prologue
    .line 3133
    const/4 v0, 0x1

    .line 3139
    .local v0, bRet:Z
    return v0
.end method

.method private modifyContentID(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "sID"

    .prologue
    .line 3119
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3121
    .local v0, sNewID:Ljava/lang/String;
    :goto_0
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 3125
    const-string v1, "\\/"

    const-string v2, "\\\\"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3128
    :cond_0
    return-object v0
.end method

.method private declared-synchronized restoreDrmDatabase()V
    .locals 17

    .prologue
    .line 2486
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/drm/DrmProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    if-nez v3, :cond_1

    .line 2487
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v4, " @@@@@  The DRM database has an unknown ERROR!!! (restore)"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2607
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 2491
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/drm/DrmProvider;->mDrmDatabasePath:Ljava/lang/String;

    if-eqz v3, :cond_2

    const-string v3, ""

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/drm/DrmProvider;->mDrmDatabasePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_4

    .line 2492
    :cond_2
    const/4 v10, 0x0

    .line 2495
    .local v10, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/drm/DrmProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    .line 2496
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/providers/drm/DrmProvider;->mDrmDatabasePath:Ljava/lang/String;

    .line 2498
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/drm/DrmProvider;->mDrmDatabasePath:Ljava/lang/String;

    if-eqz v3, :cond_3

    const-string v3, ""

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/drm/DrmProvider;->mDrmDatabasePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2503
    :cond_3
    const-string v3, "/data/data/com.android.providers.drm/databases/drm.db"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/providers/drm/DrmProvider;->mDrmDatabasePath:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2528
    .end local v10           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_4
    :goto_1
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/drm/DrmProvider;->mDrmDatabasePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-backup"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2531
    .local v14, drmDatabaseBackupPath:Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/drm/DrmProvider;->mDrmDatabasePath:Ljava/lang/String;

    invoke-direct {v11, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2532
    .local v11, dbFile:Ljava/io/File;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2534
    .local v7, backupDatabaseFile:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2536
    invoke-virtual {v11}, Ljava/io/File;->exists()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    if-nez v3, :cond_5

    .line 2538
    :try_start_4
    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 2539
    invoke-virtual {v11}, Ljava/io/File;->createNewFile()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 2551
    :cond_5
    const/4 v8, 0x0

    .line 2552
    .local v8, backupFileStream:Ljava/io/FileInputStream;
    const/4 v12, 0x0

    .line 2553
    .local v12, dbFileStream:Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 2554
    .local v2, backupFileChannel:Ljava/nio/channels/FileChannel;
    const/4 v1, 0x0

    .line 2557
    .local v1, dbFileChannel:Ljava/nio/channels/FileChannel;
    :try_start_5
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 2558
    .end local v8           #backupFileStream:Ljava/io/FileInputStream;
    .local v9, backupFileStream:Ljava/io/FileInputStream;
    :try_start_6
    invoke-virtual {v9}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 2560
    new-instance v13, Ljava/io/FileOutputStream;

    const/4 v3, 0x0

    invoke-direct {v13, v11, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_a

    .line 2561
    .end local v12           #dbFileStream:Ljava/io/FileOutputStream;
    .local v13, dbFileStream:Ljava/io/FileOutputStream;
    :try_start_7
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 2563
    const-wide/16 v3, 0x0

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_b

    .line 2571
    :try_start_8
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 2580
    :goto_2
    :try_start_9
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 2581
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    :goto_3
    move-object v12, v13

    .end local v13           #dbFileStream:Ljava/io/FileOutputStream;
    .restart local v12       #dbFileStream:Ljava/io/FileOutputStream;
    move-object v8, v9

    .line 2590
    .end local v9           #backupFileStream:Ljava/io/FileInputStream;
    .restart local v8       #backupFileStream:Ljava/io/FileInputStream;
    :goto_4
    :try_start_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/drm/DrmProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    if-nez v3, :cond_0

    .line 2595
    new-instance v3, Lcom/android/providers/drm/DrmProvider$OpenDatabaseHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/drm/DrmProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/providers/drm/DrmProvider$OpenDatabaseHelper;-><init>(Lcom/android/providers/drm/DrmProvider;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/providers/drm/DrmProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 2486
    .end local v1           #dbFileChannel:Ljava/nio/channels/FileChannel;
    .end local v2           #backupFileChannel:Ljava/nio/channels/FileChannel;
    .end local v7           #backupDatabaseFile:Ljava/io/File;
    .end local v8           #backupFileStream:Ljava/io/FileInputStream;
    .end local v11           #dbFile:Ljava/io/File;
    .end local v12           #dbFileStream:Ljava/io/FileOutputStream;
    .end local v14           #drmDatabaseBackupPath:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 2507
    .restart local v10       #db:Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v15

    .line 2508
    .local v15, e:Ljava/lang/Exception;
    :try_start_b
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v4, " @@@@@  ERROR: The DRM database cannot be opened!!! (restore)"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2509
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2510
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    .line 2511
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v4, " @@@@@  ERROR: Handle Exception Complete!!! (restore)-10"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 2515
    :try_start_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/drm/DrmProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    .line 2524
    :goto_5
    :try_start_d
    const-string v3, "/data/data/com.android.providers.drm/databases/drm.db"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/providers/drm/DrmProvider;->mDrmDatabasePath:Ljava/lang/String;

    goto/16 :goto_1

    .line 2517
    :catch_1
    move-exception v16

    .line 2518
    .local v16, e2:Ljava/lang/Exception;
    const/4 v10, 0x0

    .line 2519
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/providers/drm/DrmProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 2521
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_5

    .line 2540
    .end local v10           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v15           #e:Ljava/lang/Exception;
    .end local v16           #e2:Ljava/lang/Exception;
    .restart local v7       #backupDatabaseFile:Ljava/io/File;
    .restart local v11       #dbFile:Ljava/io/File;
    .restart local v14       #drmDatabaseBackupPath:Ljava/lang/String;
    :catch_2
    move-exception v15

    .line 2541
    .local v15, e:Ljava/io/IOException;
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v4, " @@@@@  ERROR: The DRM database cannot be created!!! (restore)"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2542
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2543
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    .line 2544
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v4, " @@@@@  ERROR: Handle Exception Complete!!! (restore)-11"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_0

    .line 2564
    .end local v15           #e:Ljava/io/IOException;
    .restart local v1       #dbFileChannel:Ljava/nio/channels/FileChannel;
    .restart local v2       #backupFileChannel:Ljava/nio/channels/FileChannel;
    .restart local v8       #backupFileStream:Ljava/io/FileInputStream;
    .restart local v12       #dbFileStream:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v15

    .line 2565
    .local v15, e:Ljava/lang/Exception;
    :goto_6
    :try_start_e
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v4, " @@@@@  ERROR: The DRM database cannot be restored!!! (restore)"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2566
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2567
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    .line 2568
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v4, " @@@@@  ERROR: Handle Exception Complete!!! (restore)-12"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 2571
    :try_start_f
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    .line 2580
    :goto_7
    :try_start_10
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 2581
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4

    goto/16 :goto_4

    .line 2582
    :catch_4
    move-exception v15

    .line 2583
    :try_start_11
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v4, " @@@@@  ERROR: Close files error!!! (restore)"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2584
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2585
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    .line 2586
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v4, " @@@@@  ERROR: Handle Exception Complete!!! (restore)-14"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_4

    .line 2570
    .end local v15           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v3

    .line 2571
    :goto_8
    :try_start_12
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->sync()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_5

    .line 2580
    :goto_9
    :try_start_13
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 2581
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_6

    .line 2570
    :goto_a
    :try_start_14
    throw v3

    .line 2572
    :catch_5
    move-exception v15

    .line 2573
    .restart local v15       #e:Ljava/lang/Exception;
    sget-object v4, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v5, " @@@@@  ERROR: Sync files error!!! (restore)"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2574
    sget-object v4, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2575
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    .line 2576
    sget-object v4, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v5, " @@@@@  ERROR: Handle Exception Complete!!! (restore)-13"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 2582
    .end local v15           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v15

    .line 2583
    .restart local v15       #e:Ljava/lang/Exception;
    sget-object v4, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v5, " @@@@@  ERROR: Close files error!!! (restore)"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2584
    sget-object v4, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2585
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    .line 2586
    sget-object v4, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v5, " @@@@@  ERROR: Handle Exception Complete!!! (restore)-14"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 2572
    :catch_7
    move-exception v15

    .line 2573
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v4, " @@@@@  ERROR: Sync files error!!! (restore)"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2574
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2575
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    .line 2576
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v4, " @@@@@  ERROR: Handle Exception Complete!!! (restore)-13"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 2572
    .end local v8           #backupFileStream:Ljava/io/FileInputStream;
    .end local v12           #dbFileStream:Ljava/io/FileOutputStream;
    .end local v15           #e:Ljava/lang/Exception;
    .restart local v9       #backupFileStream:Ljava/io/FileInputStream;
    .restart local v13       #dbFileStream:Ljava/io/FileOutputStream;
    :catch_8
    move-exception v15

    .line 2573
    .restart local v15       #e:Ljava/lang/Exception;
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v4, " @@@@@  ERROR: Sync files error!!! (restore)"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2574
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2575
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    .line 2576
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v4, " @@@@@  ERROR: Handle Exception Complete!!! (restore)-13"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2582
    .end local v15           #e:Ljava/lang/Exception;
    :catch_9
    move-exception v15

    .line 2583
    .restart local v15       #e:Ljava/lang/Exception;
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v4, " @@@@@  ERROR: Close files error!!! (restore)"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2584
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2585
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    .line 2586
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v4, " @@@@@  ERROR: Handle Exception Complete!!! (restore)-14"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto/16 :goto_3

    .line 2570
    .end local v13           #dbFileStream:Ljava/io/FileOutputStream;
    .end local v15           #e:Ljava/lang/Exception;
    .restart local v12       #dbFileStream:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v3

    move-object v8, v9

    .end local v9           #backupFileStream:Ljava/io/FileInputStream;
    .restart local v8       #backupFileStream:Ljava/io/FileInputStream;
    goto/16 :goto_8

    .end local v8           #backupFileStream:Ljava/io/FileInputStream;
    .end local v12           #dbFileStream:Ljava/io/FileOutputStream;
    .restart local v9       #backupFileStream:Ljava/io/FileInputStream;
    .restart local v13       #dbFileStream:Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v3

    move-object v12, v13

    .end local v13           #dbFileStream:Ljava/io/FileOutputStream;
    .restart local v12       #dbFileStream:Ljava/io/FileOutputStream;
    move-object v8, v9

    .end local v9           #backupFileStream:Ljava/io/FileInputStream;
    .restart local v8       #backupFileStream:Ljava/io/FileInputStream;
    goto/16 :goto_8

    .line 2564
    .end local v8           #backupFileStream:Ljava/io/FileInputStream;
    .restart local v9       #backupFileStream:Ljava/io/FileInputStream;
    :catch_a
    move-exception v15

    move-object v8, v9

    .end local v9           #backupFileStream:Ljava/io/FileInputStream;
    .restart local v8       #backupFileStream:Ljava/io/FileInputStream;
    goto/16 :goto_6

    .end local v8           #backupFileStream:Ljava/io/FileInputStream;
    .end local v12           #dbFileStream:Ljava/io/FileOutputStream;
    .restart local v9       #backupFileStream:Ljava/io/FileInputStream;
    .restart local v13       #dbFileStream:Ljava/io/FileOutputStream;
    :catch_b
    move-exception v15

    move-object v12, v13

    .end local v13           #dbFileStream:Ljava/io/FileOutputStream;
    .restart local v12       #dbFileStream:Ljava/io/FileOutputStream;
    move-object v8, v9

    .end local v9           #backupFileStream:Ljava/io/FileInputStream;
    .restart local v8       #backupFileStream:Ljava/io/FileInputStream;
    goto/16 :goto_6
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 11
    .parameter "uri"
    .parameter "userWhere"
    .parameter "whereArgs"

    .prologue
    const/4 v8, 0x0

    .line 1985
    invoke-virtual {p0}, Lcom/android/providers/drm/DrmProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "android.permission.ACCESS_DRM"

    invoke-virtual {v9, v10}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_0

    .line 1987
    new-instance v8, Ljava/lang/SecurityException;

    const-string v9, "Requires DRM permission"

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1990
    :cond_0
    const/4 v0, 0x0

    .line 1991
    .local v0, count:I
    sget-object v9, Lcom/android/providers/drm/DrmProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v9, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    .line 1993
    .local v6, match:I
    const/4 v1, 0x0

    .line 1994
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x0

    .line 1995
    .local v4, hasException:Z
    const/4 v7, 0x0

    .line 1998
    .local v7, restart:Z
    :cond_1
    const/4 v4, 0x0

    .line 2001
    :try_start_0
    iget-object v9, p0, Lcom/android/providers/drm/DrmProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2033
    :goto_0
    if-nez v4, :cond_1

    .line 2035
    sget-object v9, Lcom/android/providers/drm/DrmProvider;->sGetTableAndWhereParam:Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;

    monitor-enter v9

    .line 2036
    :try_start_1
    sget-object v8, Lcom/android/providers/drm/DrmProvider;->sGetTableAndWhereParam:Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;

    invoke-direct {p0, p1, v6, p2, v8}, Lcom/android/providers/drm/DrmProvider;->getTableAndWhere(Landroid/net/Uri;ILjava/lang/String;Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;)V

    .line 2039
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/drm/DrmProvider;->deleteFiles(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2041
    const/4 v7, 0x0

    .line 2044
    :cond_2
    const/4 v4, 0x0

    .line 2047
    :try_start_2
    sget-object v8, Lcom/android/providers/drm/DrmProvider;->sGetTableAndWhereParam:Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;

    iget-object v8, v8, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v10, Lcom/android/providers/drm/DrmProvider;->sGetTableAndWhereParam:Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;

    iget-object v10, v10, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    invoke-virtual {v1, v8, v10, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    .line 2093
    :goto_1
    if-nez v4, :cond_2

    .line 2100
    if-lez v0, :cond_3

    .line 2101
    :try_start_3
    invoke-virtual {p0}, Lcom/android/providers/drm/DrmProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual {v8, p1, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2105
    invoke-direct {p0}, Lcom/android/providers/drm/DrmProvider;->backupDrmDatabase()V

    .line 2108
    :cond_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2110
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2119
    :try_start_4
    invoke-direct {p0, p1}, Lcom/android/providers/drm/DrmProvider;->deleteDRMAudio(Landroid/net/Uri;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 2129
    :cond_4
    :goto_2
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const-string v9, "android.intent.action.DELETE"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "com.android.browser"

    const-string v10, "com.android.browser.BrowserDownloadPage$BrowserDownloadPageBroadcastReceiver"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v5

    .line 2133
    .local v5, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/providers/drm/DrmProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v8, v0

    .line 2137
    .end local v5           #intent:Landroid/content/Intent;
    :cond_5
    return v8

    .line 2002
    :catch_0
    move-exception v2

    .line 2003
    .local v2, e:Landroid/database/sqlite/SQLiteException;
    :try_start_5
    sget-object v9, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v10, " @@@@@  ERROR: Cannot open DRM database!!! (delete)"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    sget-object v9, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2005
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 2006
    sget-object v9, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v10, " @@@@@  ERROR: Handle Exception Complete!!! (delete)-9"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    const/4 v4, 0x1

    .line 2009
    invoke-direct {p0}, Lcom/android/providers/drm/DrmProvider;->restoreDrmDatabase()V

    .line 2011
    if-nez v7, :cond_5

    .line 2012
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 2016
    .end local v2           #e:Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v2

    .line 2017
    .local v2, e:Ljava/lang/Exception;
    sget-object v9, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v10, " @@@@@  ERROR: The DRM database has an unknown error!!! (delete)"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    sget-object v9, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2019
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 2020
    sget-object v9, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v10, " @@@@@  ERROR: Handle Exception Complete!!! (delete)-10"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    const/4 v4, 0x1

    .line 2023
    invoke-direct {p0}, Lcom/android/providers/drm/DrmProvider;->restoreDrmDatabase()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2025
    if-nez v7, :cond_5

    .line 2026
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 2030
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    throw v8

    .line 2049
    :catch_2
    move-exception v2

    .line 2050
    .restart local v2       #e:Ljava/lang/Exception;
    :try_start_6
    sget-object v8, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v10, " @@@@@  ERROR: Cannot delete the DRM database!!! (delete)"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    sget-object v8, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 2053
    sget-object v8, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v10, " @@@@@  ERROR: Handle Exception Complete!!! (delete)-11"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    if-nez v7, :cond_6

    .line 2056
    const/4 v4, 0x1

    .line 2057
    invoke-direct {p0}, Lcom/android/providers/drm/DrmProvider;->restoreDrmDatabase()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2078
    :try_start_7
    iget-object v8, p0, Lcom/android/providers/drm/DrmProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    move-result-object v1

    .line 2079
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 2080
    :catch_3
    move-exception v3

    .line 2081
    .local v3, e2:Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 2082
    :try_start_8
    sget-object v8, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v10, " @@@@@  ERROR: The DRM Database cannot be restored. (delete)-1"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2083
    const/4 v0, 0x0

    .line 2084
    goto/16 :goto_1

    .line 2087
    .end local v3           #e2:Ljava/lang/Exception;
    :cond_6
    const/4 v4, 0x0

    .line 2088
    sget-object v8, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v10, " @@@@@  ERROR: The DRM Database cannot be restored. (delete)"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 2108
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v8

    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v8

    .line 2121
    :catch_4
    move-exception v8

    goto/16 :goto_2
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 11
    .parameter "url"

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 800
    sget-object v0, Lcom/android/providers/drm/DrmProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 858
    :cond_0
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown URL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 805
    :pswitch_1
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->MIME_TYPE_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/drm/DrmProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 806
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 807
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_1

    .line 808
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 809
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 812
    .local v9, mimeType:Ljava/lang/String;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 855
    .end local v6           #c:Landroid/database/Cursor;
    .end local v9           #mimeType:Ljava/lang/String;
    :goto_0
    return-object v9

    .line 813
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v9       #mimeType:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 815
    .local v7, e:Ljava/lang/Exception;
    const-wide/16 v0, 0x12c

    :try_start_1
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 816
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 817
    :catch_1
    move-exception v8

    .line 818
    .local v8, e2:Ljava/lang/Exception;
    sget-object v0, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v1, " @@@@@  ERROR: getType - close cursor fail!!!-1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    const/4 v6, 0x0

    goto :goto_0

    .line 826
    .end local v7           #e:Ljava/lang/Exception;
    .end local v8           #e2:Ljava/lang/Exception;
    .end local v9           #mimeType:Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 837
    :goto_1
    const-string v9, "No Mime Type"

    goto :goto_0

    .line 827
    :catch_2
    move-exception v7

    .line 829
    .restart local v7       #e:Ljava/lang/Exception;
    const-wide/16 v0, 0x12c

    :try_start_3
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 830
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    .line 831
    :catch_3
    move-exception v8

    .line 832
    .restart local v8       #e2:Ljava/lang/Exception;
    sget-object v0, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v1, " @@@@@  ERROR: getType - close cursor fail!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    const/4 v6, 0x0

    goto :goto_1

    .line 844
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #e:Ljava/lang/Exception;
    .end local v8           #e2:Ljava/lang/Exception;
    :pswitch_2
    const-string v9, "MetaInfo"

    goto :goto_0

    .line 846
    :pswitch_3
    const-string v9, "time stamp"

    goto :goto_0

    .line 849
    :pswitch_4
    const-string v9, "Bulk update images"

    goto :goto_0

    .line 851
    :pswitch_5
    const-string v9, "Bulk update audio"

    goto :goto_0

    .line 853
    :pswitch_6
    const-string v9, "Bulk update video"

    goto :goto_0

    .line 855
    :pswitch_7
    const-string v9, "Bulk update jar"

    goto :goto_0

    .line 800
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 23
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    .line 1237
    const-string v2, "insert"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/drm/DrmProvider;->checkPermissionGranted(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1238
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "insert(): Requires INSTALL_DRM permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1243
    :cond_0
    sget-object v3, Landroid/provider/DrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Landroid/provider/DrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/providers/drm/DrmProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 1244
    .local v20, stamp:Landroid/database/Cursor;
    if-eqz v20, :cond_2

    .line 1246
    :try_start_0
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1247
    const-string v2, "network_sync"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 1248
    .local v21, syncColumnIndex:I
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1249
    .local v12, isSync:Ljava/lang/String;
    const-string v2, "TRUE"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_1

    .line 1295
    .end local v12           #isSync:Ljava/lang/String;
    .end local v21           #syncColumnIndex:I
    :cond_1
    :goto_0
    :try_start_1
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1325
    :cond_2
    :goto_1
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v13

    .line 1326
    .local v13, match:I
    const/4 v14, 0x0

    .line 1331
    .local v14, newUri:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 1332
    .local v8, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v11, 0x0

    .line 1333
    .local v11, hasException:Z
    const/4 v15, 0x0

    .line 1336
    .local v15, restart:Z
    :cond_3
    const/4 v11, 0x0

    .line 1339
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/drm/DrmProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v8

    .line 1371
    :goto_2
    if-nez v11, :cond_3

    .line 1376
    if-nez p2, :cond_4

    .line 1377
    new-instance p2, Landroid/content/ContentValues;

    .end local p2
    invoke-direct/range {p2 .. p2}, Landroid/content/ContentValues;-><init>()V

    .line 1378
    .restart local p2
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v3, "insert(): initialValues is null, create a new one!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/drm/DrmProvider;->isFuseEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1383
    const-string v2, "content_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1389
    .local v19, sOldID:Ljava/lang/String;
    if-eqz v19, :cond_5

    .line 1390
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/providers/drm/DrmProvider;->modifyContentID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1392
    .local v18, sNewID:Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1393
    const-string v2, "content_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    .end local v18           #sNewID:Ljava/lang/String;
    .end local v19           #sOldID:Ljava/lang/String;
    :cond_5
    const/16 v22, 0x0

    .line 1404
    .local v22, values:Landroid/content/ContentValues;
    const/4 v15, 0x0

    .line 1407
    :cond_6
    const/4 v11, 0x0

    .line 1410
    packed-switch v13, :pswitch_data_0

    .line 1499
    :pswitch_0
    :try_start_3
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1501
    :catch_0
    move-exception v9

    .line 1502
    .local v9, e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v3, " @@@@@  ERROR: The DRM database has error!!! (insert)"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 1505
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v3, " @@@@@  ERROR: Handle Exception Complete!!! (insert)-5"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    if-nez v15, :cond_12

    .line 1508
    const/4 v11, 0x1

    .line 1509
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/drm/DrmProvider;->restoreDrmDatabase()V

    .line 1530
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/drm/DrmProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    move-result-object v8

    .line 1531
    const/4 v15, 0x1

    .line 1545
    :goto_3
    const/4 v11, 0x1

    .line 1547
    .end local v9           #e:Ljava/lang/Exception;
    :cond_7
    :goto_4
    if-nez v11, :cond_6

    .line 1549
    if-eqz v14, :cond_8

    .line 1550
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/drm/DrmProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1554
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/drm/DrmProvider;->backupDrmDatabase()V

    :cond_8
    move-object v2, v14

    .line 1565
    .end local v22           #values:Landroid/content/ContentValues;
    :goto_5
    return-object v2

    .line 1276
    .end local v8           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v11           #hasException:Z
    .end local v13           #match:I
    .end local v14           #newUri:Landroid/net/Uri;
    .end local v15           #restart:Z
    :catch_1
    move-exception v9

    .line 1277
    .restart local v9       #e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v3, " @@@@@  ERROR: cursor error!!! (insert)"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 1280
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v3, " @@@@@  ERROR: Handle Exception Complete!!! (insert)-1"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1296
    .end local v9           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v9

    .line 1298
    .restart local v9       #e:Ljava/lang/Exception;
    const-wide/16 v2, 0x12c

    :try_start_5
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 1299
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_1

    .line 1300
    :catch_3
    move-exception v10

    .line 1301
    .local v10, e2:Ljava/lang/Exception;
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v3, " @@@@@  ERROR: close cursor fail!!! (insert)"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 1304
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v3, " @@@@@  ERROR: Handle Exception Complete!!! (insert)-2"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 1340
    .end local v9           #e:Ljava/lang/Exception;
    .end local v10           #e2:Ljava/lang/Exception;
    .restart local v8       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v11       #hasException:Z
    .restart local v13       #match:I
    .restart local v14       #newUri:Landroid/net/Uri;
    .restart local v15       #restart:Z
    :catch_4
    move-exception v9

    .line 1341
    .local v9, e:Landroid/database/sqlite/SQLiteException;
    :try_start_6
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v3, " @@@@@  ERROR: Cannot open DRM database!!! (insert)"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 1344
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v3, " @@@@@  ERROR: Handle Exception Complete!!! (insert)-3"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    const/4 v11, 0x1

    .line 1347
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/drm/DrmProvider;->restoreDrmDatabase()V

    .line 1349
    if-nez v15, :cond_9

    .line 1350
    const/4 v15, 0x1

    goto/16 :goto_2

    .line 1352
    :cond_9
    const/4 v2, 0x0

    goto :goto_5

    .line 1354
    .end local v9           #e:Landroid/database/sqlite/SQLiteException;
    :catch_5
    move-exception v9

    .line 1355
    .local v9, e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v3, " @@@@@  ERROR: The DRM database has an unknown error!!! (insert)"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 1358
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v3, " @@@@@  ERROR: Handle Exception Complete!!! (insert)-4"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    const/4 v11, 0x1

    .line 1361
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/drm/DrmProvider;->restoreDrmDatabase()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1363
    if-nez v15, :cond_a

    .line 1364
    const/4 v15, 0x1

    goto/16 :goto_2

    .line 1366
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 1368
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    throw v2

    .line 1415
    .restart local v22       #values:Landroid/content/ContentValues;
    :pswitch_1
    :try_start_7
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/providers/drm/DrmProvider;->ensureFile(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v22

    .line 1419
    if-nez v22, :cond_b

    const/4 v2, 0x0

    goto/16 :goto_5

    .line 1421
    :cond_b
    const-string v2, "audio"

    const-string v3, "title"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v8, v2, v3, v1}, Lcom/android/providers/drm/DrmProvider;->insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v16

    .line 1422
    .local v16, rowId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-lez v2, :cond_7

    .line 1423
    sget-object v2, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    goto/16 :goto_4

    .line 1431
    .end local v16           #rowId:J
    :pswitch_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/providers/drm/DrmProvider;->ensureFile(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v22

    .line 1434
    if-nez v22, :cond_c

    const/4 v2, 0x0

    goto/16 :goto_5

    .line 1436
    :cond_c
    const-string v2, "images"

    const-string v3, "title"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v8, v2, v3, v1}, Lcom/android/providers/drm/DrmProvider;->insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v16

    .line 1437
    .restart local v16       #rowId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-lez v2, :cond_7

    .line 1438
    sget-object v2, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    goto/16 :goto_4

    .line 1446
    .end local v16           #rowId:J
    :pswitch_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/providers/drm/DrmProvider;->ensureFile(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v22

    .line 1449
    if-nez v22, :cond_d

    const/4 v2, 0x0

    goto/16 :goto_5

    .line 1451
    :cond_d
    const-string v2, "jar"

    const-string v3, "title"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v8, v2, v3, v1}, Lcom/android/providers/drm/DrmProvider;->insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v16

    .line 1452
    .restart local v16       #rowId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-lez v2, :cond_7

    .line 1453
    sget-object v2, Landroid/provider/DrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    goto/16 :goto_4

    .line 1461
    .end local v16           #rowId:J
    :pswitch_4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/providers/drm/DrmProvider;->ensureFile(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v22

    .line 1464
    if-nez v22, :cond_e

    const/4 v2, 0x0

    goto/16 :goto_5

    .line 1466
    :cond_e
    const-string v2, "video"

    const-string v3, "title"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v8, v2, v3, v1}, Lcom/android/providers/drm/DrmProvider;->insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v16

    .line 1467
    .restart local v16       #rowId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-lez v2, :cond_7

    .line 1468
    sget-object v2, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    goto/16 :goto_4

    .line 1473
    .end local v16           #rowId:J
    :pswitch_5
    if-nez p2, :cond_f

    const/4 v2, 0x0

    goto/16 :goto_5

    .line 1475
    :cond_f
    const-string v2, "albums"

    const-string v3, "album"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v8, v2, v3, v1}, Lcom/android/providers/drm/DrmProvider;->insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v16

    .line 1476
    .restart local v16       #rowId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-lez v2, :cond_7

    .line 1477
    sget-object v2, Landroid/provider/DrmStore$Albums;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    goto/16 :goto_4

    .line 1482
    .end local v16           #rowId:J
    :pswitch_6
    if-nez p2, :cond_10

    const/4 v2, 0x0

    goto/16 :goto_5

    .line 1484
    :cond_10
    const-string v2, "artists"

    const-string v3, "artist"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v8, v2, v3, v1}, Lcom/android/providers/drm/DrmProvider;->insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v16

    .line 1485
    .restart local v16       #rowId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-lez v2, :cond_7

    .line 1486
    sget-object v2, Landroid/provider/DrmStore$Artists;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    goto/16 :goto_4

    .line 1490
    .end local v16           #rowId:J
    :pswitch_7
    if-nez p2, :cond_11

    const/4 v2, 0x0

    goto/16 :goto_5

    .line 1492
    :cond_11
    const-string v2, "stamp"

    const-string v3, "time"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v8, v2, v3, v1}, Lcom/android/providers/drm/DrmProvider;->insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v16

    .line 1493
    .restart local v16       #rowId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-lez v2, :cond_7

    .line 1494
    sget-object v2, Landroid/provider/DrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v14

    goto/16 :goto_4

    .line 1532
    .end local v16           #rowId:J
    .restart local v9       #e:Ljava/lang/Exception;
    :catch_6
    move-exception v10

    .line 1533
    .restart local v10       #e2:Ljava/lang/Exception;
    const/4 v11, 0x0

    .line 1534
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v3, " @@@@@  ERROR: The DRM Database cannot be restored. (insert)-1"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    const/4 v14, 0x0

    .line 1536
    goto/16 :goto_3

    .line 1539
    .end local v10           #e2:Ljava/lang/Exception;
    :cond_12
    const/4 v11, 0x0

    .line 1540
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v3, " @@@@@  ERROR: The DRM Database cannot be restored. (insert)"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 1410
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 450
    invoke-direct {p0}, Lcom/android/providers/drm/DrmProvider;->checkDefaultDrmDatabaseExistOnCreate()V

    .line 451
    new-instance v0, Lcom/android/providers/drm/DrmProvider$OpenDatabaseHelper;

    invoke-virtual {p0}, Lcom/android/providers/drm/DrmProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/providers/drm/DrmProvider$OpenDatabaseHelper;-><init>(Lcom/android/providers/drm/DrmProvider;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/providers/drm/DrmProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 452
    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 4
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 2469
    const-string v1, "w"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "android.permission.INSTALL_DRM"

    .line 2472
    .local v0, requiredPermission:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/providers/drm/DrmProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 2474
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requires "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2469
    .end local v0           #requiredPermission:Ljava/lang/String;
    :cond_0
    const-string v0, "android.permission.ACCESS_DRM"

    goto :goto_0

    .line 2476
    .restart local v0       #requiredPermission:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/drm/DrmProvider;->openFileHelper(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    return-object v1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 15
    .parameter "uri"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    .line 603
    const/4 v6, 0x0

    .line 605
    .local v6, groupBy:Ljava/lang/String;
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 607
    .local v1, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 668
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 609
    :pswitch_0
    const-string v3, "audio"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 671
    :goto_0
    if-eqz p2, :cond_1

    .line 672
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    move-object/from16 v0, p2

    array-length v3, v0

    if-ge v13, v3, :cond_1

    .line 673
    aget-object v3, p2, v13

    const-string v4, "_display_name"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 674
    const-string v3, "title AS _display_name"

    aput-object v3, p2, v13

    .line 672
    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 613
    .end local v13           #i:I
    :pswitch_1
    const-string v3, "audio"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 614
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 618
    :pswitch_2
    const-string v3, "images"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 622
    :pswitch_3
    const-string v3, "images"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 623
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 626
    :pswitch_4
    const-string v3, "jar"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 629
    :pswitch_5
    const-string v3, "jar"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 630
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 633
    :pswitch_6
    const-string v3, "video"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 636
    :pswitch_7
    const-string v3, "video"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 637
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 640
    :pswitch_8
    const-string v3, "artists"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 643
    :pswitch_9
    const-string v3, "artists"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 644
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 647
    :pswitch_a
    const-string v3, "albums"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 650
    :pswitch_b
    const-string v3, "albums"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 651
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 654
    :pswitch_c
    const-string v3, "albums_art"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 657
    :pswitch_d
    const-string v3, "albums_art"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 658
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 661
    :pswitch_e
    const-string v3, "stamp"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 664
    :pswitch_f
    const-string v3, "stamp"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 665
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 694
    :cond_1
    const/4 v9, 0x0

    .line 695
    .local v9, c:Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 696
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v12, 0x0

    .line 697
    .local v12, hasException:Z
    const/4 v14, 0x0

    .line 700
    .local v14, restart:Z
    :cond_2
    const/4 v12, 0x0

    .line 703
    :try_start_0
    iget-object v3, p0, Lcom/android/providers/drm/DrmProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 735
    :goto_2
    if-nez v12, :cond_2

    .line 737
    const/4 v14, 0x0

    .line 740
    :cond_3
    const/4 v12, 0x0

    .line 743
    const/4 v7, 0x0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v8, p5

    :try_start_1
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v9

    .line 791
    :goto_3
    if-nez v12, :cond_3

    move-object v3, v9

    .line 794
    :goto_4
    return-object v3

    .line 704
    :catch_0
    move-exception v10

    .line 705
    .local v10, e:Landroid/database/sqlite/SQLiteException;
    :try_start_2
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v4, " @@@@@  ERROR: Cannot open DRM database!!! (query)"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 708
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v4, " @@@@@  ERROR: Handle Exception Complete!!! (query)"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    const/4 v12, 0x1

    .line 711
    invoke-direct {p0}, Lcom/android/providers/drm/DrmProvider;->restoreDrmDatabase()V

    .line 713
    if-nez v14, :cond_4

    .line 714
    const/4 v14, 0x1

    goto :goto_2

    .line 716
    :cond_4
    const/4 v3, 0x0

    goto :goto_4

    .line 718
    .end local v10           #e:Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v10

    .line 719
    .local v10, e:Ljava/lang/Exception;
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v4, " @@@@@  ERROR: The DRM database has an unknown error!!! (query)"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 722
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v4, " @@@@@  ERROR: Handle Exception Complete!!! (query)-2"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    const/4 v12, 0x1

    .line 725
    invoke-direct {p0}, Lcom/android/providers/drm/DrmProvider;->restoreDrmDatabase()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 727
    if-nez v14, :cond_5

    .line 728
    const/4 v14, 0x1

    goto :goto_2

    .line 730
    :cond_5
    const/4 v3, 0x0

    goto :goto_4

    .line 732
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    throw v3

    .line 744
    :catch_2
    move-exception v10

    .line 745
    .restart local v10       #e:Ljava/lang/Exception;
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v4, " @@@@@  ERROR: The DRM database has error!!! (query)"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 748
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v4, " @@@@@  ERROR: Handle Exception Complete!!! (query)-3"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    if-nez v14, :cond_6

    .line 751
    const/4 v12, 0x1

    .line 752
    invoke-direct {p0}, Lcom/android/providers/drm/DrmProvider;->restoreDrmDatabase()V

    .line 772
    :try_start_3
    iget-object v3, p0, Lcom/android/providers/drm/DrmProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v2

    .line 773
    const/4 v14, 0x1

    goto :goto_3

    .line 774
    :catch_3
    move-exception v11

    .line 775
    .local v11, e2:Ljava/lang/Exception;
    const/4 v12, 0x0

    .line 776
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v4, " @@@@@  ERROR: The DRM Database cannot be restored. (query)-1"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    const/4 v9, 0x0

    .line 779
    goto/16 :goto_3

    .line 782
    .end local v11           #e2:Ljava/lang/Exception;
    :cond_6
    const/4 v12, 0x0

    .line 783
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v4, " @@@@@  ERROR: The DRM Database cannot be restored. (query)"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 607
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 13
    .parameter "uri"
    .parameter "initialValues"
    .parameter "userWhere"
    .parameter "whereArgs"

    .prologue
    .line 2205
    const-string v10, "update"

    invoke-direct {p0, p1, v10}, Lcom/android/providers/drm/DrmProvider;->checkPermissionGranted(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 2206
    new-instance v10, Ljava/lang/SecurityException;

    const-string v11, "update(): Requires ACCESS_DRM permission"

    invoke-direct {v10, v11}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 2209
    :cond_0
    const/4 v1, 0x0

    .line 2210
    .local v1, count:I
    sget-object v10, Lcom/android/providers/drm/DrmProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v10, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    .line 2221
    .local v6, match:I
    const/4 v2, 0x0

    .line 2222
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x0

    .line 2223
    .local v5, hasException:Z
    const/4 v7, 0x0

    .line 2226
    .local v7, restart:Z
    :cond_1
    const/4 v5, 0x0

    .line 2229
    :try_start_0
    iget-object v10, p0, Lcom/android/providers/drm/DrmProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 2261
    :goto_0
    if-nez v5, :cond_1

    .line 2266
    invoke-direct {p0}, Lcom/android/providers/drm/DrmProvider;->isFuseEnabled()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2267
    const-string v10, "content_id"

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2271
    .local v9, sOldID:Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 2272
    invoke-direct {p0, v9}, Lcom/android/providers/drm/DrmProvider;->modifyContentID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2273
    .local v8, sNewID:Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 2274
    const-string v10, "content_id"

    invoke-virtual {p2, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2284
    .end local v8           #sNewID:Ljava/lang/String;
    .end local v9           #sOldID:Ljava/lang/String;
    :cond_2
    sget-object v11, Lcom/android/providers/drm/DrmProvider;->sGetTableAndWhereParam:Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;

    monitor-enter v11

    .line 2285
    :try_start_1
    sget-object v10, Lcom/android/providers/drm/DrmProvider;->sGetTableAndWhereParam:Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;

    move-object/from16 v0, p3

    invoke-direct {p0, p1, v6, v0, v10}, Lcom/android/providers/drm/DrmProvider;->getTableAndWhere(Landroid/net/Uri;ILjava/lang/String;Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;)V

    .line 2288
    const-string v10, "Destination"

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2293
    const/4 v7, 0x0

    .line 2296
    :cond_3
    const/4 v5, 0x0

    .line 2298
    packed-switch v6, :pswitch_data_0

    .line 2320
    :try_start_2
    sget-object v10, Lcom/android/providers/drm/DrmProvider;->sGetTableAndWhereParam:Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;

    iget-object v10, v10, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v12, Lcom/android/providers/drm/DrmProvider;->sGetTableAndWhereParam:Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;

    iget-object v12, v12, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v2, v10, p2, v12, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v1

    .line 2367
    :goto_1
    if-nez v5, :cond_3

    .line 2370
    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2377
    if-lez v1, :cond_4

    .line 2378
    invoke-virtual {p0}, Lcom/android/providers/drm/DrmProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, p1, v11}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2382
    invoke-direct {p0}, Lcom/android/providers/drm/DrmProvider;->backupDrmDatabase()V

    :cond_4
    move v10, v1

    .line 2393
    :goto_2
    return v10

    .line 2230
    :catch_0
    move-exception v3

    .line 2231
    .local v3, e:Landroid/database/sqlite/SQLiteException;
    :try_start_4
    sget-object v10, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v11, " @@@@@  ERROR: Cannot open DRM database!!! (update)"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    sget-object v10, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2233
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 2234
    sget-object v10, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v11, " @@@@@  ERROR: Handle Exception Complete!!! (update)-10"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2236
    const/4 v5, 0x1

    .line 2237
    invoke-direct {p0}, Lcom/android/providers/drm/DrmProvider;->restoreDrmDatabase()V

    .line 2239
    if-nez v7, :cond_5

    .line 2240
    const/4 v7, 0x1

    goto :goto_0

    .line 2242
    :cond_5
    const/4 v10, 0x0

    goto :goto_2

    .line 2244
    .end local v3           #e:Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v3

    .line 2245
    .local v3, e:Ljava/lang/Exception;
    sget-object v10, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v11, " @@@@@  ERROR: The DRM database has an unknown error!!! (update)"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2246
    sget-object v10, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2247
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 2248
    sget-object v10, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v11, " @@@@@  ERROR: Handle Exception Complete!!! (update)-11"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2250
    const/4 v5, 0x1

    .line 2251
    invoke-direct {p0}, Lcom/android/providers/drm/DrmProvider;->restoreDrmDatabase()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2253
    if-nez v7, :cond_6

    .line 2254
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 2256
    :cond_6
    const/4 v10, 0x0

    goto :goto_2

    .line 2258
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    throw v10

    .line 2301
    :pswitch_0
    :try_start_5
    sget-object v10, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    sget-object v12, Lcom/android/providers/drm/DrmProvider;->sGetTableAndWhereParam:Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;

    iget-object v12, v12, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {p0, v10, p2, v0, v12}, Lcom/android/providers/drm/DrmProvider;->updateBulkUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 2303
    goto :goto_1

    .line 2305
    :pswitch_1
    sget-object v10, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    sget-object v12, Lcom/android/providers/drm/DrmProvider;->sGetTableAndWhereParam:Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;

    iget-object v12, v12, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {p0, v10, p2, v0, v12}, Lcom/android/providers/drm/DrmProvider;->updateBulkUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 2307
    goto :goto_1

    .line 2309
    :pswitch_2
    sget-object v10, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    sget-object v12, Lcom/android/providers/drm/DrmProvider;->sGetTableAndWhereParam:Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;

    iget-object v12, v12, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {p0, v10, p2, v0, v12}, Lcom/android/providers/drm/DrmProvider;->updateBulkUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 2311
    goto/16 :goto_1

    .line 2313
    :pswitch_3
    sget-object v10, Landroid/provider/DrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    sget-object v12, Lcom/android/providers/drm/DrmProvider;->sGetTableAndWhereParam:Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;

    iget-object v12, v12, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {p0, v10, p2, v0, v12}, Lcom/android/providers/drm/DrmProvider;->updateBulkUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 2315
    goto/16 :goto_1

    .line 2322
    :catch_2
    move-exception v3

    .line 2323
    .restart local v3       #e:Ljava/lang/Exception;
    sget-object v10, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v12, " @@@@@  ERROR: Cannot update the DRM database!!! (update)"

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2324
    sget-object v10, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2325
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 2326
    sget-object v10, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v12, " @@@@@  ERROR: Handle Exception Complete!!! (update)-13"

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2328
    if-nez v7, :cond_7

    .line 2329
    const/4 v5, 0x1

    .line 2330
    invoke-direct {p0}, Lcom/android/providers/drm/DrmProvider;->restoreDrmDatabase()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2350
    :try_start_6
    iget-object v10, p0, Lcom/android/providers/drm/DrmProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-result-object v2

    .line 2351
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 2352
    :catch_3
    move-exception v4

    .line 2353
    .local v4, e2:Ljava/lang/Exception;
    const/4 v5, 0x0

    .line 2354
    const/4 v1, 0x0

    .line 2355
    :try_start_7
    sget-object v10, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v12, " @@@@@  ERROR: The DRM Database cannot be restored. (update)-1"

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2370
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #e2:Ljava/lang/Exception;
    :catchall_1
    move-exception v10

    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v10

    .line 2359
    .restart local v3       #e:Ljava/lang/Exception;
    :cond_7
    const/4 v5, 0x0

    .line 2360
    :try_start_8
    sget-object v10, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v12, " @@@@@  ERROR: The DRM Database cannot be restored. (update)"

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2361
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 2298
    nop

    :pswitch_data_0
    .packed-switch 0x74
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method updateBulkUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)I
    .locals 17
    .parameter "uri"
    .parameter "values"
    .parameter "userWhere"
    .parameter "table"

    .prologue
    .line 2398
    const-string v14, "existence"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 2399
    .local v5, existence:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v14, "_data"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 2401
    .local v10, path:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 2403
    .local v6, existenceCount:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/providers/drm/DrmProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2405
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2406
    const/4 v11, 0x0

    .line 2409
    .local v11, sum:I
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2411
    .local v1, contactValues:Landroid/content/ContentValues;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 2412
    .local v12, updateSelection:Ljava/lang/StringBuilder;
    const/4 v14, 0x1

    new-array v13, v14, [Ljava/lang/String;

    .line 2414
    .local v13, updateSelectionArgs:[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v6, :cond_1

    .line 2415
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2416
    .local v4, exist:Ljava/lang/String;
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2417
    .local v7, file_path:Ljava/lang/String;
    const-string v14, "existence"

    invoke-virtual {v1, v14, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2420
    const/4 v14, 0x0

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2421
    const-string v14, "_data"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2422
    const-string v14, "=?"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2424
    const/4 v14, 0x0

    aput-object v7, v13, v14

    .line 2426
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p4

    invoke-virtual {v2, v0, v1, v14, v13}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 2428
    .local v9, numUpdated:I
    if-nez v9, :cond_0

    .line 2429
    sget-object v14, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v15, "[DrmProvider] updateBulk: update failed"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2447
    :goto_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely()Z

    .line 2414
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2433
    :cond_0
    add-int/2addr v11, v9

    goto :goto_1

    .line 2451
    .end local v4           #exist:Ljava/lang/String;
    .end local v7           #file_path:Ljava/lang/String;
    .end local v9           #numUpdated:I
    :cond_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2458
    .end local v1           #contactValues:Landroid/content/ContentValues;
    .end local v8           #i:I
    .end local v12           #updateSelection:Ljava/lang/StringBuilder;
    .end local v13           #updateSelectionArgs:[Ljava/lang/String;
    :goto_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2461
    sget-object v14, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "updateBulk: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " entries updated"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2462
    return v11

    .line 2452
    :catch_0
    move-exception v3

    .line 2453
    .local v3, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v14, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v15, " @@@@@  ERROR: Cannot update the DRM database!!! (updateBulk)"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2454
    sget-object v14, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2455
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 2456
    sget-object v14, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v15, " @@@@@  ERROR: Handle Exception Complete!!! (updateBulk)-10"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 2458
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v14
.end method
