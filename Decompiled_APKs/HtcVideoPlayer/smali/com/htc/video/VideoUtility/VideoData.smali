.class public Lcom/htc/video/VideoUtility/VideoData;
.super Ljava/lang/Object;
.source "VideoData.java"


# static fields
.field public static final DRM_TYPE_CD:I = 0x2

.field public static final DRM_TYPE_FL:I = 0x1

.field public static final DRM_TYPE_SD:I = 0x3

.field public static final REQUEST_CONTENT_IMAGE:I = 0x0

.field public static final REQUEST_CONTENT_UNKNOWN:I = -0x1

.field public static final REQUEST_CONTENT_VIDEO:I = 0x1

.field public static final STATE_DATE_NOT_SYNC:I = 0x3

.field public static final STATE_ERR:I = -0x1

.field public static final STATE_EXPIRE:I = 0x2

.field public static final STATE_NEED_DOWNLOAD_RIGHT:I = 0x1

.field public static final STATE_NO_RIGHT_ISSURE:I = -0x2

.field public static final STATE_SUCCESS:I


# instance fields
.field private mData:Ljava/lang/String;

.field private mDeliveryType:I

.field private mDisplayName:Ljava/lang/String;

.field private mDrmState:I

.field private mIsDrm:Z

.field private mMimeType:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "uri"
    .parameter "data"
    .parameter "mimeType"
    .parameter "displayName"

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/video/VideoUtility/VideoData;->mData:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/video/VideoUtility/VideoData;->mMimeType:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/video/VideoUtility/VideoData;->mDisplayName:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/video/VideoUtility/VideoData;->mTitle:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/video/VideoUtility/VideoData;->mUri:Landroid/net/Uri;

    .line 36
    iput v1, p0, Lcom/htc/video/VideoUtility/VideoData;->mDeliveryType:I

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/video/VideoUtility/VideoData;->mDrmState:I

    .line 38
    iput-boolean v1, p0, Lcom/htc/video/VideoUtility/VideoData;->mIsDrm:Z

    .line 101
    iput-object p1, p0, Lcom/htc/video/VideoUtility/VideoData;->mUri:Landroid/net/Uri;

    .line 102
    iput-object p2, p0, Lcom/htc/video/VideoUtility/VideoData;->mData:Ljava/lang/String;

    .line 103
    iput-object p3, p0, Lcom/htc/video/VideoUtility/VideoData;->mMimeType:Ljava/lang/String;

    .line 104
    iput-object p4, p0, Lcom/htc/video/VideoUtility/VideoData;->mDisplayName:Ljava/lang/String;

    .line 105
    iput-boolean v1, p0, Lcom/htc/video/VideoUtility/VideoData;->mIsDrm:Z

    .line 106
    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .parameter "uri"
    .parameter "data"
    .parameter "mimeType"
    .parameter "displayName"
    .parameter "deliveryType"
    .parameter "title"

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/video/VideoUtility/VideoData;->mData:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/video/VideoUtility/VideoData;->mMimeType:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/video/VideoUtility/VideoData;->mDisplayName:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/video/VideoUtility/VideoData;->mTitle:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/video/VideoUtility/VideoData;->mUri:Landroid/net/Uri;

    .line 36
    iput v1, p0, Lcom/htc/video/VideoUtility/VideoData;->mDeliveryType:I

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/video/VideoUtility/VideoData;->mDrmState:I

    .line 38
    iput-boolean v1, p0, Lcom/htc/video/VideoUtility/VideoData;->mIsDrm:Z

    .line 110
    iput-object p1, p0, Lcom/htc/video/VideoUtility/VideoData;->mUri:Landroid/net/Uri;

    .line 111
    iput-object p2, p0, Lcom/htc/video/VideoUtility/VideoData;->mData:Ljava/lang/String;

    .line 112
    iput-object p3, p0, Lcom/htc/video/VideoUtility/VideoData;->mMimeType:Ljava/lang/String;

    .line 113
    iput-object p4, p0, Lcom/htc/video/VideoUtility/VideoData;->mDisplayName:Ljava/lang/String;

    .line 114
    iput p5, p0, Lcom/htc/video/VideoUtility/VideoData;->mDeliveryType:I

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/video/VideoUtility/VideoData;->mIsDrm:Z

    .line 116
    iput-object p6, p0, Lcom/htc/video/VideoUtility/VideoData;->mTitle:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public static queryFromDatabase(Landroid/content/Context;Landroid/net/Uri;)Lcom/htc/video/VideoUtility/VideoData;
    .locals 13
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 42
    const/4 v9, 0x0

    .line 43
    .local v9, data:Lcom/htc/video/VideoUtility/VideoData;
    if-nez p1, :cond_0

    move-object v0, v9

    .line 96
    .end local v9           #data:Lcom/htc/video/VideoUtility/VideoData;
    :goto_0
    return-object v9

    .line 45
    .restart local v9       #data:Lcom/htc/video/VideoUtility/VideoData;
    :cond_0
    const/4 v8, 0x0

    .line 49
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    .line 50
    .local v7, authority:Ljava/lang/String;
    const-string v1, "media"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v6, "_data"

    aput-object v6, v2, v1

    const/4 v1, 0x1

    const-string v6, "mime_type"

    aput-object v6, v2, v1

    const/4 v1, 0x2

    const-string v6, "_display_name"

    aput-object v6, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 59
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 61
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, path:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, mimeType:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 64
    .local v10, displayName:Ljava/lang/String;
    new-instance v0, Lcom/htc/video/VideoUtility/VideoData;

    invoke-direct {v0, p1, v2, v3, v10}, Lcom/htc/video/VideoUtility/VideoData;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v2           #path:Ljava/lang/String;
    .end local v3           #mimeType:Ljava/lang/String;
    .end local v9           #data:Lcom/htc/video/VideoUtility/VideoData;
    .end local v10           #displayName:Ljava/lang/String;
    .local v0, data:Lcom/htc/video/VideoUtility/VideoData;
    :goto_1
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .end local v7           #authority:Ljava/lang/String;
    :cond_1
    :goto_2
    move-object v9, v0

    .line 96
    .end local v0           #data:Lcom/htc/video/VideoUtility/VideoData;
    .restart local v9       #data:Lcom/htc/video/VideoUtility/VideoData;
    goto :goto_0

    .line 67
    .restart local v7       #authority:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v1, "drm"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v6, "_data"

    aput-object v6, v2, v1

    const/4 v1, 0x1

    const-string v6, "mime_type"

    aput-object v6, v2, v1

    const/4 v1, 0x2

    const-string v6, "delivery_type"

    aput-object v6, v2, v1

    const/4 v1, 0x3

    const-string v6, "title"

    aput-object v6, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 77
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 79
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 80
    .restart local v2       #path:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 81
    .restart local v3       #mimeType:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 82
    .local v5, deliveryType:I
    const/4 v1, 0x3

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, title:Ljava/lang/String;
    new-instance v0, Lcom/htc/video/VideoUtility/VideoData;

    move-object v1, p1

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/htc/video/VideoUtility/VideoData;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v9           #data:Lcom/htc/video/VideoUtility/VideoData;
    .restart local v0       #data:Lcom/htc/video/VideoUtility/VideoData;
    goto :goto_1

    .line 87
    .end local v0           #data:Lcom/htc/video/VideoUtility/VideoData;
    .end local v2           #path:Ljava/lang/String;
    .end local v3           #mimeType:Ljava/lang/String;
    .end local v4           #title:Ljava/lang/String;
    .end local v5           #deliveryType:I
    .end local v7           #authority:Ljava/lang/String;
    .restart local v9       #data:Lcom/htc/video/VideoUtility/VideoData;
    :catch_0
    move-exception v11

    .line 89
    .local v11, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "VideoData"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "query exception "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v0, v9

    .end local v9           #data:Lcom/htc/video/VideoUtility/VideoData;
    .restart local v0       #data:Lcom/htc/video/VideoUtility/VideoData;
    goto :goto_2

    .end local v0           #data:Lcom/htc/video/VideoUtility/VideoData;
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v9       #data:Lcom/htc/video/VideoUtility/VideoData;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1

    .restart local v11       #e:Ljava/lang/Exception;
    :cond_4
    move-object v0, v9

    .end local v9           #data:Lcom/htc/video/VideoUtility/VideoData;
    .restart local v0       #data:Lcom/htc/video/VideoUtility/VideoData;
    goto :goto_2

    .end local v0           #data:Lcom/htc/video/VideoUtility/VideoData;
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v7       #authority:Ljava/lang/String;
    .restart local v9       #data:Lcom/htc/video/VideoUtility/VideoData;
    :cond_5
    move-object v0, v9

    .end local v9           #data:Lcom/htc/video/VideoUtility/VideoData;
    .restart local v0       #data:Lcom/htc/video/VideoUtility/VideoData;
    goto :goto_1
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/htc/video/VideoUtility/VideoData;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getDrmState(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 216
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/video/VideoUtility/VideoData;->getDrmState(Landroid/content/Context;Z)I

    move-result v0

    return v0
.end method

.method public getDrmState(Landroid/content/Context;Z)I
    .locals 10
    .parameter "context"
    .parameter "forceRefresh"

    .prologue
    const/4 v9, -0x2

    const/4 v8, 0x3

    const/4 v4, -0x1

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 156
    iget v5, p0, Lcom/htc/video/VideoUtility/VideoData;->mDrmState:I

    if-eq v5, v4, :cond_1

    if-nez p2, :cond_1

    iget v4, p0, Lcom/htc/video/VideoUtility/VideoData;->mDrmState:I

    .line 212
    :cond_0
    :goto_0
    return v4

    .line 158
    :cond_1
    iget-object v5, p0, Lcom/htc/video/VideoUtility/VideoData;->mMimeType:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/htc/video/VideoUtility/VideoData;->mDeliveryType:I

    if-eq v5, v4, :cond_0

    iget-boolean v5, p0, Lcom/htc/video/VideoUtility/VideoData;->mIsDrm:Z

    if-eqz v5, :cond_0

    .line 161
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/video/VideoUtility/VideoData;->mDrmState:I

    .line 163
    iget v4, p0, Lcom/htc/video/VideoUtility/VideoData;->mDeliveryType:I

    if-ne v4, v6, :cond_2

    .line 164
    iget v4, p0, Lcom/htc/video/VideoUtility/VideoData;->mDrmState:I

    goto :goto_0

    .line 166
    :cond_2
    const/4 v3, -0x1

    .line 167
    .local v3, type:I
    iget-object v4, p0, Lcom/htc/video/VideoUtility/VideoData;->mMimeType:Ljava/lang/String;

    const-string v5, "image"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 168
    const/4 v3, 0x0

    .line 173
    :cond_3
    :goto_1
    const/4 v0, 0x0

    .line 174
    .local v0, constraint:Landroid/provider/DrmStore$DrmConstraint;
    if-ne v3, v6, :cond_5

    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/video/VideoUtility/VideoData;->mUri:Landroid/net/Uri;

    invoke-static {v4, v5, v6}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v0

    .line 180
    :goto_2
    if-nez v0, :cond_6

    iget v4, p0, Lcom/htc/video/VideoUtility/VideoData;->mDeliveryType:I

    if-ne v4, v8, :cond_6

    iget v4, p0, Lcom/htc/video/VideoUtility/VideoData;->mDrmState:I

    if-nez v4, :cond_6

    .line 181
    iput v6, p0, Lcom/htc/video/VideoUtility/VideoData;->mDrmState:I

    .line 182
    iget v4, p0, Lcom/htc/video/VideoUtility/VideoData;->mDrmState:I

    goto :goto_0

    .line 169
    .end local v0           #constraint:Landroid/provider/DrmStore$DrmConstraint;
    :cond_4
    iget-object v4, p0, Lcom/htc/video/VideoUtility/VideoData;->mMimeType:Ljava/lang/String;

    const-string v5, "video"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 170
    const/4 v3, 0x1

    goto :goto_1

    .line 177
    .restart local v0       #constraint:Landroid/provider/DrmStore$DrmConstraint;
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/video/VideoUtility/VideoData;->mUri:Landroid/net/Uri;

    invoke-static {v4, v5, v7}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v0

    goto :goto_2

    .line 183
    :cond_6
    if-nez v0, :cond_7

    iget v4, p0, Lcom/htc/video/VideoUtility/VideoData;->mDeliveryType:I

    if-ne v4, v8, :cond_7

    iget v4, p0, Lcom/htc/video/VideoUtility/VideoData;->mDeliveryType:I

    if-ne v4, v9, :cond_7

    .line 184
    iput v9, p0, Lcom/htc/video/VideoUtility/VideoData;->mDrmState:I

    .line 185
    iget v4, p0, Lcom/htc/video/VideoUtility/VideoData;->mDrmState:I

    goto :goto_0

    .line 186
    :cond_7
    if-nez v0, :cond_8

    .line 187
    iput v7, p0, Lcom/htc/video/VideoUtility/VideoData;->mDrmState:I

    .line 188
    iget v4, p0, Lcom/htc/video/VideoUtility/VideoData;->mDrmState:I

    goto :goto_0

    .line 192
    :cond_8
    if-eqz v0, :cond_9

    .line 193
    invoke-virtual {v0}, Landroid/provider/DrmStore$DrmConstraint;->getConstraint()Landroid/drm/mobile1/DrmConstraintInfo;

    move-result-object v1

    .line 194
    .local v1, constraintInfo:Landroid/drm/mobile1/DrmConstraintInfo;
    if-nez v1, :cond_9

    .line 195
    iput v7, p0, Lcom/htc/video/VideoUtility/VideoData;->mDrmState:I

    .line 196
    iget v4, p0, Lcom/htc/video/VideoUtility/VideoData;->mDrmState:I

    goto :goto_0

    .line 200
    .end local v1           #constraintInfo:Landroid/drm/mobile1/DrmConstraintInfo;
    :cond_9
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/video/VideoUtility/VideoData;->mUri:Landroid/net/Uri;

    invoke-static {v4, v0, v5}, Landroid/provider/DrmStore;->checkExpiration(Landroid/content/ContentResolver;Landroid/provider/DrmStore$DrmConstraint;Landroid/net/Uri;)I

    move-result v2

    .line 203
    .local v2, result:I
    const/4 v4, -0x5

    if-ne v2, v4, :cond_a

    .line 204
    iput v8, p0, Lcom/htc/video/VideoUtility/VideoData;->mDrmState:I

    .line 205
    iget v4, p0, Lcom/htc/video/VideoUtility/VideoData;->mDrmState:I

    goto/16 :goto_0

    .line 207
    :cond_a
    if-eqz v2, :cond_b

    .line 208
    iput v7, p0, Lcom/htc/video/VideoUtility/VideoData;->mDrmState:I

    .line 209
    iget v4, p0, Lcom/htc/video/VideoUtility/VideoData;->mDrmState:I

    goto/16 :goto_0

    .line 212
    :cond_b
    iget v4, p0, Lcom/htc/video/VideoUtility/VideoData;->mDrmState:I

    goto/16 :goto_0
.end method

.method public getDrmType()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/htc/video/VideoUtility/VideoData;->mDeliveryType:I

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/htc/video/VideoUtility/VideoData;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/htc/video/VideoUtility/VideoData;->mData:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/htc/video/VideoUtility/VideoData;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/htc/video/VideoUtility/VideoData;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isDrm()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/htc/video/VideoUtility/VideoData;->mIsDrm:Z

    return v0
.end method

.method public setDrmStateToNonCheck()V
    .locals 1

    .prologue
    .line 221
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/video/VideoUtility/VideoData;->mDrmState:I

    .line 222
    return-void
.end method
