.class Lcom/android/mms/ui/PictureAndVideoAttachAdapter;
.super Lcom/android/mms/ui/IconListAdapter;
.source "AttachmentTypeSelectorAdapter.java"


# static fields
.field public static final ADD_CAMCORDER:I = 0x2

.field public static final ADD_CAMERA:I = 0x0

.field public static final ADD_PHOTOS:I = 0x1

.field public static final ADD_VIDEOS:I = 0x3

.field public static final MODE_ALL:I = 0x0

.field public static final MODE_PICTURE:I = 0x1

.field public static final MODE_VIDEO:I = 0x2


# instance fields
.field private mContext:Landroid/content/Context;

.field public mMode:I

.field private mResizeImage:Z

.field protected m_SlideSizeLimit:I

.field protected m_mediaPicker:Lcom/android/mms/ui/MediaPicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/ui/MediaPicker;IZ)V
    .locals 2
    .parameter "context"
    .parameter "mediaPicker"
    .parameter "mode"
    .parameter "bResizeImage"

    .prologue
    const/4 v1, 0x0

    .line 521
    invoke-static {p1, p3}, Lcom/android/mms/ui/PictureAndVideoAttachAdapter;->getData(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/IconListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 505
    iput v1, p0, Lcom/android/mms/ui/PictureAndVideoAttachAdapter;->mMode:I

    .line 509
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/PictureAndVideoAttachAdapter;->mResizeImage:Z

    .line 522
    iput-object p2, p0, Lcom/android/mms/ui/PictureAndVideoAttachAdapter;->m_mediaPicker:Lcom/android/mms/ui/MediaPicker;

    .line 523
    iput p3, p0, Lcom/android/mms/ui/PictureAndVideoAttachAdapter;->mMode:I

    .line 524
    iput-object p1, p0, Lcom/android/mms/ui/PictureAndVideoAttachAdapter;->mContext:Landroid/content/Context;

    .line 525
    iput-boolean p4, p0, Lcom/android/mms/ui/PictureAndVideoAttachAdapter;->mResizeImage:Z

    .line 526
    iput v1, p0, Lcom/android/mms/ui/PictureAndVideoAttachAdapter;->m_SlideSizeLimit:I

    .line 527
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/ui/MediaPicker;Z)V
    .locals 2
    .parameter "context"
    .parameter "mediaPicker"
    .parameter "bResizeImage"

    .prologue
    const/4 v1, 0x0

    .line 513
    invoke-static {p1}, Lcom/android/mms/ui/PictureAndVideoAttachAdapter;->getData(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/IconListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 505
    iput v1, p0, Lcom/android/mms/ui/PictureAndVideoAttachAdapter;->mMode:I

    .line 509
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/PictureAndVideoAttachAdapter;->mResizeImage:Z

    .line 514
    iput-object p2, p0, Lcom/android/mms/ui/PictureAndVideoAttachAdapter;->m_mediaPicker:Lcom/android/mms/ui/MediaPicker;

    .line 515
    iput-object p1, p0, Lcom/android/mms/ui/PictureAndVideoAttachAdapter;->mContext:Landroid/content/Context;

    .line 516
    iput-boolean p3, p0, Lcom/android/mms/ui/PictureAndVideoAttachAdapter;->mResizeImage:Z

    .line 517
    iput v1, p0, Lcom/android/mms/ui/PictureAndVideoAttachAdapter;->m_SlideSizeLimit:I

    .line 518
    return-void
.end method

.method protected static getData(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 600
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 602
    .local v0, listData:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconListAdapter$IconListItem;>;"
    const v1, 0x7f0900dc

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02014d

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/PictureAndVideoAttachAdapter;->addItem(Ljava/util/List;Ljava/lang/String;I)V

    .line 603
    const v1, 0x20c01d3

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020151

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/PictureAndVideoAttachAdapter;->addItem(Ljava/util/List;Ljava/lang/String;I)V

    .line 604
    const v1, 0x7f0900e0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02014c

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/PictureAndVideoAttachAdapter;->addItem(Ljava/util/List;Ljava/lang/String;I)V

    .line 605
    const v1, 0x7f0900e1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020149

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/PictureAndVideoAttachAdapter;->addItem(Ljava/util/List;Ljava/lang/String;I)V

    .line 607
    return-object v0
.end method

.method protected static getData(Landroid/content/Context;I)Ljava/util/List;
    .locals 7
    .parameter "context"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;"
        }
    .end annotation

    .prologue
    const v6, 0x7f020151

    const v5, 0x7f02014d

    const v4, 0x7f02014c

    const v3, 0x7f020149

    const v2, 0x20c01d3

    .line 611
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 613
    .local v0, listData:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconListAdapter$IconListItem;>;"
    packed-switch p1, :pswitch_data_0

    .line 629
    const v1, 0x7f0900dc

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/android/mms/ui/PictureAndVideoAttachAdapter;->addItem(Ljava/util/List;Ljava/lang/String;I)V

    .line 630
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/android/mms/ui/PictureAndVideoAttachAdapter;->addItem(Ljava/util/List;Ljava/lang/String;I)V

    .line 631
    const v1, 0x7f0900e0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/android/mms/ui/PictureAndVideoAttachAdapter;->addItem(Ljava/util/List;Ljava/lang/String;I)V

    .line 632
    const v1, 0x7f0900e1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/mms/ui/PictureAndVideoAttachAdapter;->addItem(Ljava/util/List;Ljava/lang/String;I)V

    .line 634
    :goto_0
    return-object v0

    .line 615
    :pswitch_0
    const v1, 0x7f0900dc

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/android/mms/ui/PictureAndVideoAttachAdapter;->addItem(Ljava/util/List;Ljava/lang/String;I)V

    .line 616
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/android/mms/ui/PictureAndVideoAttachAdapter;->addItem(Ljava/util/List;Ljava/lang/String;I)V

    .line 617
    const v1, 0x7f0900e0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/android/mms/ui/PictureAndVideoAttachAdapter;->addItem(Ljava/util/List;Ljava/lang/String;I)V

    .line 618
    const v1, 0x7f0900e1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/mms/ui/PictureAndVideoAttachAdapter;->addItem(Ljava/util/List;Ljava/lang/String;I)V

    goto :goto_0

    .line 621
    :pswitch_1
    const v1, 0x7f0900dc

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/android/mms/ui/PictureAndVideoAttachAdapter;->addItem(Ljava/util/List;Ljava/lang/String;I)V

    .line 622
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/android/mms/ui/PictureAndVideoAttachAdapter;->addItem(Ljava/util/List;Ljava/lang/String;I)V

    goto :goto_0

    .line 625
    :pswitch_2
    const v1, 0x7f0900e0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/android/mms/ui/PictureAndVideoAttachAdapter;->addItem(Ljava/util/List;Ljava/lang/String;I)V

    .line 626
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/mms/ui/PictureAndVideoAttachAdapter;->addItem(Ljava/util/List;Ljava/lang/String;I)V

    goto :goto_0

    .line 613
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onItemAction(I)V
    .locals 5
    .parameter "nIDItem"

    .prologue
    .line 530
    iget-object v1, p0, Lcom/android/mms/ui/PictureAndVideoAttachAdapter;->m_mediaPicker:Lcom/android/mms/ui/MediaPicker;

    if-nez v1, :cond_0

    .line 597
    :goto_0
    return-void

    .line 534
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/PictureAndVideoAttachAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/IconListAdapter$IconListItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/IconListAdapter$IconListItem;->getResource()I

    move-result v0

    .line 536
    .local v0, resId:I
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 563
    :pswitch_1
    iget-object v1, p0, Lcom/android/mms/ui/PictureAndVideoAttachAdapter;->m_mediaPicker:Lcom/android/mms/ui/MediaPicker;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MediaPicker;->setType(I)V

    .line 564
    iget-object v1, p0, Lcom/android/mms/ui/PictureAndVideoAttachAdapter;->m_mediaPicker:Lcom/android/mms/ui/MediaPicker;

    invoke-virtual {v1}, Lcom/android/mms/ui/MediaPicker;->start()V

    goto :goto_0

    .line 538
    :pswitch_2
    iget-object v1, p0, Lcom/android/mms/ui/PictureAndVideoAttachAdapter;->m_mediaPicker:Lcom/android/mms/ui/MediaPicker;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MediaPicker;->setType(I)V

    .line 539
    iget-object v1, p0, Lcom/android/mms/ui/PictureAndVideoAttachAdapter;->m_mediaPicker:Lcom/android/mms/ui/MediaPicker;

    iget-boolean v2, p0, Lcom/android/mms/ui/PictureAndVideoAttachAdapter;->mResizeImage:Z

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MediaPicker;->setResizeImage(Z)V

    .line 540
    iget-object v1, p0, Lcom/android/mms/ui/PictureAndVideoAttachAdapter;->m_mediaPicker:Lcom/android/mms/ui/MediaPicker;

    invoke-virtual {v1}, Lcom/android/mms/ui/MediaPicker;->start()V

    goto :goto_0

    .line 543
    :pswitch_3
    iget-object v1, p0, Lcom/android/mms/ui/PictureAndVideoAttachAdapter;->m_mediaPicker:Lcom/android/mms/ui/MediaPicker;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MediaPicker;->setType(I)V

    .line 544
    iget-object v1, p0, Lcom/android/mms/ui/PictureAndVideoAttachAdapter;->m_mediaPicker:Lcom/android/mms/ui/MediaPicker;

    iget-boolean v2, p0, Lcom/android/mms/ui/PictureAndVideoAttachAdapter;->mResizeImage:Z

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MediaPicker;->setResizeImage(Z)V

    .line 545
    iget-object v1, p0, Lcom/android/mms/ui/PictureAndVideoAttachAdapter;->m_mediaPicker:Lcom/android/mms/ui/MediaPicker;

    invoke-virtual {v1}, Lcom/android/mms/ui/MediaPicker;->start()V

    goto :goto_0

    .line 549
    :pswitch_4
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/mms/model/ContentRestriction;->getMessageSizeLimit()I

    move-result v1

    iget v2, p0, Lcom/android/mms/ui/PictureAndVideoAttachAdapter;->m_SlideSizeLimit:I

    sub-int/2addr v1, v2

    const v2, 0xc800

    if-ge v1, v2, :cond_1

    .line 550
    iget-object v1, p0, Lcom/android/mms/ui/PictureAndVideoAttachAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/ui/PictureAndVideoAttachAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f090051

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/PictureAndVideoAttachAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f090162

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 555
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/PictureAndVideoAttachAdapter;->m_mediaPicker:Lcom/android/mms/ui/MediaPicker;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MediaPicker;->setType(I)V

    .line 557
    iget-object v1, p0, Lcom/android/mms/ui/PictureAndVideoAttachAdapter;->m_mediaPicker:Lcom/android/mms/ui/MediaPicker;

    iget v2, p0, Lcom/android/mms/ui/PictureAndVideoAttachAdapter;->m_SlideSizeLimit:I

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MediaPicker;->setSlideSizeLimit(I)V

    .line 559
    iget-object v1, p0, Lcom/android/mms/ui/PictureAndVideoAttachAdapter;->m_mediaPicker:Lcom/android/mms/ui/MediaPicker;

    invoke-virtual {v1}, Lcom/android/mms/ui/MediaPicker;->start()V

    goto :goto_0

    .line 536
    :pswitch_data_0
    .packed-switch 0x7f020149
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setSlideSizeLimit(I)V
    .locals 0
    .parameter "slideSizeLimit"

    .prologue
    .line 639
    iput p1, p0, Lcom/android/mms/ui/PictureAndVideoAttachAdapter;->m_SlideSizeLimit:I

    .line 640
    return-void
.end method
