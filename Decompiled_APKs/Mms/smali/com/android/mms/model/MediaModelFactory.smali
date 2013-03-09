.class public Lcom/android/mms/model/MediaModelFactory;
.super Ljava/lang/Object;
.source "MediaModelFactory.java"


# static fields
.field private static final LOCAL_LOGV:Z = true

.field private static final TAG:Ljava/lang/String; = "MediaModelFactory"

.field private static usedPartList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/mms/model/MediaModelFactory;->usedPartList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findPart(Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;
    .locals 3
    .parameter "pb"
    .parameter "src"

    .prologue
    .line 101
    invoke-static {p0, p1}, Lcom/android/mms/model/MediaModelFactory;->findPartBySrc(Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    .line 104
    .local v0, part:Lcom/google/android/mms/pdu/PduPart;
    if-nez v0, :cond_0

    .line 105
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lcom/android/mms/model/MediaModelFactory;->findPartBySubFilename(Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;Z)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    .line 112
    :cond_0
    if-eqz v0, :cond_1

    .line 113
    sget-object v1, Lcom/android/mms/model/MediaModelFactory;->usedPartList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduBody;->getPartIndex(Lcom/google/android/mms/pdu/PduPart;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    return-object v0

    .line 117
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No part found for the model."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static findPartBySrc(Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;
    .locals 5
    .parameter "pb"
    .parameter "src"

    .prologue
    .line 128
    const/4 v1, 0x0

    .line 129
    .local v1, part:Lcom/google/android/mms/pdu/PduPart;
    if-eqz p1, :cond_0

    .line 130
    const-string v3, "cid:"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "cid:"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentId(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 160
    :cond_0
    :goto_0
    return-object v1

    .line 133
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduBody;->getPartByName(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 134
    if-nez v1, :cond_0

    .line 135
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduBody;->getPartByFileName(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 136
    if-nez v1, :cond_0

    .line 137
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentLocation(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 139
    if-nez v1, :cond_0

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentId(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 143
    if-nez v1, :cond_0

    .line 145
    const-string v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 146
    .local v0, dotIndex:I
    if-ltz v0, :cond_2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, subSrc:Ljava/lang/String;
    :goto_1
    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentLocation(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 148
    if-nez v1, :cond_0

    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentId(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    goto :goto_0

    .end local v2           #subSrc:Ljava/lang/String;
    :cond_2
    move-object v2, p1

    .line 146
    goto :goto_1
.end method

.method private static findPartBySubFilename(Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;Z)Lcom/google/android/mms/pdu/PduPart;
    .locals 7
    .parameter "pb"
    .parameter "src"
    .parameter "allowDuplication"

    .prologue
    .line 172
    const-string v5, "."

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 173
    .local v3, pos1:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 175
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v0

    .line 176
    .local v0, cl:[B
    if-nez v0, :cond_1

    .line 173
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 180
    .local v2, partName:Ljava/lang/String;
    const-string v5, "."

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 181
    .local v4, pos2:I
    if-nez p2, :cond_2

    sget-object v5, Lcom/android/mms/model/MediaModelFactory;->usedPartList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_2
    if-lez v3, :cond_0

    if-lez v4, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 183
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v5

    .line 187
    .end local v0           #cl:[B
    .end local v2           #partName:Ljava/lang/String;
    .end local v4           #pos2:I
    :goto_1
    return-object v5

    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private static getGenericMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/google/android/mms/pdu/PduPart;Lcom/android/mms/model/RegionModel;Z)Lcom/android/mms/model/MediaModel;
    .locals 38
    .parameter "context"
    .parameter "tag"
    .parameter "src"
    .parameter "sme"
    .parameter "part"
    .parameter "regionModel"
    .parameter "previewOnly"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile1/DrmException;,
            Ljava/io/IOException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 229
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v25

    .line 230
    .local v25, ctBytes:[B
    if-nez v25, :cond_0

    .line 231
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v8, "Content-Type of the part may not be null."

    invoke-direct {v3, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 235
    :cond_0
    move-object/from16 v5, p2

    .line 236
    .local v5, mediaName:Ljava/lang/String;
    if-nez p2, :cond_4

    .line 238
    new-instance v5, Ljava/lang/String;

    .end local v5           #mediaName:Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Lcom/android/mms/ui/MessageUtils;->getPartFileName(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 248
    .restart local v5       #mediaName:Ljava/lang/String;
    :cond_1
    :goto_0
    new-instance v4, Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    .line 249
    .local v4, contentType:Ljava/lang/String;
    const-string v3, "MediaModelFactory"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "---------------contentType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const/4 v2, 0x0

    .line 252
    .local v2, media:Lcom/android/mms/model/MediaModel;
    invoke-static {v4}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 253
    new-instance v7, Lcom/android/mms/drm/DrmWrapper;

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v8

    invoke-direct {v7, v4, v3, v8}, Lcom/android/mms/drm/DrmWrapper;-><init>(Ljava/lang/String;Landroid/net/Uri;[B)V

    .line 254
    .local v7, wrapper:Lcom/android/mms/drm/DrmWrapper;
    invoke-virtual {v7}, Lcom/android/mms/drm/DrmWrapper;->getContentType()Ljava/lang/String;

    move-result-object v27

    .line 256
    .local v27, decryptedContentType:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/android/mms/drm/DrmWrapper;->isSDContent()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 259
    const-string v3, "MediaModelFactory"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupport DRM SD"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    .end local v7           #wrapper:Lcom/android/mms/drm/DrmWrapper;
    .end local v27           #decryptedContentType:Ljava/lang/String;
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 373
    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/android/mms/model/MediaModel;->setPduPart(Lcom/google/android/mms/pdu/PduPart;)V

    .line 376
    :cond_3
    if-nez p3, :cond_1d

    move-object/from16 v29, v2

    .line 430
    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    .local v29, media:Lcom/android/mms/model/MediaModel;
    :goto_2
    return-object v29

    .line 242
    .end local v4           #contentType:Ljava/lang/String;
    .end local v29           #media:Lcom/android/mms/model/MediaModel;
    :cond_4
    invoke-static/range {p4 .. p4}, Lcom/android/mms/ui/MessageUtils;->getEncodePartFileName(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;

    move-result-object v26

    .line 244
    .local v26, decodeName:Ljava/lang/String;
    if-eqz v26, :cond_1

    .line 245
    move-object/from16 v5, v26

    goto :goto_0

    .line 262
    .end local v26           #decodeName:Ljava/lang/String;
    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    .restart local v4       #contentType:Ljava/lang/String;
    .restart local v7       #wrapper:Lcom/android/mms/drm/DrmWrapper;
    .restart local v27       #decryptedContentType:Ljava/lang/String;
    :cond_5
    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/ContentType;->isTextType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 263
    const-string v3, "text/x-vCard"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 264
    new-instance v2, Lcom/android/mms/model/VCardModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    move-object/from16 v0, p0

    invoke-direct {v2, v0, v4, v5, v7}, Lcom/android/mms/model/VCardModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;)V

    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    goto :goto_1

    .line 265
    :cond_6
    const-string v3, "text/x-vCalendar"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 266
    new-instance v2, Lcom/android/mms/model/VCalendarModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    move-object/from16 v0, p0

    invoke-direct {v2, v0, v4, v5, v7}, Lcom/android/mms/model/VCalendarModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;)V

    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    goto :goto_1

    .line 269
    :cond_7
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v6

    .line 270
    .local v6, charset:I
    if-nez v6, :cond_8

    .line 271
    const/16 v6, 0x6a

    .line 272
    :cond_8
    new-instance v2, Lcom/android/mms/model/TextModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    move-object/from16 v3, p0

    move-object/from16 v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;)V

    .line 275
    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    goto :goto_1

    .line 276
    .end local v6           #charset:I
    :cond_9
    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 278
    new-instance v2, Lcom/android/mms/model/ImageModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    move-object v8, v2

    move-object/from16 v9, p0

    move-object v10, v4

    move-object v11, v5

    move-object v12, v7

    move-object/from16 v13, p5

    move/from16 v14, p6

    invoke-direct/range {v8 .. v14}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;Z)V

    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    goto :goto_1

    .line 280
    :cond_a
    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 281
    new-instance v2, Lcom/android/mms/model/VideoModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    move-object v8, v2

    move-object/from16 v9, p0

    move-object v10, v4

    move-object v11, v5

    move-object v12, v7

    move-object/from16 v13, p5

    invoke-direct/range {v8 .. v13}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;)V

    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    goto :goto_1

    .line 282
    :cond_b
    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 283
    new-instance v2, Lcom/android/mms/model/AudioModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    move-object/from16 v0, p0

    invoke-direct {v2, v0, v4, v5, v7}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;)V

    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_1

    .line 286
    :cond_c
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v3

    float-to-double v8, v3

    const-wide/high16 v10, 0x4000

    cmpl-double v3, v8, v10

    if-ltz v3, :cond_2

    .line 287
    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/ContentType;->isSupportedType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "text/html"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 288
    :cond_d
    new-instance v2, Lcom/android/mms/model/UnsupportedMediaModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    move-object/from16 v0, p0

    invoke-direct {v2, v0, v4, v5, v7}, Lcom/android/mms/model/UnsupportedMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;)V

    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_1

    .line 292
    .end local v7           #wrapper:Lcom/android/mms/drm/DrmWrapper;
    .end local v27           #decryptedContentType:Ljava/lang/String;
    :cond_e
    const-string v31, ""

    .line 293
    .local v31, mimeType:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->getContentTypeByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 308
    invoke-static {v4}, Lcom/google/android/mms/ContentType;->isSupportedType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 311
    invoke-static/range {v31 .. v31}, Lcom/google/android/mms/ContentType;->isSupportedType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 312
    move-object/from16 v4, v31

    .line 324
    :cond_f
    invoke-static {v4}, Lcom/google/android/mms/ContentType;->isTextType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 325
    const-string v3, "text/x-vCard"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 326
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportLocationMessage()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 327
    new-instance v37, Lcom/android/mms/location/VCardPlace;

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v3

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lcom/android/mms/location/VCardPlace;-><init>(Landroid/content/Context;[B)V

    .line 329
    .local v37, vp:Lcom/android/mms/location/VCardPlace;
    invoke-virtual/range {v37 .. v37}, Lcom/android/mms/location/VCardPlace;->getPlace()Lcom/android/mms/location/Place;

    move-result-object v13

    .line 330
    .local v13, p:Lcom/android/mms/location/Place;
    if-eqz v13, :cond_10

    invoke-virtual {v13}, Lcom/android/mms/location/Place;->getMapName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_14

    .line 331
    :cond_10
    new-instance v2, Lcom/android/mms/model/VCardModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v12

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getExtraUri()Landroid/net/Uri;

    move-result-object v13

    .end local v13           #p:Lcom/android/mms/location/Place;
    move-object v8, v2

    move-object/from16 v9, p0

    move-object v10, v4

    move-object v11, v5

    invoke-direct/range {v8 .. v13}, Lcom/android/mms/model/VCardModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLandroid/net/Uri;)V

    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_1

    .line 315
    .end local v37           #vp:Lcom/android/mms/location/VCardPlace;
    :cond_11
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v3

    float-to-double v8, v3

    const-wide/high16 v10, 0x4000

    cmpl-double v3, v8, v10

    if-ltz v3, :cond_13

    .line 316
    invoke-static {v4}, Lcom/google/android/mms/ContentType;->isSupportedType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    const-string v3, "text/html"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 317
    :cond_12
    new-instance v2, Lcom/android/mms/model/UnsupportedMediaModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v4, v5, v3}, Lcom/android/mms/model/UnsupportedMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    :cond_13
    move-object/from16 v29, v2

    .line 319
    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    .restart local v29       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_2

    .line 334
    .end local v29           #media:Lcom/android/mms/model/MediaModel;
    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    .restart local v13       #p:Lcom/android/mms/location/Place;
    .restart local v37       #vp:Lcom/android/mms/location/VCardPlace;
    :cond_14
    const/4 v3, 0x0

    invoke-static {v13, v3}, Lcom/android/mms/location/VCardPlace;->getVcardStringFromPlace(Lcom/android/mms/location/Place;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 335
    .local v36, vcardString:Ljava/lang/String;
    new-instance v2, Lcom/android/mms/model/LocationModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getExtraUri()Landroid/net/Uri;

    move-result-object v12

    const/4 v14, 0x0

    move-object v8, v2

    move-object/from16 v9, p0

    move-object v10, v4

    invoke-direct/range {v8 .. v14}, Lcom/android/mms/model/LocationModel;-><init>(Landroid/content/Context;Ljava/lang/String;[BLandroid/net/Uri;Lcom/android/mms/location/Place;Ljava/lang/String;)V

    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_1

    .line 338
    .end local v13           #p:Lcom/android/mms/location/Place;
    .end local v36           #vcardString:Ljava/lang/String;
    .end local v37           #vp:Lcom/android/mms/location/VCardPlace;
    :cond_15
    new-instance v2, Lcom/android/mms/model/VCardModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v18

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getExtraUri()Landroid/net/Uri;

    move-result-object v19

    move-object v14, v2

    move-object/from16 v15, p0

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    invoke-direct/range {v14 .. v19}, Lcom/android/mms/model/VCardModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLandroid/net/Uri;)V

    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_1

    .line 340
    :cond_16
    const-string v3, "text/x-vCalendar"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 343
    new-instance v2, Lcom/android/mms/model/VCalendarModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v18

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getExtraUri()Landroid/net/Uri;

    move-result-object v19

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getVcalStart()J

    move-result-wide v20

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getVcalEnd()J

    move-result-wide v22

    move-object v14, v2

    move-object/from16 v15, p0

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    invoke-direct/range {v14 .. v23}, Lcom/android/mms/model/VCalendarModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLandroid/net/Uri;JJ)V

    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_1

    .line 345
    :cond_17
    const-string v3, "text/plain"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    const-string v3, "text/html"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 348
    :cond_18
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v6

    .line 349
    .restart local v6       #charset:I
    if-nez v6, :cond_19

    .line 350
    const/16 v6, 0x6a

    .line 351
    :cond_19
    new-instance v2, Lcom/android/mms/model/TextModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v19

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v21

    move-object v14, v2

    move-object/from16 v15, p0

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move/from16 v18, v6

    move-object/from16 v20, p5

    invoke-direct/range {v14 .. v21}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[BLcom/android/mms/model/RegionModel;Landroid/net/Uri;)V

    .line 354
    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_1

    .line 355
    .end local v6           #charset:I
    :cond_1a
    invoke-static {v4}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 356
    new-instance v2, Lcom/android/mms/model/ImageModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v18

    move-object v14, v2

    move-object/from16 v15, p0

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v19, p5

    move/from16 v20, p6

    invoke-direct/range {v14 .. v20}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;Z)V

    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_1

    .line 358
    :cond_1b
    invoke-static {v4}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 359
    new-instance v2, Lcom/android/mms/model/VideoModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v18

    move-object v14, v2

    move-object/from16 v15, p0

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v19, p5

    invoke-direct/range {v14 .. v19}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_1

    .line 361
    :cond_1c
    invoke-static {v4}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 362
    new-instance v2, Lcom/android/mms/model/AudioModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v4, v5, v3}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_1

    .line 381
    .end local v31           #mimeType:Ljava/lang/String;
    :cond_1d
    if-nez v2, :cond_1e

    move-object/from16 v29, v2

    .line 382
    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    .restart local v29       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_2

    .line 387
    .end local v29           #media:Lcom/android/mms/model/MediaModel;
    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    :cond_1e
    const/16 v24, 0x0

    .line 388
    .local v24, begin:I
    invoke-interface/range {p3 .. p3}, Lorg/w3c/dom/smil/SMILMediaElement;->getBegin()Lorg/w3c/dom/smil/TimeList;

    move-result-object v35

    .line 389
    .local v35, tl:Lorg/w3c/dom/smil/TimeList;
    if-eqz v35, :cond_1f

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result v3

    if-lez v3, :cond_1f

    .line 391
    const/4 v3, 0x0

    move-object/from16 v0, v35

    invoke-interface {v0, v3}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v34

    .line 392
    .local v34, t:Lorg/w3c/dom/smil/Time;
    invoke-interface/range {v34 .. v34}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v8

    const-wide v10, 0x408f400000000000L

    mul-double/2addr v8, v10

    double-to-int v0, v8

    move/from16 v24, v0

    .line 394
    .end local v34           #t:Lorg/w3c/dom/smil/Time;
    :cond_1f
    move/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/android/mms/model/MediaModel;->setBegin(I)V

    .line 397
    invoke-interface/range {p3 .. p3}, Lorg/w3c/dom/smil/SMILMediaElement;->getDur()F

    move-result v3

    const/high16 v8, 0x447a

    mul-float/2addr v3, v8

    float-to-int v0, v3

    move/from16 v28, v0

    .line 398
    .local v28, duration:I
    if-gtz v28, :cond_20

    .line 399
    invoke-interface/range {p3 .. p3}, Lorg/w3c/dom/smil/SMILMediaElement;->getEnd()Lorg/w3c/dom/smil/TimeList;

    move-result-object v35

    .line 400
    if-eqz v35, :cond_20

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result v3

    if-lez v3, :cond_20

    .line 402
    const/4 v3, 0x0

    move-object/from16 v0, v35

    invoke-interface {v0, v3}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v34

    .line 403
    .restart local v34       #t:Lorg/w3c/dom/smil/Time;
    invoke-interface/range {v34 .. v34}, Lorg/w3c/dom/smil/Time;->getTimeType()S

    move-result v3

    if-eqz v3, :cond_20

    .line 404
    invoke-interface/range {v34 .. v34}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v8

    const-wide v10, 0x408f400000000000L

    mul-double/2addr v8, v10

    double-to-int v3, v8

    sub-int v28, v3, v24

    .line 408
    .end local v34           #t:Lorg/w3c/dom/smil/Time;
    :cond_20
    move/from16 v0, v28

    invoke-virtual {v2, v0}, Lcom/android/mms/model/MediaModel;->setDuration(I)V

    .line 413
    invoke-interface/range {p3 .. p3}, Lorg/w3c/dom/smil/SMILMediaElement;->getEnd()Lorg/w3c/dom/smil/TimeList;

    move-result-object v35

    .line 414
    if-eqz v35, :cond_21

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result v3

    if-gtz v3, :cond_22

    .line 415
    :cond_21
    invoke-interface/range {p3 .. p3}, Lorg/w3c/dom/smil/SMILMediaElement;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v32

    .line 416
    .local v32, n:Lorg/w3c/dom/Node;
    if-eqz v32, :cond_22

    move-object/from16 v0, v32

    instance-of v3, v0, Lcom/android/mms/dom/smil/SmilParElementImpl;

    if-eqz v3, :cond_22

    .line 417
    check-cast v32, Lcom/android/mms/dom/smil/SmilParElementImpl;

    .end local v32           #n:Lorg/w3c/dom/Node;
    invoke-virtual/range {v32 .. v32}, Lcom/android/mms/dom/smil/SmilParElementImpl;->getDur()F

    move-result v3

    float-to-int v3, v3

    mul-int/lit16 v0, v3, 0x3e8

    move/from16 v33, v0

    .line 418
    .local v33, parDur:I
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getDuration()I

    move-result v30

    .line 419
    .local v30, mediaDuration:I
    if-eqz v30, :cond_22

    move/from16 v0, v30

    move/from16 v1, v33

    if-ge v0, v1, :cond_22

    .line 420
    move/from16 v0, v33

    invoke-virtual {v2, v0}, Lcom/android/mms/model/MediaModel;->setDuration(I)V

    .line 429
    .end local v30           #mediaDuration:I
    .end local v33           #parDur:I
    :cond_22
    invoke-interface/range {p3 .. p3}, Lorg/w3c/dom/smil/SMILMediaElement;->getFill()S

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/mms/model/MediaModel;->setFill(S)V

    move-object/from16 v29, v2

    .line 430
    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    .restart local v29       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_2
.end method

.method public static getMediaModel(Landroid/content/Context;Lcom/google/android/mms/pdu/PduPart;Z)Lcom/android/mms/model/MediaModel;
    .locals 7
    .parameter "context"
    .parameter "part"
    .parameter "previewOnly"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile1/DrmException;,
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 62
    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, p1

    move-object v5, v1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/android/mms/model/MediaModelFactory;->getGenericMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/google/android/mms/pdu/PduPart;Lcom/android/mms/model/RegionModel;Z)Lcom/android/mms/model/MediaModel;

    move-result-object v0

    return-object v0
.end method

.method public static getMediaModel(Landroid/content/Context;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduBody;Z)Lcom/android/mms/model/MediaModel;
    .locals 14
    .parameter "context"
    .parameter "sme"
    .parameter "layouts"
    .parameter "pb"
    .parameter "previewOnly"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile1/DrmException;,
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-interface {p1}, Lorg/w3c/dom/smil/SMILMediaElement;->getTagName()Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, tag:Ljava/lang/String;
    invoke-interface {p1}, Lorg/w3c/dom/smil/SMILMediaElement;->getSrc()Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, src:Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-static {v0, v3}, Lcom/android/mms/model/MediaModelFactory;->findPart(Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v6

    .line 73
    .local v6, part:Lcom/google/android/mms/pdu/PduPart;
    instance-of v1, p1, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    if-eqz v1, :cond_0

    move-object v4, p1

    .line 75
    check-cast v4, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    move-object v1, p0

    move-object/from16 v5, p2

    move/from16 v7, p4

    invoke-static/range {v1 .. v7}, Lcom/android/mms/model/MediaModelFactory;->getRegionMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILRegionMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduPart;Z)Lcom/android/mms/model/MediaModel;

    move-result-object v1

    .line 80
    :goto_0
    return-object v1

    :cond_0
    const/4 v12, 0x0

    move-object v7, p0

    move-object v8, v2

    move-object v9, v3

    move-object v10, p1

    move-object v11, v6

    move/from16 v13, p4

    invoke-static/range {v7 .. v13}, Lcom/android/mms/model/MediaModelFactory;->getGenericMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/google/android/mms/pdu/PduPart;Lcom/android/mms/model/RegionModel;Z)Lcom/android/mms/model/MediaModel;

    move-result-object v1

    goto :goto_0
.end method

.method private static getRegionMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILRegionMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduPart;Z)Lcom/android/mms/model/MediaModel;
    .locals 9
    .parameter "context"
    .parameter "tag"
    .parameter "src"
    .parameter "srme"
    .parameter "layouts"
    .parameter "part"
    .parameter "previewOnly"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile1/DrmException;,
            Ljava/io/IOException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 198
    invoke-interface {p3}, Lorg/w3c/dom/smil/SMILRegionMediaElement;->getRegion()Lorg/w3c/dom/smil/SMILRegionElement;

    move-result-object v8

    .line 199
    .local v8, sre:Lorg/w3c/dom/smil/SMILRegionElement;
    if-eqz v8, :cond_0

    .line 200
    invoke-interface {v8}, Lorg/w3c/dom/smil/SMILRegionElement;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/android/mms/model/LayoutModel;->findRegionById(Ljava/lang/String;)Lcom/android/mms/model/RegionModel;

    move-result-object v5

    .line 201
    .local v5, region:Lcom/android/mms/model/RegionModel;
    if-eqz v5, :cond_2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move v6, p6

    .line 203
    invoke-static/range {v0 .. v6}, Lcom/android/mms/model/MediaModelFactory;->getGenericMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/google/android/mms/pdu/PduPart;Lcom/android/mms/model/RegionModel;Z)Lcom/android/mms/model/MediaModel;

    move-result-object v0

    .line 218
    :goto_0
    return-object v0

    .line 207
    .end local v5           #region:Lcom/android/mms/model/RegionModel;
    :cond_0
    const/4 v7, 0x0

    .line 209
    .local v7, rId:Ljava/lang/String;
    const-string v0, "text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    const-string v7, "Text"

    .line 215
    :goto_1
    invoke-virtual {p4, v7}, Lcom/android/mms/model/LayoutModel;->findRegionById(Ljava/lang/String;)Lcom/android/mms/model/RegionModel;

    move-result-object v5

    .line 216
    .restart local v5       #region:Lcom/android/mms/model/RegionModel;
    if-eqz v5, :cond_2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move v6, p6

    .line 218
    invoke-static/range {v0 .. v6}, Lcom/android/mms/model/MediaModelFactory;->getGenericMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/google/android/mms/pdu/PduPart;Lcom/android/mms/model/RegionModel;Z)Lcom/android/mms/model/MediaModel;

    move-result-object v0

    goto :goto_0

    .line 212
    .end local v5           #region:Lcom/android/mms/model/RegionModel;
    :cond_1
    const-string v7, "Image"

    goto :goto_1

    .line 223
    .end local v7           #rId:Ljava/lang/String;
    .restart local v5       #region:Lcom/android/mms/model/RegionModel;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Region not found or bad region ID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static markValidPart(Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)V
    .locals 3
    .parameter "pb"
    .parameter "src"

    .prologue
    .line 92
    invoke-static {p0, p1}, Lcom/android/mms/model/MediaModelFactory;->findPartBySrc(Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    .line 94
    .local v0, part:Lcom/google/android/mms/pdu/PduPart;
    if-eqz v0, :cond_0

    .line 95
    sget-object v1, Lcom/android/mms/model/MediaModelFactory;->usedPartList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduBody;->getPartIndex(Lcom/google/android/mms/pdu/PduPart;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_0
    return-void
.end method

.method public static resetUsedPartList()V
    .locals 1

    .prologue
    .line 191
    sget-object v0, Lcom/android/mms/model/MediaModelFactory;->usedPartList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 192
    return-void
.end method
