.class Lcom/android/mms/ui/VideoAttachAdapter;
.super Lcom/android/mms/ui/IconListAdapter;
.source "AttachmentTypeSelectorAdapter.java"


# static fields
.field public static final ADD_CAMCORDER:I = 0x0

.field public static final ADD_VIDEOS:I = 0x1

.field protected static mSlideSizeLimit:I


# instance fields
.field private mContext:Landroid/content/Context;

.field protected m_mediaPicker:Lcom/android/mms/ui/MediaPicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/ui/MediaPicker;I)V
    .locals 1
    .parameter "context"
    .parameter "mediaPicker"
    .parameter "slideSizeLimit"

    .prologue
    .line 358
    invoke-static {p1, p3}, Lcom/android/mms/ui/VideoAttachAdapter;->getData(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/IconListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 359
    iput-object p2, p0, Lcom/android/mms/ui/VideoAttachAdapter;->m_mediaPicker:Lcom/android/mms/ui/MediaPicker;

    .line 360
    iput-object p1, p0, Lcom/android/mms/ui/VideoAttachAdapter;->mContext:Landroid/content/Context;

    .line 361
    sput p3, Lcom/android/mms/ui/VideoAttachAdapter;->mSlideSizeLimit:I

    .line 362
    return-void
.end method

.method protected static getData(Landroid/content/Context;I)Ljava/util/List;
    .locals 6
    .parameter "context"
    .parameter "slideSizeLimit"
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
    const v5, 0x7f0900e0

    const v4, 0x7f02014c

    const v3, 0x7f020149

    .line 405
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 415
    .local v0, listData:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconListAdapter$IconListItem;>;"
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x30

    if-ne v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x9b

    if-ne v1, v2, :cond_0

    .line 420
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/android/mms/ui/VideoAttachAdapter;->addItem(Ljava/util/List;Ljava/lang/String;I)V

    .line 421
    const v1, 0x20c01d3

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/mms/ui/VideoAttachAdapter;->addItem(Ljava/util/List;Ljava/lang/String;I)V

    .line 431
    :goto_0
    return-object v0

    .line 426
    :cond_0
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/android/mms/ui/VideoAttachAdapter;->addItem(Ljava/util/List;Ljava/lang/String;I)V

    .line 427
    const v1, 0x7f0900e1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/mms/ui/VideoAttachAdapter;->addItem(Ljava/util/List;Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public onItemAction(I)V
    .locals 4
    .parameter "nIDItem"

    .prologue
    const/16 v2, 0xe

    .line 365
    iget-object v0, p0, Lcom/android/mms/ui/VideoAttachAdapter;->m_mediaPicker:Lcom/android/mms/ui/MediaPicker;

    if-nez v0, :cond_1

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/VideoAttachAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 370
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 373
    :pswitch_0
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/mms/model/ContentRestriction;->getMessageSizeLimit()I

    move-result v0

    sget v1, Lcom/android/mms/ui/VideoAttachAdapter;->mSlideSizeLimit:I

    sub-int/2addr v0, v1

    const v1, 0xc800

    if-ge v0, v1, :cond_2

    .line 374
    iget-object v0, p0, Lcom/android/mms/ui/VideoAttachAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/VideoAttachAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f090051

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/VideoAttachAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f090162

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 379
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/VideoAttachAdapter;->m_mediaPicker:Lcom/android/mms/ui/MediaPicker;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MediaPicker;->setType(I)V

    .line 380
    iget-object v0, p0, Lcom/android/mms/ui/VideoAttachAdapter;->m_mediaPicker:Lcom/android/mms/ui/MediaPicker;

    sget v1, Lcom/android/mms/ui/VideoAttachAdapter;->mSlideSizeLimit:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MediaPicker;->setSlideSizeLimit(I)V

    .line 381
    iget-object v0, p0, Lcom/android/mms/ui/VideoAttachAdapter;->m_mediaPicker:Lcom/android/mms/ui/MediaPicker;

    invoke-virtual {v0}, Lcom/android/mms/ui/MediaPicker;->start()V

    goto :goto_0

    .line 386
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/VideoAttachAdapter;->m_mediaPicker:Lcom/android/mms/ui/MediaPicker;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MediaPicker;->setType(I)V

    .line 387
    iget-object v0, p0, Lcom/android/mms/ui/VideoAttachAdapter;->m_mediaPicker:Lcom/android/mms/ui/MediaPicker;

    invoke-virtual {v0}, Lcom/android/mms/ui/MediaPicker;->start()V

    goto :goto_0

    .line 394
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/ui/VideoAttachAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 396
    if-nez p1, :cond_0

    .line 397
    iget-object v0, p0, Lcom/android/mms/ui/VideoAttachAdapter;->m_mediaPicker:Lcom/android/mms/ui/MediaPicker;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MediaPicker;->setType(I)V

    .line 398
    iget-object v0, p0, Lcom/android/mms/ui/VideoAttachAdapter;->m_mediaPicker:Lcom/android/mms/ui/MediaPicker;

    invoke-virtual {v0}, Lcom/android/mms/ui/MediaPicker;->start()V

    goto :goto_0

    .line 370
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
