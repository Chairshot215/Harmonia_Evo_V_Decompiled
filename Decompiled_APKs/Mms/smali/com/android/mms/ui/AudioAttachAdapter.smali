.class Lcom/android/mms/ui/AudioAttachAdapter;
.super Lcom/android/mms/ui/IconListAdapter;
.source "AttachmentTypeSelectorAdapter.java"


# static fields
.field public static final ADD_BROWSE:I = 0x1

.field public static final ADD_RECORD:I

.field protected static mSlideSizeLimit:I


# instance fields
.field private mContext:Landroid/content/Context;

.field protected m_mediaPicker:Lcom/android/mms/ui/MediaPicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/ui/MediaPicker;)V
    .locals 1
    .parameter "context"
    .parameter "mediaPicker"

    .prologue
    .line 444
    invoke-static {p1}, Lcom/android/mms/ui/AudioAttachAdapter;->getData(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/IconListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 445
    iput-object p2, p0, Lcom/android/mms/ui/AudioAttachAdapter;->m_mediaPicker:Lcom/android/mms/ui/MediaPicker;

    .line 446
    iput-object p1, p0, Lcom/android/mms/ui/AudioAttachAdapter;->mContext:Landroid/content/Context;

    .line 447
    const/4 v0, 0x0

    sput v0, Lcom/android/mms/ui/AudioAttachAdapter;->mSlideSizeLimit:I

    .line 448
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/ui/MediaPicker;I)V
    .locals 1
    .parameter "context"
    .parameter "mediaPicker"
    .parameter "slideSizeLimit"

    .prologue
    .line 451
    invoke-static {p1}, Lcom/android/mms/ui/AudioAttachAdapter;->getData(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/IconListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 452
    iput-object p2, p0, Lcom/android/mms/ui/AudioAttachAdapter;->m_mediaPicker:Lcom/android/mms/ui/MediaPicker;

    .line 453
    iput-object p1, p0, Lcom/android/mms/ui/AudioAttachAdapter;->mContext:Landroid/content/Context;

    .line 454
    sput p3, Lcom/android/mms/ui/AudioAttachAdapter;->mSlideSizeLimit:I

    .line 455
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
    .line 488
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 489
    .local v0, listData:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconListAdapter$IconListItem;>;"
    const v1, 0x7f0900e2

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020153

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/AudioAttachAdapter;->addItem(Ljava/util/List;Ljava/lang/String;I)V

    .line 490
    const v1, 0x7f0900e3

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02014b

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/AudioAttachAdapter;->addItem(Ljava/util/List;Ljava/lang/String;I)V

    .line 491
    return-object v0
.end method


# virtual methods
.method public onItemAction(I)V
    .locals 4
    .parameter "nIDItem"

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachAdapter;->m_mediaPicker:Lcom/android/mms/ui/MediaPicker;

    if-nez v0, :cond_0

    .line 485
    :goto_0
    return-void

    .line 462
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 465
    :pswitch_0
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/mms/model/ContentRestriction;->getMessageSizeLimit()I

    move-result v0

    sget v1, Lcom/android/mms/ui/AudioAttachAdapter;->mSlideSizeLimit:I

    sub-int/2addr v0, v1

    const/16 v1, 0x2800

    if-ge v0, v1, :cond_1

    .line 466
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/AudioAttachAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f090051

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/AudioAttachAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f090162

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 470
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachAdapter;->m_mediaPicker:Lcom/android/mms/ui/MediaPicker;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MediaPicker;->setType(I)V

    .line 471
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachAdapter;->m_mediaPicker:Lcom/android/mms/ui/MediaPicker;

    sget v1, Lcom/android/mms/ui/AudioAttachAdapter;->mSlideSizeLimit:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MediaPicker;->setSlideSizeLimit(I)V

    .line 472
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachAdapter;->m_mediaPicker:Lcom/android/mms/ui/MediaPicker;

    invoke-virtual {v0}, Lcom/android/mms/ui/MediaPicker;->start()V

    goto :goto_0

    .line 477
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachAdapter;->m_mediaPicker:Lcom/android/mms/ui/MediaPicker;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MediaPicker;->setType(I)V

    .line 478
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachAdapter;->m_mediaPicker:Lcom/android/mms/ui/MediaPicker;

    invoke-virtual {v0}, Lcom/android/mms/ui/MediaPicker;->start()V

    goto :goto_0

    .line 462
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
