.class public Lcom/htc/album/SocialNetwork/ListViewSearch;
.super Lcom/htc/opensense2/album/ViewTemplateBase;
.source "ListViewSearch.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/opensense2/album/ViewTemplateBase",
        "<",
        "Lcom/htc/widget/HtcListView;",
        ">;"
    }
.end annotation


# static fields
.field private static final HEADER_BAR_TAGVIEW:I = 0x159

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mEditText:Landroid/widget/AutoCompleteTextView;

.field private mHandlerData:Landroid/os/Handler;

.field private mHandlerUI:Landroid/os/Handler;

.field private mHtcTextHighlightColor:I

.field private mInflater:Landroid/view/LayoutInflater;

.field mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field protected mLastScrollState:I

.field mListViewScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

.field private mStrFilter:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/htc/album/SocialNetwork/ListViewFriends;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/SocialNetwork/ListViewSearch;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/htc/opensense2/album/AdapterBase;Lcom/htc/opensense2/album/DisplayManagerInterface;Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 2
    .parameter "adapterBase"
    .parameter "listener"
    .parameter "actParent"
    .parameter "handler"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/htc/opensense2/album/ViewTemplateBase;-><init>(Landroid/widget/BaseAdapter;Lcom/htc/opensense2/album/DisplayManagerInterface;)V

    .line 64
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mHandlerUI:Landroid/os/Handler;

    .line 65
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mHandlerData:Landroid/os/Handler;

    .line 66
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mEditText:Landroid/widget/AutoCompleteTextView;

    .line 67
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mStrFilter:Ljava/lang/String;

    .line 69
    iput v1, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mHtcTextHighlightColor:I

    .line 80
    iput v1, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mLastScrollState:I

    .line 420
    new-instance v0, Lcom/htc/album/SocialNetwork/ListViewSearch$3;

    invoke-direct {v0, p0}, Lcom/htc/album/SocialNetwork/ListViewSearch$3;-><init>(Lcom/htc/album/SocialNetwork/ListViewSearch;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 430
    new-instance v0, Lcom/htc/album/SocialNetwork/ListViewSearch$4;

    invoke-direct {v0, p0}, Lcom/htc/album/SocialNetwork/ListViewSearch$4;-><init>(Lcom/htc/album/SocialNetwork/ListViewSearch;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mListViewScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    .line 85
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v0}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mInflater:Landroid/view/LayoutInflater;

    .line 87
    iput-object p4, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mHandlerUI:Landroid/os/Handler;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mStrFilter:Ljava/lang/String;

    .line 90
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/htc/album/SocialNetwork/ListViewSearch;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/album/SocialNetwork/ListViewSearch;)Landroid/widget/AutoCompleteTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mEditText:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/album/SocialNetwork/ListViewSearch;)Landroid/widget/BaseAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/album/SocialNetwork/ListViewSearch;)Landroid/widget/BaseAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/album/SocialNetwork/ListViewSearch;)Landroid/widget/BaseAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method private getViewFriend(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .parameter "pos"
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 475
    const/4 v12, 0x0

    .line 476
    .local v12, viewText_1:Landroid/widget/TextView;
    const/4 v1, 0x0

    .line 478
    .local v1, aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    const/4 v10, 0x0

    .line 479
    .local v10, viewImage:Lcom/htc/widget/HtcListItemTileImage;
    const/4 v11, 0x0

    .line 480
    .local v11, viewText:Lcom/htc/widget/HtcListItem2LineText;
    const/4 v9, 0x0

    .line 482
    .local v9, viewChkbox:Lcom/htc/widget/HtcListItemCheckBox;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/opensense2/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v5, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;

    .line 483
    .local v5, listAdapter:Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;
    move/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    check-cast v1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 485
    .restart local v1       #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    if-eqz v1, :cond_1

    .line 487
    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;

    move-result-object v4

    .line 489
    .local v4, currentTag:Lcom/htc/opensense2/album/util/SeparatorTag;
    if-nez p2, :cond_5

    .line 494
    sget-object v13, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_DIVIDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v4, v13, :cond_2

    .line 496
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mInflater:Landroid/view/LayoutInflater;

    const v14, 0x2090026

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v13, v14, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 499
    const v13, 0x2020010

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #viewText_1:Landroid/widget/TextView;
    check-cast v12, Landroid/widget/TextView;

    .line 564
    .restart local v12       #viewText_1:Landroid/widget/TextView;
    :cond_0
    :goto_0
    sget-object v13, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 566
    if-eqz p2, :cond_1

    .line 571
    sget-object v13, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_DIVIDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v4, v13, :cond_c

    .line 573
    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getNameByResource()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    .line 623
    .end local v4           #currentTag:Lcom/htc/opensense2/album/util/SeparatorTag;
    :cond_1
    :goto_1
    return-object p2

    .line 501
    .restart local v4       #currentTag:Lcom/htc/opensense2/album/util/SeparatorTag;
    :cond_2
    sget-object v13, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_PLACEHOLDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v4, v13, :cond_3

    .line 503
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mInflater:Landroid/view/LayoutInflater;

    const v14, 0x7f030012

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v13, v14, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 504
    const v13, 0x7f0a0011

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #viewText_1:Landroid/widget/TextView;
    check-cast v12, Landroid/widget/TextView;

    .restart local v12       #viewText_1:Landroid/widget/TextView;
    goto :goto_0

    .line 506
    :cond_3
    sget-object v13, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_SINGLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v4, v13, :cond_4

    sget-object v13, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BREAKTOP:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v4, v13, :cond_4

    sget-object v13, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v4, v13, :cond_4

    sget-object v13, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BOTTOM:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v4, v13, :cond_0

    .line 511
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mInflater:Landroid/view/LayoutInflater;

    const v14, 0x7f030015

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v13, v14, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 512
    const v13, 0x7f0a0029

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .end local v10           #viewImage:Lcom/htc/widget/HtcListItemTileImage;
    check-cast v10, Lcom/htc/widget/HtcListItemTileImage;

    .line 513
    .restart local v10       #viewImage:Lcom/htc/widget/HtcListItemTileImage;
    const v13, 0x7f0a003f

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .end local v11           #viewText:Lcom/htc/widget/HtcListItem2LineText;
    check-cast v11, Lcom/htc/widget/HtcListItem2LineText;

    .line 514
    .restart local v11       #viewText:Lcom/htc/widget/HtcListItem2LineText;
    const v13, 0x7f0a0040

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9           #viewChkbox:Lcom/htc/widget/HtcListItemCheckBox;
    check-cast v9, Lcom/htc/widget/HtcListItemCheckBox;

    .restart local v9       #viewChkbox:Lcom/htc/widget/HtcListItemCheckBox;
    goto :goto_0

    .line 521
    :cond_5
    const/4 v2, 0x0

    .line 522
    .local v2, aTag:Lcom/htc/opensense2/album/util/SeparatorTag;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #aTag:Lcom/htc/opensense2/album/util/SeparatorTag;
    check-cast v2, Lcom/htc/opensense2/album/util/SeparatorTag;

    .restart local v2       #aTag:Lcom/htc/opensense2/album/util/SeparatorTag;
    if-eqz v2, :cond_0

    .line 524
    sget-object v13, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_DIVIDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v4, v13, :cond_7

    .line 526
    sget-object v13, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_DIVIDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v2, v13, :cond_6

    .line 528
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mInflater:Landroid/view/LayoutInflater;

    const v14, 0x2090026

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v13, v14, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 532
    :cond_6
    const v13, 0x2020010

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #viewText_1:Landroid/widget/TextView;
    check-cast v12, Landroid/widget/TextView;

    .restart local v12       #viewText_1:Landroid/widget/TextView;
    goto/16 :goto_0

    .line 534
    :cond_7
    sget-object v13, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_SINGLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v4, v13, :cond_8

    sget-object v13, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BREAKTOP:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v4, v13, :cond_8

    sget-object v13, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v4, v13, :cond_8

    sget-object v13, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BOTTOM:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v4, v13, :cond_a

    .line 539
    :cond_8
    sget-object v13, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_SINGLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v2, v13, :cond_9

    sget-object v13, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BREAKTOP:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v2, v13, :cond_9

    sget-object v13, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v2, v13, :cond_9

    sget-object v13, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BOTTOM:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v2, v13, :cond_9

    .line 544
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mInflater:Landroid/view/LayoutInflater;

    const v14, 0x7f030015

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v13, v14, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 546
    :cond_9
    const v13, 0x7f0a0029

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .end local v10           #viewImage:Lcom/htc/widget/HtcListItemTileImage;
    check-cast v10, Lcom/htc/widget/HtcListItemTileImage;

    .line 547
    .restart local v10       #viewImage:Lcom/htc/widget/HtcListItemTileImage;
    const v13, 0x7f0a003f

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .end local v11           #viewText:Lcom/htc/widget/HtcListItem2LineText;
    check-cast v11, Lcom/htc/widget/HtcListItem2LineText;

    .line 548
    .restart local v11       #viewText:Lcom/htc/widget/HtcListItem2LineText;
    const v13, 0x7f0a0040

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9           #viewChkbox:Lcom/htc/widget/HtcListItemCheckBox;
    check-cast v9, Lcom/htc/widget/HtcListItemCheckBox;

    .restart local v9       #viewChkbox:Lcom/htc/widget/HtcListItemCheckBox;
    goto/16 :goto_0

    .line 550
    :cond_a
    sget-object v13, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_PLACEHOLDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v4, v13, :cond_0

    .line 552
    sget-object v13, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_PLACEHOLDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v2, v13, :cond_b

    .line 554
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mInflater:Landroid/view/LayoutInflater;

    const v14, 0x7f030012

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v13, v14, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 556
    :cond_b
    const v13, 0x7f0a0011

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #viewText_1:Landroid/widget/TextView;
    check-cast v12, Landroid/widget/TextView;

    .restart local v12       #viewText_1:Landroid/widget/TextView;
    goto/16 :goto_0

    .line 575
    .end local v2           #aTag:Lcom/htc/opensense2/album/util/SeparatorTag;
    :cond_c
    sget-object v13, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_PLACEHOLDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v4, v13, :cond_e

    .line 578
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v13, Lcom/htc/widget/HtcListView;

    invoke-virtual {v13}, Lcom/htc/widget/HtcListView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 579
    .local v8, res:Landroid/content/res/Resources;
    invoke-virtual {v12}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 580
    .local v7, param:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v7, :cond_d

    .line 582
    const v13, 0x7f080027

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    iput v13, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 585
    :cond_d
    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getNameByResource()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 587
    .end local v7           #param:Landroid/view/ViewGroup$LayoutParams;
    .end local v8           #res:Landroid/content/res/Resources;
    :cond_e
    sget-object v13, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_SINGLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v4, v13, :cond_f

    sget-object v13, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BREAKTOP:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v4, v13, :cond_f

    sget-object v13, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v4, v13, :cond_f

    sget-object v13, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BOTTOM:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v4, v13, :cond_1

    :cond_f
    move-object/from16 v6, p2

    .line 592
    check-cast v6, Lcom/htc/widget/HtcListItem;

    .line 593
    .local v6, listItem:Lcom/htc/widget/HtcListItem;
    sget-object v13, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_SINGLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v4, v13, :cond_10

    sget-object v13, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BOTTOM:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v4, v13, :cond_13

    .line 595
    :cond_10
    const/16 v13, 0xb

    invoke-virtual {v6, v13}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    .line 602
    :goto_2
    if-eqz v10, :cond_11

    .line 604
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mLastScrollState:I

    if-nez v13, :cond_14

    const/4 v3, 0x1

    .line 605
    .local v3, bIsIdle:Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v13, Lcom/htc/widget/HtcListView;

    invoke-virtual {v13}, Lcom/htc/widget/HtcListView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v5, v13, v0, v1, v3}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onRequestPhoto(Landroid/content/Context;ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;Z)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 611
    .end local v3           #bIsIdle:Z
    :cond_11
    if-eqz v11, :cond_12

    .line 613
    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mStrFilter:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/htc/album/SocialNetwork/ListViewSearch;->getSpanableText(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 614
    const/16 v13, 0x8

    invoke-virtual {v11, v13}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 617
    :cond_12
    if-eqz v9, :cond_1

    const/16 v13, 0x8

    invoke-virtual {v9, v13}, Lcom/htc/widget/HtcListItemCheckBox;->setVisibility(I)V

    goto/16 :goto_1

    .line 599
    :cond_13
    const/16 v13, 0xc

    invoke-virtual {v6, v13}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    goto :goto_2

    .line 604
    :cond_14
    const/4 v3, 0x0

    goto :goto_3
.end method


# virtual methods
.method public bindAdapter()V
    .locals 2

    .prologue
    .line 247
    sget-object v0, Lcom/htc/album/SocialNetwork/ListViewSearch;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ListViewFriends][bindAdapter]Begin"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v0}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcListView;

    invoke-static {v1, v0}, Lcom/htc/album/Customizable/CustHtcListViewStyle;->setStyle(Landroid/content/Context;Lcom/htc/widget/HtcListView;)V

    .line 251
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense2/album/AdapterBase;

    invoke-virtual {v0, p0}, Lcom/htc/opensense2/album/AdapterBase;->setAdapterListener(Lcom/htc/opensense2/album/AdapterInterface;)V

    .line 252
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 254
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mHandlerUI:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->setUIHandler(Landroid/os/Handler;)V

    .line 255
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->getDataHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mHandlerData:Landroid/os/Handler;

    .line 258
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 259
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mListViewScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 262
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewSearch;->initUI()V

    .line 264
    sget-object v0, Lcom/htc/album/SocialNetwork/ListViewSearch;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ListViewFriends][bindAdapter]End"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method public bridge synthetic createMainView()Landroid/view/View;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewSearch;->createMainView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    return-object v0
.end method

.method public createMainView()Lcom/htc/widget/HtcListView;
    .locals 2

    .prologue
    .line 216
    iget-object v1, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v1, Lcom/htc/widget/HtcListView;

    .line 223
    :goto_0
    return-object v1

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 220
    :cond_1
    new-instance v0, Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v1}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;)V

    .local v0, listView:Lcom/htc/widget/HtcListView;
    move-object v1, v0

    .line 223
    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method public getScrollState()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mLastScrollState:I

    return v0
.end method

.method public getSpanableText(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 5
    .parameter "text"
    .parameter "hightLight"

    .prologue
    .line 346
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 347
    const-string p1, ""

    .line 349
    :cond_0
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 351
    .local v1, spannableString:Landroid/text/SpannableString;
    const-string v3, ""

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 379
    :cond_1
    :goto_0
    return-object v1

    .line 354
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 356
    .local v2, startPos:I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 359
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v2, v3

    .line 362
    .local v0, endPos:I
    iget v3, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mHtcTextHighlightColor:I

    if-nez v3, :cond_3

    .line 364
    iget-object v3, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v3, Lcom/htc/widget/HtcListView;

    invoke-virtual {v3}, Lcom/htc/widget/HtcListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/album/Customizable/CustSkinnable;->getColor_TagSearchHighLight(Landroid/content/Context;)I

    move-result v3

    iput v3, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mHtcTextHighlightColor:I

    .line 366
    :cond_3
    new-instance v3, Landroid/text/style/BackgroundColorSpan;

    iget v4, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mHtcTextHighlightColor:I

    invoke-direct {v3, v4}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    const/16 v4, 0x21

    invoke-virtual {v1, v3, v2, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 368
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 379
    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 196
    const/4 v0, 0x0

    .line 201
    .local v0, viewItem:Landroid/view/View;
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/album/SocialNetwork/ListViewSearch;->getViewFriend(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 205
    sget-object v1, Lcom/htc/album/SocialNetwork/ListViewSearch;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ListViewFriends][getView]: getViewFriend "

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return-object v0

    .line 205
    :catchall_0
    move-exception v1

    sget-object v2, Lcom/htc/album/SocialNetwork/ListViewSearch;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][ListViewFriends][getView]: getViewFriend "

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method protected init()V
    .locals 2

    .prologue
    .line 107
    invoke-super {p0}, Lcom/htc/opensense2/album/ViewTemplateBase;->init()V

    .line 108
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setTopBorderHeight(I)V

    .line 109
    return-void
.end method

.method public initEditText()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->getHeaderBar()Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/SearchHeaderBar;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/SearchHeaderBar;->getEditTextView()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mEditText:Landroid/widget/AutoCompleteTextView;

    .line 286
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mEditText:Landroid/widget/AutoCompleteTextView;

    if-nez v0, :cond_1

    .line 287
    sget-object v0, Lcom/htc/album/SocialNetwork/ListViewSearch;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[ActivitySearchView][initEditText]: EditText can\'t get view !"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mEditText:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mEditText:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setImeOptions(I)V

    .line 295
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mEditText:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/htc/album/SocialNetwork/ListViewSearch$1;

    invoke-direct {v1, p0}, Lcom/htc/album/SocialNetwork/ListViewSearch$1;-><init>(Lcom/htc/album/SocialNetwork/ListViewSearch;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 302
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mEditText:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/htc/album/SocialNetwork/ListViewSearch$2;

    invoke-direct {v1, p0}, Lcom/htc/album/SocialNetwork/ListViewSearch$2;-><init>(Lcom/htc/album/SocialNetwork/ListViewSearch;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0
.end method

.method public initUI()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 269
    iget-object v3, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v3}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 270
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewSearch;->initEditText()V

    .line 271
    const v3, 0x7f0a0075

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 272
    .local v1, layoutListView:Landroid/widget/RelativeLayout;
    if-eqz v1, :cond_0

    .line 276
    iget-object v3, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v3, Lcom/htc/widget/HtcListView;

    invoke-virtual {v3}, Lcom/htc/widget/HtcListView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getHeight(Landroid/content/Context;I)I

    move-result v2

    .line 277
    .local v2, nTopMargin:I
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080024

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v2, v3

    .line 278
    invoke-virtual {v1, v5, v2, v5, v5}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 280
    .end local v2           #nTopMargin:I
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 143
    return-void
.end method

.method public onCancel()V
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v0}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 653
    return-void
.end method

.method public onConfirm()V
    .locals 3

    .prologue
    .line 643
    iget-object v1, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v1, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->updateFileCache()V

    .line 645
    iget-object v1, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v1}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 646
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "contact_update"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 647
    iget-object v1, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v1}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 648
    iget-object v1, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v1}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 649
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public onControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 630
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v0

    .line 631
    .local v0, nButtonID:I
    packed-switch v0, :pswitch_data_0

    .line 640
    :goto_0
    return-void

    .line 634
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewSearch;->onConfirm()V

    goto :goto_0

    .line 637
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewSearch;->onCancel()V

    goto :goto_0

    .line 631
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)Z
    .locals 1
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 164
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateHeaderBar(I)Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;
    .locals 3
    .parameter "id"

    .prologue
    .line 694
    const/4 v0, 0x0

    .line 695
    .local v0, headerBar:Lcom/htc/album/modules/ui/widget/SearchHeaderBar;
    iget-object v1, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v1}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->makeHeader(Landroid/content/Context;I)Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;

    move-result-object v0

    .end local v0           #headerBar:Lcom/htc/album/modules/ui/widget/SearchHeaderBar;
    check-cast v0, Lcom/htc/album/modules/ui/widget/SearchHeaderBar;

    .line 699
    .restart local v0       #headerBar:Lcom/htc/album/modules/ui/widget/SearchHeaderBar;
    return-object v0
.end method

.method public onEnter(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    .line 661
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/ViewTemplateBase;->onEnter(Landroid/os/Bundle;)V

    .line 664
    iget-object v1, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v1}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 666
    .local v0, activity:Landroid/app/Activity;
    iget-object v1, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const/4 v2, 0x1

    const/16 v3, 0x159

    invoke-virtual {v1, v2, v3}, Lcom/htc/album/modules/ui/ControlBarManager;->createControlBar(II)V

    .line 667
    return-void
.end method

.method public onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 385
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    iget-object v4, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    instance-of v4, v4, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;

    if-eqz v4, :cond_1

    .line 390
    iget-object v3, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v3, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;

    .line 391
    .local v3, listAdapter:Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;
    invoke-virtual {v3, p3}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 393
    .local v2, itemSelected:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 395
    sget-object v4, Lcom/htc/album/SocialNetwork/ListViewSearch;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][ListViewFriends][onListItemClick]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-static {v2}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->addTop5FriendList(Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;)V

    .line 400
    iget-object v4, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v4}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 401
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 402
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "tag_name"

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const-string v4, "tag_id"

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 405
    iget-object v4, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v4}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v5, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 406
    iget-object v4, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v4}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 416
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #itemSelected:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    .end local v3           #listAdapter:Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;
    :cond_0
    :goto_0
    return-void

    .line 409
    :cond_1
    iget-object v4, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    instance-of v4, v4, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;

    if-eqz v4, :cond_0

    .line 411
    iget-object v3, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v3, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;

    .line 412
    .local v3, listAdapter:Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;
    invoke-virtual {v3, p3}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 413
    .restart local v2       #itemSelected:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->toggleVisibility()V

    goto :goto_0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method public requestHeaderBar()Z
    .locals 1

    .prologue
    .line 688
    const/4 v0, 0x1

    return v0
.end method

.method public setFilter(Ljava/lang/String;)V
    .locals 0
    .parameter "strFilter"

    .prologue
    .line 100
    if-nez p1, :cond_0

    .line 102
    :goto_0
    return-void

    .line 101
    :cond_0
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mStrFilter:Ljava/lang/String;

    goto :goto_0
.end method

.method public showControlTitleBat(Z)V
    .locals 3
    .parameter "isShow"

    .prologue
    const/4 v2, 0x1

    .line 671
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-nez v0, :cond_0

    .line 683
    :goto_0
    return-void

    .line 674
    :cond_0
    if-eqz p1, :cond_1

    .line 676
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const/16 v1, 0x159

    invoke-virtual {v0, v2, v1}, Lcom/htc/album/modules/ui/ControlBarManager;->createControlBar(II)V

    goto :goto_0

    .line 681
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0, v2}, Lcom/htc/album/modules/ui/ControlBarManager;->hideControlBar(I)V

    goto :goto_0
.end method

.method public syncListViewLayout()V
    .locals 0

    .prologue
    .line 466
    return-void
.end method

.method public unbindAdapter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 232
    sget-object v0, Lcom/htc/album/SocialNetwork/ListViewSearch;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ListViewFriends][unbindAdapter]Begin"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 236
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense2/album/AdapterBase;

    invoke-virtual {v0, v2}, Lcom/htc/opensense2/album/AdapterBase;->setAdapterListener(Lcom/htc/opensense2/album/AdapterInterface;)V

    .line 238
    :cond_0
    sget-object v0, Lcom/htc/album/SocialNetwork/ListViewSearch;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ListViewFriends][unbindAdapter]End"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    return-void
.end method
