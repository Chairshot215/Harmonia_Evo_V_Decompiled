.class Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;
.super Landroid/os/AsyncTask;
.source "ReadScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ReadScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetDetailListLayoutTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/htc/android/mail/ReadScreen$ReadScreenDetailListInfo;",
        "Lcom/htc/android/mail/ReadScreen$ReadScreenDetailList;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field aContainerUsed:I

.field aCurrentBtnCount:I

.field aCurrentContainerWidthUsed:I

.field aDetailListInfo:Lcom/htc/android/mail/ReadScreen$ReadScreenDetailListInfo;

.field aRecipientInfo:Lcom/htc/android/mail/ReadScreen$RecipientListInfo;

.field aReipientTotalCount:I

.field aTagListInfo:Lcom/htc/android/mail/ReadScreen$TagListInfo;

.field mContainerLayoutMargin:I

.field subViewContainer:Landroid/view/ViewGroup;

.field final synthetic this$0:Lcom/htc/android/mail/ReadScreen;


# direct methods
.method private constructor <init>(Lcom/htc/android/mail/ReadScreen;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1520
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1521
    iput-object v1, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aDetailListInfo:Lcom/htc/android/mail/ReadScreen$ReadScreenDetailListInfo;

    .line 1522
    iput-object v1, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aRecipientInfo:Lcom/htc/android/mail/ReadScreen$RecipientListInfo;

    .line 1523
    iput-object v1, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aTagListInfo:Lcom/htc/android/mail/ReadScreen$TagListInfo;

    .line 1525
    iput v0, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aCurrentBtnCount:I

    .line 1526
    iput v0, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aReipientTotalCount:I

    .line 1527
    iput v0, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aCurrentContainerWidthUsed:I

    .line 1528
    iput v0, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aContainerUsed:I

    .line 1529
    iput v0, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->mContainerLayoutMargin:I

    .line 1531
    iput-object v1, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->subViewContainer:Landroid/view/ViewGroup;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/ReadScreen;Lcom/htc/android/mail/ReadScreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1520
    invoke-direct {p0, p1}, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;-><init>(Lcom/htc/android/mail/ReadScreen;)V

    return-void
.end method

.method private createHideShowAllButton()V
    .locals 13

    .prologue
    const/4 v9, 0x0

    .line 1534
    iget v8, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aContainerUsed:I

    const/4 v10, 0x3

    if-gt v8, v10, :cond_0

    .line 1583
    :goto_0
    return-void

    .line 1539
    :cond_0
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "ReadScreen"

    const-string v10, "createHideShowAllButton>"

    invoke-static {v8, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1541
    :cond_1
    new-instance v0, Lcom/htc/android/mail/widget/HtcPhotoButton;

    iget-object v8, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->myContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/htc/android/mail/ReadScreen;->access$1300(Lcom/htc/android/mail/ReadScreen;)Landroid/content/Context;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/htc/android/mail/widget/HtcPhotoButton;-><init>(Landroid/content/Context;)V

    .line 1542
    .local v0, btn:Lcom/htc/android/mail/widget/HtcPhotoButton;
    iget-object v8, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mRes:Landroid/content/res/Resources;
    invoke-static {v8}, Lcom/htc/android/mail/ReadScreen;->access$1900(Lcom/htc/android/mail/ReadScreen;)Landroid/content/res/Resources;

    move-result-object v8

    iget-object v10, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->myContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/htc/android/mail/ReadScreen;->access$1300(Lcom/htc/android/mail/ReadScreen;)Landroid/content/Context;

    move-result-object v10

    const-string v11, "mail_cc_button"

    const v12, 0x7f020028

    invoke-static {v10, v11, v12}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/htc/android/mail/widget/HtcPhotoButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1544
    iget-object v8, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->onClickRecipientShowAllListener:Landroid/view/View$OnClickListener;
    invoke-static {v8}, Lcom/htc/android/mail/ReadScreen;->access$2000(Lcom/htc/android/mail/ReadScreen;)Landroid/view/View$OnClickListener;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/htc/android/mail/widget/HtcPhotoButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1546
    const/4 v6, 0x0

    .line 1547
    .local v6, mainViewContainer:Landroid/view/ViewGroup;
    iget-object v8, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aDetailListInfo:Lcom/htc/android/mail/ReadScreen$ReadScreenDetailListInfo;

    iget-boolean v8, v8, Lcom/htc/android/mail/ReadScreen$ReadScreenDetailListInfo;->mIsTagListType:Z

    if-eqz v8, :cond_2

    .line 1548
    iget-object v8, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aTagListInfo:Lcom/htc/android/mail/ReadScreen$TagListInfo;

    iget-object v6, v8, Lcom/htc/android/mail/ReadScreen$TagListInfo;->mainViewContainer:Landroid/view/ViewGroup;

    .line 1552
    :goto_1
    iget-object v8, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget v8, v8, Lcom/htc/android/mail/ReadScreen;->sKEY_IS_SHOW_ALL:I

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_3

    move v4, v9

    .line 1555
    .local v4, isShowAll:Z
    :goto_2
    if-nez v4, :cond_6

    .line 1556
    const v8, 0x7f0b012f

    invoke-virtual {v0, v8}, Lcom/htc/android/mail/widget/HtcPhotoButton;->setText(I)V

    .line 1559
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 1560
    .local v2, count:I
    const/4 v3, 0x2

    .local v3, i:I
    :goto_3
    add-int/lit8 v8, v2, -0x1

    if-ge v3, v8, :cond_4

    .line 1561
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    const/16 v10, 0x8

    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1560
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1550
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v4           #isShowAll:Z
    :cond_2
    iget-object v8, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aRecipientInfo:Lcom/htc/android/mail/ReadScreen$RecipientListInfo;

    iget-object v6, v8, Lcom/htc/android/mail/ReadScreen$RecipientListInfo;->mainViewContainer:Landroid/view/ViewGroup;

    goto :goto_1

    .line 1552
    :cond_3
    iget-object v8, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget v8, v8, Lcom/htc/android/mail/ReadScreen;->sKEY_IS_SHOW_ALL:I

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    goto :goto_2

    .line 1563
    .restart local v2       #count:I
    .restart local v3       #i:I
    .restart local v4       #isShowAll:Z
    :cond_4
    iget-object v8, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget v8, v8, Lcom/htc/android/mail/ReadScreen;->sKEY_IS_SHOW_ALL:I

    new-instance v10, Ljava/lang/Boolean;

    invoke-direct {v10, v9}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v6, v8, v10}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 1568
    .end local v2           #count:I
    .end local v3           #i:I
    :goto_4
    invoke-virtual {v0}, Lcom/htc/android/mail/widget/HtcPhotoButton;->getButtonWidth()I

    move-result v8

    iget-object v10, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-virtual {v10}, Lcom/htc/android/mail/ReadScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f080037

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    add-int v7, v8, v10

    .line 1570
    .local v7, receipientButtonWidth:I
    iget v8, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aCurrentContainerWidthUsed:I

    add-int v1, v7, v8

    .line 1572
    .local v1, containerWidthUsed:I
    iget-object v8, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget v8, v8, Lcom/htc/android/mail/ReadScreen;->mRecipientBlockWidth:I

    if-lt v1, v8, :cond_5

    .line 1574
    invoke-virtual {p0, v6}, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->newViewContainer(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->subViewContainer:Landroid/view/ViewGroup;

    .line 1575
    iget-object v8, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->subViewContainer:Landroid/view/ViewGroup;

    iget v10, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->mContainerLayoutMargin:I

    invoke-virtual {v8, v10, v9, v9, v9}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 1578
    :cond_5
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 1579
    .local v5, mWeakViewContainer:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/view/ViewGroup;>;"
    invoke-virtual {v0, v5}, Lcom/htc/android/mail/widget/HtcPhotoButton;->setTag(Ljava/lang/Object;)V

    .line 1581
    iget-object v8, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->subViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1582
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->setButtonMargin(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1565
    .end local v1           #containerWidthUsed:I
    .end local v5           #mWeakViewContainer:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/view/ViewGroup;>;"
    .end local v7           #receipientButtonWidth:I
    :cond_6
    const v8, 0x7f0b0131

    invoke-virtual {v0, v8}, Lcom/htc/android/mail/widget/HtcPhotoButton;->setText(I)V

    goto :goto_4
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1520
    check-cast p1, [Lcom/htc/android/mail/ReadScreen$ReadScreenDetailListInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->doInBackground([Lcom/htc/android/mail/ReadScreen$ReadScreenDetailListInfo;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/htc/android/mail/ReadScreen$ReadScreenDetailListInfo;)Ljava/lang/Void;
    .locals 11
    .parameter "params"

    .prologue
    .line 1781
    const/4 v7, 0x0

    aget-object v7, p1, v7

    iput-object v7, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aDetailListInfo:Lcom/htc/android/mail/ReadScreen$ReadScreenDetailListInfo;

    .line 1782
    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aDetailListInfo:Lcom/htc/android/mail/ReadScreen$ReadScreenDetailListInfo;

    iget-boolean v7, v7, Lcom/htc/android/mail/ReadScreen$ReadScreenDetailListInfo;->mIsTagListType:Z

    if-nez v7, :cond_1

    .line 1783
    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aDetailListInfo:Lcom/htc/android/mail/ReadScreen$ReadScreenDetailListInfo;

    iget-object v7, v7, Lcom/htc/android/mail/ReadScreen$ReadScreenDetailListInfo;->mRecipientListInfo:Lcom/htc/android/mail/ReadScreen$RecipientListInfo;

    iput-object v7, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aRecipientInfo:Lcom/htc/android/mail/ReadScreen$RecipientListInfo;

    .line 1788
    :goto_0
    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aDetailListInfo:Lcom/htc/android/mail/ReadScreen$ReadScreenDetailListInfo;

    iget-boolean v7, v7, Lcom/htc/android/mail/ReadScreen$ReadScreenDetailListInfo;->mIsTagListType:Z

    if-nez v7, :cond_2

    .line 1790
    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aRecipientInfo:Lcom/htc/android/mail/ReadScreen$RecipientListInfo;

    iget-object v8, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aRecipientInfo:Lcom/htc/android/mail/ReadScreen$RecipientListInfo;

    iget-object v8, v8, Lcom/htc/android/mail/ReadScreen$RecipientListInfo;->recipientEmailString:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/htc/android/mail/Headers;->splitMailAddress(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v8

    iput-object v8, v7, Lcom/htc/android/mail/ReadScreen$RecipientListInfo;->recipientAddress:Ljava/util/ArrayList;

    .line 1793
    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aRecipientInfo:Lcom/htc/android/mail/ReadScreen$RecipientListInfo;

    iget-object v8, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aRecipientInfo:Lcom/htc/android/mail/ReadScreen$RecipientListInfo;

    iget-object v8, v8, Lcom/htc/android/mail/ReadScreen$RecipientListInfo;->recipientEmailString:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/htc/android/mail/Headers;->splitMailAddress(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v8

    iput-object v8, v7, Lcom/htc/android/mail/ReadScreen$RecipientListInfo;->recipientOrignalAddress:Ljava/util/ArrayList;

    .line 1795
    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aRecipientInfo:Lcom/htc/android/mail/ReadScreen$RecipientListInfo;

    iget-object v7, v7, Lcom/htc/android/mail/ReadScreen$RecipientListInfo;->receiverlist:Ljava/util/ArrayList;

    if-nez v7, :cond_0

    .line 1796
    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aRecipientInfo:Lcom/htc/android/mail/ReadScreen$RecipientListInfo;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v7, Lcom/htc/android/mail/ReadScreen$RecipientListInfo;->receiverlist:Ljava/util/ArrayList;

    .line 1798
    :cond_0
    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aRecipientInfo:Lcom/htc/android/mail/ReadScreen$RecipientListInfo;

    iget-object v7, v7, Lcom/htc/android/mail/ReadScreen$RecipientListInfo;->recipientAddress:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iput v7, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aReipientTotalCount:I

    .line 1804
    :goto_1
    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aDetailListInfo:Lcom/htc/android/mail/ReadScreen$ReadScreenDetailListInfo;

    iget-boolean v7, v7, Lcom/htc/android/mail/ReadScreen$ReadScreenDetailListInfo;->mIsTagListType:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    .line 1805
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget v7, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aReipientTotalCount:I

    if-ge v1, v7, :cond_4

    .line 1806
    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-virtual {v7}, Lcom/htc/android/mail/ReadScreen;->isFinishing()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1807
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->cancel(Z)Z

    .line 1808
    const/4 v7, 0x0

    .line 1867
    :goto_3
    return-object v7

    .line 1786
    .end local v1           #i:I
    :cond_1
    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aDetailListInfo:Lcom/htc/android/mail/ReadScreen$ReadScreenDetailListInfo;

    iget-object v7, v7, Lcom/htc/android/mail/ReadScreen$ReadScreenDetailListInfo;->mTagListInfo:Lcom/htc/android/mail/ReadScreen$TagListInfo;

    iput-object v7, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aTagListInfo:Lcom/htc/android/mail/ReadScreen$TagListInfo;

    goto :goto_0

    .line 1800
    :cond_2
    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aTagListInfo:Lcom/htc/android/mail/ReadScreen$TagListInfo;

    iget-object v7, v7, Lcom/htc/android/mail/ReadScreen$TagListInfo;->mTagList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iput v7, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aReipientTotalCount:I

    goto :goto_1

    .line 1810
    .restart local v1       #i:I
    :cond_3
    new-instance v6, Lcom/htc/android/mail/ReadScreen$TagList;

    invoke-direct {v6}, Lcom/htc/android/mail/ReadScreen$TagList;-><init>()V

    .line 1811
    .local v6, tagList:Lcom/htc/android/mail/ReadScreen$TagList;
    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aTagListInfo:Lcom/htc/android/mail/ReadScreen$TagListInfo;

    iget-object v7, v7, Lcom/htc/android/mail/ReadScreen$TagListInfo;->mTagList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;

    iget-object v7, v7, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;->name:Ljava/lang/String;

    iput-object v7, v6, Lcom/htc/android/mail/ReadScreen$TagList;->tagName:Ljava/lang/String;

    .line 1812
    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aTagListInfo:Lcom/htc/android/mail/ReadScreen$TagListInfo;

    iget-object v7, v7, Lcom/htc/android/mail/ReadScreen$TagListInfo;->mTagList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;

    iget-wide v7, v7, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;->id:J

    iput-wide v7, v6, Lcom/htc/android/mail/ReadScreen$TagList;->tagId:J

    .line 1813
    new-instance v0, Lcom/htc/android/mail/ReadScreen$ReadScreenDetailList;

    invoke-direct {v0, v6}, Lcom/htc/android/mail/ReadScreen$ReadScreenDetailList;-><init>(Lcom/htc/android/mail/ReadScreen$TagList;)V

    .line 1814
    .local v0, detailList:Lcom/htc/android/mail/ReadScreen$ReadScreenDetailList;
    const/4 v7, 0x1

    new-array v7, v7, [Lcom/htc/android/mail/ReadScreen$ReadScreenDetailList;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-virtual {p0, v7}, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->publishProgress([Ljava/lang/Object;)V

    .line 1805
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1816
    .end local v0           #detailList:Lcom/htc/android/mail/ReadScreen$ReadScreenDetailList;
    .end local v6           #tagList:Lcom/htc/android/mail/ReadScreen$TagList;
    :cond_4
    const/4 v7, 0x0

    goto :goto_3

    .line 1820
    .end local v1           #i:I
    :cond_5
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_4
    iget v7, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aReipientTotalCount:I

    if-ge v1, v7, :cond_c

    .line 1821
    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-virtual {v7}, Lcom/htc/android/mail/ReadScreen;->isFinishing()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1822
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->cancel(Z)Z

    .line 1823
    const/4 v7, 0x0

    goto :goto_3

    .line 1827
    :cond_6
    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aRecipientInfo:Lcom/htc/android/mail/ReadScreen$RecipientListInfo;

    iget-object v7, v7, Lcom/htc/android/mail/ReadScreen$RecipientListInfo;->recipientAddress:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/android/mail/Mailaddress;

    iget-object v4, v7, Lcom/htc/android/mail/Mailaddress;->mDisplayName:Ljava/lang/String;

    .line 1828
    .local v4, name:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aRecipientInfo:Lcom/htc/android/mail/ReadScreen$RecipientListInfo;

    iget-object v7, v7, Lcom/htc/android/mail/ReadScreen$RecipientListInfo;->recipientAddress:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/android/mail/Mailaddress;

    iget-object v3, v7, Lcom/htc/android/mail/Mailaddress;->mEmail:Ljava/lang/String;

    .line 1829
    .local v3, mailaddr:Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "\"\""

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1831
    :cond_7
    const/4 v4, 0x0

    .line 1834
    :cond_8
    if-eqz v4, :cond_9

    if-nez v3, :cond_9

    .line 1835
    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v7}, Lcom/htc/android/mail/ReadScreen;->access$900(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/Account;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v7

    const-string v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1836
    .local v2, index:I
    if-lez v2, :cond_9

    .line 1837
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v8}, Lcom/htc/android/mail/ReadScreen;->access$900(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/Account;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/android/mail/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v9}, Lcom/htc/android/mail/ReadScreen;->access$900(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/Account;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/android/mail/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1841
    .end local v2           #index:I
    :cond_9
    if-eqz v3, :cond_a

    .line 1842
    const-string v7, "@"

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1843
    .restart local v2       #index:I
    if-gez v2, :cond_a

    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v7}, Lcom/htc/android/mail/ReadScreen;->access$900(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/Account;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 1844
    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v7}, Lcom/htc/android/mail/ReadScreen;->access$900(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/Account;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v7

    const-string v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1845
    if-lez v2, :cond_a

    .line 1846
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v8}, Lcom/htc/android/mail/ReadScreen;->access$900(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/Account;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/android/mail/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, v2, 0x1

    iget-object v10, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v10}, Lcom/htc/android/mail/ReadScreen;->access$900(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/Account;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/android/mail/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1853
    .end local v2           #index:I
    :cond_a
    new-instance v5, Lcom/htc/android/mail/ReceiverList;

    invoke-direct {v5}, Lcom/htc/android/mail/ReceiverList;-><init>()V

    .line 1854
    .local v5, receiverList:Lcom/htc/android/mail/ReceiverList;
    if-nez v4, :cond_b

    .line 1855
    const/4 v7, 0x0

    iput-boolean v7, v5, Lcom/htc/android/mail/ReceiverList;->haveDisplayName:Z

    .line 1856
    iput-object v3, v5, Lcom/htc/android/mail/ReceiverList;->name:Ljava/lang/String;

    .line 1861
    :goto_5
    const-wide/16 v7, -0x1

    iput-wide v7, v5, Lcom/htc/android/mail/ReceiverList;->methodId:J

    .line 1862
    iput-object v3, v5, Lcom/htc/android/mail/ReceiverList;->addr:Ljava/lang/String;

    .line 1863
    const-wide/16 v7, -0x1

    iput-wide v7, v5, Lcom/htc/android/mail/ReceiverList;->contactId:J

    .line 1864
    new-instance v0, Lcom/htc/android/mail/ReadScreen$ReadScreenDetailList;

    invoke-direct {v0, v5}, Lcom/htc/android/mail/ReadScreen$ReadScreenDetailList;-><init>(Lcom/htc/android/mail/ReceiverList;)V

    .line 1865
    .restart local v0       #detailList:Lcom/htc/android/mail/ReadScreen$ReadScreenDetailList;
    const/4 v7, 0x1

    new-array v7, v7, [Lcom/htc/android/mail/ReadScreen$ReadScreenDetailList;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-virtual {p0, v7}, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->publishProgress([Ljava/lang/Object;)V

    .line 1820
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    .line 1858
    .end local v0           #detailList:Lcom/htc/android/mail/ReadScreen$ReadScreenDetailList;
    :cond_b
    const/4 v7, 0x1

    iput-boolean v7, v5, Lcom/htc/android/mail/ReceiverList;->haveDisplayName:Z

    .line 1859
    iput-object v4, v5, Lcom/htc/android/mail/ReceiverList;->name:Ljava/lang/String;

    goto :goto_5

    .line 1867
    .end local v3           #mailaddr:Ljava/lang/String;
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #receiverList:Lcom/htc/android/mail/ReceiverList;
    :cond_c
    const/4 v7, 0x0

    goto/16 :goto_3
.end method

.method public newRecipientButton(Lcom/htc/android/mail/ReadScreen$ReadScreenDetailList;)Lcom/htc/android/mail/widget/HtcPhotoButton;
    .locals 3
    .parameter "detailList"

    .prologue
    .line 1889
    new-instance v0, Lcom/htc/android/mail/widget/HtcPhotoButton;

    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->myContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/android/mail/ReadScreen;->access$1300(Lcom/htc/android/mail/ReadScreen;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/android/mail/widget/HtcPhotoButton;-><init>(Landroid/content/Context;)V

    .line 1890
    .local v0, button:Lcom/htc/android/mail/widget/HtcPhotoButton;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/HtcPhotoButton;->setImageVisibility(I)V

    .line 1891
    iget-boolean v1, p1, Lcom/htc/android/mail/ReadScreen$ReadScreenDetailList;->mIsTagListType:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1892
    iget-object v1, p1, Lcom/htc/android/mail/ReadScreen$ReadScreenDetailList;->mTagList:Lcom/htc/android/mail/ReadScreen$TagList;

    iget-object v1, v1, Lcom/htc/android/mail/ReadScreen$TagList;->tagName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/HtcPhotoButton;->setText(Ljava/lang/CharSequence;)V

    .line 1897
    :goto_0
    return-object v0

    .line 1895
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-object v2, p1, Lcom/htc/android/mail/ReadScreen$ReadScreenDetailList;->mReceiverList:Lcom/htc/android/mail/ReceiverList;

    #calls: Lcom/htc/android/mail/ReadScreen;->getDisplayName(Lcom/htc/android/mail/ReceiverList;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/android/mail/ReadScreen;->access$2500(Lcom/htc/android/mail/ReadScreen;Lcom/htc/android/mail/ReceiverList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/HtcPhotoButton;->setText(Ljava/lang/CharSequence;)V

    .line 1896
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->onClickAddContactListener:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lcom/htc/android/mail/ReadScreen;->access$2600(Lcom/htc/android/mail/ReadScreen;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/HtcPhotoButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public newViewContainer(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 5
    .parameter "mainContainer"

    .prologue
    const/4 v4, 0x0

    .line 1871
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->myContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/android/mail/ReadScreen;->access$1300(Lcom/htc/android/mail/ReadScreen;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1872
    .local v1, subViewContainer:Landroid/view/ViewGroup;
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1874
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1875
    .local v0, para:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, -0x1

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1877
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-virtual {v2}, Lcom/htc/android/mail/ReadScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080036

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v4, v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1879
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1880
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aDetailListInfo:Lcom/htc/android/mail/ReadScreen$ReadScreenDetailListInfo;

    iget-boolean v2, v2, Lcom/htc/android/mail/ReadScreen$ReadScreenDetailListInfo;->mIsTagListType:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move-object v2, v1

    .line 1881
    check-cast v2, Landroid/widget/LinearLayout;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1884
    :cond_0
    iget v2, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aContainerUsed:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aContainerUsed:I

    .line 1885
    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1520
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 1769
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-virtual {v0}, Lcom/htc/android/mail/ReadScreen;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1770
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->cancel(Z)Z

    .line 1777
    :cond_0
    :goto_0
    return-void

    .line 1773
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->createHideShowAllButton()V

    .line 1774
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aDetailListInfo:Lcom/htc/android/mail/ReadScreen$ReadScreenDetailListInfo;

    iget-boolean v0, v0, Lcom/htc/android/mail/ReadScreen$ReadScreenDetailListInfo;->mIsTagListType:Z

    if-nez v0, :cond_0

    .line 1775
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aRecipientInfo:Lcom/htc/android/mail/ReadScreen$RecipientListInfo;

    #calls: Lcom/htc/android/mail/ReadScreen;->updateReceiverContacts(Lcom/htc/android/mail/ReadScreen$RecipientListInfo;)V
    invoke-static {v0, v1}, Lcom/htc/android/mail/ReadScreen;->access$2400(Lcom/htc/android/mail/ReadScreen;Lcom/htc/android/mail/ReadScreen$RecipientListInfo;)V

    goto :goto_0
.end method

.method protected varargs onProgressUpdate([Lcom/htc/android/mail/ReadScreen$ReadScreenDetailList;)V
    .locals 23
    .parameter "params"

    .prologue
    .line 1587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/android/mail/ReadScreen;->isFinishing()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 1588
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->cancel(Z)Z

    .line 1765
    :cond_0
    :goto_0
    return-void

    .line 1591
    :cond_1
    const/16 v18, 0x0

    aget-object v6, p1, v18

    .line 1592
    .local v6, detailList:Lcom/htc/android/mail/ReadScreen$ReadScreenDetailList;
    const/4 v14, 0x0

    .line 1593
    .local v14, receiverList:Lcom/htc/android/mail/ReceiverList;
    const/16 v16, 0x0

    .line 1594
    .local v16, tagList:Lcom/htc/android/mail/ReadScreen$TagList;
    const/4 v9, 0x0

    .line 1595
    .local v9, mainViewContainer:Landroid/view/ViewGroup;
    const/16 v17, 0x0

    .line 1596
    .local v17, textLabel:Landroid/widget/TextView;
    iget-boolean v0, v6, Lcom/htc/android/mail/ReadScreen$ReadScreenDetailList;->mIsTagListType:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 1597
    iget-object v0, v6, Lcom/htc/android/mail/ReadScreen$ReadScreenDetailList;->mTagList:Lcom/htc/android/mail/ReadScreen$TagList;

    move-object/from16 v16, v0

    .line 1598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aTagListInfo:Lcom/htc/android/mail/ReadScreen$TagListInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/htc/android/mail/ReadScreen$TagListInfo;->mainViewContainer:Landroid/view/ViewGroup;

    .line 1599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aTagListInfo:Lcom/htc/android/mail/ReadScreen$TagListInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$TagListInfo;->textLabel:Landroid/widget/TextView;

    move-object/from16 v17, v0

    .line 1607
    :goto_1
    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v18

    const-string v19, "To:"

    invoke-virtual/range {v18 .. v19}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/android/mail/ReadScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f080037

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    add-int v11, v18, v19

    .line 1610
    .local v11, minBtnWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/android/mail/ReadScreen;->myContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/htc/android/mail/ReadScreen;->access$1300(Lcom/htc/android/mail/ReadScreen;)Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/htc/android/mail/Mail;->isArabicLanguage(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_c

    .line 1611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->subViewContainer:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    if-nez v18, :cond_2

    .line 1612
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->newViewContainer(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->subViewContainer:Landroid/view/ViewGroup;

    .line 1613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->subViewContainer:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1614
    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v18

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/android/mail/ReadScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f080037

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->mContainerLayoutMargin:I

    .line 1617
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aCurrentContainerWidthUsed:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->mContainerLayoutMargin:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aCurrentContainerWidthUsed:I

    .line 1619
    :cond_2
    const/4 v7, 0x1

    .line 1622
    .local v7, isPhotoBtn:Z
    iget-boolean v0, v6, Lcom/htc/android/mail/ReadScreen$ReadScreenDetailList;->mIsTagListType:Z

    move/from16 v18, v0

    if-eqz v18, :cond_7

    .line 1623
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/htc/android/mail/ReadScreen$TagList;->tagId:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x3e8

    cmp-long v18, v18, v20

    if-nez v18, :cond_6

    .line 1624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/android/mail/ReadScreen;->mPartFactory:Landroid/view/LayoutInflater;
    invoke-static/range {v18 .. v18}, Lcom/htc/android/mail/ReadScreen;->access$2100(Lcom/htc/android/mail/ReadScreen;)Landroid/view/LayoutInflater;

    move-result-object v18

    const v19, 0x7f03004b

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v18 .. v21}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 1625
    .local v4, button:Landroid/view/View;
    const/4 v7, 0x0

    .line 1637
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aReipientTotalCount:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 1639
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v7, v0, :cond_3

    move-object/from16 v18, v4

    .line 1640
    check-cast v18, Lcom/htc/android/mail/widget/HtcPhotoButton;

    const/16 v19, -0x2

    invoke-virtual/range {v18 .. v19}, Lcom/htc/android/mail/widget/HtcPhotoButton;->setWidth(I)V

    .line 1672
    :cond_3
    :goto_3
    iget-boolean v0, v6, Lcom/htc/android/mail/ReadScreen$ReadScreenDetailList;->mIsTagListType:Z

    move/from16 v18, v0

    if-nez v18, :cond_4

    .line 1673
    iput-object v4, v14, Lcom/htc/android/mail/ReceiverList;->view:Landroid/view/View;

    .line 1674
    iget-object v0, v14, Lcom/htc/android/mail/ReceiverList;->view:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aRecipientInfo:Lcom/htc/android/mail/ReadScreen$RecipientListInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$RecipientListInfo;->receiverlist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1678
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->subViewContainer:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1679
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->setButtonMargin(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1601
    .end local v4           #button:Landroid/view/View;
    .end local v7           #isPhotoBtn:Z
    .end local v11           #minBtnWidth:I
    :cond_5
    iget-object v14, v6, Lcom/htc/android/mail/ReadScreen$ReadScreenDetailList;->mReceiverList:Lcom/htc/android/mail/ReceiverList;

    .line 1602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aRecipientInfo:Lcom/htc/android/mail/ReadScreen$RecipientListInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/htc/android/mail/ReadScreen$RecipientListInfo;->mainViewContainer:Landroid/view/ViewGroup;

    .line 1603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aRecipientInfo:Lcom/htc/android/mail/ReadScreen$RecipientListInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$RecipientListInfo;->textLabel:Landroid/widget/TextView;

    move-object/from16 v17, v0

    goto/16 :goto_1

    .line 1628
    .restart local v7       #isPhotoBtn:Z
    .restart local v11       #minBtnWidth:I
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->newRecipientButton(Lcom/htc/android/mail/ReadScreen$ReadScreenDetailList;)Lcom/htc/android/mail/widget/HtcPhotoButton;

    move-result-object v4

    .line 1629
    .restart local v4       #button:Landroid/view/View;
    const/4 v7, 0x1

    goto :goto_2

    .line 1633
    .end local v4           #button:Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->newRecipientButton(Lcom/htc/android/mail/ReadScreen$ReadScreenDetailList;)Lcom/htc/android/mail/widget/HtcPhotoButton;

    move-result-object v4

    .line 1634
    .restart local v4       #button:Landroid/view/View;
    const/4 v7, 0x1

    goto :goto_2

    .line 1644
    :cond_8
    const/4 v13, 0x0

    .line 1645
    .local v13, receipientButtonWidth:I
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v7, v0, :cond_b

    .line 1646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    move-object/from16 v19, v0

    move-object/from16 v18, v4

    check-cast v18, Lcom/htc/android/mail/widget/HtcPhotoButton;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/htc/android/mail/ReadScreen;->mRecipientBlockWidth:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->mContainerLayoutMargin:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/android/mail/ReadScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f080037

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move/from16 v2, v20

    #calls: Lcom/htc/android/mail/ReadScreen;->getBtnWidth(Lcom/htc/android/mail/widget/HtcPhotoButton;II)I
    invoke-static {v0, v1, v2, v11}, Lcom/htc/android/mail/ReadScreen;->access$2200(Lcom/htc/android/mail/ReadScreen;Lcom/htc/android/mail/widget/HtcPhotoButton;II)I

    move-result v13

    .line 1652
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aCurrentContainerWidthUsed:I

    move/from16 v18, v0

    add-int v5, v13, v18

    .line 1654
    .local v5, containerWidthUsed:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/htc/android/mail/ReadScreen;->mRecipientBlockWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v5, v0, :cond_a

    .line 1656
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->newViewContainer(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->subViewContainer:Landroid/view/ViewGroup;

    .line 1657
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aCurrentContainerWidthUsed:I

    .line 1659
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aContainerUsed:I

    move/from16 v18, v0

    if-lez v18, :cond_9

    .line 1660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->subViewContainer:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->mContainerLayoutMargin:I

    move/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 1662
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aCurrentContainerWidthUsed:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->mContainerLayoutMargin:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aCurrentContainerWidthUsed:I

    .line 1665
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aCurrentContainerWidthUsed:I

    move/from16 v18, v0

    add-int v18, v18, v13

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aCurrentContainerWidthUsed:I

    .line 1667
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v7, v0, :cond_3

    move-object/from16 v18, v4

    .line 1668
    check-cast v18, Lcom/htc/android/mail/widget/HtcPhotoButton;

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/htc/android/mail/widget/HtcPhotoButton;->setMaxWidth(I)V

    move-object/from16 v18, v4

    .line 1669
    check-cast v18, Lcom/htc/android/mail/widget/HtcPhotoButton;

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/htc/android/mail/widget/HtcPhotoButton;->setMinimumWidth(I)V

    goto/16 :goto_3

    .line 1649
    .end local v5           #containerWidthUsed:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/android/mail/ReadScreen;->mRecipientBlockWidth:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    #calls: Lcom/htc/android/mail/ReadScreen;->getViewWidth(Landroid/view/View;I)I
    invoke-static {v0, v4, v1}, Lcom/htc/android/mail/ReadScreen;->access$2300(Lcom/htc/android/mail/ReadScreen;Landroid/view/View;I)I

    move-result v13

    goto/16 :goto_4

    .line 1681
    .end local v4           #button:Landroid/view/View;
    .end local v7           #isPhotoBtn:Z
    .end local v13           #receipientButtonWidth:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->subViewContainer:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    if-nez v18, :cond_d

    .line 1682
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->newViewContainer(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->subViewContainer:Landroid/view/ViewGroup;

    .line 1686
    :cond_d
    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v18

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v18

    move/from16 v0, v18

    float-to-int v8, v0

    .line 1688
    .local v8, labelWidth:I
    const/4 v7, 0x1

    .line 1690
    .restart local v7       #isPhotoBtn:Z
    iget-boolean v0, v6, Lcom/htc/android/mail/ReadScreen$ReadScreenDetailList;->mIsTagListType:Z

    move/from16 v18, v0

    if-eqz v18, :cond_13

    .line 1691
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/htc/android/mail/ReadScreen$TagList;->tagId:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x3e8

    cmp-long v18, v18, v20

    if-nez v18, :cond_12

    .line 1692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/android/mail/ReadScreen;->mPartFactory:Landroid/view/LayoutInflater;
    invoke-static/range {v18 .. v18}, Lcom/htc/android/mail/ReadScreen;->access$2100(Lcom/htc/android/mail/ReadScreen;)Landroid/view/LayoutInflater;

    move-result-object v18

    const v19, 0x7f03004b

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v18 .. v21}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 1693
    .restart local v4       #button:Landroid/view/View;
    const/4 v7, 0x0

    .line 1706
    :goto_5
    const/4 v15, 0x0

    .line 1707
    .local v15, recipientButtonWidth:I
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v7, v0, :cond_14

    .line 1708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    move-object/from16 v19, v0

    move-object/from16 v18, v4

    check-cast v18, Lcom/htc/android/mail/widget/HtcPhotoButton;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/htc/android/mail/ReadScreen;->mRecipientBlockWidth:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move/from16 v2, v20

    #calls: Lcom/htc/android/mail/ReadScreen;->getBtnWidth(Lcom/htc/android/mail/widget/HtcPhotoButton;II)I
    invoke-static {v0, v1, v2, v11}, Lcom/htc/android/mail/ReadScreen;->access$2200(Lcom/htc/android/mail/ReadScreen;Lcom/htc/android/mail/widget/HtcPhotoButton;II)I

    move-result v15

    .line 1714
    :goto_6
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v7, v0, :cond_e

    .line 1715
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aReipientTotalCount:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_15

    .line 1716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/android/mail/ReadScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f080036

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v10, v0

    .local v10, margin:I
    move-object/from16 v18, v4

    .line 1717
    check-cast v18, Lcom/htc/android/mail/widget/HtcPhotoButton;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/android/mail/ReadScreen;->mRecipientBlockWidth:I

    move/from16 v19, v0

    sub-int v19, v19, v8

    sub-int v19, v19, v10

    invoke-virtual/range {v18 .. v19}, Lcom/htc/android/mail/widget/HtcPhotoButton;->setMaxWidth(I)V

    .end local v10           #margin:I
    :goto_7
    move-object/from16 v18, v4

    .line 1722
    check-cast v18, Lcom/htc/android/mail/widget/HtcPhotoButton;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/android/mail/ReadScreen;->sTO_CC_BUTTON_MIN_WIDTH_RATIO:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/htc/android/mail/ReadScreen;->mRecipientBlockWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/htc/android/mail/widget/HtcPhotoButton;->setMinimumWidth(I)V

    .line 1726
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aContainerUsed:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    .line 1727
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aCurrentContainerWidthUsed:I

    move/from16 v18, v0

    add-int v18, v18, v15

    add-int v18, v18, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/android/mail/ReadScreen;->mRecipientBlockWidth:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_f

    .line 1728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->subViewContainer:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1729
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v18, -0x2

    const/16 v19, -0x1

    const/high16 v20, 0x3f80

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v12, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1730
    .local v12, para:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/android/mail/ReadScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f080037

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1731
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1732
    const/16 v18, 0x15

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setGravity(I)V

    .line 1733
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aCurrentContainerWidthUsed:I

    move/from16 v18, v0

    add-int v18, v18, v8

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aCurrentContainerWidthUsed:I

    .line 1738
    .end local v12           #para:Landroid/widget/LinearLayout$LayoutParams;
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aCurrentContainerWidthUsed:I

    move/from16 v18, v0

    add-int v18, v18, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/android/mail/ReadScreen;->mRecipientBlockWidth:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_10

    .line 1739
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->newViewContainer(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->subViewContainer:Landroid/view/ViewGroup;

    .line 1740
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aCurrentContainerWidthUsed:I

    .line 1744
    :cond_10
    iget-boolean v0, v6, Lcom/htc/android/mail/ReadScreen$ReadScreenDetailList;->mIsTagListType:Z

    move/from16 v18, v0

    if-nez v18, :cond_11

    .line 1745
    iput-object v4, v14, Lcom/htc/android/mail/ReceiverList;->view:Landroid/view/View;

    .line 1746
    iget-object v0, v14, Lcom/htc/android/mail/ReceiverList;->view:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aRecipientInfo:Lcom/htc/android/mail/ReadScreen$RecipientListInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$RecipientListInfo;->receiverlist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1750
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->subViewContainer:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1751
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aCurrentContainerWidthUsed:I

    move/from16 v18, v0

    add-int v18, v18, v15

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aCurrentContainerWidthUsed:I

    .line 1752
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aCurrentBtnCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aCurrentBtnCount:I

    .line 1753
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->setButtonMargin(Landroid/view/View;)V

    .line 1756
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aContainerUsed:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aCurrentBtnCount:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aReipientTotalCount:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 1757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->subViewContainer:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1758
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v18, -0x2

    const/16 v19, -0x1

    const/high16 v20, 0x3f80

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v12, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1759
    .restart local v12       #para:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/android/mail/ReadScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f080037

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1760
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1761
    const/16 v18, 0x15

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setGravity(I)V

    .line 1762
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aCurrentContainerWidthUsed:I

    move/from16 v18, v0

    add-int v18, v18, v8

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->aCurrentContainerWidthUsed:I

    goto/16 :goto_0

    .line 1696
    .end local v4           #button:Landroid/view/View;
    .end local v12           #para:Landroid/widget/LinearLayout$LayoutParams;
    .end local v15           #recipientButtonWidth:I
    :cond_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->newRecipientButton(Lcom/htc/android/mail/ReadScreen$ReadScreenDetailList;)Lcom/htc/android/mail/widget/HtcPhotoButton;

    move-result-object v4

    .line 1697
    .restart local v4       #button:Landroid/view/View;
    const/4 v7, 0x1

    goto/16 :goto_5

    .line 1701
    .end local v4           #button:Landroid/view/View;
    :cond_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->newRecipientButton(Lcom/htc/android/mail/ReadScreen$ReadScreenDetailList;)Lcom/htc/android/mail/widget/HtcPhotoButton;

    move-result-object v4

    .line 1702
    .restart local v4       #button:Landroid/view/View;
    const/4 v7, 0x1

    goto/16 :goto_5

    .line 1711
    .restart local v15       #recipientButtonWidth:I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/android/mail/ReadScreen;->mRecipientBlockWidth:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    #calls: Lcom/htc/android/mail/ReadScreen;->getViewWidth(Landroid/view/View;I)I
    invoke-static {v0, v4, v1}, Lcom/htc/android/mail/ReadScreen;->access$2300(Lcom/htc/android/mail/ReadScreen;Landroid/view/View;I)I

    move-result v15

    goto/16 :goto_6

    :cond_15
    move-object/from16 v18, v4

    .line 1719
    check-cast v18, Lcom/htc/android/mail/widget/HtcPhotoButton;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/android/mail/ReadScreen;->sTO_CC_BUTTON_MAX_WIDTH_RATIO:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/htc/android/mail/ReadScreen;->mRecipientBlockWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/htc/android/mail/widget/HtcPhotoButton;->setMaxWidth(I)V

    goto/16 :goto_7
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1520
    check-cast p1, [Lcom/htc/android/mail/ReadScreen$ReadScreenDetailList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->onProgressUpdate([Lcom/htc/android/mail/ReadScreen$ReadScreenDetailList;)V

    return-void
.end method

.method public setButtonMargin(Landroid/view/View;)V
    .locals 4
    .parameter "button"

    .prologue
    const/4 v3, 0x0

    .line 1901
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1902
    .local v0, para:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen$SetDetailListLayoutTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-virtual {v1}, Lcom/htc/android/mail/ReadScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1904
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1905
    return-void
.end method
