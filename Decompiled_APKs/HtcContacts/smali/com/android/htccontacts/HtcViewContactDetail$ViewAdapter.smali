.class public final Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;
.super Lcom/android/htccontacts/HtcContactDetailAdapter;
.source "HtcViewContactDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/HtcViewContactDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "ViewAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/htccontacts/HtcContactDetailAdapter",
        "<",
        "Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field topRightParams:Landroid/widget/RelativeLayout$LayoutParams;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 5
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;>;"
    const/4 v4, 0x0

    const/4 v2, -0x2

    .line 324
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/HtcContactDetailAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 325
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->topRightParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 329
    iget-object v1, p0, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->topRightParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 330
    iget-object v1, p0, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->topRightParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 332
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 333
    .local v0, res:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->topRightParams:Landroid/widget/RelativeLayout$LayoutParams;

    const v2, 0x7f090140

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0900ee

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v1, v4, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 334
    iput-object p1, p0, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->mContext:Landroid/content/Context;

    .line 335
    return-void
.end method

.method private bindCenterTextView(Landroid/view/View;Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;)V
    .locals 3
    .parameter "view"
    .parameter "entry"

    .prologue
    .line 759
    move-object v0, p1

    check-cast v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    .line 760
    .local v0, builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    iget-object v1, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setListItem2Text(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 762
    iget-object v1, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text3:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, " "

    :goto_0
    iget-object v2, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text4:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v2, " "

    :goto_1
    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setListItem2Stamp(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 763
    return-void

    .line 762
    :cond_0
    iget-object v1, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text3:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v2, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text4:Ljava/lang/String;

    goto :goto_1
.end method

.method private bindCompositeSendMsgRightIconView(Landroid/view/View;Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;)V
    .locals 3
    .parameter "view"
    .parameter "entry"

    .prologue
    .line 776
    move-object v0, p1

    check-cast v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    .line 777
    .local v0, builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    iget-object v1, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->data:Ljava/lang/Object;

    instance-of v1, v1, Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    .line 778
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getImageButton()Lcom/htc/widget/HtcListItemImageButton;

    move-result-object v2

    iget-object v1, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->data:Ljava/lang/Object;

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcListItemImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 780
    :cond_0
    iget v1, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->rightIconId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 781
    iget v1, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->rightIconId:I

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setImageButton(I)V

    .line 783
    :cond_1
    return-void
.end method

.method private bindLeftIconView(Landroid/view/View;Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;)V
    .locals 7
    .parameter "view"
    .parameter "entry"

    .prologue
    .line 785
    move-object v2, p1

    check-cast v2, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    .line 786
    .local v2, builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    const/4 v5, -0x1

    iget v6, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->leftIconId:I

    if-ne v5, v6, :cond_2

    .line 787
    const/16 v5, 0x24

    iget v6, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    if-eq v5, v6, :cond_0

    const/16 v5, 0x23

    iget v6, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    if-eq v5, v6, :cond_0

    const/16 v5, 0x22

    iget v6, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    if-eq v5, v6, :cond_0

    const/16 v5, 0x25

    iget v6, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    if-ne v5, v6, :cond_1

    .line 791
    :cond_0
    iget-object v5, p0, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->mContext:Landroid/content/Context;

    iget-object v6, p2, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    invoke-static {v5, v6}, Lcom/android/htccontacts/util/ContactsUtils;->getIntentIcon(Landroid/content/Context;Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 792
    .local v3, db:Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900b3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v4, v5

    .local v4, size:I
    move-object v1, v3

    .line 793
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 794
    .local v1, bd:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v5, v4, v4}, Lcom/htc/util/contacts/PhotoUtils;->getScaledCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 795
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getLeftImage()Lcom/htc/widget/HtcListItemImageButton;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/htc/widget/HtcListItemImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 802
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #bd:Landroid/graphics/drawable/BitmapDrawable;
    .end local v3           #db:Landroid/graphics/drawable/Drawable;
    .end local v4           #size:I
    :cond_1
    :goto_0
    return-void

    .line 798
    :cond_2
    invoke-virtual {v2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getLeftImage()Lcom/htc/widget/HtcListItemImageButton;

    move-result-object v5

    iget v6, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->leftIconId:I

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 799
    invoke-virtual {v2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getLeftImage()Lcom/htc/widget/HtcListItemImageButton;

    move-result-object v5

    const v6, 0x2080197

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListItemImageButton;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private bindRightIconView(Landroid/view/View;Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;)V
    .locals 5
    .parameter "view"
    .parameter "entry"

    .prologue
    const/4 v4, 0x0

    .line 806
    if-nez p1, :cond_0

    .line 833
    :goto_0
    return-void

    .line 809
    :cond_0
    const/4 v2, -0x1

    iget v3, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->rightIconId:I

    if-ne v2, v3, :cond_1

    .line 810
    invoke-direct {p0, p1}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->removeRightIconView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    .line 813
    check-cast v1, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    .line 814
    .local v1, builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    iget v2, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->rightIconId:I

    const v3, 0x20802f4

    if-eq v2, v3, :cond_2

    iget-wide v2, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->socialnetworkType:J

    invoke-static {v2, v3}, Lcom/android/htccontacts/util/ContactsUtils;->isSocialnetwork(J)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 816
    :cond_2
    invoke-virtual {v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->get2LineStamp()Lcom/android/htccontacts/widget/HtcListItem2LineStampIcon;

    move-result-object v2

    iget v3, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->rightIconId:I

    invoke-virtual {v2, v4, v4, v3, v4}, Lcom/android/htccontacts/widget/HtcListItem2LineStampIcon;->setPirmaryTextCompoundDrawableWithIntrinicBounds(IIII)V

    goto :goto_0

    .line 818
    :cond_3
    iget-boolean v2, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->fromMyPhonebook:Z

    if-eqz v2, :cond_5

    .line 819
    const v2, 0x7f070045

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->getMyPhonebookTariffIndicatorIconLayout()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 820
    iget-object v2, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->groupTypeIcon:[B

    if-eqz v2, :cond_4

    .line 821
    iget-object v2, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->groupTypeIcon:[B

    iget-object v3, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->groupTypeIcon:[B

    array-length v3, v3

    invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 822
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getImageButton()Lcom/htc/widget/HtcListItemImageButton;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcListItemImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 824
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_4
    iget-object v2, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->sncIcon:[B

    if-eqz v2, :cond_5

    .line 825
    iget-object v2, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->sncIcon:[B

    iget-object v3, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->sncIcon:[B

    array-length v3, v3

    invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 826
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getImageButton()Lcom/htc/widget/HtcListItemImageButton;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcListItemImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 830
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_5
    iget v2, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->rightIconId:I

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setImageButton(I)V

    goto :goto_0
.end method

.method private bindRightSmallIconView(Landroid/view/View;Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;)V
    .locals 4
    .parameter "view"
    .parameter "entry"

    .prologue
    const/4 v3, 0x0

    .line 872
    move-object v0, p1

    check-cast v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    .line 873
    .local v0, builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->get2LineStamp()Lcom/android/htccontacts/widget/HtcListItem2LineStampIcon;

    move-result-object v1

    iget v2, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->rightIconId:I

    invoke-virtual {v1, v3, v3, v2, v3}, Lcom/android/htccontacts/widget/HtcListItem2LineStampIcon;->setPirmaryTextCompoundDrawableWithIntrinicBounds(IIII)V

    .line 874
    return-void
.end method

.method private getMyPhonebookTariffIndicatorIconLayout()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/16 v7, 0xb

    const/16 v6, 0xa

    const/16 v5, 0x23

    const/4 v4, 0x0

    .line 846
    const-string v2, "ro.sf.lcd_density"

    const/16 v3, 0xa0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 848
    .local v0, resolution:I
    const/16 v2, 0xf0

    if-ne v0, v2, :cond_0

    .line 849
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0x1e

    const/16 v3, 0x1e

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 851
    .local v1, topRightParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 852
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 853
    const/16 v2, 0xc

    invoke-virtual {v1, v4, v4, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 868
    :goto_0
    return-object v1

    .line 855
    .end local v1           #topRightParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    const/16 v2, 0xa0

    if-ne v0, v2, :cond_1

    .line 856
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 858
    .restart local v1       #topRightParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 859
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 860
    const/16 v2, 0x16

    invoke-virtual {v1, v4, v8, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 862
    .end local v1           #topRightParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 864
    .restart local v1       #topRightParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 865
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 866
    const/16 v2, 0x16

    invoke-virtual {v1, v4, v8, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method private removeRightIconView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 836
    if-nez p1, :cond_0

    .line 842
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 839
    check-cast v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    .line 840
    .local v0, builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->removeImageButton()V

    goto :goto_0
.end method


# virtual methods
.method bindCommunicationView(Landroid/view/View;Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;)Z
    .locals 1
    .parameter "view"
    .parameter "entry"

    .prologue
    .line 918
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->bindLeftIconView(Landroid/view/View;Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;)V

    .line 921
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->bindCenterTextView(Landroid/view/View;Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;)V

    .line 923
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->bindRightIconView(Landroid/view/View;Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;)V

    .line 925
    const/4 v0, 0x1

    return v0
.end method

.method bindCompositeSendMsgView(Landroid/view/View;Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;)Z
    .locals 2
    .parameter "view"
    .parameter "entry"

    .prologue
    .line 766
    const/16 v0, 0x1b

    iget v1, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    if-ne v0, v1, :cond_0

    .line 767
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->bindLeftIconView(Landroid/view/View;Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;)V

    .line 768
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->bindCenterTextView(Landroid/view/View;Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;)V

    .line 769
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->bindCompositeSendMsgRightIconView(Landroid/view/View;Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;)V

    .line 770
    const/4 v0, 0x1

    .line 772
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method bindCustomView(Landroid/view/View;Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;)Z
    .locals 8
    .parameter "view"
    .parameter "entry"

    .prologue
    const/16 v7, 0x8

    const/4 v4, 0x0

    .line 602
    iget v5, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    const/16 v6, 0x1d

    if-ne v5, v6, :cond_4

    .line 603
    if-eqz p1, :cond_3

    .line 604
    const v5, 0x7f0700cd

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 605
    .local v0, icon:Landroid/widget/ImageView;
    const v5, 0x7f070032

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 606
    .local v1, label:Landroid/widget/TextView;
    const v5, 0x7f070035

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 607
    .local v2, text:Landroid/widget/TextView;
    const v5, 0x7f070033

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 608
    .local v3, time:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 609
    iget-object v5, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->customDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_5

    .line 610
    iget-object v5, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->customDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 611
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 619
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 620
    iget-object v5, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 622
    :cond_1
    if-eqz v2, :cond_2

    .line 623
    iget-object v5, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 625
    :cond_2
    if-eqz v3, :cond_3

    .line 626
    iget-object v5, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text4:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 627
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 635
    .end local v0           #icon:Landroid/widget/ImageView;
    .end local v1           #label:Landroid/widget/TextView;
    .end local v2           #text:Landroid/widget/TextView;
    .end local v3           #time:Landroid/widget/TextView;
    :cond_3
    :goto_1
    const/4 v4, 0x1

    .line 637
    :cond_4
    return v4

    .line 614
    .restart local v0       #icon:Landroid/widget/ImageView;
    .restart local v1       #label:Landroid/widget/TextView;
    .restart local v2       #text:Landroid/widget/TextView;
    .restart local v3       #time:Landroid/widget/TextView;
    :cond_5
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 615
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 630
    :cond_6
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 631
    iget-object v4, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text4:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method bindEditView(Landroid/view/View;Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;)Z
    .locals 3
    .parameter "view"
    .parameter "entry"

    .prologue
    .line 641
    iget v1, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    .line 642
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 663
    const v1, 0x7f0700dd

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 664
    const v1, 0x7f07004a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 665
    .local v0, button:Landroid/widget/Button;
    iget-object v1, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 667
    .end local v0           #button:Landroid/widget/Button;
    :cond_0
    const/4 v1, 0x1

    .line 670
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method bindInformationView(Landroid/view/View;Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;)Z
    .locals 1
    .parameter "view"
    .parameter "entry"

    .prologue
    .line 878
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->bindCenterTextView(Landroid/view/View;Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;)V

    .line 880
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->bindRightIconView(Landroid/view/View;Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;)V

    .line 882
    const/4 v0, 0x1

    return v0
.end method

.method bindLabelView(Landroid/view/View;Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;)Z
    .locals 5
    .parameter "view"
    .parameter "entry"

    .prologue
    .line 742
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 743
    .local v1, tagObj:Ljava/lang/Object;
    if-eqz v1, :cond_1

    instance-of v3, v1, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    if-eqz v3, :cond_1

    move-object v0, v1

    .line 744
    check-cast v0, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    .line 745
    .local v0, tag:Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;->getSeparateID()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->ENTRY_TYPE_LABEL:Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    invoke-virtual {v4}, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;->getSeparateID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 747
    const v3, 0x2020010

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 748
    .local v2, textView:Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 749
    iget-object v3, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 751
    :cond_0
    const/4 v3, 0x1

    .line 755
    .end local v0           #tag:Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;
    .end local v2           #textView:Landroid/widget/TextView;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method bindMultipleLineNoteView(Landroid/view/View;Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;)Z
    .locals 8
    .parameter "view"
    .parameter "entry"

    .prologue
    const v7, 0x7f070030

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 886
    iget-object v4, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    if-nez v4, :cond_0

    iget-object v4, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    if-nez v4, :cond_0

    iget-object v4, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text3:Ljava/lang/String;

    if-nez v4, :cond_0

    iget-object v4, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text4:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 890
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 895
    :goto_0
    const v4, 0x7f070032

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 896
    .local v0, text1:Landroid/widget/TextView;
    iget-object v4, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 897
    const v4, 0x7f070035

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 898
    .local v1, text2:Landroid/widget/TextView;
    iget-object v4, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 900
    const v4, 0x7f070033

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 901
    .local v2, text3:Landroid/widget/TextView;
    iget-object v4, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text3:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 902
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 907
    :goto_1
    const v4, 0x7f070036

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 908
    .local v3, text4:Landroid/widget/TextView;
    iget-object v4, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text4:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 909
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 914
    :goto_2
    const/4 v4, 0x1

    return v4

    .line 892
    .end local v0           #text1:Landroid/widget/TextView;
    .end local v1           #text2:Landroid/widget/TextView;
    .end local v2           #text3:Landroid/widget/TextView;
    .end local v3           #text4:Landroid/widget/TextView;
    :cond_0
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 904
    .restart local v0       #text1:Landroid/widget/TextView;
    .restart local v1       #text2:Landroid/widget/TextView;
    .restart local v2       #text3:Landroid/widget/TextView;
    :cond_1
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 905
    iget-object v4, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text3:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 911
    .restart local v3       #text4:Landroid/widget/TextView;
    :cond_2
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 912
    iget-object v4, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text4:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method bindMyProfileEditView(Landroid/view/View;Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;)Z
    .locals 3
    .parameter "view"
    .parameter "entry"

    .prologue
    .line 686
    const/16 v1, 0x5b

    iget v2, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    if-eq v1, v2, :cond_0

    const/16 v1, 0x5c

    iget v2, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    if-ne v1, v2, :cond_2

    .line 687
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 701
    const v1, 0x7f0700dd

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 702
    const v1, 0x7f07004a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 703
    .local v0, button:Landroid/widget/Button;
    iget-object v1, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 709
    .end local v0           #button:Landroid/widget/Button;
    :cond_1
    const/4 v1, 0x1

    .line 711
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method bindMyProfileHintView(Landroid/view/View;Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;)Z
    .locals 3
    .parameter "view"
    .parameter "entry"

    .prologue
    .line 675
    const/16 v1, 0x5a

    iget v2, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    if-ne v1, v2, :cond_0

    .line 676
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    move-object v0, p1

    .line 677
    check-cast v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    .line 678
    .local v0, builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    iget-object v1, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setListItemSingleText(Ljava/lang/String;)V

    .line 679
    const v1, 0x7f0b001b

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setListItemSingleTextStype(I)V

    .line 680
    const/4 v1, 0x1

    .line 683
    .end local v0           #builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method bindTMOView(Landroid/view/View;Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;)Z
    .locals 6
    .parameter "view"
    .parameter "entry"

    .prologue
    .line 714
    const/16 v4, 0x1f

    iget v5, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    if-eq v4, v5, :cond_0

    const/16 v4, 0x20

    iget v5, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    if-eq v4, v5, :cond_0

    const/16 v4, 0x5d

    iget v5, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    if-eq v4, v5, :cond_0

    const/16 v4, 0x5e

    iget v5, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    if-ne v4, v5, :cond_3

    .line 716
    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    move-object v2, p1

    .line 717
    check-cast v2, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    .line 719
    .local v2, builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    iget v4, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->leftIconId:I

    if-lez v4, :cond_1

    .line 720
    iget-object v4, p0, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->leftIconId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    move-object v1, v4

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 721
    .local v1, bd:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v4, p0, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900b3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    .line 722
    .local v3, size:I
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4, v3, v3}, Lcom/htc/util/contacts/PhotoUtils;->getScaledCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 723
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getLeftImage()Lcom/htc/widget/HtcListItemImageButton;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/htc/widget/HtcListItemImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 726
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #bd:Landroid/graphics/drawable/BitmapDrawable;
    .end local v3           #size:I
    :cond_1
    invoke-virtual {v2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->get2LineText()Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-result-object v4

    iget-object v5, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryText(Ljava/lang/String;)V

    .line 727
    invoke-virtual {v2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->get2LineText()Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryTextVisibility(I)V

    .line 729
    iget v4, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->rightIconId:I

    if-lez v4, :cond_2

    .line 730
    iget v4, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->leftIconId:I

    invoke-virtual {v2, v4}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setImageButton(I)V

    .line 734
    .end local v2           #builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    :cond_2
    const/4 v4, 0x1

    .line 737
    :goto_0
    return v4

    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic bindView(Landroid/view/View;Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 319
    check-cast p2, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->bindView(Landroid/view/View;Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;)V

    return-void
.end method

.method protected bindView(Landroid/view/View;Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;)V
    .locals 3
    .parameter "view"
    .parameter "entry"

    .prologue
    .line 511
    const-string v0, "blah2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindView entry.kind: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iput-object p1, p2, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->view:Landroid/view/View;

    .line 513
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->bindLabelView(Landroid/view/View;Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 554
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->bindEditView(Landroid/view/View;Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 521
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->bindCustomView(Landroid/view/View;Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 525
    iget v0, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->getViewTypeByKind(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    .line 527
    const/16 v0, 0x5a

    iget v1, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    if-ne v0, v1, :cond_2

    .line 528
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->bindMyProfileHintView(Landroid/view/View;Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;)Z

    goto :goto_0

    .line 529
    :cond_2
    const/16 v0, 0x5b

    iget v1, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    if-eq v0, v1, :cond_3

    const/16 v0, 0x5c

    iget v1, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    if-ne v0, v1, :cond_4

    .line 531
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->bindMyProfileEditView(Landroid/view/View;Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;)Z

    goto :goto_0

    .line 532
    :cond_4
    const/16 v0, 0x5d

    iget v1, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    if-eq v0, v1, :cond_5

    const/16 v0, 0x5e

    iget v1, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    if-ne v0, v1, :cond_6

    .line 534
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->bindTMOView(Landroid/view/View;Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;)Z

    goto :goto_0

    .line 535
    :cond_6
    const/16 v0, 0x13

    iget v1, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    if-ne v0, v1, :cond_7

    .line 536
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->bindMultipleLineNoteView(Landroid/view/View;Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;)Z

    goto :goto_0

    .line 538
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->bindInformationView(Landroid/view/View;Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;)Z

    goto :goto_0

    .line 541
    :cond_8
    const/16 v0, 0x1b

    iget v1, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    if-ne v0, v1, :cond_9

    .line 542
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->bindCompositeSendMsgView(Landroid/view/View;Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;)Z

    goto :goto_0

    .line 543
    :cond_9
    const/4 v0, 0x5

    iget v1, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    iget v1, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    if-ne v0, v1, :cond_b

    :cond_a
    iget-boolean v0, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->fromFacebook:Z

    if-eqz v0, :cond_b

    .line 545
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->bindLeftIconView(Landroid/view/View;Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;)V

    .line 546
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->bindCenterTextView(Landroid/view/View;Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;)V

    .line 547
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->bindRightSmallIconView(Landroid/view/View;Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;)V

    goto :goto_0

    .line 548
    :cond_b
    const/16 v0, 0x1f

    iget v1, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    if-eq v0, v1, :cond_c

    const/16 v0, 0x20

    iget v1, p2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    if-ne v0, v1, :cond_d

    .line 549
    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->bindTMOView(Landroid/view/View;Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;)Z

    goto :goto_0

    .line 551
    :cond_d
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->bindCommunicationView(Landroid/view/View;Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;)Z

    goto/16 :goto_0
.end method

.method public getItemViewType(I)I
    .locals 4
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 413
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 415
    .local v0, entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    if-nez v0, :cond_1

    .line 439
    :cond_0
    :goto_0
    return v1

    .line 419
    :cond_1
    iget-object v2, v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->entry_type:Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->entry_type:Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    invoke-virtual {v2}, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;->getSeparateID()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->ENTRY_TYPE_LABEL:Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    invoke-virtual {v3}, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;->getSeparateID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 425
    :cond_2
    iget v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_3

    iget v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    const/16 v2, 0x5e

    if-ne v1, v2, :cond_4

    .line 427
    :cond_3
    const/4 v1, 0x5

    goto :goto_0

    .line 429
    :cond_4
    iget v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 430
    const/4 v1, 0x1

    goto :goto_0

    .line 432
    :cond_5
    iget v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    const/16 v2, 0x1d

    if-ne v1, v2, :cond_6

    .line 433
    const/4 v1, 0x4

    goto :goto_0

    .line 435
    :cond_6
    iget v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    const/16 v2, 0x13

    if-ne v1, v2, :cond_7

    .line 436
    const/4 v1, 0x6

    goto :goto_0

    .line 439
    :cond_7
    iget v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->getViewTypeByKind(I)I

    move-result v1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x1

    .line 446
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 447
    .local v2, entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    if-nez p2, :cond_2

    .line 448
    invoke-virtual {p0, p1, p3}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->newView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 456
    .local v5, v:Landroid/view/View;
    :goto_0
    instance-of v6, v5, Lcom/htc/widget/HtcListItem;

    if-eqz v6, :cond_1

    move-object v3, v5

    .line 457
    check-cast v3, Lcom/htc/widget/HtcListItem;

    .line 458
    .local v3, htcListView:Lcom/htc/widget/HtcListItem;
    const/4 v1, 0x0

    .line 459
    .local v1, drawTop:Z
    const/4 v0, 0x0

    .line 472
    .local v0, drawBottom:Z
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge p1, v6, :cond_0

    .line 473
    add-int/lit8 v6, p1, 0x1

    invoke-virtual {p0, v6}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 474
    .local v4, nextPrevious:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    iget-object v6, v4, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->entry_type:Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    invoke-virtual {v6}, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;->getSeparateID()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v2, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->entry_type:Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    invoke-virtual {v7}, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;->getSeparateID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 475
    const/4 v0, 0x1

    .line 481
    .end local v4           #nextPrevious:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    :cond_0
    if-ne v8, v1, :cond_4

    if-ne v8, v0, :cond_4

    .line 482
    const/16 v6, 0xd

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    .line 494
    .end local v0           #drawBottom:Z
    .end local v1           #drawTop:Z
    .end local v3           #htcListView:Lcom/htc/widget/HtcListItem;
    :cond_1
    :goto_1
    invoke-virtual {p0, v5, v2}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->bindView(Landroid/view/View;Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;)V

    .line 495
    return-object v5

    .line 450
    .end local v5           #v:Landroid/view/View;
    :cond_2
    iget-object v6, v2, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->entry_type:Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    if-ne v6, v7, :cond_3

    .line 451
    move-object v5, p2

    .restart local v5       #v:Landroid/view/View;
    goto :goto_0

    .line 453
    .end local v5           #v:Landroid/view/View;
    :cond_3
    invoke-virtual {p0, p1, p3}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->newView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .restart local v5       #v:Landroid/view/View;
    goto :goto_0

    .line 484
    .restart local v0       #drawBottom:Z
    .restart local v1       #drawTop:Z
    .restart local v3       #htcListView:Lcom/htc/widget/HtcListItem;
    :cond_4
    if-nez v1, :cond_5

    if-ne v8, v0, :cond_5

    .line 485
    const/16 v6, 0xb

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    goto :goto_1

    .line 487
    :cond_5
    if-ne v8, v1, :cond_6

    if-nez v0, :cond_6

    .line 488
    const/16 v6, 0xa

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    goto :goto_1

    .line 491
    :cond_6
    const/16 v6, 0xc

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    goto :goto_1
.end method

.method getViewTypeByKind(I)I
    .locals 3
    .parameter "kind"

    .prologue
    const/16 v2, 0x18

    const/4 v0, 0x2

    .line 567
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isTmousCustomization()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 568
    if-ne p1, v2, :cond_1

    .line 597
    :cond_0
    :goto_0
    return v0

    .line 573
    :cond_1
    const/16 v1, 0xa

    if-eq p1, v1, :cond_2

    const/16 v1, 0x11

    if-eq p1, v1, :cond_2

    const/16 v1, 0x12

    if-eq p1, v1, :cond_2

    const/16 v1, 0x13

    if-eq p1, v1, :cond_2

    const/16 v1, 0x14

    if-eq p1, v1, :cond_2

    const/4 v1, 0x6

    if-eq p1, v1, :cond_2

    const/16 v1, 0x16

    if-eq p1, v1, :cond_2

    const/16 v1, 0x17

    if-eq p1, v1, :cond_2

    const/16 v1, 0x15

    if-eq p1, v1, :cond_2

    const/16 v1, 0x1e

    if-eq p1, v1, :cond_2

    if-eq p1, v2, :cond_2

    const/16 v1, 0x28

    if-eq p1, v1, :cond_2

    const/16 v1, 0x19

    if-eq p1, v1, :cond_2

    const/16 v1, 0x63

    if-eq p1, v1, :cond_2

    const/16 v1, 0x1a

    if-eq p1, v1, :cond_2

    const/16 v1, 0x5a

    if-eq p1, v1, :cond_2

    const/16 v1, 0x5b

    if-eq p1, v1, :cond_2

    const/16 v1, 0x5c

    if-eq p1, v1, :cond_2

    const/16 v1, 0x5d

    if-eq p1, v1, :cond_2

    const/16 v1, 0x5e

    if-ne p1, v1, :cond_0

    .line 595
    :cond_2
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 339
    const/4 v0, 0x7

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 500
    const/4 v0, 0x0

    .line 502
    .local v0, result:Z
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    iget-boolean v0, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->enabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    :goto_0
    return v0

    .line 503
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected newView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .parameter "position"
    .parameter "parent"

    .prologue
    .line 344
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 345
    .local v10, entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    const/4 v12, 0x0

    .line 346
    .local v12, v:Landroid/view/View;
    iget-object v0, v10, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->entry_type:Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    if-eqz v0, :cond_1

    iget-object v0, v10, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->entry_type:Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    invoke-virtual {v0}, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;->getSeparateID()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->ENTRY_TYPE_LABEL:Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    invoke-virtual {v1}, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;->getSeparateID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactDetailAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x2090026

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .line 351
    const v0, 0x208066a

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 353
    sget-object v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->ENTRY_TYPE_LABEL:Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    invoke-virtual {v12, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 408
    :cond_0
    :goto_0
    return-object v12

    .line 354
    :cond_1
    iget v0, v10, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    .line 355
    const/4 v3, 0x0

    .line 356
    .local v3, resourceID:I
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactDetailAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, v10, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, v10, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->action:Landroid/view/View$OnClickListener;

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/android/htccontacts/util/ContactsUtils;->getComposeNewItemView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/CharSequence;IZLandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v12

    .line 360
    sget-object v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->ENTRY_TYPE_EDIT:Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    invoke-virtual {v12, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 362
    .end local v3           #resourceID:I
    :cond_2
    iget v0, v10, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_3

    .line 363
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactDetailAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03004f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .line 364
    sget-object v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->ENTRY_TYPE_COMMUNICATION:Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    invoke-virtual {v12, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 365
    :cond_3
    iget v0, v10, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_4

    .line 366
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactDetailAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03000f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .line 367
    sget-object v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->ENTRY_TYPE_INFORMATION:Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    invoke-virtual {v12, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 369
    :cond_4
    iget v0, v10, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->getViewTypeByKind(I)I

    move-result v11

    .line 370
    .local v11, nViewType:I
    const/4 v0, 0x3

    if-eq v0, v11, :cond_5

    const/4 v0, 0x5

    if-ne v0, v11, :cond_c

    .line 371
    :cond_5
    const/16 v0, 0x5a

    iget v1, v10, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    if-ne v0, v1, :cond_6

    .line 372
    new-instance v12, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    .end local v12           #v:Landroid/view/View;
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->mContext:Landroid/content/Context;

    const/16 v1, 0x6b

    invoke-direct {v12, v0, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    .line 383
    .restart local v12       #v:Landroid/view/View;
    :goto_1
    const/4 v0, 0x3

    if-ne v0, v11, :cond_b

    .line 384
    sget-object v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->ENTRY_TYPE_INFORMATION:Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    invoke-virtual {v12, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 373
    :cond_6
    const/16 v0, 0x5b

    iget v1, v10, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    if-eq v0, v1, :cond_7

    const/16 v0, 0x5c

    iget v1, v10, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    if-ne v0, v1, :cond_8

    .line 375
    :cond_7
    iget-object v4, p0, Lcom/android/htccontacts/HtcContactDetailAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v6, v10, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    const/4 v7, -0x1

    const/4 v8, 0x0

    iget-object v9, v10, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->action:Landroid/view/View$OnClickListener;

    move-object v5, p2

    invoke-static/range {v4 .. v9}, Lcom/android/htccontacts/util/ContactsUtils;->getComposeNewItemView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/CharSequence;IZLandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v12

    goto :goto_1

    .line 377
    :cond_8
    const/16 v0, 0x5d

    iget v1, v10, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    if-eq v0, v1, :cond_9

    const/16 v0, 0x5e

    iget v1, v10, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    if-ne v0, v1, :cond_a

    .line 379
    :cond_9
    new-instance v12, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    .end local v12           #v:Landroid/view/View;
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->mContext:Landroid/content/Context;

    const/16 v1, 0x191

    invoke-direct {v12, v0, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    .restart local v12       #v:Landroid/view/View;
    goto :goto_1

    .line 381
    :cond_a
    new-instance v12, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    .end local v12           #v:Landroid/view/View;
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->mContext:Landroid/content/Context;

    const/16 v1, 0x69

    invoke-direct {v12, v0, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    .restart local v12       #v:Landroid/view/View;
    goto :goto_1

    .line 386
    :cond_b
    const/4 v0, 0x5

    if-ne v0, v11, :cond_0

    .line 387
    sget-object v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->ENTRY_TYPE_MY_CONTACT_OPTION:Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    invoke-virtual {v12, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 389
    :cond_c
    const/4 v0, 0x2

    if-ne v0, v11, :cond_0

    .line 390
    const/16 v0, 0x1b

    iget v1, v10, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    if-ne v0, v1, :cond_d

    .line 391
    new-instance v12, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    .end local v12           #v:Landroid/view/View;
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->mContext:Landroid/content/Context;

    const/16 v1, 0x194

    invoke-direct {v12, v0, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    .line 405
    .restart local v12       #v:Landroid/view/View;
    :goto_2
    sget-object v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->ENTRY_TYPE_COMMUNICATION:Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    invoke-virtual {v12, v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 392
    :cond_d
    const/4 v0, 0x5

    iget v1, v10, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    iget v1, v10, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    if-ne v0, v1, :cond_f

    :cond_e
    iget-boolean v0, v10, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->fromFacebook:Z

    if-nez v0, :cond_10

    :cond_f
    iget-boolean v0, v10, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->fromMyPhonebook:Z

    if-eqz v0, :cond_11

    .line 394
    :cond_10
    new-instance v12, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    .end local v12           #v:Landroid/view/View;
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->mContext:Landroid/content/Context;

    const/16 v1, 0x194

    invoke-direct {v12, v0, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    .restart local v12       #v:Landroid/view/View;
    goto :goto_2

    .line 395
    :cond_11
    const/16 v0, 0x1f

    iget v1, v10, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    if-eq v0, v1, :cond_12

    const/16 v0, 0x20

    iget v1, v10, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    if-ne v0, v1, :cond_13

    .line 396
    :cond_12
    new-instance v12, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    .end local v12           #v:Landroid/view/View;
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->mContext:Landroid/content/Context;

    const/16 v1, 0x191

    invoke-direct {v12, v0, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    .restart local v12       #v:Landroid/view/View;
    goto :goto_2

    .line 397
    :cond_13
    const/16 v0, 0x21

    iget v1, v10, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    if-eq v0, v1, :cond_14

    const/16 v0, 0x22

    iget v1, v10, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    if-eq v0, v1, :cond_14

    const/16 v0, 0x23

    iget v1, v10, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    if-eq v0, v1, :cond_14

    const/16 v0, 0x24

    iget v1, v10, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    if-ne v0, v1, :cond_15

    .line 401
    :cond_14
    new-instance v12, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    .end local v12           #v:Landroid/view/View;
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->mContext:Landroid/content/Context;

    const/16 v1, 0x194

    invoke-direct {v12, v0, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    .restart local v12       #v:Landroid/view/View;
    goto :goto_2

    .line 403
    :cond_15
    new-instance v12, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    .end local v12           #v:Landroid/view/View;
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->mContext:Landroid/content/Context;

    const/16 v1, 0x194

    invoke-direct {v12, v0, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    .restart local v12       #v:Landroid/view/View;
    goto :goto_2
.end method
