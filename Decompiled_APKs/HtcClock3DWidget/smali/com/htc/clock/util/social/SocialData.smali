.class public Lcom/htc/clock/util/social/SocialData;
.super Ljava/lang/Object;
.source "SocialData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/clock/util/social/SocialData$RemoteUrlDrawable;,
        Lcom/htc/clock/util/social/SocialData$InflatedCallback;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.htc.socialnetwork.flickr.provider.StreamProvider"

.field public static final AUTHORITY_URI:Landroid/net/Uri; = null

.field public static final COL_DATE_UPLOAD:Ljava/lang/String; = "date_upload"

.field public static final COL_MEDIUM_TYPE:Ljava/lang/String; = "medium_type"

.field public static final COL_OWNER_ID:Ljava/lang/String; = "owner_id"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date_upload DESC"

.field public static final FACEBOOK_AUTHORITY:Ljava/lang/String; = "com.htc.socialnetwork.facebook.provider.CacheImageProvider"

.field public static final FACEBOOK_AUTHORITY_URI:Landroid/net/Uri; = null

.field public static final FLICKR_AUTHORITY:Ljava/lang/String; = "com.htc.socialnetwork.flickr.provider.CacheImageProvider"

.field public static final FLICKR_AUTHORITY_URI:Landroid/net/Uri; = null

.field private static final MAX_CLUSTER_TIME:J = 0x927c0L

.field public static final MEDIA_CONTENT_URI:Landroid/net/Uri; = null

.field public static final PATH_NAME:Ljava/lang/String; = "cache"

.field public static final PLURK_AUTHORITY:Ljava/lang/String; = "com.htc.socialnetwork.plurk.provider.CacheImageProvider"

.field public static final PLURK_AUTHORITY_URI:Landroid/net/Uri; = null

.field public static final TABLE_NAME:Ljava/lang/String; = "media"

.field public static final TWITTER_AUTHORITY:Ljava/lang/String; = "com.htc.htctwitter.provider.CacheImageProvider"

.field public static final TWITTER_AUTHORITY_URI:Landroid/net/Uri;

.field private static TYPE_FLICKR:Ljava/lang/String;

.field private static final sDefaultAvatar:Landroid/graphics/Bitmap;


# instance fields
.field cache_image:Ljava/lang/String;

.field comment_count:I

.field iconDrawable:Lcom/htc/clock/util/social/SocialData$RemoteUrlDrawable;

.field icon_id:I

.field icon_indicator:I

.field icon_url:Ljava/lang/String;

.field indicator:Landroid/graphics/Bitmap;

.field intentUri:Ljava/lang/String;

.field label_id:I

.field like_count:I

.field media:Ljava/lang/String;

.field message:Ljava/lang/String;

.field message_id:Ljava/lang/String;

.field package_name:Ljava/lang/String;

.field timestamp:J

.field uid:Ljava/lang/String;

.field username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const-string v0, "content://com.htc.socialnetwork.facebook.provider.CacheImageProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/clock/util/social/SocialData;->FACEBOOK_AUTHORITY_URI:Landroid/net/Uri;

    .line 38
    const-string v0, "content://com.htc.socialnetwork.flickr.provider.CacheImageProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/clock/util/social/SocialData;->FLICKR_AUTHORITY_URI:Landroid/net/Uri;

    .line 39
    const-string v0, "content://com.htc.socialnetwork.plurk.provider.CacheImageProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/clock/util/social/SocialData;->PLURK_AUTHORITY_URI:Landroid/net/Uri;

    .line 40
    const-string v0, "content://com.htc.htctwitter.provider.CacheImageProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/clock/util/social/SocialData;->TWITTER_AUTHORITY_URI:Landroid/net/Uri;

    .line 47
    const-string v0, "content://com.htc.socialnetwork.flickr.provider.StreamProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/clock/util/social/SocialData;->AUTHORITY_URI:Landroid/net/Uri;

    .line 49
    sget-object v0, Lcom/htc/clock/util/social/SocialData;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "media"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/clock/util/social/SocialData;->MEDIA_CONTENT_URI:Landroid/net/Uri;

    .line 52
    const-string v0, "com.htc.socialnetwork.flickr"

    sput-object v0, Lcom/htc/clock/util/social/SocialData;->TYPE_FLICKR:Ljava/lang/String;

    .line 53
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20800c2

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/htc/clock/util/social/SocialData;->sDefaultAvatar:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-string v0, "uid"

    invoke-direct {p0, p1, v0}, Lcom/htc/clock/util/social/SocialData;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/clock/util/social/SocialData;->uid:Ljava/lang/String;

    .line 78
    const-string v0, "message_id"

    invoke-direct {p0, p1, v0}, Lcom/htc/clock/util/social/SocialData;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/clock/util/social/SocialData;->message_id:Ljava/lang/String;

    .line 79
    const-string v0, "message"

    invoke-direct {p0, p1, v0}, Lcom/htc/clock/util/social/SocialData;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/clock/util/social/SocialData;->message:Ljava/lang/String;

    .line 80
    const-string v0, "timestamp"

    invoke-direct {p0, p1, v0}, Lcom/htc/clock/util/social/SocialData;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/clock/util/social/SocialData;->timestamp:J

    .line 81
    const-string v0, "package_name"

    invoke-direct {p0, p1, v0}, Lcom/htc/clock/util/social/SocialData;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/clock/util/social/SocialData;->package_name:Ljava/lang/String;

    .line 82
    const-string v0, "label_id"

    invoke-direct {p0, p1, v0}, Lcom/htc/clock/util/social/SocialData;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/clock/util/social/SocialData;->label_id:I

    .line 83
    const-string v0, "icon_id"

    invoke-direct {p0, p1, v0}, Lcom/htc/clock/util/social/SocialData;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/clock/util/social/SocialData;->icon_id:I

    .line 84
    const-string v0, "username"

    invoke-direct {p0, p1, v0}, Lcom/htc/clock/util/social/SocialData;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/clock/util/social/SocialData;->username:Ljava/lang/String;

    .line 85
    const-string v0, "icon_url"

    invoke-direct {p0, p1, v0}, Lcom/htc/clock/util/social/SocialData;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/clock/util/social/SocialData;->icon_url:Ljava/lang/String;

    .line 86
    const-string v0, "comment_count"

    invoke-direct {p0, p1, v0}, Lcom/htc/clock/util/social/SocialData;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/clock/util/social/SocialData;->comment_count:I

    .line 87
    const-string v0, "like_count"

    invoke-direct {p0, p1, v0}, Lcom/htc/clock/util/social/SocialData;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/clock/util/social/SocialData;->like_count:I

    .line 88
    const-string v0, "intent_uri"

    invoke-direct {p0, p1, v0}, Lcom/htc/clock/util/social/SocialData;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/clock/util/social/SocialData;->intentUri:Ljava/lang/String;

    .line 89
    const-string v0, "icon_indicator"

    invoke-direct {p0, p1, v0}, Lcom/htc/clock/util/social/SocialData;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/clock/util/social/SocialData;->icon_indicator:I

    .line 90
    const-string v0, "cache_image"

    invoke-direct {p0, p1, v0}, Lcom/htc/clock/util/social/SocialData;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/clock/util/social/SocialData;->cache_image:Ljava/lang/String;

    .line 91
    const-string v0, "media"

    invoke-direct {p0, p1, v0}, Lcom/htc/clock/util/social/SocialData;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/clock/util/social/SocialData;->media:Ljava/lang/String;

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/htc/clock/util/social/SocialData;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/htc/clock/util/social/SocialData;->getCacheUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getCacheUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 263
    iget-object v1, p0, Lcom/htc/clock/util/social/SocialData;->cache_image:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 264
    iget-object v1, p0, Lcom/htc/clock/util/social/SocialData;->cache_image:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 269
    .local v0, contentUri:Landroid/net/Uri;
    :goto_0
    return-object v0

    .line 267
    .end local v0           #contentUri:Landroid/net/Uri;
    :cond_0
    iget-object v1, p0, Lcom/htc/clock/util/social/SocialData;->package_name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/clock/util/social/SocialData;->mapToURI(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .restart local v0       #contentUri:Landroid/net/Uri;
    goto :goto_0
.end method

.method private getCreateTime(Landroid/content/Context;Landroid/database/Cursor;)J
    .locals 3
    .parameter "context"
    .parameter "c"

    .prologue
    .line 233
    const-string v2, "date_upload"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 234
    .local v0, time:J
    return-wide v0
.end method

.method private getInt(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 5
    .parameter "cursor"
    .parameter "columnName"

    .prologue
    .line 113
    const/4 v1, -0x1

    .line 114
    .local v1, index:I
    const/4 v2, -0x1

    .line 115
    .local v2, value:I
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 116
    if-ltz v1, :cond_0

    .line 118
    :try_start_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 127
    :goto_0
    return v2

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "socailData getlong e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/clock/util/MyLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "socailData getlong("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") index < 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/clock/util/MyLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getLong(Landroid/database/Cursor;Ljava/lang/String;)J
    .locals 6
    .parameter "cursor"
    .parameter "columnName"

    .prologue
    .line 95
    const/4 v1, -0x1

    .line 96
    .local v1, index:I
    const-wide/16 v2, -0x1

    .line 97
    .local v2, value:J
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 98
    if-ltz v1, :cond_0

    .line 100
    :try_start_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 109
    :goto_0
    return-wide v2

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "socailData getlong e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/clock/util/MyLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 107
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "socailData getlong("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") index < 0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/clock/util/MyLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getMediaType(Landroid/content/Context;Landroid/database/Cursor;)I
    .locals 2
    .parameter "context"
    .parameter "c"

    .prologue
    .line 245
    const-string v1, "medium_type"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 246
    .local v0, type:I
    return v0
.end method

.method private getProfileId(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "c"

    .prologue
    .line 239
    const-string v1, "owner_id"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, user_id:Ljava/lang/String;
    return-object v0
.end method

.method private getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "cursor"
    .parameter "columnName"

    .prologue
    .line 131
    const/4 v1, -0x1

    .line 132
    .local v1, index:I
    const/4 v2, 0x0

    .line 133
    .local v2, value:Ljava/lang/String;
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 134
    if-ltz v1, :cond_0

    .line 136
    :try_start_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 145
    :goto_0
    return-object v2

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "socailData getlong e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/clock/util/MyLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 143
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "socailData getString("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") index < 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/clock/util/MyLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getCommentCnt()I
    .locals 1

    .prologue
    .line 293
    iget v0, p0, Lcom/htc/clock/util/social/SocialData;->comment_count:I

    return v0
.end method

.method public getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "context"

    .prologue
    .line 163
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "socailData getIcon:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/clock/util/social/SocialData;->icon_url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " icon_indicator:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/clock/util/social/SocialData;->icon_indicator:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " package_name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/clock/util/social/SocialData;->package_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 164
    iget-object v3, p0, Lcom/htc/clock/util/social/SocialData;->iconDrawable:Lcom/htc/clock/util/social/SocialData$RemoteUrlDrawable;

    if-nez v3, :cond_0

    .line 165
    new-instance v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;

    invoke-direct {v2}, Lcom/htc/graphics/drawable/UrlDrawable$Options;-><init>()V

    .line 166
    .local v2, opt:Lcom/htc/graphics/drawable/UrlDrawable$Options;
    iget-object v3, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    iget-object v4, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    sget-object v5, Lcom/htc/clock/util/social/SocialData;->sDefaultAvatar:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iput v5, v4, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    iput v5, v3, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    .line 167
    sget-object v3, Lcom/htc/clock/util/social/SocialData;->sDefaultAvatar:Landroid/graphics/Bitmap;

    iput-object v3, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    .line 168
    const/16 v3, 0x11

    iput v3, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayPos:I

    .line 171
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/htc/clock/util/social/SocialData;->icon_indicator:I

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    new-instance v3, Lcom/htc/clock/util/social/SocialData$RemoteUrlDrawable;

    iget-object v4, p0, Lcom/htc/clock/util/social/SocialData;->icon_url:Ljava/lang/String;

    invoke-direct {v3, p0, p1, v4, v2}, Lcom/htc/clock/util/social/SocialData$RemoteUrlDrawable;-><init>(Lcom/htc/clock/util/social/SocialData;Landroid/content/Context;Ljava/lang/String;Lcom/htc/graphics/drawable/UrlDrawable$Options;)V

    iput-object v3, p0, Lcom/htc/clock/util/social/SocialData;->iconDrawable:Lcom/htc/clock/util/social/SocialData$RemoteUrlDrawable;

    .line 191
    .end local v2           #opt:Lcom/htc/graphics/drawable/UrlDrawable$Options;
    :cond_0
    iget-object v3, p0, Lcom/htc/clock/util/social/SocialData;->iconDrawable:Lcom/htc/clock/util/social/SocialData$RemoteUrlDrawable;

    return-object v3

    .line 174
    .restart local v2       #opt:Lcom/htc/graphics/drawable/UrlDrawable$Options;
    :catch_0
    move-exception v0

    .line 176
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/clock/util/social/SocialData;->package_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/htc/clock/util/social/SocialData;->icon_indicator:I

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 179
    :catch_1
    move-exception v1

    .line 180
    .local v1, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "Icon not found"

    invoke-static {v3}, Lcom/htc/clock/util/MyLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getIconIndicator(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "context"

    .prologue
    .line 251
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 253
    .local v1, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v3, p0, Lcom/htc/clock/util/social/SocialData;->package_name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 254
    .local v2, res:Landroid/content/res/Resources;
    iget v3, p0, Lcom/htc/clock/util/social/SocialData;->icon_indicator:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/clock/util/social/SocialData;->indicator:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    .end local v2           #res:Landroid/content/res/Resources;
    :goto_0
    iget-object v3, p0, Lcom/htc/clock/util/social/SocialData;->indicator:Landroid/graphics/Bitmap;

    return-object v3

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "getIconIndicator : Icon indicator can\'t be found from packagename"

    invoke-static {v3}, Lcom/htc/clock/util/MyLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getLikeCnt()I
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Lcom/htc/clock/util/social/SocialData;->like_count:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/htc/clock/util/social/SocialData;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/htc/clock/util/social/SocialData;->username:Ljava/lang/String;

    return-object v0
.end method

.method public getPastTimeString(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 9
    .parameter "context"

    .prologue
    const-wide/16 v3, 0x3e8

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "socailData getPastTimeString:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/clock/util/social/SocialData;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 279
    iget-wide v0, p0, Lcom/htc/clock/util/social/SocialData;->timestamp:J

    mul-long v1, v0, v3

    const-wide/32 v5, 0x5265c00

    const v7, 0x40010

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/htc/text/util/HtcDateUtils;->getRelativeDateTimeString(Landroid/content/Context;JJJI)Ljava/lang/CharSequence;

    move-result-object v8

    .line 285
    .local v8, pastTimeString:Ljava/lang/CharSequence;
    return-object v8
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 273
    iget-wide v0, p0, Lcom/htc/clock/util/social/SocialData;->timestamp:J

    return-wide v0
.end method

.method public getUploaded(Landroid/content/Context;)[I
    .locals 13
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 195
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 196
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 197
    .local v6, c:Landroid/database/Cursor;
    const/4 v1, 0x2

    new-array v9, v1, [I

    .line 198
    .local v9, data:[I
    aput v2, v9, v2

    .line 199
    aput v2, v9, v3

    .line 201
    iget-wide v1, p0, Lcom/htc/clock/util/social/SocialData;->timestamp:J

    const-wide/16 v3, 0x3e8

    mul-long v10, v1, v3

    .line 202
    .local v10, previous_time:J
    const/4 v12, 0x0

    .line 204
    .local v12, previous_user:Ljava/lang/String;
    :try_start_0
    sget-object v1, Lcom/htc/clock/util/social/SocialData;->MEDIA_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "date_upload DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 206
    if-eqz v6, :cond_2

    .line 207
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 208
    invoke-direct {p0, p1, v6}, Lcom/htc/clock/util/social/SocialData;->getCreateTime(Landroid/content/Context;Landroid/database/Cursor;)J

    move-result-wide v7

    .line 209
    .local v7, create_time:J
    invoke-direct {p0, p1, v6}, Lcom/htc/clock/util/social/SocialData;->getProfileId(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v12

    .line 210
    sub-long v1, v10, v7

    const-wide/32 v3, 0x927c0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    iget-object v1, p0, Lcom/htc/clock/util/social/SocialData;->uid:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 211
    invoke-direct {p0, p1, v6}, Lcom/htc/clock/util/social/SocialData;->getMediaType(Landroid/content/Context;Landroid/database/Cursor;)I

    move-result v1

    if-nez v1, :cond_0

    .line 212
    const/4 v1, 0x0

    aget v2, v9, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v9, v1

    .line 217
    :goto_1
    move-wide v10, v7

    .line 220
    goto :goto_0

    .line 214
    :cond_0
    const/4 v1, 0x1

    aget v2, v9, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v9, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 222
    .end local v7           #create_time:J
    :catch_0
    move-exception v1

    .line 224
    if-eqz v6, :cond_1

    .line 225
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 228
    :cond_1
    :goto_2
    return-object v9

    .line 224
    :cond_2
    if-eqz v6, :cond_1

    .line 225
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 224
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    .line 225
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method public isFlicker()Z
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/htc/clock/util/social/SocialData;->package_name:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 154
    const/4 v0, 0x0

    .line 155
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/clock/util/social/SocialData;->package_name:Ljava/lang/String;

    sget-object v1, Lcom/htc/clock/util/social/SocialData;->TYPE_FLICKR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public launchRelativePage(Landroid/content/Context;)V
    .locals 13
    .parameter "hostActivity"

    .prologue
    const/4 v12, 0x0

    .line 297
    sget-boolean v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-eqz v10, :cond_1

    .line 298
    const-string v10, "socailData launchRelativePage in tablet"

    invoke-static {v10}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 299
    const-string v5, "com.htc.friendstream"

    .line 300
    .local v5, PKG_FRIENDSTREAM_AP:Ljava/lang/String;
    const-string v0, "com.htc.friendstream.FriendStream"

    .line 301
    .local v0, CLASS_FRIENDSTREAM_ENTRANCE:Ljava/lang/String;
    const-string v1, "com.htc.friendstream.SwitchMultipleActivityMain"

    .line 302
    .local v1, CLASS_TABLET_FRIENDSTREAM_AP:Ljava/lang/String;
    const-string v3, "com.htc.friendstream.intent.LIST_ID"

    .line 303
    .local v3, EXTRA_LIST_ID:Ljava/lang/String;
    const-string v2, "com.htc.friendstream.intent.LIST_ACCOUNT_TYPE"

    .line 304
    .local v2, EXTRA_LIST_ACCOUNT_TYPE:Ljava/lang/String;
    const-string v4, "com.htc.friendstream.intent.LIST_POSITION"

    .line 305
    .local v4, EXTRA_LIST_POSITION:Ljava/lang/String;
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 307
    .local v8, intent:Landroid/content/Intent;
    new-instance v6, Landroid/content/ComponentName;

    const-string v10, "com.htc.friendstream"

    const-string v11, "com.htc.friendstream.FriendStream"

    invoke-direct {v6, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    .local v6, componentLeft:Landroid/content/ComponentName;
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v10, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v9

    .line 311
    .local v9, leftIntent:Landroid/content/Intent;
    const-string v10, "com.htc.friendstream.intent.LIST_ID"

    iget-object v11, p0, Lcom/htc/clock/util/social/SocialData;->message_id:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    const-string v10, "com.htc.friendstream.intent.LIST_POSITION"

    invoke-virtual {v9, v10, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 313
    const-string v10, "com.htc.friendstream.intent.LIST_ACCOUNT_TYPE"

    iget-object v11, p0, Lcom/htc/clock/util/social/SocialData;->package_name:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    const-string v10, "com.htc.friendstream"

    const-string v11, "com.htc.friendstream.SwitchMultipleActivityMain"

    invoke-virtual {v8, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    const-string v10, "com.htc.opensense.ACTIVITY_LEFT"

    invoke-virtual {v8, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 317
    invoke-virtual {p1, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 335
    .end local v0           #CLASS_FRIENDSTREAM_ENTRANCE:Ljava/lang/String;
    .end local v1           #CLASS_TABLET_FRIENDSTREAM_AP:Ljava/lang/String;
    .end local v2           #EXTRA_LIST_ACCOUNT_TYPE:Ljava/lang/String;
    .end local v3           #EXTRA_LIST_ID:Ljava/lang/String;
    .end local v4           #EXTRA_LIST_POSITION:Ljava/lang/String;
    .end local v5           #PKG_FRIENDSTREAM_AP:Ljava/lang/String;
    .end local v6           #componentLeft:Landroid/content/ComponentName;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v9           #leftIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    const-string v10, "socailData launchRelativePage in phone"

    invoke-static {v10}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 321
    iget-object v10, p0, Lcom/htc/clock/util/social/SocialData;->intentUri:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 323
    :try_start_0
    iget-object v10, p0, Lcom/htc/clock/util/social/SocialData;->intentUri:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    .line 324
    .restart local v8       #intent:Landroid/content/Intent;
    if-eqz v8, :cond_0

    .line 325
    const/high16 v10, 0x1000

    invoke-virtual {v8, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 326
    const/high16 v10, 0x400

    invoke-virtual {v8, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 327
    invoke-virtual {p1, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 329
    .end local v8           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v7

    .line 331
    .local v7, e:Ljava/net/URISyntaxException;
    invoke-virtual {v7}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method public mapToURI(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter "packageName"

    .prologue
    .line 424
    const/4 v0, 0x0

    .line 425
    .local v0, contentUri:Landroid/net/Uri;
    const-string v1, "com.htc.socialnetwork.facebook"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 426
    sget-object v1, Lcom/htc/clock/util/social/SocialData;->FACEBOOK_AUTHORITY_URI:Landroid/net/Uri;

    const-string v2, "cache"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 438
    :cond_0
    :goto_0
    return-object v0

    .line 428
    :cond_1
    const-string v1, "com.htc.socialnetwork.plurk"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 429
    sget-object v1, Lcom/htc/clock/util/social/SocialData;->PLURK_AUTHORITY_URI:Landroid/net/Uri;

    const-string v2, "cache"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 431
    :cond_2
    const-string v1, "com.htc.htctwitter"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 432
    sget-object v1, Lcom/htc/clock/util/social/SocialData;->TWITTER_AUTHORITY_URI:Landroid/net/Uri;

    const-string v2, "cache"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 434
    :cond_3
    const-string v1, "com.htc.socialnetwork.flickr"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 435
    sget-object v1, Lcom/htc/clock/util/social/SocialData;->FLICKR_AUTHORITY_URI:Landroid/net/Uri;

    const-string v2, "cache"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method
