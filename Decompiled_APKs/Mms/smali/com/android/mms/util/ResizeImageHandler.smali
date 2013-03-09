.class public Lcom/android/mms/util/ResizeImageHandler;
.super Ljava/lang/Object;
.source "ResizeImageHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/ResizeImageHandler$OnImageResizedListener;
    }
.end annotation


# static fields
.field private static final LOCAL_LOGV:Z = true

.field private static final R1024X768:I = 0x6

.field private static final R1280X720:I = 0x7

.field private static final R160X120:I = 0x0

.field private static final R1920X1080:I = 0x8

.field private static final R320X240:I = 0x1

.field private static final R480X320:I = 0x2

.field private static final R640X480:I = 0x3

.field private static final R800X480:I = 0x4

.field private static final R960X540:I = 0x5

.field private static final RESOLUTION_MAX:I = 0x8

.field private static final RESOLUTION_MIN:I = 0x0

.field public static final RESOLUTION_MIN_STR:Ljava/lang/String; = "(160 x 120)"

.field private static final TAG:Ljava/lang/String; = "ResizeImageHandler"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentMessageSize:I

.field private final mHandler:Landroid/os/Handler;

.field private mImageResizedListener:Lcom/android/mms/util/ResizeImageHandler$OnImageResizedListener;

.field private final mImageUri:Landroid/net/Uri;

.field private final mType:Ljava/lang/String;

.field private resizeHeight:I

.field private resizeWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;I)V
    .locals 1
    .parameter "context"
    .parameter "imageUri"
    .parameter "handler"
    .parameter "currentMessageSize"

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput v0, p0, Lcom/android/mms/util/ResizeImageHandler;->resizeWidth:I

    .line 72
    iput v0, p0, Lcom/android/mms/util/ResizeImageHandler;->resizeHeight:I

    .line 76
    iput-object p1, p0, Lcom/android/mms/util/ResizeImageHandler;->mContext:Landroid/content/Context;

    .line 77
    iput-object p3, p0, Lcom/android/mms/util/ResizeImageHandler;->mHandler:Landroid/os/Handler;

    .line 78
    iput-object p2, p0, Lcom/android/mms/util/ResizeImageHandler;->mImageUri:Landroid/net/Uri;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/util/ResizeImageHandler;->mType:Ljava/lang/String;

    .line 80
    iput p4, p0, Lcom/android/mms/util/ResizeImageHandler;->mCurrentMessageSize:I

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Handler;I)V
    .locals 1
    .parameter "context"
    .parameter "imageUri"
    .parameter "type"
    .parameter "handler"
    .parameter "currentMessageSize"

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput v0, p0, Lcom/android/mms/util/ResizeImageHandler;->resizeWidth:I

    .line 72
    iput v0, p0, Lcom/android/mms/util/ResizeImageHandler;->resizeHeight:I

    .line 85
    iput-object p1, p0, Lcom/android/mms/util/ResizeImageHandler;->mContext:Landroid/content/Context;

    .line 86
    iput-object p4, p0, Lcom/android/mms/util/ResizeImageHandler;->mHandler:Landroid/os/Handler;

    .line 87
    iput-object p2, p0, Lcom/android/mms/util/ResizeImageHandler;->mImageUri:Landroid/net/Uri;

    .line 88
    iput-object p3, p0, Lcom/android/mms/util/ResizeImageHandler;->mType:Ljava/lang/String;

    .line 89
    iput p5, p0, Lcom/android/mms/util/ResizeImageHandler;->mCurrentMessageSize:I

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/util/ResizeImageHandler;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/mms/util/ResizeImageHandler;->setMaxResolution()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/mms/util/ResizeImageHandler;)Lcom/android/mms/ui/UriImage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/mms/util/ResizeImageHandler;->createImage()Lcom/android/mms/ui/UriImage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/util/ResizeImageHandler;Landroid/net/Uri;Lcom/android/mms/ui/UriImage;I)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/util/ResizeImageHandler;->resizeImage(Landroid/net/Uri;Lcom/android/mms/ui/UriImage;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/util/ResizeImageHandler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/mms/util/ResizeImageHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/util/ResizeImageHandler;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/mms/util/ResizeImageHandler;->resizeWidth:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/mms/util/ResizeImageHandler;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/mms/util/ResizeImageHandler;->resizeHeight:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/mms/util/ResizeImageHandler;)Lcom/android/mms/util/ResizeImageHandler$OnImageResizedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/mms/util/ResizeImageHandler;->mImageResizedListener:Lcom/android/mms/util/ResizeImageHandler$OnImageResizedListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/util/ResizeImageHandler;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/mms/util/ResizeImageHandler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private createImage()Lcom/android/mms/ui/UriImage;
    .locals 6

    .prologue
    .line 291
    const/4 v1, 0x0

    .line 292
    .local v1, image:Lcom/android/mms/ui/UriImage;
    const-string v3, "ResizeImageHandler>Uri: "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/mms/util/ResizeImageHandler;->mImageUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/util/ResizeImageHandler;->mType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/util/ResizeImageHandler;->mType:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 295
    new-instance v2, Lcom/android/mms/ui/UriImage;

    iget-object v3, p0, Lcom/android/mms/util/ResizeImageHandler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/util/ResizeImageHandler;->mImageUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/mms/util/ResizeImageHandler;->mType:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .end local v1           #image:Lcom/android/mms/ui/UriImage;
    .local v2, image:Lcom/android/mms/ui/UriImage;
    move-object v1, v2

    .line 302
    .end local v2           #image:Lcom/android/mms/ui/UriImage;
    .restart local v1       #image:Lcom/android/mms/ui/UriImage;
    :goto_0
    return-object v1

    .line 297
    :cond_0
    new-instance v2, Lcom/android/mms/ui/UriImage;

    iget-object v3, p0, Lcom/android/mms/util/ResizeImageHandler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/util/ResizeImageHandler;->mImageUri:Landroid/net/Uri;

    invoke-direct {v2, v3, v4}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #image:Lcom/android/mms/ui/UriImage;
    .restart local v2       #image:Lcom/android/mms/ui/UriImage;
    move-object v1, v2

    .end local v2           #image:Lcom/android/mms/ui/UriImage;
    .restart local v1       #image:Lcom/android/mms/ui/UriImage;
    goto :goto_0

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, e:Lcom/google/android/mms/MmsException;
    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getMinResolution()I
    .locals 2

    .prologue
    .line 359
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd2

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x50

    if-ne v0, v1, :cond_1

    .line 361
    :cond_0
    const/4 v0, 0x4

    .line 363
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMinResolutionString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 367
    invoke-static {}, Lcom/android/mms/util/ResizeImageHandler;->getMinResolution()I

    move-result v0

    .line 368
    .local v0, minRes:I
    packed-switch v0, :pswitch_data_0

    .line 374
    :pswitch_0
    const-string v1, "(160 X 120)"

    :goto_0
    return-object v1

    .line 370
    :pswitch_1
    const-string v1, "(1024 X 768)"

    goto :goto_0

    .line 372
    :pswitch_2
    const-string v1, "(800 X 480)"

    goto :goto_0

    .line 368
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private refresh_resolution(I)V
    .locals 4
    .parameter "resize_Resolution"

    .prologue
    const/16 v3, 0x3c0

    const/16 v2, 0x2d0

    const/16 v0, 0x140

    const/16 v1, 0x1e0

    .line 96
    packed-switch p1, :pswitch_data_0

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 98
    :pswitch_0
    const/16 v0, 0x780

    iput v0, p0, Lcom/android/mms/util/ResizeImageHandler;->resizeWidth:I

    .line 99
    const/16 v0, 0x438

    iput v0, p0, Lcom/android/mms/util/ResizeImageHandler;->resizeHeight:I

    goto :goto_0

    .line 102
    :pswitch_1
    const/16 v0, 0x500

    iput v0, p0, Lcom/android/mms/util/ResizeImageHandler;->resizeWidth:I

    .line 103
    iput v2, p0, Lcom/android/mms/util/ResizeImageHandler;->resizeHeight:I

    .line 105
    invoke-static {}, Lcom/android/mms/MmsApp;->isACGProject()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/mms/MmsApp;->getCarrierID()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/mms/MmsApp;->getCarrierID()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    :cond_1
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x14

    if-eq v0, v1, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa2

    if-ne v0, v1, :cond_3

    .line 110
    :cond_2
    iput v3, p0, Lcom/android/mms/util/ResizeImageHandler;->resizeHeight:I

    goto :goto_0

    .line 112
    :cond_3
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa9

    if-eq v0, v1, :cond_4

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd2

    if-eq v0, v1, :cond_4

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x50

    if-ne v0, v1, :cond_0

    .line 115
    :cond_4
    iput v2, p0, Lcom/android/mms/util/ResizeImageHandler;->resizeHeight:I

    goto :goto_0

    .line 118
    :pswitch_2
    const/16 v0, 0x400

    iput v0, p0, Lcom/android/mms/util/ResizeImageHandler;->resizeWidth:I

    .line 119
    const/16 v0, 0x300

    iput v0, p0, Lcom/android/mms/util/ResizeImageHandler;->resizeHeight:I

    goto :goto_0

    .line 122
    :pswitch_3
    iput v3, p0, Lcom/android/mms/util/ResizeImageHandler;->resizeWidth:I

    .line 123
    const/16 v0, 0x21c

    iput v0, p0, Lcom/android/mms/util/ResizeImageHandler;->resizeHeight:I

    goto :goto_0

    .line 126
    :pswitch_4
    const/16 v0, 0x320

    iput v0, p0, Lcom/android/mms/util/ResizeImageHandler;->resizeWidth:I

    .line 127
    iput v1, p0, Lcom/android/mms/util/ResizeImageHandler;->resizeHeight:I

    goto :goto_0

    .line 130
    :pswitch_5
    const/16 v0, 0x280

    iput v0, p0, Lcom/android/mms/util/ResizeImageHandler;->resizeWidth:I

    .line 131
    iput v1, p0, Lcom/android/mms/util/ResizeImageHandler;->resizeHeight:I

    goto :goto_0

    .line 134
    :pswitch_6
    iput v1, p0, Lcom/android/mms/util/ResizeImageHandler;->resizeWidth:I

    .line 135
    iput v0, p0, Lcom/android/mms/util/ResizeImageHandler;->resizeHeight:I

    goto :goto_0

    .line 138
    :pswitch_7
    iput v0, p0, Lcom/android/mms/util/ResizeImageHandler;->resizeWidth:I

    .line 139
    const/16 v0, 0xf0

    iput v0, p0, Lcom/android/mms/util/ResizeImageHandler;->resizeHeight:I

    goto :goto_0

    .line 142
    :pswitch_8
    const/16 v0, 0xa0

    iput v0, p0, Lcom/android/mms/util/ResizeImageHandler;->resizeWidth:I

    .line 143
    const/16 v0, 0x78

    iput v0, p0, Lcom/android/mms/util/ResizeImageHandler;->resizeHeight:I

    goto/16 :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private resizeImage(Landroid/net/Uri;Lcom/android/mms/ui/UriImage;I)Landroid/net/Uri;
    .locals 9
    .parameter "tmp_result"
    .parameter "image"
    .parameter "count"

    .prologue
    const/4 v8, 0x0

    .line 319
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/mms/util/ResizeImageHandler;->refresh_resolution(I)V

    .line 322
    :try_start_0
    iget v5, p0, Lcom/android/mms/util/ResizeImageHandler;->resizeWidth:I

    iget v6, p0, Lcom/android/mms/util/ResizeImageHandler;->resizeHeight:I

    invoke-virtual {p2, v5, v6}, Lcom/android/mms/ui/UriImage;->getResizedImageAsPart(II)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v3

    .line 324
    .local v3, part:Lcom/google/android/mms/pdu/PduPart;
    if-nez v3, :cond_2

    .line 325
    new-instance v5, Lcom/google/android/mms/MmsException;

    invoke-direct {v5}, Lcom/google/android/mms/MmsException;-><init>()V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    .end local v3           #part:Lcom/google/android/mms/pdu/PduPart;
    :catch_0
    move-exception v1

    .line 339
    .local v1, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/android/mms/util/ResizeImageHandler;->getMinResolution()I

    move-result v5

    if-le p3, v5, :cond_1

    .line 342
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 343
    if-eqz p1, :cond_1

    .line 344
    iget-object v5, p0, Lcom/android/mms/util/ResizeImageHandler;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/mms/util/ResizeImageHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v5, v6, p1, v8, v8}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 347
    :cond_1
    const-string v5, "ResizeImageHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/mms/util/ResizeImageHandler;->resizeWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/mms/util/ResizeImageHandler;->resizeHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    add-int/lit8 p3, p3, -0x1

    .line 350
    invoke-static {}, Lcom/android/mms/util/ResizeImageHandler;->getMinResolution()I

    move-result v5

    if-ge p3, v5, :cond_0

    .line 352
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    move-object v4, p1

    .line 353
    .local v4, result:Landroid/net/Uri;
    return-object v4

    .line 327
    .end local v4           #result:Landroid/net/Uri;
    .restart local v3       #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/android/mms/util/ResizeImageHandler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v5

    const-wide v6, 0x7fffffffffffffffL

    invoke-virtual {v5, v3, v6, v7}, Lcom/google/android/mms/pdu/PduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;J)Landroid/net/Uri;

    move-result-object p1

    .line 330
    new-instance v2, Lcom/android/mms/model/ImageModel;

    iget-object v5, p0, Lcom/android/mms/util/ResizeImageHandler;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct {v2, v5, p1, v6, v7}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;Z)V

    .line 331
    .local v2, model:Lcom/android/mms/model/ImageModel;
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    .line 332
    .local v0, cr:Lcom/android/mms/model/ContentRestriction;
    iget v5, p0, Lcom/android/mms/util/ResizeImageHandler;->mCurrentMessageSize:I

    invoke-virtual {v2}, Lcom/android/mms/model/ImageModel;->getMediaSize()I

    move-result v6

    invoke-interface {v0, v5, v6}, Lcom/android/mms/model/ContentRestriction;->checkMessageSize(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private setMaxResolution()I
    .locals 5

    .prologue
    .line 217
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xa8

    if-ne v3, v4, :cond_0

    .line 218
    const/16 v0, 0x8

    .line 287
    .local v0, count:I
    :goto_0
    return v0

    .line 222
    .end local v0           #count:I
    :cond_0
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xd2

    if-eq v3, v4, :cond_1

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x50

    if-ne v3, v4, :cond_2

    .line 224
    :cond_1
    const/4 v0, 0x4

    .restart local v0       #count:I
    goto :goto_0

    .line 226
    .end local v0           #count:I
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsApp;->isACGProject()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Lcom/android/mms/MmsApp;->getCarrierID()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/mms/MmsApp;->getCarrierID()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_4

    :cond_3
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x14

    if-eq v3, v4, :cond_4

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v4, 0x4

    if-eq v3, v4, :cond_4

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xa2

    if-eq v3, v4, :cond_4

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xa9

    if-ne v3, v4, :cond_5

    .line 235
    :cond_4
    const/4 v0, 0x7

    .restart local v0       #count:I
    goto :goto_0

    .line 238
    .end local v0           #count:I
    :cond_5
    const/16 v3, 0x94

    invoke-static {v3}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v3

    if-nez v3, :cond_6

    const/16 v3, 0xaf

    invoke-static {v3}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v3

    if-nez v3, :cond_6

    const/16 v3, 0xc

    invoke-static {v3}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 241
    :cond_6
    const/4 v0, 0x3

    .restart local v0       #count:I
    goto :goto_0

    .line 245
    .end local v0           #count:I
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_4_0()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 246
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v1

    .line 247
    .local v1, cr:Lcom/android/mms/model/ContentRestriction;
    invoke-interface {v1}, Lcom/android/mms/model/ContentRestriction;->getMessageSizeLimit()I

    move-result v3

    iget v4, p0, Lcom/android/mms/util/ResizeImageHandler;->mCurrentMessageSize:I

    sub-int v2, v3, v4

    .line 248
    .local v2, messageRemainSize:I
    invoke-static {}, Lcom/android/mms/MmsApp;->isQVGADevice()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 249
    invoke-static {}, Lcom/android/mms/MmsApp;->getFileKiloSize()I

    move-result v3

    mul-int/lit16 v3, v3, 0x12c

    if-le v2, v3, :cond_8

    .line 250
    const/16 v0, 0x8

    .restart local v0       #count:I
    goto/16 :goto_0

    .line 252
    .end local v0           #count:I
    :cond_8
    const/4 v0, 0x7

    .restart local v0       #count:I
    goto/16 :goto_0

    .line 254
    .end local v0           #count:I
    :cond_9
    invoke-static {}, Lcom/android/mms/MmsApp;->isWVGADevice()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 255
    invoke-static {}, Lcom/android/mms/MmsApp;->getFileKiloSize()I

    move-result v3

    mul-int/lit16 v3, v3, 0x12c

    if-le v2, v3, :cond_a

    .line 256
    const/16 v0, 0x8

    .restart local v0       #count:I
    goto/16 :goto_0

    .line 258
    .end local v0           #count:I
    :cond_a
    const/4 v0, 0x7

    .restart local v0       #count:I
    goto/16 :goto_0

    .line 260
    .end local v0           #count:I
    :cond_b
    invoke-static {}, Lcom/android/mms/MmsApp;->isQHDProject()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 261
    invoke-static {}, Lcom/android/mms/MmsApp;->getFileKiloSize()I

    move-result v3

    mul-int/lit16 v3, v3, 0x12c

    if-le v2, v3, :cond_c

    .line 262
    const/16 v0, 0x8

    .restart local v0       #count:I
    goto/16 :goto_0

    .line 264
    .end local v0           #count:I
    :cond_c
    const/4 v0, 0x7

    .restart local v0       #count:I
    goto/16 :goto_0

    .line 266
    .end local v0           #count:I
    :cond_d
    invoke-static {}, Lcom/android/mms/MmsApp;->isHDProject()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 267
    invoke-static {}, Lcom/android/mms/MmsApp;->getFileKiloSize()I

    move-result v3

    mul-int/lit16 v3, v3, 0x12c

    if-ge v2, v3, :cond_e

    .line 268
    const/4 v0, 0x7

    .restart local v0       #count:I
    goto/16 :goto_0

    .line 270
    .end local v0           #count:I
    :cond_e
    const/16 v0, 0x8

    .restart local v0       #count:I
    goto/16 :goto_0

    .line 275
    .end local v0           #count:I
    :cond_f
    invoke-static {}, Lcom/android/mms/MmsApp;->getFileKiloSize()I

    move-result v3

    mul-int/lit16 v3, v3, 0x12c

    if-ge v2, v3, :cond_10

    .line 276
    const/4 v0, 0x7

    .restart local v0       #count:I
    goto/16 :goto_0

    .line 278
    .end local v0           #count:I
    :cond_10
    const/16 v0, 0x8

    .restart local v0       #count:I
    goto/16 :goto_0

    .line 285
    .end local v0           #count:I
    .end local v1           #cr:Lcom/android/mms/model/ContentRestriction;
    .end local v2           #messageRemainSize:I
    :cond_11
    const/4 v0, 0x6

    .restart local v0       #count:I
    goto/16 :goto_0
.end method


# virtual methods
.method public getResizedImage()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 306
    const/4 v3, 0x0

    .line 307
    .local v3, tmp_result:Landroid/net/Uri;
    const/4 v1, 0x0

    .line 308
    .local v1, image:Lcom/android/mms/ui/UriImage;
    invoke-direct {p0}, Lcom/android/mms/util/ResizeImageHandler;->setMaxResolution()I

    move-result v0

    .line 310
    .local v0, count:I
    invoke-direct {p0}, Lcom/android/mms/util/ResizeImageHandler;->createImage()Lcom/android/mms/ui/UriImage;

    move-result-object v1

    .line 312
    invoke-direct {p0, v3, v1, v0}, Lcom/android/mms/util/ResizeImageHandler;->resizeImage(Landroid/net/Uri;Lcom/android/mms/ui/UriImage;I)Landroid/net/Uri;

    move-result-object v2

    .line 313
    .local v2, result:Landroid/net/Uri;
    return-object v2
.end method

.method public run()V
    .locals 6

    .prologue
    .line 152
    iget-object v1, p0, Lcom/android/mms/util/ResizeImageHandler;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/android/mms/util/ResizeImageHandler;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/mms/util/ResizeImageHandler;->mContext:Landroid/content/Context;

    const v4, 0x7f09004e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 160
    .local v0, progressDialog:Landroid/app/ProgressDialog;
    iget-object v1, p0, Lcom/android/mms/util/ResizeImageHandler;->mContext:Landroid/content/Context;

    instance-of v1, v1, Lcom/android/mms/ui/ComposeMessageActivity;

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/android/mms/util/ResizeImageHandler;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->manageDialog(Landroid/app/Dialog;)V

    .line 168
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/mms/util/ResizeImageHandler$1;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/util/ResizeImageHandler$1;-><init>(Lcom/android/mms/util/ResizeImageHandler;Landroid/app/ProgressDialog;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 208
    return-void

    .line 165
    .end local v0           #progressDialog:Landroid/app/ProgressDialog;
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #progressDialog:Landroid/app/ProgressDialog;
    goto :goto_0
.end method

.method public setOnImageResizedListener(Lcom/android/mms/util/ResizeImageHandler$OnImageResizedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/mms/util/ResizeImageHandler;->mImageResizedListener:Lcom/android/mms/util/ResizeImageHandler$OnImageResizedListener;

    .line 212
    return-void
.end method
