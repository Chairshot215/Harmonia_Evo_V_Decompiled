.class public Lcom/android/mms/model/MixedMultimediaMessageBody;
.super Lcom/android/mms/model/Model;
.source "MixedMultimediaMessageBody.java"

# interfaces
.implements Lcom/android/mms/model/IModelChangedObserver;


# static fields
.field private static final DEBUG:Z = true

.field private static final LOCAL_LOGV:Z = true

.field private static final TAG:Ljava/lang/String; = "MixedMultimediaMessageBody"


# instance fields
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


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/MixedMultimediaMessageBody;->mMedia:Ljava/util/ArrayList;

    .line 52
    return-void
.end method

.method private constructor <init>(Ljava/util/ArrayList;Lcom/google/android/mms/pdu/PduBody;)V
    .locals 2
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
    .line 54
    .local p1, media:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 55
    if-nez p1, :cond_0

    .line 56
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "media param may not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    iput-object p1, p0, Lcom/android/mms/model/MixedMultimediaMessageBody;->mMedia:Ljava/util/ArrayList;

    .line 60
    iput-object p2, p0, Lcom/android/mms/model/MixedMultimediaMessageBody;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    .line 61
    return-void
.end method

.method public static createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/MixedMultimediaMessageBody;
    .locals 1
    .parameter "context"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-static {p0, p1}, Lcom/android/mms/model/MixedMultimediaMessageBody;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/mms/model/MixedMultimediaMessageBody;->createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/model/MixedMultimediaMessageBody;

    move-result-object v0

    return-object v0
.end method

.method public static createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/model/MixedMultimediaMessageBody;
    .locals 8
    .parameter "context"
    .parameter "pb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v5

    .line 75
    .local v5, partNum:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 76
    .local v4, mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    if-ge v1, v5, :cond_1

    .line 79
    :try_start_0
    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Lcom/android/mms/model/MediaModelFactory;->getMediaModel(Landroid/content/Context;Lcom/google/android/mms/pdu/PduPart;Z)Lcom/android/mms/model/MediaModel;

    move-result-object v3

    .line 81
    .local v3, media:Lcom/android/mms/model/MediaModel;
    if-eqz v3, :cond_0

    .line 82
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/drm/mobile1/DrmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 76
    .end local v3           #media:Lcom/android/mms/model/MediaModel;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, e:Landroid/drm/mobile1/DrmException;
    const-string v6, "MixedMultimediaMessageBody"

    invoke-virtual {v0}, Landroid/drm/mobile1/DrmException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 86
    .end local v0           #e:Landroid/drm/mobile1/DrmException;
    :catch_1
    move-exception v0

    .line 87
    .local v0, e:Ljava/io/IOException;
    const-string v6, "MixedMultimediaMessageBody"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 88
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 89
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v6, "MixedMultimediaMessageBody"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 93
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_1
    new-instance v2, Lcom/android/mms/model/MixedMultimediaMessageBody;

    invoke-direct {v2, v4, p1}, Lcom/android/mms/model/MixedMultimediaMessageBody;-><init>(Ljava/util/ArrayList;Lcom/google/android/mms/pdu/PduBody;)V

    .line 94
    .local v2, mb:Lcom/android/mms/model/MixedMultimediaMessageBody;
    invoke-virtual {v2, v2}, Lcom/android/mms/model/MixedMultimediaMessageBody;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 95
    return-object v2
.end method

.method public static createNew(Landroid/content/Context;)Lcom/android/mms/model/MixedMultimediaMessageBody;
    .locals 1
    .parameter "context"

    .prologue
    .line 64
    new-instance v0, Lcom/android/mms/model/MixedMultimediaMessageBody;

    invoke-direct {v0}, Lcom/android/mms/model/MixedMultimediaMessageBody;-><init>()V

    return-object v0
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
    .line 99
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    .line 100
    .local v1, p:Lcom/google/android/mms/pdu/PduPersister;
    invoke-virtual {v1, p1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v2

    .line 102
    .local v2, pdu:Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v0

    .line 103
    .local v0, msgType:I
    const/16 v3, 0x80

    if-eq v0, v3, :cond_0

    const/16 v3, 0x84

    if-ne v0, v3, :cond_1

    .line 105
    :cond_0
    check-cast v2, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .end local v2           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v3

    return-object v3

    .line 107
    .restart local v2       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :cond_1
    new-instance v3, Lcom/google/android/mms/MmsException;

    invoke-direct {v3}, Lcom/google/android/mms/MmsException;-><init>()V

    throw v3
.end method

.method private makePduBody(Landroid/content/Context;Z)Lcom/google/android/mms/pdu/PduBody;
    .locals 17
    .parameter "context"
    .parameter "isMakingCopy"

    .prologue
    .line 119
    new-instance v9, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v9}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .line 121
    .local v9, pb:Lcom/google/android/mms/pdu/PduBody;
    const/4 v3, 0x0

    .line 122
    .local v3, hasForwardLock:Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/model/MixedMultimediaMessageBody;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/model/MediaModel;

    .line 123
    .local v7, media:Lcom/android/mms/model/MediaModel;
    if-eqz p2, :cond_0

    .line 124
    invoke-virtual {v7}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-virtual {v7}, Lcom/android/mms/model/MediaModel;->isAllowedToForward()Z

    move-result v13

    if-nez v13, :cond_0

    .line 125
    const/4 v3, 0x1

    .line 126
    goto :goto_0

    .line 130
    :cond_0
    new-instance v8, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v8}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 133
    .local v8, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v7}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v13

    if-eqz v13, :cond_1

    move-object v13, v7

    .line 134
    check-cast v13, Lcom/android/mms/model/TextModel;

    invoke-virtual {v13}, Lcom/android/mms/model/TextModel;->getCharset()I

    move-result v13

    invoke-virtual {v8, v13}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    .line 138
    :cond_1
    invoke-virtual {v7}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 140
    invoke-virtual {v7}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v10

    .line 142
    .local v10, src:Ljava/lang/String;
    const-string v13, "cid:"

    invoke-virtual {v10, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    .line 143
    .local v11, startWithContentId:Z
    if-eqz v11, :cond_3

    .line 144
    const-string v13, "cid:"

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v10, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 150
    .local v6, location:Ljava/lang/String;
    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 153
    if-eqz v11, :cond_4

    .line 155
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 164
    :goto_2
    invoke-virtual {v7}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 165
    invoke-virtual {v7}, Lcom/android/mms/model/MediaModel;->getDrmObject()Lcom/android/mms/drm/DrmWrapper;

    move-result-object v12

    .line 166
    .local v12, wrapper:Lcom/android/mms/drm/DrmWrapper;
    invoke-virtual {v12}, Lcom/android/mms/drm/DrmWrapper;->getOriginalUri()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    .line 167
    invoke-virtual {v12}, Lcom/android/mms/drm/DrmWrapper;->getOriginalData()[B

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 191
    .end local v7           #media:Lcom/android/mms/model/MediaModel;
    .end local v12           #wrapper:Lcom/android/mms/drm/DrmWrapper;
    :cond_2
    :goto_3
    invoke-virtual {v9, v8}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    goto :goto_0

    .line 146
    .end local v6           #location:Ljava/lang/String;
    .restart local v7       #media:Lcom/android/mms/model/MediaModel;
    :cond_3
    move-object v6, v10

    .restart local v6       #location:Ljava/lang/String;
    goto :goto_1

    .line 158
    :cond_4
    const-string v13, "."

    invoke-virtual {v6, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 159
    .local v5, index:I
    const/4 v13, -0x1

    if-ne v5, v13, :cond_5

    move-object v1, v6

    .line 161
    .local v1, contentId:Ljava/lang/String;
    :goto_4
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    goto :goto_2

    .line 159
    .end local v1           #contentId:Ljava/lang/String;
    :cond_5
    const/4 v13, 0x0

    invoke-virtual {v6, v13, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 168
    .end local v5           #index:I
    :cond_6
    invoke-virtual {v7}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 169
    check-cast v7, Lcom/android/mms/model/TextModel;

    .end local v7           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v7}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    goto :goto_3

    .line 170
    .restart local v7       #media:Lcom/android/mms/model/MediaModel;
    :cond_7
    invoke-virtual {v7}, Lcom/android/mms/model/MediaModel;->isVCard()Z

    move-result v13

    if-nez v13, :cond_8

    invoke-virtual {v7}, Lcom/android/mms/model/MediaModel;->isVCalendar()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 172
    :cond_8
    :try_start_0
    invoke-virtual {v7}, Lcom/android/mms/model/MediaModel;->getData()[B

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 174
    invoke-virtual {v7}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/google/android/mms/pdu/PduPart;->setExtraUri(Landroid/net/Uri;)V

    .line 175
    invoke-virtual {v7}, Lcom/android/mms/model/MediaModel;->isVCalendar()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 177
    invoke-virtual {v7}, Lcom/android/mms/model/MediaModel;->getVCalBegin()J

    move-result-wide v13

    invoke-virtual {v8, v13, v14}, Lcom/google/android/mms/pdu/PduPart;->setVcalStart(J)V

    .line 178
    invoke-virtual {v7}, Lcom/android/mms/model/MediaModel;->getVCalEnd()J

    move-result-wide v13

    invoke-virtual {v8, v13, v14}, Lcom/google/android/mms/pdu/PduPart;->setVcalEnd(J)V
    :try_end_0
    .catch Landroid/drm/mobile1/DrmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 181
    :catch_0
    move-exception v2

    .line 182
    .local v2, e:Landroid/drm/mobile1/DrmException;
    const-string v13, "MixedMultimediaMessageBody"

    const-string v14, "should not convert drm object"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 185
    .end local v2           #e:Landroid/drm/mobile1/DrmException;
    :cond_9
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v13

    float-to-double v13, v13

    const-wide/high16 v15, 0x4000

    cmpl-double v13, v13, v15

    if-ltz v13, :cond_a

    .line 186
    invoke-virtual {v7}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    goto :goto_3

    .line 188
    :cond_a
    const-string v13, "MixedMultimediaMessageBody"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unsupport media: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 194
    .end local v6           #location:Ljava/lang/String;
    .end local v7           #media:Lcom/android/mms/model/MediaModel;
    .end local v8           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v10           #src:Ljava/lang/String;
    .end local v11           #startWithContentId:Z
    :cond_b
    if-eqz v3, :cond_c

    if-eqz p2, :cond_c

    if-eqz p1, :cond_c

    .line 195
    const v13, 0x7f09005b

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    .line 199
    :cond_c
    return-object v9
.end method


# virtual methods
.method public addMedia(Lcom/android/mms/model/MediaModel;)I
    .locals 1
    .parameter "media"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/mms/model/MixedMultimediaMessageBody;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object v0, p0, Lcom/android/mms/model/MixedMultimediaMessageBody;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public addMedia(ILcom/android/mms/model/MediaModel;)V
    .locals 1
    .parameter "location"
    .parameter "media"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/mms/model/MixedMultimediaMessageBody;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 241
    return-void
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
    .line 252
    iget-object v0, p0, Lcom/android/mms/model/MixedMultimediaMessageBody;->mMedia:Ljava/util/ArrayList;

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
    .line 256
    iget-object v0, p0, Lcom/android/mms/model/MixedMultimediaMessageBody;->mMedia:Ljava/util/ArrayList;

    return-object v0
.end method

.method public makeCopy(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduBody;
    .locals 1
    .parameter "context"

    .prologue
    .line 203
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/mms/model/MixedMultimediaMessageBody;->makePduBody(Landroid/content/Context;Z)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    return-object v0
.end method

.method public onModelChanged(Lcom/android/mms/model/Model;Z)V
    .locals 0
    .parameter "model"
    .parameter "dataChanged"

    .prologue
    .line 232
    return-void
.end method

.method protected registerModelChangedObserverInDescendants(Lcom/android/mms/model/IModelChangedObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 209
    iget-object v2, p0, Lcom/android/mms/model/MixedMultimediaMessageBody;->mMedia:Ljava/util/ArrayList;

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

    .line 210
    .local v1, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v1, p1}, Lcom/android/mms/model/MediaModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 212
    .end local v1           #media:Lcom/android/mms/model/MediaModel;
    :cond_0
    return-void
.end method

.method public removeMedia(I)Lcom/android/mms/model/MediaModel;
    .locals 1
    .parameter "location"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/mms/model/MixedMultimediaMessageBody;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaModel;

    return-object v0
.end method

.method public removeMedia(Lcom/android/mms/model/MediaModel;)Z
    .locals 1
    .parameter "media"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/mms/model/MixedMultimediaMessageBody;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toPduBody()Lcom/google/android/mms/pdu/PduBody;
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/mms/model/MixedMultimediaMessageBody;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    if-nez v0, :cond_0

    .line 113
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/mms/model/MixedMultimediaMessageBody;->makePduBody(Landroid/content/Context;Z)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/MixedMultimediaMessageBody;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/MixedMultimediaMessageBody;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    return-object v0
.end method

.method protected unregisterAllModelChangedObserversInDescendants()V
    .locals 3

    .prologue
    .line 224
    iget-object v2, p0, Lcom/android/mms/model/MixedMultimediaMessageBody;->mMedia:Ljava/util/ArrayList;

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

    .line 225
    .local v1, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->unregisterAllModelChangedObservers()V

    goto :goto_0

    .line 227
    .end local v1           #media:Lcom/android/mms/model/MediaModel;
    :cond_0
    return-void
.end method

.method protected unregisterModelChangedObserverInDescendants(Lcom/android/mms/model/IModelChangedObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 217
    iget-object v2, p0, Lcom/android/mms/model/MixedMultimediaMessageBody;->mMedia:Ljava/util/ArrayList;

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

    .line 218
    .local v1, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v1, p1}, Lcom/android/mms/model/MediaModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 220
    .end local v1           #media:Lcom/android/mms/model/MediaModel;
    :cond_0
    return-void
.end method
