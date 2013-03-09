.class public Lcom/android/mms/transaction/SendTransaction;
.super Lcom/android/mms/transaction/Transaction;
.source "SendTransaction.java"


# static fields
.field private static final LOCAL_LOGV:Z = true

.field private static final TAG:Ljava/lang/String; = "SendTransaction"

.field private static final VZW_IMAGE_RESIZE_BOUND:I


# instance fields
.field private final CMCC_DEVICETIMEOUT_VALUE_2G:I

.field private final CMCC_DEVICETIMEOUT_VALUE_3G:I

.field private final VZW_DEVICETIMEOUT_VALUE:I

.field private mHandler:Landroid/os/Handler;

.field private mIsSelfTimeout:Z

.field private final mSendReqURI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    invoke-static {}, Lcom/android/mms/MmsApp;->getFileKiloSize()I

    move-result v0

    mul-int/lit16 v0, v0, 0x1f4

    sput v0, Lcom/android/mms/transaction/SendTransaction;->VZW_IMAGE_RESIZE_BOUND:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "transId"
    .parameter "uri"

    .prologue
    const/16 v2, 0x2f

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/Transaction;-><init>(Landroid/content/Context;I)V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/transaction/SendTransaction;->mHandler:Landroid/os/Handler;

    .line 86
    const v0, 0x3a980

    iput v0, p0, Lcom/android/mms/transaction/SendTransaction;->VZW_DEVICETIMEOUT_VALUE:I

    .line 87
    const v0, 0x1d4c0

    iput v0, p0, Lcom/android/mms/transaction/SendTransaction;->CMCC_DEVICETIMEOUT_VALUE_3G:I

    .line 88
    const v0, 0x493e0

    iput v0, p0, Lcom/android/mms/transaction/SendTransaction;->CMCC_DEVICETIMEOUT_VALUE_2G:I

    .line 89
    iput-boolean v1, p0, Lcom/android/mms/transaction/SendTransaction;->mIsSelfTimeout:Z

    .line 94
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    .line 95
    iput-object p3, p0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    .line 96
    invoke-virtual {p3, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 97
    invoke-virtual {p3, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/Transaction;->mMsgID:Ljava/lang/String;

    .line 99
    :cond_0
    new-instance v0, Lcom/android/mms/transaction/Transaction$RetryPolicy;

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/Transaction$RetryPolicy;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/transaction/Transaction;->mRetryPolicy:Lcom/android/mms/transaction/Transaction$RetryPolicy;

    .line 102
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/mms/transaction/Transaction;->mType:I

    .line 105
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportDeviceTimeOut()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/SendTransaction;->mHandler:Landroid/os/Handler;

    .line 109
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/transaction/SendTransaction;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/mms/transaction/SendTransaction;->mIsSelfTimeout:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/mms/transaction/SendTransaction;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/mms/transaction/SendTransaction;->resizeImageBeforeNextSending()V

    return-void
.end method

.method private resizeImageBeforeNextSending()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 428
    iget-object v10, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v8

    .line 429
    .local v8, persister:Lcom/google/android/mms/pdu/PduPersister;
    new-instance v3, Lcom/android/mms/ui/MediaPicker;

    iget-object v10, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-direct {v3, v11, v10, v11, v11}, Lcom/android/mms/ui/MediaPicker;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;Lcom/android/mms/ui/MessageBodyEditor;)V

    .line 430
    .local v3, mediaPicker:Lcom/android/mms/ui/MediaPicker;
    iget-object v10, p0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    invoke-virtual {v8, v10}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v7

    check-cast v7, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .line 431
    .local v7, pdu:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v7}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getContentType()[B

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/lang/String;-><init>([B)V

    .line 432
    .local v0, contentType:Ljava/lang/String;
    const-string v10, "application/vnd.wap.multipart.mixed"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 433
    iget-object v10, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    invoke-static {v10, v11}, Lcom/android/mms/msg/body/MixedMessageBody;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/msg/body/MixedMessageBody;

    move-result-object v4

    .line 434
    .local v4, msgBody:Lcom/android/mms/msg/body/MixedMessageBody;
    invoke-virtual {v4}, Lcom/android/mms/msg/body/MixedMessageBody;->hasOnlyOneMedia()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v4}, Lcom/android/mms/msg/body/MixedMessageBody;->containsImage()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 435
    invoke-virtual {v4}, Lcom/android/mms/msg/body/MixedMessageBody;->getFirstImage()Lcom/android/mms/model/ImageModel;

    move-result-object v2

    .line 436
    .local v2, image:Lcom/android/mms/model/ImageModel;
    invoke-virtual {v2}, Lcom/android/mms/model/ImageModel;->getMediaSize()I

    move-result v10

    sget v11, Lcom/android/mms/transaction/SendTransaction;->VZW_IMAGE_RESIZE_BOUND:I

    if-le v10, v11, :cond_0

    .line 437
    const-string v10, "SendTransaction"

    const-string v11, "Mixed message has only one image and > 500KB, start resize before resend"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v1

    .line 440
    .local v1, cr:Lcom/android/mms/model/ContentRestriction;
    invoke-interface {v1}, Lcom/android/mms/model/ContentRestriction;->getMessageSizeLimit()I

    move-result v5

    .line 441
    .local v5, msgSizeLimit:I
    iget-object v10, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/android/mms/model/ImageModel;->getUri()Landroid/net/Uri;

    move-result-object v11

    sget v12, Lcom/android/mms/transaction/SendTransaction;->VZW_IMAGE_RESIZE_BOUND:I

    sub-int v12, v5, v12

    invoke-virtual {v3, v10, v11, v12}, Lcom/android/mms/ui/MediaPicker;->pickNewImage(Landroid/content/Context;Landroid/net/Uri;I)Lcom/android/mms/model/ImageModel;

    move-result-object v6

    .line 443
    .local v6, newImage:Lcom/android/mms/model/ImageModel;
    invoke-virtual {v4, v2, v6}, Lcom/android/mms/msg/body/MixedMessageBody;->replaceMedia(Lcom/android/mms/model/MediaModel;Lcom/android/mms/model/MediaModel;)Z

    .line 444
    iget-object v10, p0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    invoke-virtual {v4}, Lcom/android/mms/msg/body/MixedMessageBody;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Lcom/google/android/mms/pdu/PduPersister;->updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;)V

    .line 445
    const-string v10, "SendTransaction"

    const-string v11, "message resized and updated"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    .end local v1           #cr:Lcom/android/mms/model/ContentRestriction;
    .end local v2           #image:Lcom/android/mms/model/ImageModel;
    .end local v4           #msgBody:Lcom/android/mms/msg/body/MixedMessageBody;
    .end local v5           #msgSizeLimit:I
    .end local v6           #newImage:Lcom/android/mms/model/ImageModel;
    :goto_0
    return-void

    .line 448
    .restart local v2       #image:Lcom/android/mms/model/ImageModel;
    .restart local v4       #msgBody:Lcom/android/mms/msg/body/MixedMessageBody;
    :cond_0
    const-string v10, "SendTransaction"

    const-string v11, "Mixed message has only one image but < 500KB, don\'t resize before resend"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 453
    .end local v2           #image:Lcom/android/mms/model/ImageModel;
    :cond_1
    const-string v10, "SendTransaction"

    const-string v11, "Mixed Message doesn\'t has only one image, do not resize before resend"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 457
    .end local v4           #msgBody:Lcom/android/mms/msg/body/MixedMessageBody;
    :cond_2
    const-string v10, "application/vnd.wap.multipart.related"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 458
    iget-object v10, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    invoke-static {v10, v11}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v9

    .line 459
    .local v9, slideshow:Lcom/android/mms/model/SlideshowModel;
    invoke-virtual {v9}, Lcom/android/mms/model/SlideshowModel;->hasOnlyOneImage()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 460
    invoke-virtual {v9}, Lcom/android/mms/model/SlideshowModel;->getFirstImage()Lcom/android/mms/model/ImageModel;

    move-result-object v2

    .line 461
    .restart local v2       #image:Lcom/android/mms/model/ImageModel;
    invoke-virtual {v2}, Lcom/android/mms/model/ImageModel;->getMediaSize()I

    move-result v10

    sget v11, Lcom/android/mms/transaction/SendTransaction;->VZW_IMAGE_RESIZE_BOUND:I

    if-le v10, v11, :cond_3

    .line 462
    const-string v10, "SendTransaction"

    const-string v11, "Related message has only one image and > 500KB, start resize before resend"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v1

    .line 465
    .restart local v1       #cr:Lcom/android/mms/model/ContentRestriction;
    invoke-interface {v1}, Lcom/android/mms/model/ContentRestriction;->getMessageSizeLimit()I

    move-result v5

    .line 466
    .restart local v5       #msgSizeLimit:I
    iget-object v10, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/android/mms/model/ImageModel;->getUri()Landroid/net/Uri;

    move-result-object v11

    sget v12, Lcom/android/mms/transaction/SendTransaction;->VZW_IMAGE_RESIZE_BOUND:I

    sub-int v12, v5, v12

    invoke-virtual {v3, v10, v11, v12}, Lcom/android/mms/ui/MediaPicker;->pickNewImage(Landroid/content/Context;Landroid/net/Uri;I)Lcom/android/mms/model/ImageModel;

    move-result-object v6

    .line 468
    .restart local v6       #newImage:Lcom/android/mms/model/ImageModel;
    invoke-virtual {v9, v2, v6}, Lcom/android/mms/model/SlideshowModel;->replaceMedia(Lcom/android/mms/model/ImageModel;Lcom/android/mms/model/ImageModel;)Z

    .line 469
    iget-object v10, p0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    invoke-virtual {v9}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Lcom/google/android/mms/pdu/PduPersister;->updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;)V

    .line 470
    const-string v10, "SendTransaction"

    const-string v11, "message resized and updated"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 473
    .end local v1           #cr:Lcom/android/mms/model/ContentRestriction;
    .end local v5           #msgSizeLimit:I
    .end local v6           #newImage:Lcom/android/mms/model/ImageModel;
    :cond_3
    const-string v10, "SendTransaction"

    const-string v11, "Related message has only one image but < 500KB, don\'t resize before resend"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 478
    .end local v2           #image:Lcom/android/mms/model/ImageModel;
    :cond_4
    const-string v10, "SendTransaction"

    const-string v11, "Related Message doesn\'t has only one image, do not resize before resend"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 483
    .end local v9           #slideshow:Lcom/android/mms/model/SlideshowModel;
    :cond_5
    const-string v10, "SendTransaction"

    const-string v11, "Message is not MMS, do not resize before resend"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private runDeviceTimeOut(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 4
    .parameter "r"

    .prologue
    .line 354
    const-string v1, "SendTransaction"

    const-string v2, "SelfTimeout start...."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/mms/transaction/SendTransaction;->mIsSelfTimeout:Z

    .line 356
    invoke-virtual {p0}, Lcom/android/mms/transaction/SendTransaction;->getDeviceTimeout()I

    move-result v0

    .line 357
    .local v0, timeout:I
    new-instance p1, Lcom/android/mms/transaction/SendTransaction$1;

    .end local p1
    invoke-direct {p1, p0}, Lcom/android/mms/transaction/SendTransaction$1;-><init>(Lcom/android/mms/transaction/SendTransaction;)V

    .line 389
    .restart local p1
    iget-object v1, p0, Lcom/android/mms/transaction/SendTransaction;->mHandler:Landroid/os/Handler;

    int-to-long v2, v0

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 390
    const-string v1, "SendTransaction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SelfTimeout = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    return-object p1
.end method


# virtual methods
.method public getDeviceTimeout()I
    .locals 2

    .prologue
    .line 397
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportDeviceTimeOutResize()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 398
    const v1, 0x3a980

    .line 405
    :goto_0
    return v1

    .line 400
    :cond_0
    const/4 v0, 0x0

    .line 401
    .local v0, networkType:I
    invoke-static {}, Lcom/android/mms/MmsApp;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 402
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 403
    :cond_1
    const v1, 0x493e0

    goto :goto_0

    .line 405
    :cond_2
    const v1, 0x1d4c0

    goto :goto_0
.end method

.method public getFailureDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    const v1, 0x7f0900fc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionURI()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 413
    const/4 v0, 0x2

    return v0
.end method

.method public process()V
    .locals 32

    .prologue
    .line 123
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/transaction/Transaction;->mRetryCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/mms/transaction/Transaction;->mRetryCount:I

    .line 124
    const/16 v23, 0x0

    .line 125
    .local v23, r:Ljava/lang/Runnable;
    const/4 v15, 0x0

    .line 128
    .local v15, error:Lcom/android/mms/transaction/TransactionError;
    :try_start_0
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    .line 129
    invoke-static {}, Lcom/android/mms/util/RateController;->getInstance()Lcom/android/mms/util/RateController;

    move-result-object v24

    .line 130
    .local v24, rateCtlr:Lcom/android/mms/util/RateController;
    invoke-virtual/range {v24 .. v24}, Lcom/android/mms/util/RateController;->isLimitSurpassed()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {v24 .. v24}, Lcom/android/mms/util/RateController;->isAllowedByUser()Z

    move-result v2

    if-nez v2, :cond_2

    .line 131
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string v3, "Sending rate limit surpassed."

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_8

    .line 282
    .end local v24           #rateCtlr:Lcom/android/mms/util/RateController;
    :catch_0
    move-exception v13

    move-object/from16 v16, v15

    .line 284
    .end local v15           #error:Lcom/android/mms/transaction/TransactionError;
    .local v13, e:Ljava/io/IOException;
    .local v16, error:Lcom/android/mms/transaction/TransactionError;
    :goto_0
    :try_start_1
    const-string v2, "SendTransaction"

    const-string v3, "Unexpected IOException"

    invoke-static {v2, v3, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 286
    const-string v2, "Jerry"

    const-string v3, "here 1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    instance-of v2, v13, Lcom/htc/messaging/util/HtcHttpTransportError;

    if-eqz v2, :cond_11

    .line 291
    check-cast v13, Lcom/htc/messaging/util/HtcHttpTransportError;

    .end local v13           #e:Ljava/io/IOException;
    invoke-virtual {v13}, Lcom/htc/messaging/util/HtcHttpTransportError;->toTransactionError()I

    move-result v9

    .line 292
    .local v9, code:I
    new-instance v15, Lcom/android/mms/transaction/TransactionError;

    invoke-direct {v15, v9}, Lcom/android/mms/transaction/TransactionError;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 296
    .end local v9           #code:I
    .end local v16           #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v15       #error:Lcom/android/mms/transaction/TransactionError;
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/mms/transaction/TransactionState;->setState(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 338
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportDeviceTimeOut()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SendTransaction;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    if-eqz v23, :cond_0

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SendTransaction;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 342
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v2}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v2, v15}, Lcom/android/mms/transaction/TransactionState;->setError(Lcom/android/mms/transaction/TransactionError;)V

    .line 346
    const-string v2, "SendTransaction"

    const-string v3, "Delivery failed."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/mms/transaction/SendTransaction;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    :cond_1
    :goto_2
    return-void

    .line 136
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v21

    .line 137
    .local v21, persister:Lcom/google/android/mms/pdu/PduPersister;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v28

    check-cast v28, Lcom/google/android/mms/pdu/SendReq;

    .line 140
    .local v28, sendReq:Lcom/google/android/mms/pdu/SendReq;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long v11, v2, v6

    .line 141
    .local v11, date:J
    move-object/from16 v0, v28

    invoke-virtual {v0, v11, v12}, Lcom/google/android/mms/pdu/SendReq;->setDate(J)V

    .line 146
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/messaging/util/HtcCdmaMmsUtils;->getPhoneNumber(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v22

    .line 151
    .local v22, phoneNumber:Ljava/lang/String;
    if-eqz v22, :cond_3

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 152
    new-instance v14, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v14, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V

    .line 153
    .local v14, encodedNumbers:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v14, :cond_3

    .line 154
    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Lcom/google/android/mms/pdu/SendReq;->setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 157
    .end local v14           #encodedNumbers:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_3
    const/16 v2, 0x12

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/SendReq;->setMmsVersion(I)V

    .line 175
    :cond_4
    :goto_3
    new-instance v5, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v5, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 176
    .local v5, values:Landroid/content/ContentValues;
    const-string v2, "date"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 177
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 180
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportDeviceTimeOut()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 182
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/SendTransaction;->runDeviceTimeOut(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v23

    .line 186
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v30

    .line 187
    .local v30, tokenKey:J
    const-string v2, "SendTransaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send Pdu start - tid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/mms/pdu/SendReq;->getTransactionId()[B

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/mms/transaction/SendTransaction;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/util/SendingProgressTokenManager;->get(Ljava/lang/Object;)J

    move-result-wide v2

    new-instance v4, Lcom/google/android/mms/pdu/PduComposer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v28

    invoke-direct {v4, v6, v0}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/mms/transaction/SendTransaction;->sendPdu(J[B)[B

    move-result-object v27

    .line 190
    .local v27, response:[B
    const-string v2, "SendTransaction"

    const-string v3, "send Pdu end"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/mms/transaction/SendTransaction;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/util/SendingProgressTokenManager;->remove(Ljava/lang/Object;)V

    .line 193
    new-instance v2, Lcom/google/android/mms/pdu/PduParser;

    move-object/from16 v0, v27

    invoke-direct {v2, v0}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v10

    check-cast v10, Lcom/google/android/mms/pdu/SendConf;

    .line 194
    .local v10, conf:Lcom/google/android/mms/pdu/SendConf;
    if-nez v10, :cond_8

    .line 195
    new-instance v16, Lcom/android/mms/transaction/TransactionError;

    const/16 v2, 0x1002

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Lcom/android/mms/transaction/TransactionError;-><init>(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_8

    .line 196
    .end local v15           #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v16       #error:Lcom/android/mms/transaction/TransactionError;
    :try_start_4
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string v3, "None M-Send.conf received."

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_9

    .line 282
    :catch_1
    move-exception v13

    goto/16 :goto_0

    .line 161
    .end local v5           #values:Landroid/content/ContentValues;
    .end local v10           #conf:Lcom/google/android/mms/pdu/SendConf;
    .end local v16           #error:Lcom/android/mms/transaction/TransactionError;
    .end local v22           #phoneNumber:Ljava/lang/String;
    .end local v27           #response:[B
    .end local v30           #tokenKey:J
    .restart local v15       #error:Lcom/android/mms/transaction/TransactionError;
    :cond_6
    :try_start_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v22

    .line 162
    .restart local v22       #phoneNumber:Ljava/lang/String;
    if-eqz v22, :cond_4

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 163
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x25

    if-ne v2, v3, :cond_4

    .line 164
    new-instance v14, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v14, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V

    .line 165
    .restart local v14       #encodedNumbers:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v14, :cond_4

    .line 166
    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Lcom/google/android/mms/pdu/SendReq;->setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_8

    goto/16 :goto_3

    .line 298
    .end local v11           #date:J
    .end local v14           #encodedNumbers:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v21           #persister:Lcom/google/android/mms/pdu/PduPersister;
    .end local v22           #phoneNumber:Ljava/lang/String;
    .end local v28           #sendReq:Lcom/google/android/mms/pdu/SendReq;
    :catch_2
    move-exception v13

    move-object/from16 v16, v15

    .line 300
    .end local v15           #error:Lcom/android/mms/transaction/TransactionError;
    .local v13, e:Lcom/google/android/mms/MmsException;
    .restart local v16       #error:Lcom/android/mms/transaction/TransactionError;
    :goto_4
    :try_start_6
    const-string v2, "SendTransaction"

    const-string v3, "Unexpected MmsException"

    invoke-static {v2, v3, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 302
    const-string v2, "Jerry"

    const-string v3, "here 2"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    if-nez v16, :cond_18

    .line 304
    new-instance v15, Lcom/android/mms/transaction/TransactionError;

    const/16 v2, 0x1014

    invoke-direct {v15, v2}, Lcom/android/mms/transaction/TransactionError;-><init>(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 306
    .end local v16           #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v15       #error:Lcom/android/mms/transaction/TransactionError;
    :goto_5
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/mms/transaction/TransactionState;->setState(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 338
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportDeviceTimeOut()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SendTransaction;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_7

    if-eqz v23, :cond_7

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SendTransaction;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 342
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v2}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v2, v15}, Lcom/android/mms/transaction/TransactionState;->setError(Lcom/android/mms/transaction/TransactionError;)V

    .line 346
    const-string v2, "SendTransaction"

    const-string v3, "Delivery failed."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/mms/transaction/SendTransaction;->Log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 201
    .end local v13           #e:Lcom/google/android/mms/MmsException;
    .restart local v5       #values:Landroid/content/ContentValues;
    .restart local v10       #conf:Lcom/google/android/mms/pdu/SendConf;
    .restart local v11       #date:J
    .restart local v21       #persister:Lcom/google/android/mms/pdu/PduPersister;
    .restart local v22       #phoneNumber:Ljava/lang/String;
    .restart local v27       #response:[B
    .restart local v28       #sendReq:Lcom/google/android/mms/pdu/SendReq;
    .restart local v30       #tokenKey:J
    :cond_8
    :try_start_8
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/mms/pdu/SendReq;->getTransactionId()[B

    move-result-object v2

    invoke-virtual {v10}, Lcom/google/android/mms/pdu/SendConf;->getTransactionId()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_9

    .line 202
    new-instance v16, Lcom/android/mms/transaction/TransactionError;

    const/16 v2, 0x1003

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Lcom/android/mms/transaction/TransactionError;-><init>(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_8

    .line 203
    .end local v15           #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v16       #error:Lcom/android/mms/transaction/TransactionError;
    :try_start_9
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string v3, "Inconsistent Transaction-ID."

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_c
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_9

    .line 298
    :catch_3
    move-exception v13

    goto/16 :goto_4

    .line 209
    .end local v16           #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v15       #error:Lcom/android/mms/transaction/TransactionError;
    :cond_9
    :try_start_a
    new-instance v5, Landroid/content/ContentValues;

    .end local v5           #values:Landroid/content/ContentValues;
    const/4 v2, 0x3

    invoke-direct {v5, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 210
    .restart local v5       #values:Landroid/content/ContentValues;
    invoke-virtual {v10}, Lcom/google/android/mms/pdu/SendConf;->getResponseStatus()I

    move-result v25

    .line 213
    .local v25, respStatus:I
    const/16 v2, 0x94

    invoke-static {v2}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v2

    if-nez v2, :cond_a

    const/16 v2, 0xaf

    invoke-static {v2}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v2

    if-nez v2, :cond_a

    const/16 v2, 0xc

    invoke-static {v2}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 216
    :cond_a
    invoke-virtual {v10}, Lcom/google/android/mms/pdu/SendConf;->getResponseText()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v10}, Lcom/google/android/mms/pdu/SendConf;->getResponseText()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v26

    .line 218
    .local v26, respText:Ljava/lang/String;
    :goto_6
    const-string v2, "SendTransaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "response text:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    if-eqz v26, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    const v3, 0x7f0903bb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->showLowBalanceNotification()V

    .line 225
    .end local v26           #respText:Ljava/lang/String;
    :cond_b
    const-string v2, "resp_st"

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 227
    const/16 v2, 0x80

    move/from16 v0, v25

    if-eq v0, v2, :cond_e

    .line 228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 230
    const-string v2, "SendTransaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!!Send MMS fail!! reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/mms/transaction/SendTransaction;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-static/range {v25 .. v25}, Lcom/android/mms/transaction/TransactionError;->responseStatusToErrorCode(I)I

    move-result v9

    .line 235
    .restart local v9       #code:I
    const-string v2, "Jerry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "code >"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-instance v16, Lcom/android/mms/transaction/TransactionError;

    move-object/from16 v0, v16

    invoke-direct {v0, v9}, Lcom/android/mms/transaction/TransactionError;-><init>(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_d
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_8

    .line 237
    .end local v15           #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v16       #error:Lcom/android/mms/transaction/TransactionError;
    :try_start_b
    new-instance v2, Lcom/google/android/mms/MmsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Server returns an error code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_c
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_b .. :try_end_b} :catch_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_9

    .line 307
    .end local v9           #code:I
    .end local v25           #respStatus:I
    :catch_4
    move-exception v13

    .line 309
    .end local v5           #values:Landroid/content/ContentValues;
    .end local v10           #conf:Lcom/google/android/mms/pdu/SendConf;
    .end local v11           #date:J
    .end local v21           #persister:Lcom/google/android/mms/pdu/PduPersister;
    .end local v22           #phoneNumber:Ljava/lang/String;
    .end local v27           #response:[B
    .end local v28           #sendReq:Lcom/google/android/mms/pdu/SendReq;
    .end local v30           #tokenKey:J
    .local v13, e:Ljava/lang/ClassCastException;
    :goto_7
    :try_start_c
    const-string v2, "SendTransaction"

    const-string v3, "Unexpected ClassCastException"

    invoke-static {v2, v3, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 311
    new-instance v15, Lcom/android/mms/transaction/TransactionError;

    const/16 v2, 0x1014

    invoke-direct {v15, v2}, Lcom/android/mms/transaction/TransactionError;-><init>(I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 312
    .end local v16           #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v15       #error:Lcom/android/mms/transaction/TransactionError;
    :try_start_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/mms/transaction/TransactionState;->setState(I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 338
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportDeviceTimeOut()Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SendTransaction;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_c

    if-eqz v23, :cond_c

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SendTransaction;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 342
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v2}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v2, v15}, Lcom/android/mms/transaction/TransactionState;->setError(Lcom/android/mms/transaction/TransactionError;)V

    .line 346
    const-string v2, "SendTransaction"

    const-string v3, "Delivery failed."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/mms/transaction/SendTransaction;->Log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 216
    .end local v13           #e:Ljava/lang/ClassCastException;
    .restart local v5       #values:Landroid/content/ContentValues;
    .restart local v10       #conf:Lcom/google/android/mms/pdu/SendConf;
    .restart local v11       #date:J
    .restart local v21       #persister:Lcom/google/android/mms/pdu/PduPersister;
    .restart local v22       #phoneNumber:Ljava/lang/String;
    .restart local v25       #respStatus:I
    .restart local v27       #response:[B
    .restart local v28       #sendReq:Lcom/google/android/mms/pdu/SendReq;
    .restart local v30       #tokenKey:J
    :cond_d
    const/16 v26, 0x0

    goto/16 :goto_6

    .line 241
    :cond_e
    :try_start_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    const-wide/16 v6, 0x0

    invoke-static {v2, v3, v6, v7}, Lcom/android/mms/transaction/MessagingNotification;->showSendNotification(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 245
    invoke-virtual {v10}, Lcom/google/android/mms/pdu/SendConf;->getMessageId()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v18

    .line 246
    .local v18, messageId:Ljava/lang/String;
    const-string v2, "m_id"

    move-object/from16 v0, v18

    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v2, "msg_box"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v19

    .line 257
    .local v19, msgId:J
    sget-object v2, Landroid/provider/Telephony$Mms$Sent;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v19

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v29

    .line 258
    .local v29, sentMsgUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 260
    const-string v2, "SendTransaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!!Send MMS successful!! messageId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/mms/transaction/SendTransaction;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v2, "SendTransaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ATS]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][send_message][successful]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/mms/transaction/SendTransaction;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    new-instance v17, Landroid/content/Intent;

    const-string v2, "com.htc.messaging.transaction"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 269
    .local v17, intent:Landroid/content/Intent;
    const-string v2, "type"

    const-string v3, "MMS_MO"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    const-string v8, ""

    .line 271
    .local v8, address:Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/mms/pdu/SendReq;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 272
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/mms/pdu/SendReq;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v8

    .line 273
    :cond_f
    const-string v2, "remote_number"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    const-string v2, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v6, 0x3e8

    div-long/2addr v3, v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_e} :catch_d
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_e .. :try_end_e} :catch_6
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_e} :catch_8

    .line 338
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportDeviceTimeOut()Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SendTransaction;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_10

    if-eqz v23, :cond_10

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SendTransaction;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 342
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v2}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v2, v15}, Lcom/android/mms/transaction/TransactionState;->setError(Lcom/android/mms/transaction/TransactionError;)V

    .line 346
    const-string v2, "SendTransaction"

    const-string v3, "Delivery failed."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/mms/transaction/SendTransaction;->Log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 294
    .end local v5           #values:Landroid/content/ContentValues;
    .end local v8           #address:Ljava/lang/String;
    .end local v10           #conf:Lcom/google/android/mms/pdu/SendConf;
    .end local v11           #date:J
    .end local v15           #error:Lcom/android/mms/transaction/TransactionError;
    .end local v17           #intent:Landroid/content/Intent;
    .end local v18           #messageId:Ljava/lang/String;
    .end local v19           #msgId:J
    .end local v21           #persister:Lcom/google/android/mms/pdu/PduPersister;
    .end local v22           #phoneNumber:Ljava/lang/String;
    .end local v25           #respStatus:I
    .end local v27           #response:[B
    .end local v28           #sendReq:Lcom/google/android/mms/pdu/SendReq;
    .end local v29           #sentMsgUri:Landroid/net/Uri;
    .end local v30           #tokenKey:J
    .local v13, e:Ljava/io/IOException;
    .restart local v16       #error:Lcom/android/mms/transaction/TransactionError;
    :cond_11
    :try_start_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->getNetworkError()Lcom/android/mms/transaction/TransactionError;

    move-result-object v15

    .end local v16           #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v15       #error:Lcom/android/mms/transaction/TransactionError;
    goto/16 :goto_1

    .line 313
    .end local v13           #e:Ljava/io/IOException;
    :catch_5
    move-exception v13

    move-object/from16 v16, v15

    .line 315
    .end local v15           #error:Lcom/android/mms/transaction/TransactionError;
    .local v13, e:Ljava/lang/RuntimeException;
    .restart local v16       #error:Lcom/android/mms/transaction/TransactionError;
    :goto_8
    const-string v2, "SendTransaction"

    const-string v3, "Unexpected RuntimeException"

    invoke-static {v2, v3, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 317
    new-instance v15, Lcom/android/mms/transaction/TransactionError;

    const/16 v2, 0x1014

    invoke-direct {v15, v2}, Lcom/android/mms/transaction/TransactionError;-><init>(I)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 318
    .end local v16           #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v15       #error:Lcom/android/mms/transaction/TransactionError;
    :try_start_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/mms/transaction/TransactionState;->setState(I)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 338
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportDeviceTimeOut()Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SendTransaction;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_12

    if-eqz v23, :cond_12

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SendTransaction;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 342
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v2}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v2, v15}, Lcom/android/mms/transaction/TransactionState;->setError(Lcom/android/mms/transaction/TransactionError;)V

    .line 346
    const-string v2, "SendTransaction"

    const-string v3, "Delivery failed."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/mms/transaction/SendTransaction;->Log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 319
    .end local v13           #e:Ljava/lang/RuntimeException;
    :catch_6
    move-exception v13

    move-object/from16 v16, v15

    .line 321
    .end local v15           #error:Lcom/android/mms/transaction/TransactionError;
    .local v13, e:Ljava/util/concurrent/TimeoutException;
    .restart local v16       #error:Lcom/android/mms/transaction/TransactionError;
    :goto_9
    :try_start_11
    const-string v2, "SendTransaction"

    const-string v3, "Unexpected TimeoutException."

    invoke-static {v2, v3, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 323
    new-instance v15, Lcom/android/mms/transaction/TransactionError;

    const/16 v2, 0x1062

    invoke-direct {v15, v2}, Lcom/android/mms/transaction/TransactionError;-><init>(I)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 324
    .end local v16           #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v15       #error:Lcom/android/mms/transaction/TransactionError;
    :try_start_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/mms/transaction/TransactionState;->setState(I)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 338
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportDeviceTimeOut()Z

    move-result v2

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SendTransaction;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_13

    if-eqz v23, :cond_13

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SendTransaction;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 342
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v2}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v2, v15}, Lcom/android/mms/transaction/TransactionState;->setError(Lcom/android/mms/transaction/TransactionError;)V

    .line 346
    const-string v2, "SendTransaction"

    const-string v3, "Delivery failed."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/mms/transaction/SendTransaction;->Log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 325
    .end local v13           #e:Ljava/util/concurrent/TimeoutException;
    :catch_7
    move-exception v13

    move-object/from16 v16, v15

    .line 327
    .end local v15           #error:Lcom/android/mms/transaction/TransactionError;
    .local v13, e:Ljava/lang/Exception;
    .restart local v16       #error:Lcom/android/mms/transaction/TransactionError;
    :goto_a
    :try_start_13
    const-string v2, "SendTransaction"

    const-string v3, "Unexpected Exception."

    invoke-static {v2, v3, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 329
    new-instance v15, Lcom/android/mms/transaction/TransactionError;

    const/16 v2, 0x1014

    invoke-direct {v15, v2}, Lcom/android/mms/transaction/TransactionError;-><init>(I)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 330
    .end local v16           #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v15       #error:Lcom/android/mms/transaction/TransactionError;
    :try_start_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/mms/transaction/TransactionState;->setState(I)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 338
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportDeviceTimeOut()Z

    move-result v2

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SendTransaction;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_14

    if-eqz v23, :cond_14

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SendTransaction;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 342
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v2}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v2, v15}, Lcom/android/mms/transaction/TransactionState;->setError(Lcom/android/mms/transaction/TransactionError;)V

    .line 346
    const-string v2, "SendTransaction"

    const-string v3, "Delivery failed."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/mms/transaction/SendTransaction;->Log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 331
    .end local v13           #e:Ljava/lang/Exception;
    :catch_8
    move-exception v13

    move-object/from16 v16, v15

    .line 332
    .end local v15           #error:Lcom/android/mms/transaction/TransactionError;
    .local v13, e:Ljava/lang/OutOfMemoryError;
    .restart local v16       #error:Lcom/android/mms/transaction/TransactionError;
    :goto_b
    :try_start_15
    const-string v2, "SendTransaction"

    const-string v3, "PduComposer.make() out of memory"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-virtual {v13}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 334
    new-instance v15, Lcom/android/mms/transaction/TransactionError;

    const/16 v2, 0x1014

    invoke-direct {v15, v2}, Lcom/android/mms/transaction/TransactionError;-><init>(I)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 338
    .end local v16           #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v15       #error:Lcom/android/mms/transaction/TransactionError;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportDeviceTimeOut()Z

    move-result v2

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SendTransaction;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_15

    if-eqz v23, :cond_15

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SendTransaction;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 342
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v2}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v2, v15}, Lcom/android/mms/transaction/TransactionState;->setError(Lcom/android/mms/transaction/TransactionError;)V

    .line 346
    const-string v2, "SendTransaction"

    const-string v3, "Delivery failed."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/mms/transaction/SendTransaction;->Log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 338
    .end local v13           #e:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v2

    :goto_c
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportDeviceTimeOut()Z

    move-result v3

    if-eqz v3, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_16

    if-eqz v23, :cond_16

    .line 339
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 342
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_17

    .line 343
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 344
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 345
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v3, v15}, Lcom/android/mms/transaction/TransactionState;->setError(Lcom/android/mms/transaction/TransactionError;)V

    .line 346
    const-string v3, "SendTransaction"

    const-string v4, "Delivery failed."

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/mms/transaction/SendTransaction;->Log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    throw v2

    .line 338
    .end local v15           #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v16       #error:Lcom/android/mms/transaction/TransactionError;
    :catchall_1
    move-exception v2

    move-object/from16 v15, v16

    .end local v16           #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v15       #error:Lcom/android/mms/transaction/TransactionError;
    goto :goto_c

    .line 331
    .end local v15           #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v5       #values:Landroid/content/ContentValues;
    .restart local v10       #conf:Lcom/google/android/mms/pdu/SendConf;
    .restart local v11       #date:J
    .restart local v16       #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v21       #persister:Lcom/google/android/mms/pdu/PduPersister;
    .restart local v22       #phoneNumber:Ljava/lang/String;
    .restart local v27       #response:[B
    .restart local v28       #sendReq:Lcom/google/android/mms/pdu/SendReq;
    .restart local v30       #tokenKey:J
    :catch_9
    move-exception v13

    goto/16 :goto_b

    .line 325
    :catch_a
    move-exception v13

    goto/16 :goto_a

    .line 319
    :catch_b
    move-exception v13

    goto/16 :goto_9

    .line 313
    :catch_c
    move-exception v13

    goto/16 :goto_8

    .line 307
    .end local v5           #values:Landroid/content/ContentValues;
    .end local v10           #conf:Lcom/google/android/mms/pdu/SendConf;
    .end local v11           #date:J
    .end local v16           #error:Lcom/android/mms/transaction/TransactionError;
    .end local v21           #persister:Lcom/google/android/mms/pdu/PduPersister;
    .end local v22           #phoneNumber:Ljava/lang/String;
    .end local v27           #response:[B
    .end local v28           #sendReq:Lcom/google/android/mms/pdu/SendReq;
    .end local v30           #tokenKey:J
    .restart local v15       #error:Lcom/android/mms/transaction/TransactionError;
    :catch_d
    move-exception v13

    move-object/from16 v16, v15

    .end local v15           #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v16       #error:Lcom/android/mms/transaction/TransactionError;
    goto/16 :goto_7

    .local v13, e:Lcom/google/android/mms/MmsException;
    :cond_18
    move-object/from16 v15, v16

    .end local v16           #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v15       #error:Lcom/android/mms/transaction/TransactionError;
    goto/16 :goto_5
.end method

.method public setFailedContentUri()V
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v1, p0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 420
    return-void
.end method
