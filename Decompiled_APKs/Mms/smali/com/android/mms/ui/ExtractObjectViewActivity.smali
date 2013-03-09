.class public Lcom/android/mms/ui/ExtractObjectViewActivity;
.super Lcom/htc/app/HtcListActivity;
.source "ExtractObjectViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ExtractObjectViewActivity$PartsListAdapter;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DIALOG_ATTACHMENT_OVERWRITE:I = 0x0

.field private static final ITEM_CHECK_ARRAY:Ljava/lang/String; = "check_array"

.field private static final ITEM_SELECT_ALL:Ljava/lang/String; = "select_all"

.field private static final LOCAL_LOGV:Z = false

.field private static final MENU_PREVIEW:I = 0x0

.field private static final MENU_SELECT_ALL:I = 0x1

.field public static final REQUEST_CODE_IMPORT_VCARD:I = 0x3e

.field private static final TAG:Ljava/lang/String; = "ExtractObjectViewActivity"


# instance fields
.field private checkArray:[Z

.field private mCheckCancel:Landroid/widget/Button;

.field private mCheckOk:Landroid/widget/Button;

.field private mContent:Landroid/content/Context;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mList:Lcom/htc/widget/HtcListView;

.field private mParts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/MediaModel;",
            ">;"
        }
    .end annotation
.end field

.field private mPartsListAdapter:Lcom/android/mms/ui/ExtractObjectViewActivity$PartsListAdapter;

.field private mSaveParts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/mms/pdu/PduPart;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectAll:Z

.field private mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

.field private mUri:Landroid/net/Uri;

.field private slidenum:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/htc/app/HtcListActivity;-><init>()V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mParts:Ljava/util/ArrayList;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mSaveParts:Ljava/util/ArrayList;

    .line 747
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ExtractObjectViewActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ExtractObjectViewActivity;->saveAttachments(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ExtractObjectViewActivity;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ExtractObjectViewActivity;->checkPduPartFileNameExist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ExtractObjectViewActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mSelectAll:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/mms/ui/ExtractObjectViewActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mSelectAll:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ExtractObjectViewActivity;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/mms/ui/ExtractObjectViewActivity;->checkArray:[Z

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ExtractObjectViewActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mCheckOk:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ExtractObjectViewActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mContent:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/mms/ui/ExtractObjectViewActivity;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mContent:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/mms/ui/ExtractObjectViewActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mSaveParts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/ExtractObjectViewActivity;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method private checkPduPartFileNameExist(Ljava/lang/String;)Z
    .locals 7
    .parameter "dirPath"

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/android/mms/ui/ExtractObjectViewActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcListView;->getCount()I

    move-result v3

    .line 235
    .local v3, listCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 236
    iget-object v6, p0, Lcom/android/mms/ui/ExtractObjectViewActivity;->checkArray:[Z

    aget-boolean v6, v6, v1

    if-eqz v6, :cond_0

    .line 237
    iget-object v6, p0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mSaveParts:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/mms/pdu/PduPart;

    .line 238
    .local v2, item:Lcom/google/android/mms/pdu/PduPart;
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    .line 239
    .local v5, type:Ljava/lang/String;
    const-string v6, "text/x-vCard"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "text/x-vCalendar"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 241
    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->getPartFileName(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;

    move-result-object v4

    .line 242
    .local v4, name:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 244
    const/4 v6, 0x1

    .line 249
    .end local v0           #f:Ljava/io/File;
    .end local v2           #item:Lcom/google/android/mms/pdu/PduPart;
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #type:Ljava/lang/String;
    :goto_1
    return v6

    .line 235
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 249
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private initSlideList()V
    .locals 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 455
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/mms/model/SlideshowModel;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 460
    .local v18, body:Lcom/google/android/mms/pdu/PduBody;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/mms/model/SlideshowModel;->createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    .line 461
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v26

    .line 464
    .local v26, mSlideNumber:I
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v30

    .line 465
    .local v30, partNum:I
    move/from16 v0, v30

    new-array v4, v0, [I

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/ui/ExtractObjectViewActivity;->slidenum:[I

    .line 468
    const/16 v22, 0x0

    .line 469
    .local v22, j:I
    const/16 v21, 0x0

    .local v21, i:I
    :goto_0
    move/from16 v0, v21

    move/from16 v1, v26

    if-ge v0, v1, :cond_3

    .line 471
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v33

    .line 485
    .local v33, slide:Lcom/android/mms/model/SlideModel;
    const/16 v24, 0x0

    .local v24, k:I
    :goto_1
    invoke-virtual/range {v33 .. v33}, Lcom/android/mms/model/SlideModel;->size()I

    move-result v4

    move/from16 v0, v24

    if-ge v0, v4, :cond_2

    .line 486
    move-object/from16 v0, v33

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideModel;->get(I)Lcom/android/mms/model/MediaModel;

    move-result-object v28

    .line 487
    .local v28, model:Lcom/android/mms/model/MediaModel;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/mms/ui/ExtractObjectViewActivity;->isPartExist(Lcom/android/mms/model/MediaModel;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 488
    move-object/from16 v0, v28

    instance-of v4, v0, Lcom/android/mms/model/ImageModel;

    if-nez v4, :cond_0

    move-object/from16 v0, v28

    instance-of v4, v0, Lcom/android/mms/model/VideoModel;

    if-nez v4, :cond_0

    move-object/from16 v0, v28

    instance-of v4, v0, Lcom/android/mms/model/AudioModel;

    if-eqz v4, :cond_1

    .line 489
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mParts:Ljava/util/ArrayList;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ExtractObjectViewActivity;->slidenum:[I

    add-int/lit8 v23, v22, 0x1

    .end local v22           #j:I
    .local v23, j:I
    aput v21, v4, v22

    move/from16 v22, v23

    .line 485
    .end local v23           #j:I
    .restart local v22       #j:I
    :cond_1
    add-int/lit8 v24, v24, 0x1

    goto :goto_1

    .line 456
    .end local v18           #body:Lcom/google/android/mms/pdu/PduBody;
    .end local v21           #i:I
    .end local v22           #j:I
    .end local v24           #k:I
    .end local v26           #mSlideNumber:I
    .end local v28           #model:Lcom/android/mms/model/MediaModel;
    .end local v30           #partNum:I
    .end local v33           #slide:Lcom/android/mms/model/SlideModel;
    :catch_0
    move-exception v20

    .line 457
    .local v20, e:Lcom/google/android/mms/MmsException;
    const-string v4, "ExtractObjectViewActivity"

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-static {v4, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 622
    .end local v20           #e:Lcom/google/android/mms/MmsException;
    :goto_2
    return-void

    .line 469
    .restart local v18       #body:Lcom/google/android/mms/pdu/PduBody;
    .restart local v21       #i:I
    .restart local v22       #j:I
    .restart local v24       #k:I
    .restart local v26       #mSlideNumber:I
    .restart local v30       #partNum:I
    .restart local v33       #slide:Lcom/android/mms/model/SlideModel;
    :cond_2
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 497
    .end local v24           #k:I
    .end local v33           #slide:Lcom/android/mms/model/SlideModel;
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v4

    float-to-double v7, v4

    const-wide/high16 v9, 0x4000

    cmpl-double v4, v7, v9

    if-ltz v4, :cond_7

    .line 498
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v31

    .line 499
    .local v31, partSize:I
    const/16 v21, 0x0

    move/from16 v23, v22

    .end local v22           #j:I
    .restart local v23       #j:I
    :goto_3
    move/from16 v0, v21

    move/from16 v1, v30

    if-ge v0, v1, :cond_6

    .line 500
    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v29

    .line 501
    .local v29, part:Lcom/google/android/mms/pdu/PduPart;
    new-instance v5, Ljava/lang/String;

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    .line 502
    .local v5, type:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/mms/ui/ExtractObjectViewActivity;->isSupportedType(Lcom/google/android/mms/pdu/PduPart;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 503
    new-instance v27, Ljava/lang/String;

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 504
    .local v27, mediaName:Ljava/lang/String;
    new-instance v28, Lcom/android/mms/model/UnsupportedMediaModel;

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v5, v2, v4}, Lcom/android/mms/model/UnsupportedMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 505
    .restart local v28       #model:Lcom/android/mms/model/MediaModel;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/mms/ui/ExtractObjectViewActivity;->isPartExist(Lcom/android/mms/model/MediaModel;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 506
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mParts:Ljava/util/ArrayList;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ExtractObjectViewActivity;->slidenum:[I

    add-int/lit8 v22, v23, 0x1

    .end local v23           #j:I
    .restart local v22       #j:I
    add-int/lit8 v7, v31, 0x1

    aput v7, v4, v23

    .line 499
    .end local v27           #mediaName:Ljava/lang/String;
    .end local v28           #model:Lcom/android/mms/model/MediaModel;
    :goto_4
    add-int/lit8 v21, v21, 0x1

    move/from16 v23, v22

    .end local v22           #j:I
    .restart local v23       #j:I
    goto :goto_3

    .line 510
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/mms/ui/ExtractObjectViewActivity;->insertParts(Lcom/google/android/mms/pdu/PduPart;)I

    move-result v4

    if-gez v4, :cond_15

    .line 512
    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 515
    :cond_5
    const/4 v4, 0x1

    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-static {v0, v1, v4}, Lcom/android/mms/model/MediaModelFactory;->getMediaModel(Landroid/content/Context;Lcom/google/android/mms/pdu/PduPart;Z)Lcom/android/mms/model/MediaModel;

    move-result-object v28

    .line 516
    .restart local v28       #model:Lcom/android/mms/model/MediaModel;
    if-eqz v28, :cond_15

    .line 517
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mParts:Ljava/util/ArrayList;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ExtractObjectViewActivity;->slidenum:[I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Landroid/drm/mobile1/DrmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    add-int/lit8 v22, v23, 0x1

    .end local v23           #j:I
    .restart local v22       #j:I
    const/4 v7, -0x1

    :try_start_2
    aput v7, v4, v23
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/drm/mobile1/DrmException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_4

    .line 520
    :catch_1
    move-exception v20

    .line 522
    .end local v28           #model:Lcom/android/mms/model/MediaModel;
    .local v20, e:Ljava/lang/IllegalArgumentException;
    :goto_5
    invoke-virtual/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_4

    .line 523
    .end local v20           #e:Ljava/lang/IllegalArgumentException;
    .end local v22           #j:I
    .restart local v23       #j:I
    :catch_2
    move-exception v20

    move/from16 v22, v23

    .line 525
    .end local v23           #j:I
    .local v20, e:Landroid/drm/mobile1/DrmException;
    .restart local v22       #j:I
    :goto_6
    invoke-virtual/range {v20 .. v20}, Landroid/drm/mobile1/DrmException;->printStackTrace()V

    goto :goto_4

    .line 526
    .end local v20           #e:Landroid/drm/mobile1/DrmException;
    .end local v22           #j:I
    .restart local v23       #j:I
    :catch_3
    move-exception v20

    move/from16 v22, v23

    .line 528
    .end local v23           #j:I
    .local v20, e:Ljava/io/IOException;
    .restart local v22       #j:I
    :goto_7
    invoke-virtual/range {v20 .. v20}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .end local v5           #type:Ljava/lang/String;
    .end local v20           #e:Ljava/io/IOException;
    .end local v22           #j:I
    .end local v29           #part:Lcom/google/android/mms/pdu/PduPart;
    .restart local v23       #j:I
    :cond_6
    move/from16 v22, v23

    .line 536
    .end local v23           #j:I
    .end local v31           #partSize:I
    .restart local v22       #j:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v0, v4, [Lcom/google/android/mms/pdu/PduPart;

    move-object/from16 v16, v0

    .line 537
    .local v16, PartArray:[Lcom/google/android/mms/pdu/PduPart;
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 539
    .local v34, vCardCalParts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/mms/pdu/PduPart;>;"
    const/16 v21, 0x0

    move/from16 v23, v22

    .end local v22           #j:I
    .restart local v23       #j:I
    :goto_8
    move/from16 v0, v21

    move/from16 v1, v30

    if-ge v0, v1, :cond_11

    .line 540
    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v29

    .line 541
    .restart local v29       #part:Lcom/google/android/mms/pdu/PduPart;
    new-instance v5, Ljava/lang/String;

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    .line 545
    .restart local v5       #type:Ljava/lang/String;
    :try_start_3
    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 546
    new-instance v19, Lcom/android/mms/drm/DrmWrapper;

    const/4 v4, 0x0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v7

    move-object/from16 v0, v19

    invoke-direct {v0, v5, v4, v7}, Lcom/android/mms/drm/DrmWrapper;-><init>(Ljava/lang/String;Landroid/net/Uri;[B)V

    .line 548
    .local v19, drmObject:Lcom/android/mms/drm/DrmWrapper;
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/drm/DrmWrapper;->getContentType()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v5

    .line 555
    .end local v19           #drmObject:Lcom/android/mms/drm/DrmWrapper;
    :cond_8
    :goto_9
    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/mms/ui/ExtractObjectViewActivity;->isSupportedType(Lcom/google/android/mms/pdu/PduPart;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 559
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/mms/ui/ExtractObjectViewActivity;->insertParts(Lcom/google/android/mms/pdu/PduPart;)I

    move-result v32

    .line 560
    .local v32, position:I
    if-ltz v32, :cond_a

    .line 561
    aput-object v29, v16, v32

    :cond_a
    move/from16 v22, v23

    .line 539
    .end local v23           #j:I
    .end local v32           #position:I
    .restart local v22       #j:I
    :goto_a
    add-int/lit8 v21, v21, 0x1

    move/from16 v23, v22

    .end local v22           #j:I
    .restart local v23       #j:I
    goto :goto_8

    .line 550
    :catch_4
    move-exception v20

    .line 551
    .local v20, e:Ljava/lang/Exception;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 565
    .end local v20           #e:Ljava/lang/Exception;
    :cond_b
    const-string v4, "text/x-vCard"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 567
    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v25

    .line 568
    .local v25, location:[B
    if-nez v25, :cond_c

    .line 569
    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v25

    .line 571
    :cond_c
    if-nez v25, :cond_d

    .line 572
    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v25

    .line 574
    :cond_d
    new-instance v3, Lcom/android/mms/model/VCardModel;

    new-instance v6, Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v7

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduPart;->getExtraUri()Landroid/net/Uri;

    move-result-object v8

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/mms/model/VCardModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLandroid/net/Uri;)V

    .line 576
    .local v3, vcard:Lcom/android/mms/model/VCardModel;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ExtractObjectViewActivity;->slidenum:[I

    add-int/lit8 v22, v23, 0x1

    .end local v23           #j:I
    .restart local v22       #j:I
    const/16 v7, 0x63

    aput v7, v4, v23

    .line 583
    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 585
    .end local v3           #vcard:Lcom/android/mms/model/VCardModel;
    .end local v22           #j:I
    .end local v25           #location:[B
    .restart local v23       #j:I
    :cond_e
    const-string v4, "text/x-vCalendar"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 587
    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v25

    .line 588
    .restart local v25       #location:[B
    if-nez v25, :cond_f

    .line 589
    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v25

    .line 591
    :cond_f
    if-nez v25, :cond_10

    .line 592
    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v25

    .line 594
    :cond_10
    new-instance v6, Lcom/android/mms/model/VCalendarModel;

    new-instance v9, Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v10

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduPart;->getExtraUri()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduPart;->getVcalStart()J

    move-result-wide v12

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduPart;->getVcalEnd()J

    move-result-wide v14

    move-object/from16 v7, p0

    move-object v8, v5

    invoke-direct/range {v6 .. v15}, Lcom/android/mms/model/VCalendarModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLandroid/net/Uri;JJ)V

    .line 598
    .local v6, vcal:Lcom/android/mms/model/VCalendarModel;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ExtractObjectViewActivity;->slidenum:[I

    add-int/lit8 v22, v23, 0x1

    .end local v23           #j:I
    .restart local v22       #j:I
    const/16 v7, 0x63

    aput v7, v4, v23

    .line 605
    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 612
    .end local v5           #type:Ljava/lang/String;
    .end local v6           #vcal:Lcom/android/mms/model/VCalendarModel;
    .end local v22           #j:I
    .end local v25           #location:[B
    .end local v29           #part:Lcom/google/android/mms/pdu/PduPart;
    .restart local v23       #j:I
    :cond_11
    const/16 v17, 0x0

    .local v17, a:I
    :goto_b
    move-object/from16 v0, v16

    array-length v4, v0

    move/from16 v0, v17

    if-ge v0, v4, :cond_12

    .line 613
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mSaveParts:Ljava/util/ArrayList;

    aget-object v7, v16, v17

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    add-int/lit8 v17, v17, 0x1

    goto :goto_b

    .line 615
    :cond_12
    const/16 v17, 0x0

    :goto_c
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v17

    if-ge v0, v4, :cond_13

    .line 616
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mSaveParts:Ljava/util/ArrayList;

    move-object/from16 v0, v34

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    add-int/lit8 v17, v17, 0x1

    goto :goto_c

    .line 619
    :cond_13
    new-instance v4, Lcom/android/mms/ui/ExtractObjectViewActivity$PartsListAdapter;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mParts:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/ui/ExtractObjectViewActivity;->slidenum:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v4, v0, v1, v7, v8}, Lcom/android/mms/ui/ExtractObjectViewActivity$PartsListAdapter;-><init>(Lcom/android/mms/ui/ExtractObjectViewActivity;Landroid/content/Context;Ljava/util/ArrayList;[I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mPartsListAdapter:Lcom/android/mms/ui/ExtractObjectViewActivity$PartsListAdapter;

    .line 620
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mList:Lcom/htc/widget/HtcListView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mPartsListAdapter:Lcom/android/mms/ui/ExtractObjectViewActivity$PartsListAdapter;

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_2

    .line 526
    .end local v16           #PartArray:[Lcom/google/android/mms/pdu/PduPart;
    .end local v17           #a:I
    .end local v23           #j:I
    .end local v34           #vCardCalParts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/mms/pdu/PduPart;>;"
    .restart local v5       #type:Ljava/lang/String;
    .restart local v22       #j:I
    .restart local v28       #model:Lcom/android/mms/model/MediaModel;
    .restart local v29       #part:Lcom/google/android/mms/pdu/PduPart;
    .restart local v31       #partSize:I
    :catch_5
    move-exception v20

    goto/16 :goto_7

    .line 523
    :catch_6
    move-exception v20

    goto/16 :goto_6

    .line 520
    .end local v22           #j:I
    .end local v28           #model:Lcom/android/mms/model/MediaModel;
    .restart local v23       #j:I
    :catch_7
    move-exception v20

    move/from16 v22, v23

    .end local v23           #j:I
    .restart local v22       #j:I
    goto/16 :goto_5

    .end local v22           #j:I
    .end local v31           #partSize:I
    .restart local v16       #PartArray:[Lcom/google/android/mms/pdu/PduPart;
    .restart local v23       #j:I
    .restart local v34       #vCardCalParts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/mms/pdu/PduPart;>;"
    :cond_14
    move/from16 v22, v23

    .end local v23           #j:I
    .restart local v22       #j:I
    goto/16 :goto_a

    .end local v16           #PartArray:[Lcom/google/android/mms/pdu/PduPart;
    .end local v22           #j:I
    .end local v34           #vCardCalParts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/mms/pdu/PduPart;>;"
    .restart local v23       #j:I
    .restart local v31       #partSize:I
    :cond_15
    move/from16 v22, v23

    .end local v23           #j:I
    .restart local v22       #j:I
    goto/16 :goto_4
.end method

.method private insertParts(Lcom/google/android/mms/pdu/PduPart;)I
    .locals 4
    .parameter "part"

    .prologue
    .line 627
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 629
    .local v2, type:Ljava/lang/String;
    const-string v3, "text/x-vCard"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "text/x-vCalendar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 630
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getExtraUri()Landroid/net/Uri;

    move-result-object v1

    .line 635
    .local v1, partUri:Landroid/net/Uri;
    :goto_0
    if-eqz v1, :cond_5

    .line 636
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 637
    iget-object v3, p0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/MediaModel;

    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 650
    .end local v0           #i:I
    :cond_1
    :goto_2
    return v0

    .line 632
    .end local v1           #partUri:Landroid/net/Uri;
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v1

    .restart local v1       #partUri:Landroid/net/Uri;
    goto :goto_0

    .line 641
    .restart local v0       #i:I
    :cond_3
    iget-object v3, p0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/MediaModel;

    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 642
    iget-object v3, p0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/MediaModel;

    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->getDrmObject()Lcom/android/mms/drm/DrmWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/drm/DrmWrapper;->getOriginalUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 636
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 650
    .end local v0           #i:I
    :cond_5
    const/4 v0, -0x1

    goto :goto_2
.end method

.method private isPartExist(Lcom/android/mms/model/MediaModel;)Z
    .locals 4
    .parameter "model"

    .prologue
    .line 442
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 443
    .local v2, uri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/MediaModel;

    .line 444
    .local v1, part:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v3

    if-ne v3, v2, :cond_0

    .line 445
    const/4 v3, 0x1

    .line 447
    .end local v1           #part:Lcom/android/mms/model/MediaModel;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isSupportedType(Lcom/google/android/mms/pdu/PduPart;)Z
    .locals 8
    .parameter "part"

    .prologue
    const/4 v5, 0x0

    .line 907
    new-instance v3, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/String;-><init>([B)V

    .line 908
    .local v3, type:Ljava/lang/String;
    const/4 v2, 0x1

    .line 910
    .local v2, supported:Z
    invoke-static {v3}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 913
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([B)V

    .line 914
    .local v0, contentType:Ljava/lang/String;
    new-instance v4, Lcom/android/mms/drm/DrmWrapper;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v7

    invoke-direct {v4, v0, v6, v7}, Lcom/android/mms/drm/DrmWrapper;-><init>(Ljava/lang/String;Landroid/net/Uri;[B)V

    .line 915
    .local v4, wrapper:Lcom/android/mms/drm/DrmWrapper;
    invoke-virtual {v4}, Lcom/android/mms/drm/DrmWrapper;->isSDContent()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_1

    const/4 v2, 0x1

    .end local v0           #contentType:Ljava/lang/String;
    .end local v4           #wrapper:Lcom/android/mms/drm/DrmWrapper;
    :goto_0
    move v5, v2

    .line 928
    :cond_0
    return v5

    .restart local v0       #contentType:Ljava/lang/String;
    .restart local v4       #wrapper:Lcom/android/mms/drm/DrmWrapper;
    :cond_1
    move v2, v5

    .line 915
    goto :goto_0

    .line 916
    .end local v0           #contentType:Ljava/lang/String;
    .end local v4           #wrapper:Lcom/android/mms/drm/DrmWrapper;
    :catch_0
    move-exception v1

    .line 917
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 918
    const/4 v2, 0x0

    goto :goto_0

    .line 922
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    const-string v6, "text/html"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 926
    invoke-static {v3}, Lcom/google/android/mms/ContentType;->isSupportedType(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method private saveAttachments(Z)V
    .locals 12
    .parameter "replace"

    .prologue
    const v11, 0x7f090148

    .line 253
    const/4 v0, 0x0

    .line 254
    .local v0, count:I
    const/4 v6, 0x0

    .line 255
    .local v6, isFullStorage:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ExtractObjectViewActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/widget/HtcListView;->getCount()I

    move-result v10

    if-ge v2, v10, :cond_0

    .line 256
    iget-object v10, p0, Lcom/android/mms/ui/ExtractObjectViewActivity;->checkArray:[Z

    aget-boolean v10, v10, v2

    if-eqz v10, :cond_4

    .line 258
    iget-object v10, p0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mSaveParts:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v2, v10, :cond_3

    .line 316
    :cond_0
    :goto_1
    if-lez v0, :cond_1

    .line 317
    const/4 v10, 0x1

    if-le v0, v10, :cond_7

    .line 318
    const v10, 0x7f09014e

    invoke-static {p0, v11, v10}, Lcom/android/mms/ui/MessageUtils;->displayDialog(Landroid/content/Context;II)V

    .line 326
    :cond_1
    :goto_2
    if-nez v6, :cond_2

    .line 327
    invoke-virtual {p0}, Lcom/android/mms/ui/ExtractObjectViewActivity;->finish()V

    .line 329
    :cond_2
    return-void

    .line 261
    :cond_3
    iget-object v10, p0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mSaveParts:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/mms/pdu/PduPart;

    .line 263
    .local v7, item:Lcom/google/android/mms/pdu/PduPart;
    new-instance v9, Ljava/lang/String;

    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([B)V

    .line 264
    .local v9, type:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThreadDetailViewEnhance()Z

    move-result v10

    if-nez v10, :cond_5

    const-string v10, "text/x-vCard"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 267
    invoke-static {p0, v7}, Lcom/android/mms/ui/MessageUtils;->getVcardByteArray(Landroid/content/Context;Lcom/google/android/mms/pdu/PduPart;)[B

    move-result-object v8

    .line 268
    .local v8, mVcard:[B
    if-eqz v8, :cond_4

    .line 270
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 271
    .local v5, intent:Landroid/content/Intent;
    const-string v10, "android.intent.action.IMPORT_VCARD_SELECT_FIELDS"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    const-string v10, "result"

    invoke-virtual {v5, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 276
    const-wide/16 v3, -0x1

    .line 278
    .local v3, id:J
    :try_start_0
    iget-object v10, p0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-wide v3

    .line 282
    :goto_3
    const-string v10, "MMS_ID"

    invoke-virtual {v5, v10, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 285
    const/16 v10, 0x3e

    invoke-virtual {p0, v5, v10}, Lcom/android/mms/ui/ExtractObjectViewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 255
    .end local v3           #id:J
    .end local v5           #intent:Landroid/content/Intent;
    .end local v7           #item:Lcom/google/android/mms/pdu/PduPart;
    .end local v8           #mVcard:[B
    .end local v9           #type:Ljava/lang/String;
    :cond_4
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 289
    .restart local v7       #item:Lcom/google/android/mms/pdu/PduPart;
    .restart local v9       #type:Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThreadDetailViewEnhance()Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "text/x-vCalendar"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 292
    const-wide/16 v3, -0x1

    .line 294
    .restart local v3       #id:J
    :try_start_1
    iget-object v10, p0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v3

    .line 299
    :goto_5
    invoke-static {p0, v7, v3, v4}, Lcom/android/mms/ui/MessageUtils;->launchVcalendarPrompt(Landroid/content/Context;Lcom/google/android/mms/pdu/PduPart;J)V

    goto :goto_4

    .line 304
    .end local v3           #id:J
    :cond_6
    const/4 v10, 0x0

    :try_start_2
    invoke-static {p0, v7, v10, p1}, Lcom/android/mms/ui/MessageUtils;->copyPart(Landroid/content/Context;Lcom/google/android/mms/pdu/PduPart;ZZ)Z
    :try_end_2
    .catch Lcom/android/mms/StorageFullException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v10

    if-eqz v10, :cond_4

    .line 306
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 308
    :catch_0
    move-exception v1

    .line 309
    .local v1, e:Lcom/android/mms/StorageFullException;
    const/4 v6, 0x1

    .line 310
    goto/16 :goto_1

    .line 322
    .end local v1           #e:Lcom/android/mms/StorageFullException;
    .end local v7           #item:Lcom/google/android/mms/pdu/PduPart;
    .end local v9           #type:Ljava/lang/String;
    :cond_7
    const v10, 0x7f09014f

    invoke-static {p0, v11, v10}, Lcom/android/mms/ui/MessageUtils;->displayDialog(Landroid/content/Context;II)V

    goto/16 :goto_2

    .line 295
    .restart local v3       #id:J
    .restart local v7       #item:Lcom/google/android/mms/pdu/PduPart;
    .restart local v9       #type:Ljava/lang/String;
    :catch_1
    move-exception v10

    goto :goto_5

    .line 279
    .restart local v5       #intent:Landroid/content/Intent;
    .restart local v8       #mVcard:[B
    :catch_2
    move-exception v10

    goto :goto_3
.end method


# virtual methods
.method public handleItemclick(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 655
    iget-object v1, p0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListView;->setClickable(Z)V

    .line 657
    iget-object v1, p0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mList:Lcom/htc/widget/HtcListView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setChoiceMode(I)V

    .line 660
    if-eqz p1, :cond_2

    .line 661
    const-string v1, "check_array"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ExtractObjectViewActivity;->checkArray:[Z

    .line 662
    const-string v1, "select_all"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mSelectAll:Z

    .line 663
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/ExtractObjectViewActivity;->checkArray:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 664
    iget-object v1, p0, Lcom/android/mms/ui/ExtractObjectViewActivity;->checkArray:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mSelectAll:Z

    if-eqz v1, :cond_1

    .line 665
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ExtractObjectViewActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    .line 666
    iget-object v1, p0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mCheckOk:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 667
    iget-object v1, p0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mCheckOk:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 668
    iget-object v1, p0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mCheckOk:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setFocusable(Z)V

    .line 663
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 672
    .end local v0           #i:I
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/ExtractObjectViewActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->getCount()I

    move-result v1

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/mms/ui/ExtractObjectViewActivity;->checkArray:[Z

    .line 673
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ExtractObjectViewActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 674
    iget-object v1, p0, Lcom/android/mms/ui/ExtractObjectViewActivity;->checkArray:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 673
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 677
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mList:Lcom/htc/widget/HtcListView;

    new-instance v2, Lcom/android/mms/ui/ExtractObjectViewActivity$5;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ExtractObjectViewActivity$5;-><init>(Lcom/android/mms/ui/ExtractObjectViewActivity;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 698
    return-void
.end method

.method public initButton()V
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mCheckOk:Landroid/widget/Button;

    new-instance v1, Lcom/android/mms/ui/ExtractObjectViewActivity$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ExtractObjectViewActivity$3;-><init>(Lcom/android/mms/ui/ExtractObjectViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    iget-object v0, p0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mCheckCancel:Landroid/widget/Button;

    new-instance v1, Lcom/android/mms/ui/ExtractObjectViewActivity$4;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ExtractObjectViewActivity$4;-><init>(Lcom/android/mms/ui/ExtractObjectViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const-wide/16 v7, 0x0

    const-wide/16 v5, -0x1

    .line 334
    const/16 v4, 0x3e

    if-ne p1, v4, :cond_1

    const/4 v4, -0x1

    if-ne p2, v4, :cond_1

    .line 336
    invoke-static {}, Lcom/android/mms/util/VCardSaveIndicatorCache;->getInstance()Lcom/android/mms/util/VCardSaveIndicatorCache;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 337
    const-string v4, "SMS_ID"

    invoke-virtual {p3, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 338
    .local v2, smsID:J
    const-string v4, "MMS_ID"

    invoke-virtual {p3, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 339
    .local v0, mmsID:J
    cmp-long v4, v2, v7

    if-ltz v4, :cond_0

    .line 340
    invoke-static {v2, v3}, Lcom/android/mms/util/VCardSaveIndicatorCache;->saveMmsVCard(J)V

    .line 343
    :cond_0
    cmp-long v4, v0, v7

    if-ltz v4, :cond_1

    .line 344
    invoke-static {v0, v1}, Lcom/android/mms/util/VCardSaveIndicatorCache;->saveSmsVCard(J)V

    .line 348
    .end local v0           #mmsID:J
    .end local v2           #smsID:J
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 420
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 422
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {p0}, Lcom/android/mms/ui/ExtractObjectViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/ExtractObjectViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->getWindowBackgroundRes(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 427
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 136
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 137
    invoke-virtual {p0, v8}, Lcom/android/mms/ui/ExtractObjectViewActivity;->requestWindowFeature(I)Z

    .line 139
    const/4 v4, 0x2

    new-array v3, v4, [I

    fill-array-data v3, :array_0

    .line 140
    .local v3, footerId:[I
    sget-object v4, Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;->HEADER_SHORT:Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;

    const v5, 0x7f090148

    invoke-static {p0, v4, v5, v7, v3}, Lcom/android/mms/util/CommonActivityLayout;->createSimpleTextHeaderActivityLayout(Landroid/content/Context;Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;II[I)Lcom/android/mms/util/CommonActivityLayout$LayoutController;

    move-result-object v0

    .line 143
    .local v0, controller:Lcom/android/mms/util/CommonActivityLayout$LayoutController;
    invoke-virtual {v0}, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->getActivityContentView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/ExtractObjectViewActivity;->setContentView(Landroid/view/View;)V

    .line 145
    invoke-virtual {p0}, Lcom/android/mms/ui/ExtractObjectViewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 146
    invoke-virtual {p0}, Lcom/android/mms/ui/ExtractObjectViewActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mList:Lcom/htc/widget/HtcListView;

    .line 148
    iget-object v4, p0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->setRoundedCorner(Landroid/view/View;)V

    .line 150
    iget-object v4, p0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListView;->setFillEmpty(Z)V

    .line 152
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportPhoneStorage()Z

    move-result v4

    if-nez v4, :cond_0

    .line 153
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->hasStorageCard()Z

    move-result v4

    if-nez v4, :cond_0

    .line 156
    const v4, 0x7f090160

    const v5, 0x7f0901e3

    invoke-static {p0, v4, v5}, Lcom/android/mms/ui/MessageUtils;->displayDialog(Landroid/content/Context;II)V

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ExtractObjectViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mUri:Landroid/net/Uri;

    .line 162
    iget-object v4, p0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mUri:Landroid/net/Uri;

    if-nez v4, :cond_2

    .line 163
    const-string v4, "ExtractObjectViewActivity"

    const-string v5, "Cannot startup activity, null Uri."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {p0}, Lcom/android/mms/ui/ExtractObjectViewActivity;->finish()V

    .line 205
    :cond_1
    :goto_0
    return-void

    .line 169
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/ExtractObjectViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 172
    invoke-virtual {p0}, Lcom/android/mms/ui/ExtractObjectViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "EXTRACT_UNDER_PLAYING"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 173
    invoke-virtual {p0, v7}, Lcom/android/mms/ui/ExtractObjectViewActivity;->setResult(I)V

    .line 180
    :cond_3
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/ExtractObjectViewActivity;->initSlideList()V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_1
    invoke-virtual {v0}, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->getFooterComposer()Lcom/android/mms/util/CommonActivityLayout$FooterComposer;

    move-result-object v2

    .line 187
    .local v2, footer:Lcom/android/mms/util/CommonActivityLayout$FooterComposer;
    iget-object v4, v2, Lcom/android/mms/util/CommonActivityLayout$FooterComposer;->mChild:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;->getView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mCheckOk:Landroid/widget/Button;

    .line 188
    invoke-static {}, Lcom/android/mms/MmsApp;->isSenseLandscape()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 189
    iget-object v4, p0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mCheckOk:Landroid/widget/Button;

    const v5, 0x7f02000b

    invoke-virtual {v4, v6, v5, v6, v6}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 190
    :cond_4
    iget-object v4, p0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mCheckOk:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 191
    iget-object v4, p0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mCheckOk:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setFocusable(Z)V

    .line 192
    iget-object v4, v2, Lcom/android/mms/util/CommonActivityLayout$FooterComposer;->mChild:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;->getView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mCheckCancel:Landroid/widget/Button;

    .line 193
    invoke-static {}, Lcom/android/mms/MmsApp;->isSenseLandscape()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 194
    iget-object v4, p0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mCheckCancel:Landroid/widget/Button;

    const v5, 0x7f02000c

    invoke-virtual {v4, v6, v5, v6, v6}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 196
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ExtractObjectViewActivity;->handleItemclick(Landroid/os/Bundle;)V

    .line 198
    invoke-virtual {p0}, Lcom/android/mms/ui/ExtractObjectViewActivity;->initButton()V

    .line 200
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_0()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 201
    invoke-virtual {p0}, Lcom/android/mms/ui/ExtractObjectViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/mms/ui/ExtractObjectViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->getWindowBackgroundRes(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_0

    .line 181
    .end local v2           #footer:Lcom/android/mms/util/CommonActivityLayout$FooterComposer;
    :catch_0
    move-exception v1

    .line 182
    .local v1, e:Lcom/google/android/mms/MmsException;
    const-string v4, "ExtractObjectViewActivity"

    const-string v5, "Failed to initialize the slide-list."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    invoke-virtual {p0}, Lcom/android/mms/ui/ExtractObjectViewActivity;->finish()V

    goto :goto_1

    .line 139
    nop

    :array_0
    .array-data 0x4
        0x64t 0x1t 0xct 0x2t
        0x37t 0x0t 0x9t 0x7ft
    .end array-data
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 211
    packed-switch p1, :pswitch_data_0

    .line 228
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 213
    :pswitch_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0200d1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900ef

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901e8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901e6

    new-instance v2, Lcom/android/mms/ui/ExtractObjectViewActivity$2;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ExtractObjectViewActivity$2;-><init>(Lcom/android/mms/ui/ExtractObjectViewActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901e7

    new-instance v2, Lcom/android/mms/ui/ExtractObjectViewActivity$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ExtractObjectViewActivity$1;-><init>(Lcom/android/mms/ui/ExtractObjectViewActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 702
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 703
    const v0, 0x7f090062

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02012c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 705
    const v0, 0x20c013a

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020135

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 708
    return v3
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 437
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onDestroy()V

    .line 438
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 713
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 743
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :goto_0
    return v3

    .line 715
    :pswitch_0
    const-string v4, "ANALYTIC_Mms"

    const-string v5, "[ExtractObjectViewActivity]Preview"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    invoke-virtual {p0}, Lcom/android/mms/ui/ExtractObjectViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 718
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v4, "EXTRACT_UNDER_PLAYING"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 719
    invoke-virtual {p0}, Lcom/android/mms/ui/ExtractObjectViewActivity;->finish()V

    goto :goto_0

    .line 724
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 726
    .local v2, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 727
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ExtractObjectViewActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 730
    .end local v0           #action:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_1
    const-string v4, "ANALYTIC_Mms"

    const-string v5, "[ExtractObjectViewActivity]Select all"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ExtractObjectViewActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcListView;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 735
    iget-object v4, p0, Lcom/android/mms/ui/ExtractObjectViewActivity;->checkArray:[Z

    aput-boolean v3, v4, v1

    .line 736
    iget-object v4, p0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v4, v1, v3}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    .line 734
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 738
    :cond_1
    iput-boolean v3, p0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mSelectAll:Z

    .line 739
    iget-object v4, p0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mCheckOk:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 740
    iget-object v4, p0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mCheckOk:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setFocusable(Z)V

    goto :goto_0

    .line 713
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 430
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onPause()V

    .line 431
    iget-object v0, p0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mPartsListAdapter:Lcom/android/mms/ui/ExtractObjectViewActivity$PartsListAdapter;

    if-eqz v0, :cond_0

    .line 432
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mPartsListAdapter:Lcom/android/mms/ui/ExtractObjectViewActivity$PartsListAdapter;

    .line 433
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 416
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onResume()V

    .line 417
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 409
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 410
    const-string v0, "check_array"

    iget-object v1, p0, Lcom/android/mms/ui/ExtractObjectViewActivity;->checkArray:[Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 411
    const-string v0, "select_all"

    iget-boolean v1, p0, Lcom/android/mms/ui/ExtractObjectViewActivity;->mSelectAll:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 412
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 85
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onStop()V

    .line 89
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/mms/ui/MessageUtils;->detectGotoHome(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/android/mms/ui/ExtractObjectViewActivity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ExtractObjectViewActivity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SlideshowActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    invoke-static {}, Lcom/android/mms/dom/smil/SmilPlayer;->getPlayer()Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v0

    .line 93
    .local v0, mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;
    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->stop()V

    .line 97
    .end local v0           #mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ExtractObjectViewActivity;->finish()V

    .line 100
    :cond_1
    return-void
.end method
