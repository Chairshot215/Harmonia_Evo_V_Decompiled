.class public Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;
.super Lcom/android/mms/view/impl/MultimediaMessageViewImpl;
.source "RelatedMultimediaMessageViewImpl.java"

# interfaces
.implements Lcom/android/mms/view/RelatedMultimediaMessageView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl$CreatePreviewTask;
    }
.end annotation


# instance fields
.field mCreatePreviewTask:Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl$CreatePreviewTask;

.field private mMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

.field private mViewList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;-><init>(Landroid/content/Context;)V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->mCreatePreviewTask:Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl$CreatePreviewTask;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->mViewList:Ljava/util/HashMap;

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->mCreatePreviewTask:Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl$CreatePreviewTask;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->mViewList:Ljava/util/HashMap;

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;)Lcom/android/mms/msg/RelatedMultimediaMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    return-object v0
.end method

.method private getSlideAttachmentItemView(ZI)Lcom/android/mms/ui/SlideAttachmentItemView;
    .locals 5
    .parameter "isCache"
    .parameter "i"

    .prologue
    .line 458
    const/4 v0, 0x0

    .line 459
    .local v0, slideAttachmentView:Lcom/android/mms/ui/SlideAttachmentItemView;
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mSlideAttachmentList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 460
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mSlideAttachmentList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #slideAttachmentView:Lcom/android/mms/ui/SlideAttachmentItemView;
    check-cast v0, Lcom/android/mms/ui/SlideAttachmentItemView;

    .line 462
    .restart local v0       #slideAttachmentView:Lcom/android/mms/ui/SlideAttachmentItemView;
    if-eqz v0, :cond_0

    .line 463
    invoke-virtual {v0}, Lcom/android/mms/ui/SlideAttachmentItemView;->reset()V

    .line 467
    :cond_0
    if-nez v0, :cond_1

    .line 469
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030036

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .end local v0           #slideAttachmentView:Lcom/android/mms/ui/SlideAttachmentItemView;
    check-cast v0, Lcom/android/mms/ui/SlideAttachmentItemView;

    .line 470
    .restart local v0       #slideAttachmentView:Lcom/android/mms/ui/SlideAttachmentItemView;
    if-nez p1, :cond_1

    .line 471
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mSlideAttachmentList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    :cond_1
    return-object v0
.end method

.method private presentMedia(Lcom/android/mms/model/SlideshowModel;)V
    .locals 29
    .parameter "model"

    .prologue
    .line 347
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v4

    invoke-static {v4}, Lcom/android/mms/MmsApp;->isSupportLargeSlidesCache(I)Z

    move-result v24

    .line 348
    .local v24, isCache:Z
    const/16 v21, 0x0

    .line 350
    .local v21, i:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mMmsView:Landroid/view/View;

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 352
    const/16 v28, 0x0

    .line 353
    .local v28, view:Landroid/widget/LinearLayout;
    if-eqz v24, :cond_2

    .line 354
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->mViewList:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    invoke-virtual {v5}, Lcom/android/mms/msg/RelatedMultimediaMessage;->getMessageId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    .end local v28           #view:Landroid/widget/LinearLayout;
    check-cast v28, Landroid/widget/LinearLayout;

    .line 355
    .restart local v28       #view:Landroid/widget/LinearLayout;
    if-eqz v28, :cond_1

    .line 356
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mMmsView:Landroid/view/View;

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    new-instance v28, Landroid/widget/LinearLayout;

    .end local v28           #view:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mContext:Landroid/content/Context;

    move-object/from16 v0, v28

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 361
    .restart local v28       #view:Landroid/widget/LinearLayout;
    const/4 v4, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 364
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    invoke-virtual {v4}, Lcom/android/mms/msg/RelatedMultimediaMessage;->hasOtherAttachment()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 365
    add-int/lit8 v22, v21, 0x1

    .end local v21           #i:I
    .local v22, i:I
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->getSlideAttachmentItemView(ZI)Lcom/android/mms/ui/SlideAttachmentItemView;

    move-result-object v3

    .line 366
    .local v3, slideAttachmentView:Lcom/android/mms/ui/SlideAttachmentItemView;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->callerCache:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/SlideAttachmentItemView;->setCaller(Landroid/app/Activity;)V

    .line 367
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextTouchListener:Lcom/android/mms/view/impl/MultimediaMessageViewImpl$TextViewTouchListener;

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/SlideAttachmentItemView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 368
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextViewOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/SlideAttachmentItemView;->setOnPreviewClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/SlideAttachmentItemView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 371
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    invoke-virtual {v4}, Lcom/android/mms/msg/RelatedMultimediaMessage;->getAttachmentCount()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    invoke-virtual {v4}, Lcom/android/mms/msg/RelatedMultimediaMessage;->getVCardPart()Lcom/google/android/mms/pdu/PduPart;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 372
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    invoke-virtual {v4}, Lcom/android/mms/msg/RelatedMultimediaMessage;->getVCardPart()Lcom/google/android/mms/pdu/PduPart;

    move-result-object v9

    .line 373
    .local v9, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v9}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    invoke-virtual {v5}, Lcom/android/mms/msg/RelatedMultimediaMessage;->getVCardSize()I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    invoke-virtual {v7}, Lcom/android/mms/msg/RelatedMultimediaMessage;->getMessageId()J

    move-result-wide v7

    invoke-virtual/range {v3 .. v9}, Lcom/android/mms/ui/SlideAttachmentItemView;->setVCard(Ljava/lang/String;ILjava/lang/String;JLcom/google/android/mms/pdu/PduPart;)V

    .line 381
    .end local v9           #part:Lcom/google/android/mms/pdu/PduPart;
    :goto_1
    if-eqz v24, :cond_b

    .line 382
    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move/from16 v21, v22

    .line 387
    .end local v3           #slideAttachmentView:Lcom/android/mms/ui/SlideAttachmentItemView;
    .end local v22           #i:I
    .restart local v21       #i:I
    :cond_3
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/SlideshowModel;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/mms/model/SlideModel;

    .line 389
    .local v27, slide:Lcom/android/mms/model/SlideModel;
    const/4 v3, 0x0

    .line 391
    .restart local v3       #slideAttachmentView:Lcom/android/mms/ui/SlideAttachmentItemView;
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->getSlideAttachmentItemView(ZI)Lcom/android/mms/ui/SlideAttachmentItemView;

    move-result-object v3

    .line 393
    if-eqz v24, :cond_4

    .line 394
    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 396
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->callerCache:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/SlideAttachmentItemView;->setCaller(Landroid/app/Activity;)V

    .line 397
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextTouchListener:Lcom/android/mms/view/impl/MultimediaMessageViewImpl$TextViewTouchListener;

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/SlideAttachmentItemView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 398
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextViewOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/SlideAttachmentItemView;->setOnPreviewClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/SlideAttachmentItemView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 401
    if-nez v24, :cond_5

    .line 402
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mMmsView:Landroid/view/View;

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 407
    :cond_5
    const/16 v26, -0x1

    .line 408
    .local v26, mediaTop:I
    invoke-virtual/range {v27 .. v27}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 409
    invoke-virtual/range {v27 .. v27}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v25

    .line 410
    .local v25, media:Lcom/android/mms/model/ImageModel;
    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/model/ImageModel;->getSrc()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v3, v4, v0}, Lcom/android/mms/ui/SlideAttachmentItemView;->setImage(Ljava/lang/String;Lcom/android/mms/model/ImageModel;)V

    .line 411
    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/model/ImageModel;->getRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 412
    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/model/ImageModel;->getRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v26

    .line 432
    .end local v25           #media:Lcom/android/mms/model/ImageModel;
    :cond_6
    :goto_4
    invoke-virtual/range {v27 .. v27}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual/range {v27 .. v27}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 433
    invoke-virtual/range {v27 .. v27}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v25

    .line 434
    .local v25, media:Lcom/android/mms/model/AudioModel;
    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/android/mms/ui/SlideAttachmentItemView;->setAudio(Lcom/android/mms/model/AudioModel;)V

    .line 437
    .end local v25           #media:Lcom/android/mms/model/AudioModel;
    :cond_7
    invoke-virtual/range {v27 .. v27}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 438
    invoke-virtual/range {v27 .. v27}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v13

    .line 440
    .local v13, text:Lcom/android/mms/model/TextModel;
    invoke-virtual {v13}, Lcom/android/mms/model/TextModel;->getSrc()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v16

    move/from16 v0, v26

    invoke-virtual {v13, v0}, Lcom/android/mms/model/TextModel;->isTopLayout(I)Z

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextTouchListener:Lcom/android/mms/view/impl/MultimediaMessageViewImpl$TextViewTouchListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextViewOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object v14, v3

    invoke-virtual/range {v14 .. v20}, Lcom/android/mms/ui/SlideAttachmentItemView;->setText(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    .line 444
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextSize:I

    invoke-virtual {v3, v4, v5}, Lcom/android/mms/ui/SlideAttachmentItemView;->setTextSize(II)V

    .line 448
    .end local v13           #text:Lcom/android/mms/model/TextModel;
    :cond_8
    add-int/lit8 v21, v21, 0x1

    .line 449
    goto/16 :goto_3

    .line 374
    .end local v21           #i:I
    .end local v23           #i$:Ljava/util/Iterator;
    .end local v26           #mediaTop:I
    .end local v27           #slide:Lcom/android/mms/model/SlideModel;
    .restart local v22       #i:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    invoke-virtual {v4}, Lcom/android/mms/msg/RelatedMultimediaMessage;->getAttachmentCount()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    invoke-virtual {v4}, Lcom/android/mms/msg/RelatedMultimediaMessage;->getVCalendarPart()Lcom/google/android/mms/pdu/PduPart;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 375
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    invoke-virtual {v4}, Lcom/android/mms/msg/RelatedMultimediaMessage;->getVCalendarPart()Lcom/google/android/mms/pdu/PduPart;

    move-result-object v9

    .line 376
    .restart local v9       #part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v9}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    invoke-virtual {v5}, Lcom/android/mms/msg/RelatedMultimediaMessage;->getVCalendarSize()I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    invoke-virtual {v7}, Lcom/android/mms/msg/RelatedMultimediaMessage;->getMessageId()J

    move-result-wide v7

    invoke-virtual/range {v3 .. v9}, Lcom/android/mms/ui/SlideAttachmentItemView;->setVCalendar(Ljava/lang/String;ILjava/lang/String;JLcom/google/android/mms/pdu/PduPart;)V

    goto/16 :goto_1

    .line 379
    .end local v9           #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    invoke-virtual {v4}, Lcom/android/mms/msg/RelatedMultimediaMessage;->getURI()Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    invoke-virtual {v5}, Lcom/android/mms/msg/RelatedMultimediaMessage;->getAttachmentsNumber()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    invoke-virtual {v6}, Lcom/android/mms/msg/RelatedMultimediaMessage;->getAttachmentsSize()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/mms/ui/SlideAttachmentItemView;->setAttachments(Landroid/net/Uri;II)V

    goto/16 :goto_1

    .line 384
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mMmsView:Landroid/view/View;

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move/from16 v21, v22

    .end local v22           #i:I
    .restart local v21       #i:I
    goto/16 :goto_2

    .line 413
    .restart local v23       #i$:Ljava/util/Iterator;
    .restart local v26       #mediaTop:I
    .restart local v27       #slide:Lcom/android/mms/model/SlideModel;
    :cond_c
    invoke-virtual/range {v27 .. v27}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 414
    invoke-virtual/range {v27 .. v27}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v25

    .line 415
    .local v25, media:Lcom/android/mms/model/VideoModel;
    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/android/mms/ui/SlideAttachmentItemView;->setVideo(Lcom/android/mms/model/VideoModel;)V

    .line 416
    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/model/VideoModel;->getRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 417
    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/model/VideoModel;->getRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v26

    goto/16 :goto_4

    .line 418
    .end local v25           #media:Lcom/android/mms/model/VideoModel;
    :cond_d
    invoke-virtual/range {v27 .. v27}, Lcom/android/mms/model/SlideModel;->hasVcard()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 419
    const-string v13, ""

    .line 420
    .local v13, text:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Lcom/android/mms/model/SlideModel;->getVcard()Lcom/android/mms/model/VCardModel;

    move-result-object v25

    .line 421
    .local v25, media:Lcom/android/mms/model/VCardModel;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    invoke-virtual {v4}, Lcom/android/mms/msg/RelatedMultimediaMessage;->getFirstText()Lcom/android/mms/model/TextModel;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 422
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    invoke-virtual {v4}, Lcom/android/mms/msg/RelatedMultimediaMessage;->getFirstText()Lcom/android/mms/model/TextModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v13

    .line 423
    :cond_e
    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/model/VCardModel;->getSrc()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/model/VCardModel;->getMediaSize()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    invoke-virtual {v4}, Lcom/android/mms/msg/RelatedMultimediaMessage;->getMessageId()J

    move-result-wide v14

    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/model/VCardModel;->getPduPart()Lcom/google/android/mms/pdu/PduPart;

    move-result-object v16

    move-object v10, v3

    invoke-virtual/range {v10 .. v16}, Lcom/android/mms/ui/SlideAttachmentItemView;->setVCard(Ljava/lang/String;ILjava/lang/String;JLcom/google/android/mms/pdu/PduPart;)V

    goto/16 :goto_4

    .line 424
    .end local v13           #text:Ljava/lang/String;
    .end local v25           #media:Lcom/android/mms/model/VCardModel;
    :cond_f
    invoke-virtual/range {v27 .. v27}, Lcom/android/mms/model/SlideModel;->hasVCalendar()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 425
    const-string v13, ""

    .line 426
    .restart local v13       #text:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Lcom/android/mms/model/SlideModel;->getVCalendar()Lcom/android/mms/model/VCalendarModel;

    move-result-object v25

    .line 427
    .local v25, media:Lcom/android/mms/model/VCalendarModel;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    invoke-virtual {v4}, Lcom/android/mms/msg/RelatedMultimediaMessage;->getFirstText()Lcom/android/mms/model/TextModel;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 428
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    invoke-virtual {v4}, Lcom/android/mms/msg/RelatedMultimediaMessage;->getFirstText()Lcom/android/mms/model/TextModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v13

    .line 429
    :cond_10
    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/model/VCalendarModel;->getSrc()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/model/VCalendarModel;->getMediaSize()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    invoke-virtual {v4}, Lcom/android/mms/msg/RelatedMultimediaMessage;->getMessageId()J

    move-result-wide v14

    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/model/VCalendarModel;->getPduPart()Lcom/google/android/mms/pdu/PduPart;

    move-result-object v16

    move-object v10, v3

    invoke-virtual/range {v10 .. v16}, Lcom/android/mms/ui/SlideAttachmentItemView;->setVCalendar(Ljava/lang/String;ILjava/lang/String;JLcom/google/android/mms/pdu/PduPart;)V

    goto/16 :goto_4

    .line 450
    .end local v3           #slideAttachmentView:Lcom/android/mms/ui/SlideAttachmentItemView;
    .end local v13           #text:Ljava/lang/String;
    .end local v25           #media:Lcom/android/mms/model/VCalendarModel;
    .end local v26           #mediaTop:I
    .end local v27           #slide:Lcom/android/mms/model/SlideModel;
    :cond_11
    if-eqz v24, :cond_0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 451
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mMmsView:Landroid/view/View;

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 452
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->mViewList:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    invoke-virtual {v5}, Lcom/android/mms/msg/RelatedMultimediaMessage;->getMessageId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method


# virtual methods
.method public bindTo(Lcom/android/mms/msg/AbstractMessage;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->bindTo(Lcom/android/mms/msg/AbstractMessage;)V

    .line 96
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->isMultimediaMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/mms/msg/MultimediaMessage;

    invoke-virtual {v0}, Lcom/android/mms/msg/MultimediaMessage;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/vnd.wap.multipart.related"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->preBindingView()V

    move-object v0, p1

    .line 101
    check-cast v0, Lcom/android/mms/msg/RelatedMultimediaMessage;

    iput-object v0, p0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    .line 103
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThreadDetailViewEnhance()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMmsCollapseMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    invoke-static {p0, p1}, Lcom/android/mms/view/ctl/MultimediaMessageViewCtl;->bind(Lcom/android/mms/view/MessageView;Lcom/android/mms/msg/AbstractMessage;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->inflateMmsView()V

    .line 109
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->postBindingView()V

    .line 111
    :cond_0
    return-void

    .line 108
    :cond_1
    invoke-static {p0, p1}, Lcom/android/mms/view/ctl/RelatedMultimediaMessageViewCtl;->bind(Lcom/android/mms/view/MessageView;Lcom/android/mms/msg/AbstractMessage;)V

    goto :goto_0
.end method

.method public fireEvent(Lcom/android/mms/view/Event;)V
    .locals 8
    .parameter "evt"

    .prologue
    .line 115
    sget-object v5, Lcom/android/mms/view/Event;->CLICKED_PLAYBACK_EVENT:Lcom/android/mms/view/Event;

    if-ne p1, v5, :cond_5

    .line 116
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportRelatedVcardAndVcal()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 118
    iget-object v5, p0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    invoke-virtual {v5}, Lcom/android/mms/msg/RelatedMultimediaMessage;->hasVcard()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 120
    iget-object v5, p0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    invoke-virtual {v5}, Lcom/android/mms/msg/RelatedMultimediaMessage;->getVcard()Lcom/android/mms/model/VCardModel;

    move-result-object v4

    .line 121
    .local v4, vcard:Lcom/android/mms/model/VCardModel;
    const/4 v0, 0x0

    .line 122
    .local v0, data:[B
    if-eqz v4, :cond_0

    .line 124
    :try_start_0
    invoke-virtual {v4}, Lcom/android/mms/model/VCardModel;->getData()[B
    :try_end_0
    .catch Landroid/drm/mobile1/DrmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 131
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 133
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 134
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "android.intent.action.IMPORT_VCARD_SELECT_FIELDS"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const-string v5, "result"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 136
    const-string v5, "MMS_ID"

    iget-object v6, p0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    invoke-virtual {v6}, Lcom/android/mms/msg/RelatedMultimediaMessage;->getMessageId()J

    move-result-wide v6

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 137
    iget-object v5, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->callerCache:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    const/16 v6, 0x3e

    invoke-virtual {v5, v2, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 179
    .end local v0           #data:[B
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #vcard:Lcom/android/mms/model/VCardModel;
    :cond_1
    :goto_1
    return-void

    .line 125
    .restart local v0       #data:[B
    .restart local v4       #vcard:Lcom/android/mms/model/VCardModel;
    :catch_0
    move-exception v1

    .line 126
    .local v1, e:Landroid/drm/mobile1/DrmException;
    invoke-virtual {v1}, Landroid/drm/mobile1/DrmException;->printStackTrace()V

    goto :goto_0

    .line 150
    .end local v0           #data:[B
    .end local v1           #e:Landroid/drm/mobile1/DrmException;
    .end local v4           #vcard:Lcom/android/mms/model/VCardModel;
    :cond_2
    iget-object v5, p0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    invoke-virtual {v5}, Lcom/android/mms/msg/RelatedMultimediaMessage;->hasVCalendar()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 152
    iget-object v5, p0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    invoke-virtual {v5}, Lcom/android/mms/msg/RelatedMultimediaMessage;->getVCalendar()Lcom/android/mms/model/VCalendarModel;

    move-result-object v3

    .line 153
    .local v3, vcal:Lcom/android/mms/model/VCalendarModel;
    const/4 v0, 0x0

    .line 154
    .restart local v0       #data:[B
    if-eqz v3, :cond_3

    .line 156
    :try_start_1
    invoke-virtual {v3}, Lcom/android/mms/model/VCalendarModel;->getData()[B
    :try_end_1
    .catch Landroid/drm/mobile1/DrmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 164
    :cond_3
    :goto_2
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    invoke-virtual {v6}, Lcom/android/mms/msg/RelatedMultimediaMessage;->getMessageId()J

    move-result-wide v6

    invoke-static {v5, v0, v6, v7}, Lcom/android/mms/ui/MessageUtils;->launchVcalendarPrompt(Landroid/content/Context;[BJ)V

    goto :goto_1

    .line 157
    :catch_1
    move-exception v1

    .line 158
    .restart local v1       #e:Landroid/drm/mobile1/DrmException;
    invoke-virtual {v1}, Landroid/drm/mobile1/DrmException;->printStackTrace()V

    goto :goto_2

    .line 172
    .end local v0           #data:[B
    .end local v1           #e:Landroid/drm/mobile1/DrmException;
    .end local v3           #vcal:Lcom/android/mms/model/VCalendarModel;
    :cond_4
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 173
    .restart local v2       #intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    invoke-virtual {v5}, Lcom/android/mms/msg/RelatedMultimediaMessage;->getURI()Landroid/net/Uri;

    move-result-object v5

    const-string v6, "application/vnd.wap.multipart.related"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const/high16 v5, 0x1000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 175
    iget-object v5, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 176
    .end local v2           #intent:Landroid/content/Intent;
    :cond_5
    sget-object v5, Lcom/android/mms/view/Event;->CLICKED_EVENT:Lcom/android/mms/view/Event;

    if-ne p1, v5, :cond_1

    .line 177
    iget-object v5, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getUrls()[Landroid/text/style/URLSpan;

    goto :goto_1
.end method

.method public getBoundItem()Lcom/android/mms/msg/AbstractMessage;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    return-object v0
.end method

.method protected inflateMmsView()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 255
    invoke-super {p0}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->inflateMmsView()V

    .line 256
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mMmsView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->mCreatePreviewTask:Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl$CreatePreviewTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->mCreatePreviewTask:Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl$CreatePreviewTask;

    invoke-virtual {v1}, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl$CreatePreviewTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->mCreatePreviewTask:Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl$CreatePreviewTask;

    iget-object v1, v1, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl$CreatePreviewTask;->mMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    iget-object v2, p0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    if-eq v1, v2, :cond_0

    .line 259
    iget-object v1, p0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->mCreatePreviewTask:Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl$CreatePreviewTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl$CreatePreviewTask;->cancel(Z)Z

    .line 260
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->mCreatePreviewTask:Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl$CreatePreviewTask;

    .line 266
    :cond_0
    iget-object v1, p0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    invoke-virtual {v1}, Lcom/android/mms/msg/RelatedMultimediaMessage;->getMessageBody()Lcom/android/mms/model/Model;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideshowModel;

    .line 267
    .local v0, model:Lcom/android/mms/model/SlideshowModel;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 269
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThreadDetailViewEnhance()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMmsCollapseMode()Z

    move-result v1

    if-nez v1, :cond_4

    .line 270
    iget-object v1, p0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    invoke-virtual {v1}, Lcom/android/mms/msg/RelatedMultimediaMessage;->hasOtherAttachment()Z

    move-result v1

    if-nez v1, :cond_2

    .line 271
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mMmsView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 278
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThreadDetailViewEnhance()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMmsCollapseMode()Z

    move-result v1

    if-nez v1, :cond_3

    .line 279
    invoke-direct {p0, v0}, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->presentMedia(Lcom/android/mms/model/SlideshowModel;)V

    .line 280
    :cond_3
    return-void

    .line 274
    :cond_4
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mMmsView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method postBindingView()V
    .locals 0

    .prologue
    .line 296
    invoke-super {p0}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->postBindingView()V

    .line 297
    return-void
.end method

.method preBindingView()V
    .locals 1

    .prologue
    .line 289
    invoke-super {p0}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->preBindingView()V

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    .line 291
    return-void
.end method

.method public setAttachInfoText(I)V
    .locals 4
    .parameter "number"

    .prologue
    .line 328
    const-string v0, ""

    .line 329
    .local v0, size:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTypeView:Landroid/widget/TextView;

    const v2, 0x20c01f6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 331
    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090143

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 335
    :goto_0
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mDetailView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    return-void

    .line 334
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090117

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setAttachInfoText(II)V
    .locals 1
    .parameter "resId"
    .parameter "size"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->setAttachInfoText(Ljava/lang/String;I)V

    .line 302
    return-void
.end method

.method public setAttachInfoText(Ljava/lang/String;I)V
    .locals 4
    .parameter "resString"
    .parameter "Size"

    .prologue
    const v3, 0x7f090029

    .line 309
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTypeView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    const-string v0, ""

    .line 312
    .local v0, size:Ljava/lang/CharSequence;
    div-int/lit16 v1, p2, 0x400

    if-lez v1, :cond_0

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-int/lit16 v2, p2, 0x400

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 317
    :goto_0
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mDetailView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    return-void

    .line 315
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setAttachInfoText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "title"
    .parameter "detail"

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTypeView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mDetailView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    return-void
.end method

.method public setPreviewImage(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->inflateMmsView()V

    .line 183
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 188
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->enableImageView()V

    .line 189
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f020182

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setPreviewImage(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "image"

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->inflateMmsView()V

    .line 193
    if-eqz p1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 197
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->enableImageView()V

    .line 198
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f020182

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setPreviewImageBG(Lcom/android/mms/model/ImageModel;)V
    .locals 4
    .parameter "model"

    .prologue
    const/4 v3, 0x1

    .line 236
    invoke-virtual {p0}, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->inflateMmsView()V

    .line 237
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportCreatePreviewIconInBG()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->mCreatePreviewTask:Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl$CreatePreviewTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->mCreatePreviewTask:Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl$CreatePreviewTask;

    invoke-virtual {v0}, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl$CreatePreviewTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->mCreatePreviewTask:Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl$CreatePreviewTask;

    iget-object v0, v0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl$CreatePreviewTask;->mMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    iget-object v1, p0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    if-eq v0, v1, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->mCreatePreviewTask:Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl$CreatePreviewTask;

    invoke-virtual {v0, v3}, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl$CreatePreviewTask;->cancel(Z)Z

    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->mCreatePreviewTask:Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl$CreatePreviewTask;

    .line 242
    :cond_0
    new-instance v0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl$CreatePreviewTask;

    iget-object v1, p0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->mMessage:Lcom/android/mms/msg/RelatedMultimediaMessage;

    iget-object v2, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mImageView:Landroid/widget/ImageView;

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl$CreatePreviewTask;-><init>(Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;Lcom/android/mms/msg/RelatedMultimediaMessage;Lcom/android/mms/model/ImageModel;Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->mCreatePreviewTask:Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl$CreatePreviewTask;

    .line 243
    iget-object v0, p0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->mCreatePreviewTask:Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl$CreatePreviewTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl$CreatePreviewTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 248
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->enableImageView()V

    .line 249
    invoke-virtual {p0, v3}, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;->setPlayable(Z)V

    .line 250
    return-void

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/mms/model/ImageModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
