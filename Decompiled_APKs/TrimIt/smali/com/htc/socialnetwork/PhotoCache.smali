.class public Lcom/htc/socialnetwork/PhotoCache;
.super Ljava/lang/Object;
.source "PhotoCache.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/htc/socialnetwork/Constants;


# static fields
.field public static final ALBUMID:Ljava/lang/String; = "album_id"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.socialnetwork.photo_cache"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.socialnetwork.photo_cache"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CREATETIME:Ljava/lang/String; = "create_time"

.field public static final CREATE_TABLE_SQL:Ljava/lang/String; = "CREATE TABLE photo_cache (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, photo_id INTEGER NOT NULL, sid INTEGER NOT NULL, album_id INTEGER NOT NULL, url TEXT NOT NULL, thumb_url TEXT, link TEXT, create_time INTEGER NOT NULL, modified_time INTEGER, width INTEGER, height INTEGER, UNIQUE( photo_id , sid , album_id ));"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "_id ASC"

.field public static final HEIGHT:Ljava/lang/String; = "height"

.field public static final LINK:Ljava/lang/String; = "link"

.field public static final MODIFIEDTIME:Ljava/lang/String; = "modified_time"

.field public static final PHOTOID:Ljava/lang/String; = "photo_id"

.field public static final PHOTO_CACHE_PROJECTION:[Ljava/lang/String; = null

.field public static final PHOTO_CACHE_TABLE:Ljava/lang/String; = "photo_cache"

.field public static final SERVICEID:Ljava/lang/String; = "sid"

.field public static final THUMBURL:Ljava/lang/String; = "thumb_url"

.field public static final URL:Ljava/lang/String; = "url"

.field public static final WIDTH:Ljava/lang/String; = "width"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 9
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "sid"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "thumb_url"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "link"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "create_time"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "modified_time"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "width"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "height"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/socialnetwork/PhotoCache;->PHOTO_CACHE_PROJECTION:[Ljava/lang/String;

    .line 23
    const-string v0, "content://com.htc.socialnetwork.snprovider/photo_caches"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/socialnetwork/PhotoCache;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
