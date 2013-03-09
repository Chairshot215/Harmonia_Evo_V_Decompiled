.class public Lcom/android/mms/msg/body/MixedMessageBody;
.super Lcom/android/mms/model/Model;
.source "MixedMessageBody.java"

# interfaces
.implements Lcom/android/mms/model/IModelChangedObserver;


# static fields
.field private static final DEBUG:Z = true

.field private static final LOCAL_LOGV:Z = true

.field private static final TAG:Ljava/lang/String; = "MixedMessageBody"


# instance fields
.field private mAudioFlag:Ljava/lang/Boolean;

.field private mHasOnlyOneMedia:Ljava/lang/Boolean;

.field private mImageFlag:Ljava/lang/Boolean;

.field private mLocationFlag:Ljava/lang/Boolean;

.field private final mMedia:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/MediaModel;",
            ">;"
        }
    .end annotation
.end field

.field private mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

.field private mSize:I

.field private mTextFlag:Ljava/lang/Boolean;

.field private mUnsupportedMediaFlag:Ljava/lang/Boolean;

.field private mVCalendarFlag:Ljava/lang/Boolean;

.field private mVCardFlag:Ljava/lang/Boolean;

.field private mVideoFlag:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mMedia:Ljava/util/ArrayList;

    .line 82
    return-void
.end method

.method private constructor <init>(Ljava/util/ArrayList;Lcom/google/android/mms/pdu/PduBody;)V
    .locals 4
    .parameter
    .parameter "pbCache"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/MediaModel;",
            ">;",
            "Lcom/google/android/mms/pdu/PduBody;",
            ")V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, media:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 85
    if-nez p1, :cond_0

    .line 86
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "media param may not be null."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 89
    :cond_0
    iput-object p1, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mMedia:Ljava/util/ArrayList;

    .line 90
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/MediaModel;

    .line 91
    .local v1, m:Lcom/android/mms/model/MediaModel;
    iget v2, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mSize:I

    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mSize:I

    goto :goto_0

    .line 93
    .end local v1           #m:Lcom/android/mms/model/MediaModel;
    :cond_1
    iput-object p2, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    .line 94
    return-void
.end method

.method private declared-synchronized checkMessageSize(I)V
    .locals 2
    .parameter "incSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 430
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    .line 432
    .local v0, cr:Lcom/android/mms/model/ContentRestriction;
    iget v1, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mSize:I

    invoke-interface {v0, v1, p1}, Lcom/android/mms/model/ContentRestriction;->checkMessageSize(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    monitor-exit p0

    return-void

    .line 430
    .end local v0           #cr:Lcom/android/mms/model/ContentRestriction;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/msg/body/MixedMessageBody;
    .locals 1
    .parameter "context"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-static {p0, p1}, Lcom/android/mms/msg/body/MixedMessageBody;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/mms/msg/body/MixedMessageBody;->createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/msg/body/MixedMessageBody;

    move-result-object v0

    return-object v0
.end method

.method public static createFromMessageUricheckDrm(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/msg/body/MixedMessageBody;
    .locals 1
    .parameter "context"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 144
    invoke-static {p0, p1}, Lcom/android/mms/msg/body/MixedMessageBody;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/mms/msg/body/MixedMessageBody;->createFromPduBodycheckDrm(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/msg/body/MixedMessageBody;

    move-result-object v0

    return-object v0
.end method

.method public static createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/msg/body/MixedMessageBody;
    .locals 8
    .parameter "context"
    .parameter "pb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v5

    .line 114
    .local v5, partNum:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 115
    .local v4, mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    if-ge v1, v5, :cond_1

    .line 118
    :try_start_0
    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Lcom/android/mms/model/MediaModelFactory;->getMediaModel(Landroid/content/Context;Lcom/google/android/mms/pdu/PduPart;Z)Lcom/android/mms/model/MediaModel;

    move-result-object v3

    .line 120
    .local v3, media:Lcom/android/mms/model/MediaModel;
    if-eqz v3, :cond_0

    .line 121
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/drm/mobile1/DrmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 115
    .end local v3           #media:Lcom/android/mms/model/MediaModel;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, e:Landroid/drm/mobile1/DrmException;
    const-string v6, "MixedMessageBody"

    invoke-virtual {v0}, Landroid/drm/mobile1/DrmException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 125
    .end local v0           #e:Landroid/drm/mobile1/DrmException;
    :catch_1
    move-exception v0

    .line 126
    .local v0, e:Ljava/io/IOException;
    const-string v6, "MixedMessageBody"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 127
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 128
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v6, "MixedMessageBody"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 132
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_1
    new-instance v2, Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-direct {v2, v4, p1}, Lcom/android/mms/msg/body/MixedMessageBody;-><init>(Ljava/util/ArrayList;Lcom/google/android/mms/pdu/PduBody;)V

    .line 133
    .local v2, mb:Lcom/android/mms/msg/body/MixedMessageBody;
    invoke-virtual {v2, v2}, Lcom/android/mms/msg/body/MixedMessageBody;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 134
    return-object v2
.end method

.method public static createFromPduBodycheckDrm(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/msg/body/MixedMessageBody;
    .locals 8
    .parameter "context"
    .parameter "pb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v5

    .line 153
    .local v5, partNum:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 154
    .local v4, mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    if-ge v1, v5, :cond_2

    .line 157
    :try_start_0
    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Lcom/android/mms/model/MediaModelFactory;->getMediaModel(Landroid/content/Context;Lcom/google/android/mms/pdu/PduPart;Z)Lcom/android/mms/model/MediaModel;

    move-result-object v3

    .line 160
    .local v3, media:Lcom/android/mms/model/MediaModel;
    if-eqz v3, :cond_0

    .line 161
    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v6

    if-nez v6, :cond_1

    .line 162
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .end local v3           #media:Lcom/android/mms/model/MediaModel;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    .restart local v3       #media:Lcom/android/mms/model/MediaModel;
    :cond_1
    const v6, 0x7f09005b

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/drm/mobile1/DrmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 168
    .end local v3           #media:Lcom/android/mms/model/MediaModel;
    :catch_0
    move-exception v0

    .line 169
    .local v0, e:Landroid/drm/mobile1/DrmException;
    const-string v6, "MixedMessageBody"

    invoke-virtual {v0}, Landroid/drm/mobile1/DrmException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 170
    .end local v0           #e:Landroid/drm/mobile1/DrmException;
    :catch_1
    move-exception v0

    .line 171
    .local v0, e:Ljava/io/IOException;
    const-string v6, "MixedMessageBody"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 172
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 173
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v6, "MixedMessageBody"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 177
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_2
    new-instance v2, Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-direct {v2, v4, p1}, Lcom/android/mms/msg/body/MixedMessageBody;-><init>(Ljava/util/ArrayList;Lcom/google/android/mms/pdu/PduBody;)V

    .line 178
    .local v2, mb:Lcom/android/mms/msg/body/MixedMessageBody;
    invoke-virtual {v2, v2}, Lcom/android/mms/msg/body/MixedMessageBody;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 179
    return-object v2
.end method

.method public static createNew()Lcom/android/mms/msg/body/MixedMessageBody;
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-direct {v0}, Lcom/android/mms/msg/body/MixedMessageBody;-><init>()V

    return-object v0
.end method

.method private declared-synchronized decSize(I)V
    .locals 1
    .parameter "mediaSize"

    .prologue
    .line 424
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mSize:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    monitor-exit p0

    return-void

    .line 424
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;
    .locals 4
    .parameter "context"
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    .line 187
    .local v1, p:Lcom/google/android/mms/pdu/PduPersister;
    invoke-virtual {v1, p1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v2

    .line 189
    .local v2, pdu:Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v0

    .line 190
    .local v0, msgType:I
    const/16 v3, 0x80

    if-eq v0, v3, :cond_0

    const/16 v3, 0x84

    if-ne v0, v3, :cond_1

    .line 192
    :cond_0
    check-cast v2, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .end local v2           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v3

    return-object v3

    .line 194
    .restart local v2       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :cond_1
    new-instance v3, Lcom/google/android/mms/MmsException;

    invoke-direct {v3}, Lcom/google/android/mms/MmsException;-><init>()V

    throw v3
.end method

.method private declared-synchronized incSize(I)V
    .locals 1
    .parameter "mediaSize"

    .prologue
    .line 420
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mSize:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    monitor-exit p0

    return-void

    .line 420
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private makePduBody(Landroid/content/Context;Z)Lcom/google/android/mms/pdu/PduBody;
    .locals 18
    .parameter "context"
    .parameter "isMakingCopy"

    .prologue
    .line 206
    new-instance v10, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v10}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .line 208
    .local v10, pb:Lcom/google/android/mms/pdu/PduBody;
    const/4 v4, 0x0

    .line 209
    .local v4, hasForwardLock:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/msg/body/MixedMessageBody;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/mms/model/MediaModel;

    .line 210
    .local v8, media:Lcom/android/mms/model/MediaModel;
    if-eqz p2, :cond_0

    .line 211
    invoke-virtual {v8}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-virtual {v8}, Lcom/android/mms/model/MediaModel;->isAllowedToForward()Z

    move-result v14

    if-nez v14, :cond_0

    .line 212
    const/4 v4, 0x1

    .line 213
    goto :goto_0

    .line 217
    :cond_0
    new-instance v9, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v9}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 220
    .local v9, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v8}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v14

    if-eqz v14, :cond_1

    move-object v14, v8

    .line 221
    check-cast v14, Lcom/android/mms/model/TextModel;

    invoke-virtual {v14}, Lcom/android/mms/model/TextModel;->getCharset()I

    move-result v14

    invoke-virtual {v9, v14}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    .line 225
    :cond_1
    invoke-virtual {v8}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v9, v14}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 227
    invoke-virtual {v8}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v11

    .line 229
    .local v11, src:Ljava/lang/String;
    const-string v14, "cid:"

    invoke-virtual {v11, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    .line 230
    .local v12, startWithContentId:Z
    if-eqz v12, :cond_3

    .line 231
    const-string v14, "cid:"

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 237
    .local v7, location:Ljava/lang/String;
    :goto_1
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v9, v14}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 240
    if-eqz v12, :cond_4

    .line 242
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v9, v14}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 260
    :goto_2
    invoke-virtual {v8}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 261
    invoke-virtual {v8}, Lcom/android/mms/model/MediaModel;->getDrmObject()Lcom/android/mms/drm/DrmWrapper;

    move-result-object v13

    .line 262
    .local v13, wrapper:Lcom/android/mms/drm/DrmWrapper;
    invoke-virtual {v13}, Lcom/android/mms/drm/DrmWrapper;->getOriginalUri()Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v9, v14}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    .line 263
    invoke-virtual {v13}, Lcom/android/mms/drm/DrmWrapper;->getOriginalData()[B

    move-result-object v14

    invoke-virtual {v9, v14}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 288
    .end local v8           #media:Lcom/android/mms/model/MediaModel;
    .end local v13           #wrapper:Lcom/android/mms/drm/DrmWrapper;
    :cond_2
    :goto_3
    invoke-virtual {v10, v9}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    goto :goto_0

    .line 233
    .end local v7           #location:Ljava/lang/String;
    .restart local v8       #media:Lcom/android/mms/model/MediaModel;
    :cond_3
    move-object v7, v11

    .restart local v7       #location:Ljava/lang/String;
    goto :goto_1

    .line 245
    :cond_4
    const-string v14, "."

    invoke-virtual {v7, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 246
    .local v6, index:I
    const/4 v14, -0x1

    if-ne v6, v14, :cond_5

    move-object v2, v7

    .line 250
    .local v2, contentId:Ljava/lang/String;
    :goto_4
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v9, v14}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 252
    :catch_0
    move-exception v1

    .line 253
    .local v1, c:Ljava/lang/IllegalArgumentException;
    const-string v14, "MixedMessageBody"

    const-string v15, "content id is null or empty"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/4 v9, 0x0

    .line 255
    goto/16 :goto_0

    .line 246
    .end local v1           #c:Ljava/lang/IllegalArgumentException;
    .end local v2           #contentId:Ljava/lang/String;
    :cond_5
    const/4 v14, 0x0

    invoke-virtual {v7, v14, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 264
    .end local v6           #index:I
    :cond_6
    invoke-virtual {v8}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 265
    check-cast v8, Lcom/android/mms/model/TextModel;

    .end local v8           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v8}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v9, v14}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    goto :goto_3

    .line 266
    .restart local v8       #media:Lcom/android/mms/model/MediaModel;
    :cond_7
    invoke-virtual {v8}, Lcom/android/mms/model/MediaModel;->isVCard()Z

    move-result v14

    if-nez v14, :cond_8

    invoke-virtual {v8}, Lcom/android/mms/model/MediaModel;->isVCalendar()Z

    move-result v14

    if-nez v14, :cond_8

    invoke-virtual {v8}, Lcom/android/mms/model/MediaModel;->isLocation()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 268
    :cond_8
    :try_start_1
    invoke-virtual {v8}, Lcom/android/mms/model/MediaModel;->getData()[B

    move-result-object v14

    invoke-virtual {v9, v14}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 270
    invoke-virtual {v8}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v9, v14}, Lcom/google/android/mms/pdu/PduPart;->setExtraUri(Landroid/net/Uri;)V

    .line 271
    invoke-virtual {v8}, Lcom/android/mms/model/MediaModel;->isVCalendar()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 273
    invoke-virtual {v8}, Lcom/android/mms/model/MediaModel;->getVCalBegin()J

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Lcom/google/android/mms/pdu/PduPart;->setVcalStart(J)V

    .line 274
    invoke-virtual {v8}, Lcom/android/mms/model/MediaModel;->getVCalEnd()J

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Lcom/google/android/mms/pdu/PduPart;->setVcalEnd(J)V
    :try_end_1
    .catch Landroid/drm/mobile1/DrmException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 277
    :catch_1
    move-exception v3

    .line 278
    .local v3, e:Landroid/drm/mobile1/DrmException;
    const-string v14, "MixedMessageBody"

    const-string v15, "should not convert drm object"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 280
    .end local v3           #e:Landroid/drm/mobile1/DrmException;
    :cond_9
    invoke-virtual {v8}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v14

    if-nez v14, :cond_a

    invoke-virtual {v8}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v14

    if-nez v14, :cond_a

    invoke-virtual {v8}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 281
    :cond_a
    invoke-virtual {v8}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v9, v14}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    goto/16 :goto_3

    .line 283
    :cond_b
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v14

    float-to-double v14, v14

    const-wide/high16 v16, 0x4000

    cmpl-double v14, v14, v16

    if-ltz v14, :cond_c

    .line 284
    invoke-virtual {v8}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v9, v14}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    .line 285
    :cond_c
    const-string v14, "MixedMessageBody"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unsupport media: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 291
    .end local v7           #location:Ljava/lang/String;
    .end local v8           #media:Lcom/android/mms/model/MediaModel;
    .end local v9           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v11           #src:Ljava/lang/String;
    .end local v12           #startWithContentId:Z
    :cond_d
    if-eqz v4, :cond_e

    if-eqz p2, :cond_e

    if-eqz p1, :cond_e

    .line 292
    const v14, 0x7f09005b

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 296
    :cond_e
    return-object v10
.end method

.method private registerObserversToMedia(Lcom/android/mms/model/MediaModel;)V
    .locals 3
    .parameter "media"

    .prologue
    .line 338
    invoke-virtual {p1, p0}, Lcom/android/mms/model/MediaModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 339
    iget-object v2, p0, Lcom/android/mms/model/Model;->mModelChangedObservers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/IModelChangedObserver;

    .line 340
    .local v1, observer:Lcom/android/mms/model/IModelChangedObserver;
    invoke-virtual {p1, v1}, Lcom/android/mms/model/MediaModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 342
    .end local v1           #observer:Lcom/android/mms/model/IModelChangedObserver;
    :cond_0
    return-void
.end method


# virtual methods
.method public addMedia(Lcom/android/mms/model/MediaModel;)I
    .locals 2
    .parameter "media"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ExceedMessageSizeException;
        }
    .end annotation

    .prologue
    .line 345
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v0

    .line 346
    .local v0, mediaSize:I
    invoke-direct {p0, v0}, Lcom/android/mms/msg/body/MixedMessageBody;->checkMessageSize(I)V

    .line 348
    iget-object v1, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    invoke-direct {p0, v0}, Lcom/android/mms/msg/body/MixedMessageBody;->incSize(I)V

    .line 351
    invoke-direct {p0, p1}, Lcom/android/mms/msg/body/MixedMessageBody;->registerObserversToMedia(Lcom/android/mms/model/MediaModel;)V

    .line 352
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mms/msg/body/MixedMessageBody;->notifyModelChanged(Z)V

    .line 354
    iget-object v1, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public addMedia(ILcom/android/mms/model/MediaModel;)V
    .locals 2
    .parameter "location"
    .parameter "media"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ExceedMessageSizeException;
        }
    .end annotation

    .prologue
    .line 358
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v0

    .line 359
    .local v0, mediaSize:I
    invoke-direct {p0, v0}, Lcom/android/mms/msg/body/MixedMessageBody;->checkMessageSize(I)V

    .line 361
    iget-object v1, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 362
    invoke-direct {p0, v0}, Lcom/android/mms/msg/body/MixedMessageBody;->incSize(I)V

    .line 364
    invoke-direct {p0, p2}, Lcom/android/mms/msg/body/MixedMessageBody;->registerObserversToMedia(Lcom/android/mms/model/MediaModel;)V

    .line 365
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mms/msg/body/MixedMessageBody;->notifyModelChanged(Z)V

    .line 366
    return-void
.end method

.method public containsAudio()Z
    .locals 3

    .prologue
    .line 530
    iget-object v2, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mAudioFlag:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 531
    iget-object v2, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mAudioFlag:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 539
    :goto_0
    return v2

    .line 534
    :cond_0
    iget-object v2, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/MediaModel;

    .line 535
    .local v1, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 536
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mAudioFlag:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    .line 539
    .end local v1           #media:Lcom/android/mms/model/MediaModel;
    :cond_2
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mAudioFlag:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0
.end method

.method public containsImage()Z
    .locals 3

    .prologue
    .line 596
    iget-object v2, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mImageFlag:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 597
    iget-object v2, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mImageFlag:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 605
    :goto_0
    return v2

    .line 600
    :cond_0
    iget-object v2, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/MediaModel;

    .line 601
    .local v1, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 602
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mImageFlag:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    .line 605
    .end local v1           #media:Lcom/android/mms/model/MediaModel;
    :cond_2
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mImageFlag:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0
.end method

.method public containsLocation()Z
    .locals 3

    .prologue
    .line 569
    iget-object v2, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mLocationFlag:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 570
    iget-object v2, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mLocationFlag:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 578
    :goto_0
    return v2

    .line 573
    :cond_0
    iget-object v2, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/MediaModel;

    .line 574
    .local v1, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->isLocation()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 575
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mLocationFlag:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    .line 578
    .end local v1           #media:Lcom/android/mms/model/MediaModel;
    :cond_2
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mLocationFlag:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0
.end method

.method public containsText()Z
    .locals 3

    .prologue
    .line 517
    iget-object v2, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mTextFlag:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 518
    iget-object v2, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mTextFlag:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 526
    :goto_0
    return v2

    .line 521
    :cond_0
    iget-object v2, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/MediaModel;

    .line 522
    .local v1, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 523
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mTextFlag:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    .line 526
    .end local v1           #media:Lcom/android/mms/model/MediaModel;
    :cond_2
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mTextFlag:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0
.end method

.method public containsUnsupportedMedia()Z
    .locals 3

    .prologue
    .line 609
    iget-object v2, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mUnsupportedMediaFlag:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 610
    iget-object v2, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mUnsupportedMediaFlag:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 618
    :goto_0
    return v2

    .line 613
    :cond_0
    iget-object v2, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/MediaModel;

    .line 614
    .local v1, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->isUnsupportedMedia()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 615
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mUnsupportedMediaFlag:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    .line 618
    .end local v1           #media:Lcom/android/mms/model/MediaModel;
    :cond_2
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mUnsupportedMediaFlag:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0
.end method

.method public containsVCalendar()Z
    .locals 3

    .prologue
    .line 582
    iget-object v2, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mVCalendarFlag:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 583
    iget-object v2, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mVCalendarFlag:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 591
    :goto_0
    return v2

    .line 586
    :cond_0
    iget-object v2, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/MediaModel;

    .line 587
    .local v1, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->isVCalendar()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 588
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mVCalendarFlag:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    .line 591
    .end local v1           #media:Lcom/android/mms/model/MediaModel;
    :cond_2
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mVCalendarFlag:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0
.end method

.method public containsVCard()Z
    .locals 3

    .prologue
    .line 556
    iget-object v2, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mVCardFlag:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 557
    iget-object v2, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mVCardFlag:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 565
    :goto_0
    return v2

    .line 560
    :cond_0
    iget-object v2, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/MediaModel;

    .line 561
    .local v1, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->isVCard()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 562
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mVCardFlag:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    .line 565
    .end local v1           #media:Lcom/android/mms/model/MediaModel;
    :cond_2
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mVCardFlag:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0
.end method

.method public containsVideo()Z
    .locals 3

    .prologue
    .line 543
    iget-object v2, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mVideoFlag:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 544
    iget-object v2, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mVideoFlag:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 552
    :goto_0
    return v2

    .line 547
    :cond_0
    iget-object v2, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/MediaModel;

    .line 548
    .local v1, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 549
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mVideoFlag:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    .line 552
    .end local v1           #media:Lcom/android/mms/model/MediaModel;
    :cond_2
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mVideoFlag:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0
.end method

.method public getFirstAudio()Lcom/android/mms/model/AudioModel;
    .locals 3

    .prologue
    .line 499
    iget-object v2, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/MediaModel;

    .line 500
    .local v1, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 501
    check-cast v1, Lcom/android/mms/model/AudioModel;

    .line 504
    .end local v1           #media:Lcom/android/mms/model/MediaModel;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFirstImage()Lcom/android/mms/model/ImageModel;
    .locals 3

    .prologue
    .line 481
    iget-object v2, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/MediaModel;

    .line 482
    .local v1, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 483
    check-cast v1, Lcom/android/mms/model/ImageModel;

    .line 486
    .end local v1           #media:Lcom/android/mms/model/MediaModel;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFirstLocation()Lcom/android/mms/model/LocationModel;
    .locals 3

    .prologue
    .line 509
    iget-object v2, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/MediaModel;

    .line 510
    .local v1, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->isLocation()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 511
    check-cast v1, Lcom/android/mms/model/LocationModel;

    .line 514
    .end local v1           #media:Lcom/android/mms/model/MediaModel;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFirstText()Lcom/android/mms/model/TextModel;
    .locals 3

    .prologue
    .line 450
    iget-object v2, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/MediaModel;

    .line 451
    .local v1, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 452
    check-cast v1, Lcom/android/mms/model/TextModel;

    .line 455
    .end local v1           #media:Lcom/android/mms/model/MediaModel;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFirstVideo()Lcom/android/mms/model/VideoModel;
    .locals 3

    .prologue
    .line 490
    iget-object v2, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/MediaModel;

    .line 491
    .local v1, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 492
    check-cast v1, Lcom/android/mms/model/VideoModel;

    .line 495
    .end local v1           #media:Lcom/android/mms/model/MediaModel;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMediaIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/mms/model/MediaModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getMediaList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/MediaModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mMedia:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMediaNmuber()I
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getMessageSize()I
    .locals 1

    .prologue
    .line 626
    iget v0, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mSize:I

    return v0
.end method

.method public getSecondText()Lcom/android/mms/model/TextModel;
    .locals 4

    .prologue
    .line 459
    const/4 v0, 0x0

    .line 460
    .local v0, count:I
    iget-object v3, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/MediaModel;

    .line 461
    .local v2, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 462
    add-int/lit8 v0, v0, 0x1

    .line 463
    const/4 v3, 0x1

    if-le v0, v3, :cond_0

    .line 464
    check-cast v2, Lcom/android/mms/model/TextModel;

    .line 467
    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 417
    iget v0, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mSize:I

    return v0
.end method

.method public hasOnlyOneMedia()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 655
    iget-object v5, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mHasOnlyOneMedia:Ljava/lang/Boolean;

    if-eqz v5, :cond_0

    .line 656
    iget-object v5, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mHasOnlyOneMedia:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 686
    :goto_0
    return v5

    .line 658
    :cond_0
    const/4 v2, 0x0

    .line 659
    .local v2, imageCount:I
    const/4 v4, 0x0

    .line 660
    .local v4, videoCount:I
    const/4 v0, 0x0

    .line 661
    .local v0, audioCount:I
    iget-object v5, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/MediaModel;

    .line 662
    .local v3, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 663
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 665
    :cond_2
    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 666
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 670
    :cond_3
    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportTextAttachment()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportExpandMixedMMS()Z

    move-result v5

    if-nez v5, :cond_1

    .line 675
    :cond_4
    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportExpandMixedMMS()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 676
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 679
    :cond_5
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mHasOnlyOneMedia:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_0

    .line 683
    .end local v3           #media:Lcom/android/mms/model/MediaModel;
    :cond_6
    add-int v5, v2, v4

    add-int/2addr v5, v0

    if-ne v5, v7, :cond_7

    .line 684
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mHasOnlyOneMedia:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_0

    .line 686
    :cond_7
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mHasOnlyOneMedia:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_0
.end method

.method public isNeedExpandContent(I)Z
    .locals 1
    .parameter "attachmentsCount"

    .prologue
    .line 691
    invoke-virtual {p0}, Lcom/android/mms/msg/body/MixedMessageBody;->hasOnlyOneMedia()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportExpandMixedMMS()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportExpandMixedMMS()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeCopy(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduBody;
    .locals 1
    .parameter "context"

    .prologue
    .line 300
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/mms/msg/body/MixedMessageBody;->makePduBody(Landroid/content/Context;Z)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized onModelChanged(Lcom/android/mms/model/Model;Z)V
    .locals 1
    .parameter "model"
    .parameter "dataChanged"

    .prologue
    .line 327
    monitor-enter p0

    if-eqz p2, :cond_0

    .line 328
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mAudioFlag:Ljava/lang/Boolean;

    .line 329
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mVideoFlag:Ljava/lang/Boolean;

    .line 330
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mVCardFlag:Ljava/lang/Boolean;

    .line 331
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mVCalendarFlag:Ljava/lang/Boolean;

    .line 332
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    .line 333
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mUnsupportedMediaFlag:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    :cond_0
    monitor-exit p0

    return-void

    .line 327
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public popFirstText()Lcom/android/mms/model/TextModel;
    .locals 3

    .prologue
    .line 471
    iget-object v2, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/MediaModel;

    .line 472
    .local v1, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 473
    invoke-virtual {p0, v1}, Lcom/android/mms/msg/body/MixedMessageBody;->removeMedia(Lcom/android/mms/model/MediaModel;)Z

    .line 474
    check-cast v1, Lcom/android/mms/model/TextModel;

    .line 477
    .end local v1           #media:Lcom/android/mms/model/MediaModel;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 633
    iget-object v2, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/MediaModel;

    .line 634
    .local v1, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 635
    check-cast v1, Lcom/android/mms/model/ImageModel;

    .end local v1           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v1}, Lcom/android/mms/model/ImageModel;->recycle()V

    goto :goto_0

    .line 638
    :cond_1
    return-void
.end method

.method protected registerModelChangedObserverInDescendants(Lcom/android/mms/model/IModelChangedObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 306
    iget-object v2, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/MediaModel;

    .line 307
    .local v1, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v1, p1}, Lcom/android/mms/model/MediaModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 309
    .end local v1           #media:Lcom/android/mms/model/MediaModel;
    :cond_0
    return-void
.end method

.method public removeAllMedia()Z
    .locals 4

    .prologue
    .line 371
    const/4 v2, 0x1

    .line 372
    .local v2, value:Z
    iget-object v3, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/MediaModel;

    .line 373
    .local v1, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {p0, v1}, Lcom/android/mms/msg/body/MixedMessageBody;->removeMedia(Lcom/android/mms/model/MediaModel;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 375
    .end local v1           #media:Lcom/android/mms/model/MediaModel;
    :cond_1
    return v2
.end method

.method public removeMedia(I)Lcom/android/mms/model/MediaModel;
    .locals 2
    .parameter "location"

    .prologue
    .line 394
    iget-object v1, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaModel;

    .line 395
    .local v0, media:Lcom/android/mms/model/MediaModel;
    if-eqz v0, :cond_1

    .line 397
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 398
    check-cast v1, Lcom/android/mms/model/ImageModel;

    invoke-virtual {v1}, Lcom/android/mms/model/ImageModel;->recycle()V

    .line 400
    :cond_0
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/mms/msg/body/MixedMessageBody;->decSize(I)V

    .line 401
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->unregisterAllModelChangedObservers()V

    .line 402
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mms/msg/body/MixedMessageBody;->notifyModelChanged(Z)V

    .line 405
    .end local v0           #media:Lcom/android/mms/model/MediaModel;
    :goto_0
    return-object v0

    .restart local v0       #media:Lcom/android/mms/model/MediaModel;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeMedia(Lcom/android/mms/model/MediaModel;)Z
    .locals 2
    .parameter "media"

    .prologue
    const/4 v1, 0x1

    .line 380
    iget-object v0, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 383
    check-cast v0, Lcom/android/mms/model/ImageModel;

    invoke-virtual {v0}, Lcom/android/mms/model/ImageModel;->recycle()V

    .line 385
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/msg/body/MixedMessageBody;->decSize(I)V

    .line 386
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->unregisterAllModelChangedObservers()V

    .line 387
    invoke-virtual {p0, v1}, Lcom/android/mms/msg/body/MixedMessageBody;->notifyModelChanged(Z)V

    move v0, v1

    .line 390
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public replaceMedia(Lcom/android/mms/model/MediaModel;Lcom/android/mms/model/MediaModel;)Z
    .locals 3
    .parameter "oldMedia"
    .parameter "newMedia"

    .prologue
    .line 643
    iget-object v2, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/MediaModel;

    .line 644
    .local v1, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 645
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/mms/model/MediaModel;->setSrc(Ljava/lang/String;)V

    .line 646
    move-object v1, p2

    .line 647
    const/4 v2, 0x1

    .line 650
    .end local v1           #media:Lcom/android/mms/model/MediaModel;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public sync(Lcom/google/android/mms/pdu/PduBody;)V
    .locals 4
    .parameter "pb"

    .prologue
    .line 436
    iget-object v3, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/MediaModel;

    .line 437
    .local v1, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentLocation(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v2

    .line 438
    .local v2, part:Lcom/google/android/mms/pdu/PduPart;
    if-eqz v2, :cond_0

    .line 440
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->isVCard()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->isVCalendar()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 441
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduPart;->getExtraUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/mms/model/MediaModel;->setUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 444
    :cond_2
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/mms/model/MediaModel;->setUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 447
    .end local v1           #media:Lcom/android/mms/model/MediaModel;
    .end local v2           #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_3
    return-void
.end method

.method public toPduBody()Lcom/google/android/mms/pdu/PduBody;
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    if-nez v0, :cond_0

    .line 200
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/mms/msg/body/MixedMessageBody;->makePduBody(Landroid/content/Context;Z)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    return-object v0
.end method

.method protected unregisterAllModelChangedObserversInDescendants()V
    .locals 3

    .prologue
    .line 321
    iget-object v2, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/MediaModel;

    .line 322
    .local v1, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->unregisterAllModelChangedObservers()V

    goto :goto_0

    .line 324
    .end local v1           #media:Lcom/android/mms/model/MediaModel;
    :cond_0
    return-void
.end method

.method protected unregisterModelChangedObserverInDescendants(Lcom/android/mms/model/IModelChangedObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 314
    iget-object v2, p0, Lcom/android/mms/msg/body/MixedMessageBody;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/MediaModel;

    .line 315
    .local v1, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v1, p1}, Lcom/android/mms/model/MediaModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 317
    .end local v1           #media:Lcom/android/mms/model/MediaModel;
    :cond_0
    return-void
.end method
