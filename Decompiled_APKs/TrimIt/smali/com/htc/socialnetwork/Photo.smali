.class public Lcom/htc/socialnetwork/Photo;
.super Ljava/lang/Object;
.source "Photo.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/htc/socialnetwork/Constants;


# static fields
.field public static final AID:Ljava/lang/String; = "aid"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.socialnetwork.photo_update"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.socialnetwork.photo_update"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CREATE_TABLE_SQL:Ljava/lang/String; = "CREATE TABLE photo_update (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, sid INTEGER NOT NULL, uid INTEGER NOT NULL, aid INTEGER, photo_id INTEGER NOT NULL, title TEXT, description TEXT, url TEXT, thumb_url TEXT, is_read INTEGER NOT NULL, photo_update_time INTEGER NOT NULL, last_update_time INTEGER NOT NULL );"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "_id ASC"

.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final ISREAD:Ljava/lang/String; = "is_read"

.field public static final LASTUPDATETIME:Ljava/lang/String; = "last_update_time"

.field public static final PHOTOID:Ljava/lang/String; = "photo_id"

.field public static final PHOTO_UPDATE_PROJECTION:[Ljava/lang/String; = null

.field public static final PHOTO_UPDATE_TABLE:Ljava/lang/String; = "photo_update"

.field public static final SID:Ljava/lang/String; = "sid"

.field public static final THUMBURL:Ljava/lang/String; = "thumb_url"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final UID:Ljava/lang/String; = "uid"

.field public static final UPDATETIME:Ljava/lang/String; = "photo_update_time"

.field public static final URL:Ljava/lang/String; = "url"


# instance fields
.field private mAlbumId:Ljava/lang/String;

.field private mDescription:Ljava/lang/String;

.field private mLastUpdateTime:J

.field private mLink:Ljava/net/URL;

.field private mPid:Ljava/lang/String;

.field private mSize:J

.field private mTakenTime:J

.field private mThumbUrl:Ljava/net/URL;

.field private mTitle:Ljava/lang/String;

.field private mUrl:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 11
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "sid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "uid"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "aid"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "description"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "url"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "thumb_url"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "is_read"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "photo_update_time"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "last_update_time"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/socialnetwork/Photo;->PHOTO_UPDATE_PROJECTION:[Ljava/lang/String;

    .line 26
    const-string v0, "content://com.htc.socialnetwork.snprovider/photo_updates"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/socialnetwork/Photo;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/socialnetwork/Photo;->mAlbumId:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/socialnetwork/Photo;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getLastUpdateTime()J
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/htc/socialnetwork/Photo;->mLastUpdateTime:J

    return-wide v0
.end method

.method public getLink()Ljava/net/URL;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/socialnetwork/Photo;->mLink:Ljava/net/URL;

    return-object v0
.end method

.method public getPid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/socialnetwork/Photo;->mPid:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/htc/socialnetwork/Photo;->mSize:J

    return-wide v0
.end method

.method public getThumbUrl()Ljava/net/URL;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/socialnetwork/Photo;->mThumbUrl:Ljava/net/URL;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/htc/socialnetwork/Photo;->mTakenTime:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/socialnetwork/Photo;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/net/URL;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/socialnetwork/Photo;->mUrl:Ljava/net/URL;

    return-object v0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0
    .parameter "album"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/htc/socialnetwork/Photo;->mAlbumId:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "desciption"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/htc/socialnetwork/Photo;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public setLastUpdateTime(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 99
    iput-wide p1, p0, Lcom/htc/socialnetwork/Photo;->mLastUpdateTime:J

    return-void
.end method

.method public setLink(Ljava/net/URL;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/htc/socialnetwork/Photo;->mLink:Ljava/net/URL;

    return-void
.end method

.method public setPid(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/htc/socialnetwork/Photo;->mPid:Ljava/lang/String;

    return-void
.end method

.method public setSize(J)V
    .locals 0
    .parameter "size"

    .prologue
    .line 97
    iput-wide p1, p0, Lcom/htc/socialnetwork/Photo;->mSize:J

    return-void
.end method

.method public setThumbUrl(Ljava/net/URL;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/htc/socialnetwork/Photo;->mThumbUrl:Ljava/net/URL;

    return-void
.end method

.method public setTime(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 89
    iput-wide p1, p0, Lcom/htc/socialnetwork/Photo;->mTakenTime:J

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/htc/socialnetwork/Photo;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/net/URL;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/htc/socialnetwork/Photo;->mUrl:Ljava/net/URL;

    return-void
.end method
