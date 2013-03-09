.class public Lcom/htc/album/TagUtils/TagViewManager$TagView;
.super Landroid/widget/RelativeLayout;
.source "TagViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TagUtils/TagViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TagView"
.end annotation


# instance fields
.field private mContactID:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mImageHeight:I

.field private mImageView:Landroid/widget/ImageView;

.field private mImageWidth:I

.field private mTagH:F

.field private mTagID:Ljava/lang/String;

.field private mTagName:Ljava/lang/String;

.field private mTagW:F

.field private mTagX:F

.field private mTagY:F

.field private mTextView:Landroid/widget/TextView;

.field private mTextWidth:I

.field final synthetic this$0:Lcom/htc/album/TagUtils/TagViewManager;


# direct methods
.method public constructor <init>(Lcom/htc/album/TagUtils/TagViewManager;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 697
    iput-object p1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->this$0:Lcom/htc/album/TagUtils/TagViewManager;

    .line 698
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 680
    iput-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mContext:Landroid/content/Context;

    .line 681
    iput-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mImageView:Landroid/widget/ImageView;

    .line 682
    iput-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTextView:Landroid/widget/TextView;

    .line 684
    iput v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagX:F

    .line 685
    iput v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagY:F

    .line 686
    iput v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagW:F

    .line 687
    iput v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagH:F

    .line 688
    iput-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagName:Ljava/lang/String;

    .line 689
    iput-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagID:Ljava/lang/String;

    .line 690
    iput-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mContactID:Ljava/lang/String;

    .line 692
    iput v2, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTextWidth:I

    .line 693
    iput v2, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mImageWidth:I

    .line 694
    iput v2, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mImageHeight:I

    .line 699
    iput-object p2, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mContext:Landroid/content/Context;

    .line 700
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagName:Ljava/lang/String;

    .line 701
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagID:Ljava/lang/String;

    .line 702
    return-void
.end method


# virtual methods
.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 803
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mImageView:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method public getTagContactID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mContactID:Ljava/lang/String;

    return-object v0
.end method

.method public getTagH()F
    .locals 1

    .prologue
    .line 839
    iget v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagH:F

    return v0
.end method

.method public getTagID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagID:Ljava/lang/String;

    return-object v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 834
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagName:Ljava/lang/String;

    return-object v0
.end method

.method public getTagW()F
    .locals 1

    .prologue
    .line 838
    iget v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagW:F

    return v0
.end method

.method public getTagX()F
    .locals 1

    .prologue
    .line 836
    iget v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagX:F

    return v0
.end method

.method public getTagY()F
    .locals 1

    .prologue
    .line 837
    iget v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagY:F

    return v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 796
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTextView:Landroid/widget/TextView;

    goto :goto_0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;FF)Z
    .locals 11
    .parameter "strName"
    .parameter "strID"
    .parameter "tagx"
    .parameter "tagy"

    .prologue
    const/4 v4, 0x0

    const/4 v10, -0x2

    .line 728
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 790
    :cond_0
    :goto_0
    return v4

    .line 730
    :cond_1
    iput-object p1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagName:Ljava/lang/String;

    .line 731
    iput-object p2, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagID:Ljava/lang/String;

    .line 732
    iput p3, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagX:F

    .line 733
    iput p4, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagY:F

    .line 734
    new-instance v5, Lcom/htc/album/TagUtils/TagInfo;

    iget-object v6, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagName:Ljava/lang/String;

    iget-object v7, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagID:Ljava/lang/String;

    iget v8, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagX:F

    iget v9, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagY:F

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/htc/album/TagUtils/TagInfo;-><init>(Ljava/lang/String;Ljava/lang/String;FF)V

    invoke-virtual {p0, v5}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->setTag(Ljava/lang/Object;)V

    .line 736
    iget-object v5, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagName:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/htc/album/TagUtils/TagViewManager;->measureStringWidth(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTextWidth:I

    .line 741
    iget-object v5, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->this$0:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual {v6}, Lcom/htc/album/TagUtils/TagViewManager;->getTagResource()I

    move-result v6

    invoke-static {v5, v6}, Lcom/htc/album/TagUtils/TagViewManager;->measureResourceHeight(Landroid/content/Context;I)I

    move-result v0

    .line 743
    .local v0, nImgOutHeight:I
    iget v5, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTextWidth:I

    sget v6, Lcom/htc/album/TagUtils/TagViewManager;->TAG_TEXT_OFFSET_WIDTH:I

    add-int/2addr v5, v6

    sget v6, Lcom/htc/album/TagUtils/TagViewManager;->TAG_TEXT_OFFSET_WIDTH:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mImageWidth:I

    .line 744
    iput v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mImageHeight:I

    .line 748
    new-instance v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mImageView:Landroid/widget/ImageView;

    .line 749
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 750
    .local v1, paramImage:Landroid/widget/RelativeLayout$LayoutParams;
    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 751
    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 752
    iget v5, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mImageWidth:I

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 754
    iget-object v5, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 755
    iget-object v5, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mImageView:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->this$0:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual {v6}, Lcom/htc/album/TagUtils/TagViewManager;->getTagResource()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 757
    iget-object v5, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v5}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->addView(Landroid/view/View;)V

    .line 760
    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    sget v8, Lcom/htc/album/TagUtils/TagViewManager;->TAG_FONT_STYLE:I

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v5, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTextView:Landroid/widget/TextView;

    .line 761
    iget-object v5, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 763
    iget-object v5, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTextView:Landroid/widget/TextView;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 766
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 767
    .local v3, paramText:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xe

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 768
    const/4 v5, -0x3

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 771
    iget-object v5, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 774
    iget-object v5, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->addView(Landroid/view/View;)V

    .line 777
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 778
    .local v2, paramLayout:Landroid/widget/RelativeLayout$LayoutParams;
    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 779
    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 780
    iget v4, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mImageWidth:I

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 781
    iget v4, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mImageHeight:I

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 782
    invoke-virtual {p0, v2}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 784
    invoke-static {}, Lcom/htc/album/TagUtils/TagViewManager;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][TagViewManager][init]: measure Resource H: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", W: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->this$0:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual {v7}, Lcom/htc/album/TagUtils/TagViewManager;->getTagResource()I

    move-result v7

    invoke-static {v6, v7}, Lcom/htc/album/TagUtils/TagViewManager;->measureResourceWidth(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    invoke-static {}, Lcom/htc/album/TagUtils/TagViewManager;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][TagViewManager][init]: ImageView W:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", H: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    invoke-static {}, Lcom/htc/album/TagUtils/TagViewManager;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][TagViewManager][init]: RelativeLayout W:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", H: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method public isSameContact(Ljava/lang/String;)Z
    .locals 3
    .parameter "szContactID"

    .prologue
    .line 715
    const/4 v0, 0x1

    .line 717
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mContactID:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mContactID:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 718
    :cond_0
    const/4 v0, 0x0

    .line 720
    :cond_1
    iget-object v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mContactID:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 721
    const/4 v0, 0x0

    .line 723
    :cond_2
    return v0
.end method

.method public setIdentifier(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "szName"
    .parameter "szContactID"

    .prologue
    .line 710
    iput-object p1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagName:Ljava/lang/String;

    .line 711
    iput-object p2, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mContactID:Ljava/lang/String;

    .line 712
    return-void
.end method

.method public setImageBackground(I)V
    .locals 1
    .parameter "resID"

    .prologue
    .line 815
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 818
    :cond_0
    :goto_0
    return-void

    .line 817
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setPos(FF)V
    .locals 2
    .parameter "fx"
    .parameter "fy"

    .prologue
    const/4 v1, -0x2

    .line 823
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 824
    .local v0, paramLayout:Landroid/widget/RelativeLayout$LayoutParams;
    float-to-int v1, p1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 825
    float-to-int v1, p2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 826
    iget v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mImageWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 827
    iget v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mImageHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 828
    invoke-virtual {p0, v0}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 831
    return-void
.end method

.method public setTagTextColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 808
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 811
    :goto_0
    return-void

    .line 810
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public setWH(FF)V
    .locals 0
    .parameter "fTagW"
    .parameter "fTagH"

    .prologue
    .line 705
    iput p1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagW:F

    .line 706
    iput p2, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagH:F

    .line 707
    return-void
.end method
