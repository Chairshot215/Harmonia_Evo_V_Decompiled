.class public interface abstract Lcom/htc/opensense/cache/Download;
.super Ljava/lang/Object;
.source "Download.java"


# static fields
.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "account_type"

.field public static final AUTHORITY:Ljava/lang/String; = "com.htc.cachemanager"

.field public static final CACHE_IMG_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI:Ljava/lang/String; = "content_uri"

.field public static final DOWNLOAD_CONTENT_URI:Landroid/net/Uri; = null

.field public static final DOWNLOAD_ID:Ljava/lang/String; = "download_id"

.field public static final DOWNLOAD_TB:Ljava/lang/String; = "item"

.field public static final FILE_SIZE:Ljava/lang/String; = "file_size"

.field public static final IMG_CACHE:Ljava/lang/String; = "img_cache"

.field public static final IMG_CACHE_PREFIX:Ljava/lang/String; = "content://com.htc.cachemanager/img_cache"

.field public static final IMG_URL:Ljava/lang/String; = "url"

.field public static final IMG_URL_HASH:Ljava/lang/String; = "url_hash"

.field public static final LAST_MODIFIED_TIME:Ljava/lang/String; = " last_modified_time"

.field public static final PROFILE_CONTENT_URI:Landroid/net/Uri; = null

.field public static final PROFILE_TB:Ljava/lang/String; = "profile"

.field public static final RAWQUERY:Ljava/lang/String; = "rawquery"

.field public static final RAWQUERY_URI:Landroid/net/Uri; = null

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final STATUS_FAIL:I = 0x2

.field public static final STATUS_PROGRESS:I = 0x0

.field public static final STATUS_SUCCESS:I = 0x1

.field public static final STATUS_WAITING:I = 0x3

.field public static final STORE_FOLDER:Ljava/lang/String; = "store_folder"

.field public static final USER_ID:Ljava/lang/String; = "user_id"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const-string v0, "content://com.htc.cachemanager/item"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/cache/Download;->DOWNLOAD_CONTENT_URI:Landroid/net/Uri;

    .line 98
    const-string v0, "content://com.htc.cachemanager/profile"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/cache/Download;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    .line 104
    const-string v0, "content://com.htc.cachemanager/rawquery"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/cache/Download;->RAWQUERY_URI:Landroid/net/Uri;

    .line 116
    const-string v0, "content://com.htc.cachemanager/img_cache"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/cache/Download;->CACHE_IMG_URI:Landroid/net/Uri;

    return-void
.end method
