.class public Lcom/htc/clock/util/social/SocialNetworkResolver;
.super Ljava/lang/Object;
.source "SocialNetworkResolver.java"


# static fields
.field public static final COL_CACHE_IMAGE:Ljava/lang/String; = "cache_image"

.field public static final COL_COMMENT_COUNT:Ljava/lang/String; = "comment_count"

.field public static final COL_ICON_ID:Ljava/lang/String; = "icon_id"

.field public static final COL_ICON_URL:Ljava/lang/String; = "icon_url"

.field public static final COL_INDICATOR:Ljava/lang/String; = "icon_indicator"

.field public static final COL_INTENT:Ljava/lang/String; = "intent_uri"

.field public static final COL_LABEL_ID:Ljava/lang/String; = "label_id"

.field public static final COL_LIKE_COUNT:Ljava/lang/String; = "like_count"

.field public static final COL_MEDIA:Ljava/lang/String; = "media"

.field public static final COL_MESSAGE:Ljava/lang/String; = "message"

.field public static final COL_MESSAGE_ID:Ljava/lang/String; = "message_id"

.field public static final COL_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final COL_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final COL_UID:Ljava/lang/String; = "uid"

.field public static final COL_USERNAME:Ljava/lang/String; = "username"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final FACEBOOK_ACCOUNT_TYPE:Ljava/lang/String; = "com.htc.socialnetwork.facebook"

.field public static final FLICKR_ACCOUNT_TYPE:Ljava/lang/String; = "com.htc.socialnetwork.flickr"

.field public static final LOG_PREFIX:Ljava/lang/String; = "SocialNetworkResolver"

.field public static final PLURK_ACCOUNT_TYPE:Ljava/lang/String; = "com.htc.socialnetwork.plurk"

.field public static final TWITTER_ACCOUNT_TYPE:Ljava/lang/String; = "com.htc.htctwitter"

.field private static s_cacheData:Lcom/htc/clock/util/social/SocialData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "content://com.htc.friendstream.provider.FriendStreamProvider/status_update"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/clock/util/social/SocialNetworkResolver;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLastMessage(Landroid/content/Context;Z)Lcom/htc/clock/util/social/SocialData;
    .locals 1
    .parameter "context"
    .parameter "bUpdate"

    .prologue
    .line 41
    if-eqz p1, :cond_0

    .line 42
    invoke-static {p0}, Lcom/htc/clock/util/social/SocialNetworkResolver;->update(Landroid/content/Context;)V

    .line 44
    :cond_0
    sget-object v0, Lcom/htc/clock/util/social/SocialNetworkResolver;->s_cacheData:Lcom/htc/clock/util/social/SocialData;

    return-object v0
.end method

.method public static declared-synchronized update(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    .line 48
    const-class v9, Lcom/htc/clock/util/social/SocialNetworkResolver;

    monitor-enter v9

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 49
    .local v0, crs:Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 50
    .local v7, data:Lcom/htc/clock/util/social/SocialData;
    const/4 v6, 0x0

    .line 52
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_1
    sget-object v1, Lcom/htc/clock/util/social/SocialNetworkResolver;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 54
    if-eqz v6, :cond_0

    .line 55
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    new-instance v7, Lcom/htc/clock/util/social/SocialData;

    .end local v7           #data:Lcom/htc/clock/util/social/SocialData;
    invoke-direct {v7, v6}, Lcom/htc/clock/util/social/SocialData;-><init>(Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 66
    .restart local v7       #data:Lcom/htc/clock/util/social/SocialData;
    :cond_0
    if-eqz v6, :cond_1

    .line 67
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 75
    :cond_1
    :goto_0
    :try_start_3
    sput-object v7, Lcom/htc/clock/util/social/SocialNetworkResolver;->s_cacheData:Lcom/htc/clock/util/social/SocialData;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 77
    monitor-exit v9

    return-void

    .line 70
    :catch_0
    move-exception v8

    .line 71
    .local v8, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 48
    .end local v0           #crs:Landroid/content/ContentResolver;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #data:Lcom/htc/clock/util/social/SocialData;
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v9

    throw v1

    .line 59
    .restart local v0       #crs:Landroid/content/ContentResolver;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :catch_1
    move-exception v8

    .line 61
    .restart local v8       #e:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 62
    const/4 v7, 0x0

    .line 66
    .restart local v7       #data:Lcom/htc/clock/util/social/SocialData;
    if-eqz v6, :cond_1

    .line 67
    :try_start_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 70
    :catch_2
    move-exception v8

    .line 71
    :try_start_7
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 65
    .end local v7           #data:Lcom/htc/clock/util/social/SocialData;
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v1

    .line 66
    if-eqz v6, :cond_2

    .line 67
    :try_start_8
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 72
    :cond_2
    :goto_1
    :try_start_9
    throw v1

    .line 70
    :catch_3
    move-exception v8

    .line 71
    .restart local v8       #e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1
.end method
