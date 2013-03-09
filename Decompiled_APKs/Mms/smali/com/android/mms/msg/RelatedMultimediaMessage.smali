.class public Lcom/android/mms/msg/RelatedMultimediaMessage;
.super Lcom/android/mms/msg/MultimediaMessage;
.source "RelatedMultimediaMessage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RelatedMultimediaMessage"


# instance fields
.field private mAttachmentsNumber:I

.field private mCalendarSize:I

.field private mHasOtherAttachment:Ljava/lang/Boolean;

.field private mSize:I

.field mSlideshow:Lcom/android/mms/model/SlideshowModel;

.field private mVCalendar:Lcom/google/android/mms/pdu/PduPart;

.field mVCalendarIndex:I

.field private mVcard:Lcom/google/android/mms/pdu/PduPart;

.field private mVcardSize:I

.field mVcardindex:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/mms/msg/util/MessageDataAdapter;I)V
    .locals 6
    .parameter "context"
    .parameter "adapter"
    .parameter "threadType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v5, 0x0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/msg/MultimediaMessage;-><init>(Landroid/content/Context;Lcom/android/mms/msg/util/MessageDataAdapter;I)V

    .line 55
    iput v3, p0, Lcom/android/mms/msg/RelatedMultimediaMessage;->mVcardindex:I

    .line 56
    iput v3, p0, Lcom/android/mms/msg/RelatedMultimediaMessage;->mVCalendarIndex:I

    .line 60
    iput v5, p0, Lcom/android/mms/msg/RelatedMultimediaMessage;->mSize:I

    .line 61
    iput v5, p0, Lcom/android/mms/msg/RelatedMultimediaMessage;->mAttachmentsNumber:I

    .line 65
    iput-object v4, p0, Lcom/android/mms/msg/RelatedMultimediaMessage;->mVcard:Lcom/google/android/mms/pdu/PduPart;

    .line 66
    iput v5, p0, Lcom/android/mms/msg/RelatedMultimediaMessage;->mVcardSize:I

    .line 67
    iput-object v4, p0, Lcom/android/mms/msg/RelatedMultimediaMessage;->mVCalendar:Lcom/google/android/mms/pdu/PduPart;

    .line 68
    iput v5, p0, Lcom/android/mms/msg/RelatedMultimediaMessage;->mCalendarSize:I

    .line 74
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/mms/msg/RelatedMultimediaMessage;->loadMultimediaMessage(Landroid/content/Context;)Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    move-result-object v0

    .line 76
    .local v0, msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/model/SlideshowModel;->createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/msg/RelatedMultimediaMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 77
    iget-object v3, p0, Lcom/android/mms/msg/RelatedMultimediaMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3, v5}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 78
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v2

    .line 80
    .local v2, tm:Lcom/android/mms/model/TextModel;
    invoke-virtual {v2}, Lcom/android/mms/model/TextModel;->isDrmProtected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 81
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090033

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/msg/AbstractMessage;->mBody:Ljava/lang/String;

    .line 87
    .end local v2           #tm:Lcom/android/mms/model/TextModel;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThreadDetailViewEnhance()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 88
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/mms/msg/RelatedMultimediaMessage;->getOtherAttachment(Lcom/google/android/mms/pdu/PduBody;)V

    .line 90
    :cond_1
    iget-object v3, p0, Lcom/android/mms/msg/RelatedMultimediaMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v3

    iput v3, p0, Lcom/android/mms/msg/AbstractMessage;->mMessageSize:I

    .line 91
    return-void

    .line 83
    .restart local v2       #tm:Lcom/android/mms/model/TextModel;
    :cond_2
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/msg/AbstractMessage;->mBody:Ljava/lang/String;

    goto :goto_0
.end method

.method private getMediaSize(Landroid/net/Uri;)I
    .locals 9
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 404
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 405
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v5, 0x0

    .line 406
    .local v5, size:I
    const/4 v4, 0x0

    .line 408
    .local v4, input:Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 411
    .local v3, f:Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 412
    instance-of v6, v4, Ljava/io/FileInputStream;

    if-eqz v6, :cond_3

    .line 415
    move-object v0, v4

    check-cast v0, Ljava/io/FileInputStream;

    move-object v3, v0

    .line 417
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->size()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-wide v6

    long-to-int v5, v6

    .line 439
    :cond_0
    if-eqz v4, :cond_2

    .line 442
    if-eqz v3, :cond_1

    .line 443
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 445
    :cond_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 453
    :cond_2
    :goto_0
    return v5

    .line 419
    :cond_3
    :goto_1
    const/4 v6, -0x1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3

    move-result v7

    if-eq v6, v7, :cond_0

    .line 420
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 446
    :catch_0
    move-exception v2

    .line 448
    .local v2, e:Ljava/io/IOException;
    const-string v6, "RelatedMultimediaMessage"

    const-string v7, "IOException caught while closing stream"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 424
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 426
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_3
    const-string v6, "RelatedMultimediaMessage"

    const-string v7, "IOException caught while opening or reading stream"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 427
    instance-of v6, v2, Ljava/io/FileNotFoundException;

    if-eqz v6, :cond_6

    .line 428
    new-instance v6, Lcom/google/android/mms/MmsException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 439
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    if-eqz v4, :cond_5

    .line 442
    if-eqz v3, :cond_4

    .line 443
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 445
    :cond_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 449
    :cond_5
    :goto_2
    throw v6

    .line 439
    .restart local v2       #e:Ljava/io/IOException;
    :cond_6
    if-eqz v4, :cond_2

    .line 442
    if-eqz v3, :cond_7

    .line 443
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 445
    :cond_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 446
    :catch_2
    move-exception v2

    .line 448
    const-string v6, "RelatedMultimediaMessage"

    const-string v7, "IOException caught while closing stream"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 432
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 433
    .local v2, e:Ljava/lang/NullPointerException;
    :try_start_6
    const-string v6, "RelatedMultimediaMessage"

    const-string v7, "NullPointerException caught while opening or reading stream"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 434
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 435
    new-instance v6, Lcom/google/android/mms/MmsException;

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 446
    .end local v2           #e:Ljava/lang/NullPointerException;
    :catch_4
    move-exception v2

    .line 448
    .local v2, e:Ljava/io/IOException;
    const-string v7, "RelatedMultimediaMessage"

    const-string v8, "IOException caught while closing stream"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private getOtherAttachment(Lcom/google/android/mms/pdu/PduBody;)V
    .locals 20
    .parameter "pdu"

    .prologue
    .line 321
    if-nez p1, :cond_0

    .line 401
    :goto_0
    return-void

    .line 324
    :cond_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 326
    .local v8, mMediaModelList:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Lcom/android/mms/model/MediaModel;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/msg/RelatedMultimediaMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v15

    .line 327
    .local v15, slidesNum:I
    const/4 v2, 0x0

    .line 328
    .local v2, TextCount:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v15, :cond_5

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/msg/RelatedMultimediaMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v14

    .line 330
    .local v14, slide:Lcom/android/mms/model/SlideModel;
    const/4 v7, 0x0

    .local v7, k:I
    :goto_2
    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_4

    .line 331
    invoke-virtual {v14, v7}, Lcom/android/mms/model/SlideModel;->get(I)Lcom/android/mms/model/MediaModel;

    move-result-object v10

    .line 332
    .local v10, model:Lcom/android/mms/model/MediaModel;
    const/16 v17, 0x0

    .line 333
    .local v17, uri:Landroid/net/Uri;
    invoke-virtual {v10}, Lcom/android/mms/model/MediaModel;->getPduPart()Lcom/google/android/mms/pdu/PduPart;

    move-result-object v18

    if-eqz v18, :cond_1

    .line 334
    invoke-virtual {v10}, Lcom/android/mms/model/MediaModel;->getPduPart()Lcom/google/android/mms/pdu/PduPart;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v17

    .line 336
    :cond_1
    if-eqz v17, :cond_2

    .line 337
    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    :cond_2
    invoke-virtual {v10}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 340
    add-int/lit8 v2, v2, 0x1

    .line 330
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 328
    .end local v10           #model:Lcom/android/mms/model/MediaModel;
    .end local v17           #uri:Landroid/net/Uri;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 345
    .end local v7           #k:I
    .end local v14           #slide:Lcom/android/mms/model/SlideModel;
    :cond_5
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/msg/RelatedMultimediaMessage;->mHasOtherAttachment:Ljava/lang/Boolean;

    .line 346
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v12

    .line 347
    .local v12, partSize:I
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v12, :cond_f

    .line 348
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v11

    .line 349
    .local v11, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v3

    .line 350
    .local v3, ctBytes:[B
    if-nez v3, :cond_6

    .line 351
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string v19, "Content-Type of the part may not be null."

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 354
    :cond_6
    new-instance v16, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 355
    .local v16, type:Ljava/lang/String;
    const-string v18, "application/smil"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_9

    .line 357
    const-string v18, "text/x-vCard"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 358
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/mms/msg/RelatedMultimediaMessage;->mVcard:Lcom/google/android/mms/pdu/PduPart;

    .line 363
    :cond_7
    :goto_4
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v17

    .line 364
    .restart local v17       #uri:Landroid/net/Uri;
    const/4 v9, 0x0

    .line 365
    .local v9, media:Lcom/android/mms/model/MediaModel;
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    .line 366
    .local v6, isExist:Z
    if-nez v6, :cond_b

    .line 367
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/msg/RelatedMultimediaMessage;->mHasOtherAttachment:Ljava/lang/Boolean;

    .line 372
    :goto_5
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v18

    if-eqz v18, :cond_c

    .line 373
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/msg/RelatedMultimediaMessage;->mSize:I

    move/from16 v18, v0

    invoke-virtual {v11}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/msg/RelatedMultimediaMessage;->mSize:I

    .line 395
    :cond_8
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/msg/RelatedMultimediaMessage;->mAttachmentsNumber:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/msg/RelatedMultimediaMessage;->mAttachmentsNumber:I

    .line 347
    .end local v6           #isExist:Z
    .end local v9           #media:Lcom/android/mms/model/MediaModel;
    .end local v17           #uri:Landroid/net/Uri;
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 359
    :cond_a
    const-string v18, "text/x-vCalendar"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 360
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/mms/msg/RelatedMultimediaMessage;->mVCalendar:Lcom/google/android/mms/pdu/PduPart;

    goto :goto_4

    .line 370
    .restart local v6       #isExist:Z
    .restart local v9       #media:Lcom/android/mms/model/MediaModel;
    .restart local v17       #uri:Landroid/net/Uri;
    :cond_b
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #media:Lcom/android/mms/model/MediaModel;
    check-cast v9, Lcom/android/mms/model/MediaModel;

    .restart local v9       #media:Lcom/android/mms/model/MediaModel;
    goto :goto_5

    .line 376
    :cond_c
    const/4 v13, 0x0

    .line 377
    .local v13, sizeMedia:I
    if-eqz v9, :cond_e

    .line 378
    :try_start_0
    invoke-virtual {v9}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v13

    .line 379
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/msg/RelatedMultimediaMessage;->mSize:I

    move/from16 v18, v0

    add-int v18, v18, v13

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/msg/RelatedMultimediaMessage;->mSize:I

    .line 385
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/msg/RelatedMultimediaMessage;->mVcard:Lcom/google/android/mms/pdu/PduPart;

    move-object/from16 v18, v0

    if-eqz v18, :cond_d

    .line 386
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/mms/msg/RelatedMultimediaMessage;->mVcardSize:I

    .line 387
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/msg/RelatedMultimediaMessage;->mVCalendar:Lcom/google/android/mms/pdu/PduPart;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    .line 388
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/mms/msg/RelatedMultimediaMessage;->mCalendarSize:I
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 389
    :catch_0
    move-exception v4

    .line 391
    .local v4, e:Lcom/google/android/mms/MmsException;
    invoke-virtual {v4}, Lcom/google/android/mms/MmsException;->printStackTrace()V

    goto :goto_6

    .line 382
    .end local v4           #e:Lcom/google/android/mms/MmsException;
    :cond_e
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/mms/msg/RelatedMultimediaMessage;->getMediaSize(Landroid/net/Uri;)I

    move-result v13

    .line 383
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/msg/RelatedMultimediaMessage;->mSize:I

    move/from16 v18, v0

    add-int v18, v18, v13

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/msg/RelatedMultimediaMessage;->mSize:I
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    .line 400
    .end local v3           #ctBytes:[B
    .end local v6           #isExist:Z
    .end local v9           #media:Lcom/android/mms/model/MediaModel;
    .end local v11           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v13           #sizeMedia:I
    .end local v16           #type:Ljava/lang/String;
    .end local v17           #uri:Landroid/net/Uri;
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/msg/RelatedMultimediaMessage;->mAttachmentsNumber:I

    move/from16 v18, v0

    sub-int v18, v18, v2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/msg/RelatedMultimediaMessage;->mAttachmentsNumber:I

    goto/16 :goto_0
.end method


# virtual methods
.method public findFirstImage()Lcom/android/mms/model/ImageModel;
    .locals 3

    .prologue
    .line 249
    iget-object v2, p0, Lcom/android/mms/msg/RelatedMultimediaMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    .line 250
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 251
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v2

    .line 254
    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public findFirstText()Lcom/android/mms/model/TextModel;
    .locals 3

    .prologue
    .line 258
    iget-object v2, p0, Lcom/android/mms/msg/RelatedMultimediaMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    .line 259
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 260
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v2

    .line 263
    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public findPreveiwThumbnail()Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 184
    const/4 v2, 0x0

    .line 185
    .local v2, model:Lcom/android/mms/model/SlideModel;
    const/4 v1, -0x1

    .line 186
    .local v1, index:I
    iget-object v6, p0, Lcom/android/mms/msg/RelatedMultimediaMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v4

    .line 187
    .local v4, slidesNum:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 188
    iget-object v6, p0, Lcom/android/mms/msg/RelatedMultimediaMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    .line 189
    .local v3, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 190
    :cond_0
    move v1, v0

    .line 194
    .end local v3           #slide:Lcom/android/mms/model/SlideModel;
    :cond_1
    const/4 v6, -0x1

    if-le v1, v6, :cond_2

    .line 195
    iget-object v6, p0, Lcom/android/mms/msg/RelatedMultimediaMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    .line 198
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 199
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/ImageModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 207
    :cond_2
    :goto_1
    return-object v5

    .line 187
    .restart local v3       #slide:Lcom/android/mms/model/SlideModel;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    .end local v3           #slide:Lcom/android/mms/model/SlideModel;
    :cond_4
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 203
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/VideoModel;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/model/VideoModel;->getPartName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/mms/ui/MessageUtils;->getVideoThumbnail(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_1
.end method

.method public getAttachmentCount()I
    .locals 1

    .prologue
    .line 458
    iget v0, p0, Lcom/android/mms/msg/RelatedMultimediaMessage;->mAttachmentsNumber:I

    return v0
.end method

.method public getAttachmentsNumber()I
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Lcom/android/mms/msg/RelatedMultimediaMessage;->mAttachmentsNumber:I

    return v0
.end method

.method public getAttachmentsSize()I
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Lcom/android/mms/msg/RelatedMultimediaMessage;->mSize:I

    return v0
.end method

.method public getFirstText()Lcom/android/mms/model/TextModel;
    .locals 3

    .prologue
    .line 141
    iget-object v2, p0, Lcom/android/mms/msg/RelatedMultimediaMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    .line 142
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v2

    .line 146
    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getMessageBody()Lcom/android/mms/model/Model;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/mms/msg/RelatedMultimediaMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    return-object v0
.end method

.method public getVCalendar()Lcom/android/mms/model/VCalendarModel;
    .locals 2

    .prologue
    .line 174
    iget v0, p0, Lcom/android/mms/msg/RelatedMultimediaMessage;->mVCalendarIndex:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 175
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/msg/RelatedMultimediaMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget v1, p0, Lcom/android/mms/msg/RelatedMultimediaMessage;->mVCalendarIndex:I

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getVCalendar()Lcom/android/mms/model/VCalendarModel;

    move-result-object v0

    goto :goto_0
.end method

.method public getVCalendarPart()Lcom/google/android/mms/pdu/PduPart;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/mms/msg/RelatedMultimediaMessage;->mVCalendar:Lcom/google/android/mms/pdu/PduPart;

    return-object v0
.end method

.method public getVCalendarSize()I
    .locals 1

    .prologue
    .line 315
    iget v0, p0, Lcom/android/mms/msg/RelatedMultimediaMessage;->mCalendarSize:I

    return v0
.end method

.method public getVCardPart()Lcom/google/android/mms/pdu/PduPart;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/mms/msg/RelatedMultimediaMessage;->mVcard:Lcom/google/android/mms/pdu/PduPart;

    return-object v0
.end method

.method public getVCardSize()I
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Lcom/android/mms/msg/RelatedMultimediaMessage;->mVcardSize:I

    return v0
.end method

.method public getVcard()Lcom/android/mms/model/VCardModel;
    .locals 2

    .prologue
    .line 136
    iget v0, p0, Lcom/android/mms/msg/RelatedMultimediaMessage;->mVcardindex:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 137
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/msg/RelatedMultimediaMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget v1, p0, Lcom/android/mms/msg/RelatedMultimediaMessage;->mVcardindex:I

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getVcard()Lcom/android/mms/model/VCardModel;

    move-result-object v0

    goto :goto_0
.end method

.method public hasOtherAttachment()Z
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/mms/msg/RelatedMultimediaMessage;->mHasOtherAttachment:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public hasSlides()Z
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/mms/msg/RelatedMultimediaMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVCalendar()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 152
    iget-object v6, p0, Lcom/android/mms/msg/RelatedMultimediaMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v3

    .line 153
    .local v3, slidesNum:I
    const/4 v4, -0x1

    .line 154
    .local v4, vCalIndex:I
    const/4 v1, -0x1

    .line 155
    .local v1, media:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_3

    .line 156
    iget-object v6, p0, Lcom/android/mms/msg/RelatedMultimediaMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    .line 157
    .local v2, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasVcard()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 158
    :cond_0
    move v1, v0

    .line 170
    .end local v2           #slide:Lcom/android/mms/model/SlideModel;
    :goto_1
    return v5

    .line 160
    .restart local v2       #slide:Lcom/android/mms/model/SlideModel;
    :cond_1
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasVCalendar()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 161
    move v4, v0

    .line 155
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    .end local v2           #slide:Lcom/android/mms/model/SlideModel;
    :cond_3
    if-ltz v4, :cond_4

    if-gez v1, :cond_4

    .line 166
    iput v4, p0, Lcom/android/mms/msg/RelatedMultimediaMessage;->mVCalendarIndex:I

    .line 167
    const/4 v5, 0x1

    goto :goto_1

    .line 169
    :cond_4
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/mms/msg/RelatedMultimediaMessage;->mVCalendarIndex:I

    goto :goto_1
.end method

.method public hasVcard()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 115
    iget-object v6, p0, Lcom/android/mms/msg/RelatedMultimediaMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v3

    .line 116
    .local v3, slidesNum:I
    const/4 v4, -0x1

    .line 117
    .local v4, vCardIndex:I
    const/4 v1, -0x1

    .line 118
    .local v1, media:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_3

    .line 119
    iget-object v6, p0, Lcom/android/mms/msg/RelatedMultimediaMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    .line 120
    .local v2, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasVCalendar()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 121
    :cond_0
    move v1, v0

    .line 132
    .end local v2           #slide:Lcom/android/mms/model/SlideModel;
    :goto_1
    return v5

    .line 123
    .restart local v2       #slide:Lcom/android/mms/model/SlideModel;
    :cond_1
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasVcard()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 124
    move v4, v0

    .line 118
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    .end local v2           #slide:Lcom/android/mms/model/SlideModel;
    :cond_3
    if-ltz v4, :cond_4

    if-gez v1, :cond_4

    .line 128
    iput v4, p0, Lcom/android/mms/msg/RelatedMultimediaMessage;->mVcardindex:I

    .line 129
    const/4 v5, 0x1

    goto :goto_1

    .line 131
    :cond_4
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/mms/msg/RelatedMultimediaMessage;->mVcardindex:I

    goto :goto_1
.end method

.method public isNotification()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public makeCopy(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduBody;
    .locals 2
    .parameter "context"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/mms/msg/RelatedMultimediaMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->makeCopy(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    return-object v0
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 279
    iget-object v2, p0, Lcom/android/mms/msg/RelatedMultimediaMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    .line 280
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 281
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/ImageModel;->recycle()V

    goto :goto_0

    .line 284
    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    :cond_1
    return-void
.end method

.method public setPreveiwThumbnail(Lcom/android/mms/view/RelatedMultimediaMessageView;)V
    .locals 9
    .parameter "view"

    .prologue
    .line 213
    const/4 v1, 0x0

    .line 214
    .local v1, image:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 215
    .local v3, model:Lcom/android/mms/model/SlideModel;
    const/4 v2, -0x1

    .line 216
    .local v2, index:I
    iget-object v6, p0, Lcom/android/mms/msg/RelatedMultimediaMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    .line 217
    .local v5, slidesNum:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v5, :cond_1

    .line 218
    iget-object v6, p0, Lcom/android/mms/msg/RelatedMultimediaMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v4

    .line 219
    .local v4, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 220
    :cond_0
    move v2, v0

    .line 224
    .end local v4           #slide:Lcom/android/mms/model/SlideModel;
    :cond_1
    const/4 v6, -0x1

    if-le v2, v6, :cond_3

    .line 225
    iget-object v6, p0, Lcom/android/mms/msg/RelatedMultimediaMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    .line 229
    :goto_1
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 230
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v6

    invoke-interface {p1, v6}, Lcom/android/mms/view/RelatedMultimediaMessageView;->setPreviewImageBG(Lcom/android/mms/model/ImageModel;)V

    .line 245
    :goto_2
    return-void

    .line 217
    .restart local v4       #slide:Lcom/android/mms/model/SlideModel;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 227
    .end local v4           #slide:Lcom/android/mms/model/SlideModel;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 234
    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 235
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/model/VideoModel;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/model/VideoModel;->getPartName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/mms/ui/MessageUtils;->getVideoThumbnail(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 238
    :cond_5
    if-eqz v1, :cond_6

    .line 239
    invoke-interface {p1, v1}, Lcom/android/mms/view/RelatedMultimediaMessageView;->setPreviewImage(Landroid/graphics/Bitmap;)V

    .line 240
    const/4 v6, 0x1

    invoke-interface {p1, v6}, Lcom/android/mms/view/RelatedMultimediaMessageView;->setPlayable(Z)V

    goto :goto_2

    .line 243
    :cond_6
    const/4 v6, 0x0

    invoke-interface {p1, v6}, Lcom/android/mms/view/RelatedMultimediaMessageView;->setPreviewImage(Landroid/graphics/Bitmap;)V

    goto :goto_2
.end method

.method public withMixedMessageBody()Z
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public withRelatedMessageBody()Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x1

    return v0
.end method
