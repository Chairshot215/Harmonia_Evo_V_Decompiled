.class public abstract Lcom/android/mms/model/MediaModel;
.super Lcom/android/mms/model/Model;
.source "MediaModel.java"

# interfaces
.implements Lorg/w3c/dom/events/EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/model/MediaModel$1;,
        Lcom/android/mms/model/MediaModel$MediaAction;,
        Lcom/android/mms/model/MediaModel$DurationInfo;
    }
.end annotation


# static fields
.field private static final LOCAL_LOGV:Z = true

.field private static final TAG:Ljava/lang/String; = "MediaModel"

.field private static mMediaDurationCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Lcom/android/mms/model/MediaModel$DurationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mBegin:I

.field protected mCID:Ljava/lang/String;

.field protected mContentType:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field private mData:[B

.field protected mDrmObjectWrapper:Lcom/android/mms/drm/DrmWrapper;

.field protected mDuration:I

.field protected mFill:S

.field private final mMediaActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/MediaModel$MediaAction;",
            ">;"
        }
    .end annotation
.end field

.field protected mPartName:Ljava/lang/String;

.field private mPduPart:Lcom/google/android/mms/pdu/PduPart;

.field protected mSeekTo:I

.field protected mSize:I

.field protected mSrc:Ljava/lang/String;

.field protected mTag:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;

.field private mVcalBegin:J

.field private mVcalEnd:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/mms/model/MediaModel;->mMediaDurationCache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 6
    .parameter "context"
    .parameter "tag"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 91
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/model/MediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .parameter "context"
    .parameter "tag"
    .parameter "contentType"
    .parameter "src"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Lcom/android/mms/model/MediaModel;->mTag:Ljava/lang/String;

    .line 98
    iput-object p3, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    .line 99
    iput-object p4, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    .line 100
    iput-object p5, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    .line 102
    const-string v0, "audio"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-direct {p0}, Lcom/android/mms/model/MediaModel;->initAudioForDRM()V

    .line 105
    :cond_0
    instance-of v0, p0, Lcom/android/mms/model/ImageModel;

    if-nez v0, :cond_1

    .line 106
    invoke-direct {p0}, Lcom/android/mms/model/MediaModel;->initMediaSize()V

    .line 109
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/MediaModel;->mMediaActions:Ljava/util/ArrayList;

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;)V
    .locals 1
    .parameter "context"
    .parameter "tag"
    .parameter "contentType"
    .parameter "src"
    .parameter "wrapper"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 173
    iput-object p1, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    .line 174
    iput-object p2, p0, Lcom/android/mms/model/MediaModel;->mTag:Ljava/lang/String;

    .line 175
    iput-object p3, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    .line 176
    iput-object p4, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    .line 177
    iput-object p5, p0, Lcom/android/mms/model/MediaModel;->mDrmObjectWrapper:Lcom/android/mms/drm/DrmWrapper;

    .line 178
    invoke-static {p1, p5}, Lcom/android/mms/drm/DrmUtils;->insert(Landroid/content/Context;Lcom/android/mms/drm/DrmWrapper;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    .line 179
    invoke-virtual {p5}, Lcom/android/mms/drm/DrmWrapper;->getOriginalData()[B

    move-result-object v0

    array-length v0, v0

    iput v0, p0, Lcom/android/mms/model/MediaModel;->mSize:I

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/MediaModel;->mMediaActions:Ljava/util/ArrayList;

    .line 181
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 2
    .parameter "context"
    .parameter "tag"
    .parameter "contentType"
    .parameter "src"
    .parameter "data"

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 114
    if-nez p5, :cond_0

    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    iput-object p1, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    .line 119
    iput-object p2, p0, Lcom/android/mms/model/MediaModel;->mTag:Ljava/lang/String;

    .line 120
    iput-object p3, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    .line 121
    iput-object p4, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    .line 122
    iput-object p5, p0, Lcom/android/mms/model/MediaModel;->mData:[B

    .line 123
    array-length v0, p5

    iput v0, p0, Lcom/android/mms/model/MediaModel;->mSize:I

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/MediaModel;->mMediaActions:Ljava/util/ArrayList;

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLandroid/net/Uri;)V
    .locals 2
    .parameter "context"
    .parameter "tag"
    .parameter "contentType"
    .parameter "src"
    .parameter "data"
    .parameter "uri"

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 130
    if-nez p5, :cond_0

    .line 131
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    iput-object p1, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    .line 135
    iput-object p2, p0, Lcom/android/mms/model/MediaModel;->mTag:Ljava/lang/String;

    .line 136
    iput-object p3, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    .line 137
    iput-object p4, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    .line 138
    iput-object p6, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    .line 139
    iput-object p5, p0, Lcom/android/mms/model/MediaModel;->mData:[B

    .line 140
    array-length v0, p5

    iput v0, p0, Lcom/android/mms/model/MediaModel;->mSize:I

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/MediaModel;->mMediaActions:Ljava/util/ArrayList;

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLandroid/net/Uri;JJ)V
    .locals 2
    .parameter "context"
    .parameter "tag"
    .parameter "contentType"
    .parameter "src"
    .parameter "data"
    .parameter "uri"
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 146
    if-nez p5, :cond_0

    .line 147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_0
    iput-object p1, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    .line 151
    iput-object p2, p0, Lcom/android/mms/model/MediaModel;->mTag:Ljava/lang/String;

    .line 152
    iput-object p3, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    .line 153
    iput-object p4, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    .line 154
    iput-object p6, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    .line 155
    iput-object p5, p0, Lcom/android/mms/model/MediaModel;->mData:[B

    .line 156
    array-length v0, p5

    iput v0, p0, Lcom/android/mms/model/MediaModel;->mSize:I

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/MediaModel;->mMediaActions:Ljava/util/ArrayList;

    .line 158
    iput-wide p7, p0, Lcom/android/mms/model/MediaModel;->mVcalBegin:J

    .line 159
    iput-wide p9, p0, Lcom/android/mms/model/MediaModel;->mVcalEnd:J

    .line 160
    return-void
.end method

.method private checkNonameMedia()V
    .locals 3

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20c016e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    .line 308
    const-string v0, "MediaModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSrc after give name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_1
    return-void
.end method

.method private initAudioForDRM()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 441
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 443
    .local v1, cr:Landroid/content/ContentResolver;
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 445
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 446
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 450
    .local v8, path:Ljava/lang/String;
    const-string v0, "content://drm"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    const-string v0, "MediaModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-----------path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    .line 456
    .end local v8           #path:Ljava/lang/String;
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 458
    :cond_1
    return-void
.end method

.method private initMediaSize()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 462
    iget-object v5, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 464
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v4, 0x0

    .line 466
    .local v4, input:Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 469
    .local v3, f:Ljava/io/FileInputStream;
    :try_start_0
    iget-object v5, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 470
    instance-of v5, v4, Ljava/io/FileInputStream;

    if-eqz v5, :cond_3

    .line 473
    move-object v0, v4

    check-cast v0, Ljava/io/FileInputStream;

    move-object v3, v0

    .line 475
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    long-to-int v5, v5

    iput v5, p0, Lcom/android/mms/model/MediaModel;->mSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    .line 497
    :cond_0
    if-eqz v4, :cond_2

    .line 500
    if-eqz v3, :cond_1

    .line 501
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 503
    :cond_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 510
    :cond_2
    :goto_0
    return-void

    .line 477
    :cond_3
    :goto_1
    const/4 v5, -0x1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 478
    iget v5, p0, Lcom/android/mms/model/MediaModel;->mSize:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/mms/model/MediaModel;->mSize:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 482
    :catch_0
    move-exception v2

    .line 484
    .local v2, e:Ljava/io/IOException;
    :try_start_3
    const-string v5, "MediaModel"

    const-string v6, "IOException caught while opening or reading stream"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 485
    instance-of v5, v2, Ljava/io/FileNotFoundException;

    if-eqz v5, :cond_6

    .line 486
    new-instance v5, Lcom/google/android/mms/MmsException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 497
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_5

    .line 500
    if-eqz v3, :cond_4

    .line 501
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 503
    :cond_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 507
    :cond_5
    :goto_2
    throw v5

    .line 504
    :catch_1
    move-exception v2

    .line 506
    .restart local v2       #e:Ljava/io/IOException;
    const-string v5, "MediaModel"

    const-string v6, "IOException caught while closing stream"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 497
    :cond_6
    if-eqz v4, :cond_2

    .line 500
    if-eqz v3, :cond_7

    .line 501
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 503
    :cond_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 504
    :catch_2
    move-exception v2

    .line 506
    const-string v5, "MediaModel"

    const-string v6, "IOException caught while closing stream"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 490
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 491
    .local v2, e:Ljava/lang/NullPointerException;
    :try_start_6
    const-string v5, "MediaModel"

    const-string v6, "NullPointerException caught while opening or reading stream"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 492
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 493
    new-instance v5, Lcom/google/android/mms/MmsException;

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 504
    .end local v2           #e:Ljava/lang/NullPointerException;
    :catch_4
    move-exception v2

    .line 506
    .local v2, e:Ljava/io/IOException;
    const-string v6, "MediaModel"

    const-string v7, "IOException caught while closing stream"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public static isMmsUri(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 513
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 514
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 516
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public appendAction(Lcom/android/mms/model/MediaModel$MediaAction;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mMediaActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    return-void
.end method

.method public getBegin()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/android/mms/model/MediaModel;->mBegin:I

    return v0
.end method

.method public getCID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportUsingCID()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mCID:Ljava/lang/String;

    .line 339
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentAction()Lcom/android/mms/model/MediaModel$MediaAction;
    .locals 2

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mMediaActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 529
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->NO_ACTIVE_ACTION:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 531
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mMediaActions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaModel$MediaAction;

    goto :goto_0
.end method

.method public getData()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile1/DrmException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 282
    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mData:[B

    if-eqz v1, :cond_1

    .line 283
    invoke-virtual {p0}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mDrmObjectWrapper:Lcom/android/mms/drm/DrmWrapper;

    invoke-virtual {v1}, Lcom/android/mms/drm/DrmWrapper;->consumeRights()Z

    move-result v1

    if-nez v1, :cond_0

    .line 284
    new-instance v1, Landroid/drm/mobile1/DrmException;

    iget-object v2, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    const v3, 0x7f090034

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/drm/mobile1/DrmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 288
    :cond_0
    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mData:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 289
    .local v0, data:[B
    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mData:[B

    iget-object v2, p0, Lcom/android/mms/model/MediaModel;->mData:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 292
    .end local v0           #data:[B
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDrmObject()Lcom/android/mms/drm/DrmWrapper;
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mDrmObjectWrapper:Lcom/android/mms/drm/DrmWrapper;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/android/mms/model/MediaModel;->mDuration:I

    return v0
.end method

.method public getFill()S
    .locals 1

    .prologue
    .line 352
    iget-short v0, p0, Lcom/android/mms/model/MediaModel;->mFill:S

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02019a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getMediaSize()I
    .locals 1

    .prologue
    .line 364
    iget v0, p0, Lcom/android/mms/model/MediaModel;->mSize:I

    return v0
.end method

.method public getPartName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mPartName:Ljava/lang/String;

    return-object v0
.end method

.method public getPduPart()Lcom/google/android/mms/pdu/PduPart;
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mPduPart:Lcom/google/android/mms/pdu/PduPart;

    return-object v0
.end method

.method public getSeekTo()I
    .locals 1

    .prologue
    .line 520
    iget v0, p0, Lcom/android/mms/model/MediaModel;->mSeekTo:I

    return v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/android/mms/model/MediaModel;->checkNonameMedia()V

    .line 320
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getUriWithDrmCheck()Landroid/net/Uri;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile1/DrmException;
        }
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mDrmObjectWrapper:Lcom/android/mms/drm/DrmWrapper;

    invoke-virtual {v0}, Lcom/android/mms/drm/DrmWrapper;->consumeRights()Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    new-instance v0, Landroid/drm/mobile1/DrmException;

    const-string v1, "Insufficient DRM rights."

    invoke-direct {v0, v1}, Landroid/drm/mobile1/DrmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getVCalBegin()J
    .locals 2

    .prologue
    .line 163
    iget-wide v0, p0, Lcom/android/mms/model/MediaModel;->mVcalBegin:J

    return-wide v0
.end method

.method public getVCalEnd()J
    .locals 2

    .prologue
    .line 167
    iget-wide v0, p0, Lcom/android/mms/model/MediaModel;->mVcalEnd:J

    return-wide v0
.end method

.method protected initMediaDuration()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 417
    iget-object v2, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    if-nez v2, :cond_0

    .line 418
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Uri may not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 421
    :cond_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 423
    .local v1, mediaPlayer:Landroid/media/MediaPlayer;
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 424
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 425
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    iput v2, p0, Lcom/android/mms/model/MediaModel;->mDuration:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 437
    :goto_0
    return-void

    .line 426
    :catch_0
    move-exception v0

    .line 427
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    const-string v2, "MediaModel"

    const-string v3, "Unexpected IOException."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 429
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Prepare failed."

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 430
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/mms/model/MediaModel;->mDuration:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 435
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    goto :goto_0

    .line 432
    :cond_1
    :try_start_2
    new-instance v2, Lcom/google/android/mms/MmsException;

    invoke-direct {v2, v0}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 435
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    throw v2
.end method

.method public isAllowedToForward()Z
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mDrmObjectWrapper:Lcom/android/mms/drm/DrmWrapper;

    invoke-virtual {v0}, Lcom/android/mms/drm/DrmWrapper;->isAllowedToForward()Z

    move-result v0

    return v0
.end method

.method public isAudio()Z
    .locals 1

    .prologue
    .line 386
    instance-of v0, p0, Lcom/android/mms/model/AudioModel;

    return v0
.end method

.method public isDrmProtected()Z
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mDrmObjectWrapper:Lcom/android/mms/drm/DrmWrapper;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isImage()Z
    .locals 1

    .prologue
    .line 376
    instance-of v0, p0, Lcom/android/mms/model/ImageModel;

    return v0
.end method

.method public isLocation()Z
    .locals 1

    .prologue
    .line 396
    instance-of v0, p0, Lcom/android/mms/model/LocationModel;

    return v0
.end method

.method protected isPlayable()Z
    .locals 1

    .prologue
    .line 535
    const/4 v0, 0x0

    return v0
.end method

.method public isText()Z
    .locals 1

    .prologue
    .line 371
    instance-of v0, p0, Lcom/android/mms/model/TextModel;

    return v0
.end method

.method public isUnsupportedMedia()Z
    .locals 1

    .prologue
    .line 405
    instance-of v0, p0, Lcom/android/mms/model/UnsupportedMediaModel;

    return v0
.end method

.method public isVCalendar()Z
    .locals 1

    .prologue
    .line 401
    instance-of v0, p0, Lcom/android/mms/model/VCalendarModel;

    return v0
.end method

.method public isVCard()Z
    .locals 1

    .prologue
    .line 392
    instance-of v0, p0, Lcom/android/mms/model/VCardModel;

    return v0
.end method

.method public isVideo()Z
    .locals 1

    .prologue
    .line 381
    instance-of v0, p0, Lcom/android/mms/model/VideoModel;

    return v0
.end method

.method public setBegin(I)V
    .locals 1
    .parameter "begin"

    .prologue
    .line 188
    iput p1, p0, Lcom/android/mms/model/MediaModel;->mBegin:I

    .line 189
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/model/MediaModel;->notifyModelChanged(Z)V

    .line 190
    return-void
.end method

.method public setCID(Ljava/lang/String;)V
    .locals 0
    .parameter "CID"

    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/mms/model/MediaModel;->mCID:Ljava/lang/String;

    .line 345
    return-void
.end method

.method public setDuration(I)V
    .locals 7
    .parameter "duration"

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/android/mms/model/MediaModel;->isPlayable()Z

    move-result v3

    if-eqz v3, :cond_3

    if-gez p1, :cond_3

    .line 206
    :try_start_0
    sget-object v3, Lcom/android/mms/model/MediaModel;->mMediaDurationCache:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaModel$DurationInfo;

    .line 207
    .local v0, durInfo:Lcom/android/mms/model/MediaModel$DurationInfo;
    if-nez v0, :cond_1

    .line 209
    const-string v3, "MediaModel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -- new cache"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual {p0}, Lcom/android/mms/model/MediaModel;->initMediaDuration()V

    .line 211
    iget v3, p0, Lcom/android/mms/model/MediaModel;->mDuration:I

    if-lez v3, :cond_0

    .line 212
    new-instance v2, Lcom/android/mms/model/MediaModel$DurationInfo;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/mms/model/MediaModel$DurationInfo;-><init>(Lcom/android/mms/model/MediaModel;Lcom/android/mms/model/MediaModel$1;)V

    .line 213
    .local v2, newDurInfo:Lcom/android/mms/model/MediaModel$DurationInfo;
    iget v3, p0, Lcom/android/mms/model/MediaModel;->mDuration:I

    iput v3, v2, Lcom/android/mms/model/MediaModel$DurationInfo;->mDuration:I

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/mms/model/MediaModel$DurationInfo;->mValiedTimeMillis:J

    .line 215
    sget-object v3, Lcom/android/mms/model/MediaModel;->mMediaDurationCache:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .end local v0           #durInfo:Lcom/android/mms/model/MediaModel$DurationInfo;
    .end local v2           #newDurInfo:Lcom/android/mms/model/MediaModel$DurationInfo;
    :cond_0
    :goto_0
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/mms/model/MediaModel;->notifyModelChanged(Z)V

    .line 245
    :goto_1
    return-void

    .line 219
    .restart local v0       #durInfo:Lcom/android/mms/model/MediaModel$DurationInfo;
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/android/mms/model/MediaModel$DurationInfo;->mValiedTimeMillis:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x7530

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    .line 221
    const-string v3, "MediaModel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -- cache > after 30secs expired!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual {p0}, Lcom/android/mms/model/MediaModel;->initMediaDuration()V

    .line 223
    iget v3, p0, Lcom/android/mms/model/MediaModel;->mDuration:I

    if-lez v3, :cond_0

    .line 224
    iget v3, p0, Lcom/android/mms/model/MediaModel;->mDuration:I

    iput v3, v0, Lcom/android/mms/model/MediaModel$DurationInfo;->mDuration:I

    .line 225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/mms/model/MediaModel$DurationInfo;->mValiedTimeMillis:J

    .line 226
    sget-object v3, Lcom/android/mms/model/MediaModel;->mMediaDurationCache:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 236
    .end local v0           #durInfo:Lcom/android/mms/model/MediaModel$DurationInfo;
    :catch_0
    move-exception v1

    .line 238
    .local v1, e:Lcom/google/android/mms/MmsException;
    const-string v3, "MediaModel"

    invoke-virtual {v1}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 230
    .end local v1           #e:Lcom/google/android/mms/MmsException;
    .restart local v0       #durInfo:Lcom/android/mms/model/MediaModel$DurationInfo;
    :cond_2
    :try_start_2
    const-string v3, "MediaModel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -- recache !!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/mms/model/MediaModel$DurationInfo;->mValiedTimeMillis:J

    .line 232
    sget-object v3, Lcom/android/mms/model/MediaModel;->mMediaDurationCache:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget v3, v0, Lcom/android/mms/model/MediaModel$DurationInfo;->mDuration:I

    iput v3, p0, Lcom/android/mms/model/MediaModel;->mDuration:I
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 242
    .end local v0           #durInfo:Lcom/android/mms/model/MediaModel$DurationInfo;
    :cond_3
    iput p1, p0, Lcom/android/mms/model/MediaModel;->mDuration:I

    goto/16 :goto_0
.end method

.method public setFill(S)V
    .locals 1
    .parameter "fill"

    .prologue
    .line 359
    iput-short p1, p0, Lcom/android/mms/model/MediaModel;->mFill:S

    .line 360
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/model/MediaModel;->notifyModelChanged(Z)V

    .line 361
    return-void
.end method

.method public setPduPart(Lcom/google/android/mms/pdu/PduPart;)V
    .locals 0
    .parameter "pduPart"

    .prologue
    .line 547
    iput-object p1, p0, Lcom/android/mms/model/MediaModel;->mPduPart:Lcom/google/android/mms/pdu/PduPart;

    .line 548
    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 0
    .parameter "src"

    .prologue
    .line 325
    iput-object p1, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    .line 326
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    .line 302
    return-void
.end method
