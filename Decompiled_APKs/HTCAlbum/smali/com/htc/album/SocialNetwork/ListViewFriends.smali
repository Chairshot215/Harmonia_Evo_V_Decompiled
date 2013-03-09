.class public Lcom/htc/album/SocialNetwork/ListViewFriends;
.super Lcom/htc/opensense2/album/ViewTemplateBase;
.source "ListViewFriends.java"


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
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAutoFocusIndex:I

.field private mHandlerData:Landroid/os/Handler;

.field private mHandlerUI:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field protected mLastScrollState:I

.field mListViewScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/htc/album/SocialNetwork/ListViewFriends;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/SocialNetwork/ListViewFriends;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/htc/opensense2/album/AdapterBase;Lcom/htc/opensense2/album/DisplayManagerInterface;Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 1
    .parameter "adapterBase"
    .parameter "listener"
    .parameter "actParent"
    .parameter "handler"

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/htc/opensense2/album/ViewTemplateBase;-><init>(Landroid/widget/BaseAdapter;Lcom/htc/opensense2/album/DisplayManagerInterface;)V

    .line 54
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mHandlerUI:Landroid/os/Handler;

    .line 55
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mHandlerData:Landroid/os/Handler;

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mAutoFocusIndex:I

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mLastScrollState:I

    .line 358
    new-instance v0, Lcom/htc/album/SocialNetwork/ListViewFriends$1;

    invoke-direct {v0, p0}, Lcom/htc/album/SocialNetwork/ListViewFriends$1;-><init>(Lcom/htc/album/SocialNetwork/ListViewFriends;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 419
    new-instance v0, Lcom/htc/album/SocialNetwork/ListViewFriends$2;

    invoke-direct {v0, p0}, Lcom/htc/album/SocialNetwork/ListViewFriends$2;-><init>(Lcom/htc/album/SocialNetwork/ListViewFriends;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mListViewScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    .line 68
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v0}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mInflater:Landroid/view/LayoutInflater;

    .line 70
    iput-object p4, p0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mHandlerUI:Landroid/os/Handler;

    .line 71
    return-void
.end method

.method private getViewFriend(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 20
    .parameter "pos"
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 450
    const/16 v16, 0x0

    .line 451
    .local v16, viewText_1:Landroid/widget/TextView;
    const/4 v14, 0x0

    .line 452
    .local v14, viewImage1_1:Landroid/widget/ImageView;
    const/4 v4, 0x0

    .line 454
    .local v4, aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/opensense2/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v6, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;

    .line 455
    .local v6, listAdapter:Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;
    move/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    check-cast v4, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 458
    .restart local v4       #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    const/4 v13, 0x0

    .line 459
    .local v13, viewImage:Lcom/htc/widget/HtcListItemTileImage;
    const/4 v15, 0x0

    .line 460
    .local v15, viewText:Lcom/htc/widget/HtcListItem2LineText;
    const/4 v12, 0x0

    .line 463
    .local v12, viewChkbox:Lcom/htc/widget/HtcListItemCheckBox;
    if-eqz v4, :cond_0

    .line 465
    invoke-virtual {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/htc/opensense2/album/util/SeparatorTag;->getType()Ljava/lang/String;

    move-result-object v11

    .line 466
    .local v11, tagCurrent:Ljava/lang/String;
    if-nez p2, :cond_3

    .line 471
    const-string v17, "SEPARABLE_DIVIDER"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x2090026

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 476
    const v17, 0x2020010

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .end local v16           #viewText_1:Landroid/widget/TextView;
    check-cast v16, Landroid/widget/TextView;

    .line 547
    .restart local v16       #viewText_1:Landroid/widget/TextView;
    :goto_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 552
    const-string v17, "SEPARABLE_DIVIDER"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 555
    if-eqz v16, :cond_0

    .line 557
    if-nez p1, :cond_9

    .line 558
    const v17, 0x20c01d7

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(I)V

    .line 605
    .end local v11           #tagCurrent:Ljava/lang/String;
    :cond_0
    :goto_1
    return-object p2

    .line 479
    .restart local v11       #tagCurrent:Ljava/lang/String;
    :cond_1
    const-string v17, "SEPARABLE_PLACEHOLDER"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x7f030012

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 482
    const v17, 0x7f0a0011

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .end local v16           #viewText_1:Landroid/widget/TextView;
    check-cast v16, Landroid/widget/TextView;

    .restart local v16       #viewText_1:Landroid/widget/TextView;
    goto :goto_0

    .line 486
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x7f030015

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 487
    const v17, 0x7f0a0029

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .end local v13           #viewImage:Lcom/htc/widget/HtcListItemTileImage;
    check-cast v13, Lcom/htc/widget/HtcListItemTileImage;

    .line 488
    .restart local v13       #viewImage:Lcom/htc/widget/HtcListItemTileImage;
    const v17, 0x7f0a003f

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .end local v15           #viewText:Lcom/htc/widget/HtcListItem2LineText;
    check-cast v15, Lcom/htc/widget/HtcListItem2LineText;

    .line 489
    .restart local v15       #viewText:Lcom/htc/widget/HtcListItem2LineText;
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 490
    const v17, 0x7f0a0040

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #viewChkbox:Lcom/htc/widget/HtcListItemCheckBox;
    check-cast v12, Lcom/htc/widget/HtcListItemCheckBox;

    .line 491
    .restart local v12       #viewChkbox:Lcom/htc/widget/HtcListItemCheckBox;
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/htc/widget/HtcListItemCheckBox;->setVisibility(I)V

    goto/16 :goto_0

    .line 497
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 498
    .local v10, tagCache:Ljava/lang/String;
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_6

    .line 500
    const-string v17, "SEPARABLE_DIVIDER"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x2090026

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 505
    const v17, 0x2020010

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .end local v16           #viewText_1:Landroid/widget/TextView;
    check-cast v16, Landroid/widget/TextView;

    .restart local v16       #viewText_1:Landroid/widget/TextView;
    goto/16 :goto_0

    .line 508
    :cond_4
    const-string v17, "SEPARABLE_PLACEHOLDER"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x7f030012

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 511
    const v17, 0x7f0a0011

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .end local v16           #viewText_1:Landroid/widget/TextView;
    check-cast v16, Landroid/widget/TextView;

    .restart local v16       #viewText_1:Landroid/widget/TextView;
    goto/16 :goto_0

    .line 515
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x7f030015

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 516
    const v17, 0x7f0a0029

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .end local v13           #viewImage:Lcom/htc/widget/HtcListItemTileImage;
    check-cast v13, Lcom/htc/widget/HtcListItemTileImage;

    .line 517
    .restart local v13       #viewImage:Lcom/htc/widget/HtcListItemTileImage;
    const v17, 0x7f0a003f

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .end local v15           #viewText:Lcom/htc/widget/HtcListItem2LineText;
    check-cast v15, Lcom/htc/widget/HtcListItem2LineText;

    .line 518
    .restart local v15       #viewText:Lcom/htc/widget/HtcListItem2LineText;
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 519
    const v17, 0x7f0a0040

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #viewChkbox:Lcom/htc/widget/HtcListItemCheckBox;
    check-cast v12, Lcom/htc/widget/HtcListItemCheckBox;

    .line 520
    .restart local v12       #viewChkbox:Lcom/htc/widget/HtcListItemCheckBox;
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/htc/widget/HtcListItemCheckBox;->setVisibility(I)V

    goto/16 :goto_0

    .line 526
    :cond_6
    const-string v17, "SEPARABLE_DIVIDER"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 529
    const v17, 0x2020010

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .end local v16           #viewText_1:Landroid/widget/TextView;
    check-cast v16, Landroid/widget/TextView;

    .restart local v16       #viewText_1:Landroid/widget/TextView;
    goto/16 :goto_0

    .line 532
    :cond_7
    const-string v17, "SEPARABLE_PLACEHOLDER"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 534
    const v17, 0x7f0a0011

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .end local v16           #viewText_1:Landroid/widget/TextView;
    check-cast v16, Landroid/widget/TextView;

    .restart local v16       #viewText_1:Landroid/widget/TextView;
    goto/16 :goto_0

    .line 538
    :cond_8
    const v17, 0x7f0a0029

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .end local v13           #viewImage:Lcom/htc/widget/HtcListItemTileImage;
    check-cast v13, Lcom/htc/widget/HtcListItemTileImage;

    .line 539
    .restart local v13       #viewImage:Lcom/htc/widget/HtcListItemTileImage;
    const v17, 0x7f0a003f

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .end local v15           #viewText:Lcom/htc/widget/HtcListItem2LineText;
    check-cast v15, Lcom/htc/widget/HtcListItem2LineText;

    .line 540
    .restart local v15       #viewText:Lcom/htc/widget/HtcListItem2LineText;
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 541
    const v17, 0x7f0a0040

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #viewChkbox:Lcom/htc/widget/HtcListItemCheckBox;
    check-cast v12, Lcom/htc/widget/HtcListItemCheckBox;

    .line 542
    .restart local v12       #viewChkbox:Lcom/htc/widget/HtcListItemCheckBox;
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/htc/widget/HtcListItemCheckBox;->setVisibility(I)V

    goto/16 :goto_0

    .line 560
    .end local v10           #tagCache:Ljava/lang/String;
    :cond_9
    const v17, 0x20c01d8

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 564
    :cond_a
    const-string v17, "SEPARABLE_PLACEHOLDER"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    move-object/from16 v17, v0

    check-cast v17, Lcom/htc/widget/HtcListView;

    invoke-virtual/range {v17 .. v17}, Lcom/htc/widget/HtcListView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 569
    .local v9, res:Landroid/content/res/Resources;
    if-eqz v16, :cond_0

    .line 571
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 572
    .local v8, param:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v8, :cond_b

    .line 574
    const v17, 0x7f080027

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 576
    :cond_b
    invoke-virtual {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getNameByResource()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 582
    .end local v8           #param:Landroid/view/ViewGroup$LayoutParams;
    .end local v9           #res:Landroid/content/res/Resources;
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mLastScrollState:I

    move/from16 v17, v0

    if-nez v17, :cond_f

    const/4 v5, 0x1

    .line 584
    .local v5, bIsIdle:Z
    :goto_2
    if-eqz v13, :cond_d

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    move-object/from16 v17, v0

    check-cast v17, Lcom/htc/widget/HtcListView;

    invoke-virtual/range {v17 .. v17}, Lcom/htc/widget/HtcListView;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v6, v0, v1, v4, v5}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onRequestPhoto(Landroid/content/Context;ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;Z)Landroid/graphics/Bitmap;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 592
    :cond_d
    if-eqz v15, :cond_e

    .line 594
    invoke-virtual {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 596
    :cond_e
    const/16 v17, 0x1

    move/from16 v0, v17

    move/from16 v1, p1

    if-ne v0, v1, :cond_0

    move-object/from16 v7, p2

    .line 598
    check-cast v7, Lcom/htc/widget/HtcListItem;

    .line 599
    .local v7, listItem:Lcom/htc/widget/HtcListItem;
    const/16 v17, 0xb

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    goto/16 :goto_1

    .line 582
    .end local v5           #bIsIdle:Z
    .end local v7           #listItem:Lcom/htc/widget/HtcListItem;
    :cond_f
    const/4 v5, 0x0

    goto :goto_2
.end method

.method private getViewFriendsPicker(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "pos"
    .parameter "view"
    .parameter "parent"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 609
    const/4 v4, 0x0

    .line 610
    .local v4, viewImage:Lcom/htc/widget/HtcListItemTileImage;
    const/4 v5, 0x0

    .line 611
    .local v5, viewText:Lcom/htc/widget/HtcListItem2LineText;
    const/4 v3, 0x0

    .line 612
    .local v3, viewChkbox:Lcom/htc/widget/HtcListItemCheckBox;
    const/4 v0, 0x0

    .line 615
    .local v0, aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    if-nez p2, :cond_0

    .line 616
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f030015

    invoke-virtual {v6, v9, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 618
    :cond_0
    const v6, 0x7f0a0029

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #viewImage:Lcom/htc/widget/HtcListItemTileImage;
    check-cast v4, Lcom/htc/widget/HtcListItemTileImage;

    .line 619
    .restart local v4       #viewImage:Lcom/htc/widget/HtcListItemTileImage;
    const v6, 0x7f0a003f

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #viewText:Lcom/htc/widget/HtcListItem2LineText;
    check-cast v5, Lcom/htc/widget/HtcListItem2LineText;

    .line 620
    .restart local v5       #viewText:Lcom/htc/widget/HtcListItem2LineText;
    const v6, 0x7f0a0040

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #viewChkbox:Lcom/htc/widget/HtcListItemCheckBox;
    check-cast v3, Lcom/htc/widget/HtcListItemCheckBox;

    .line 622
    .restart local v3       #viewChkbox:Lcom/htc/widget/HtcListItemCheckBox;
    iget-object v2, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v2, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;

    .line 623
    .local v2, listAdapter:Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;
    invoke-virtual {v2, p1}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 625
    .restart local v0       #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    if-eqz v0, :cond_3

    .line 627
    if-eqz v4, :cond_1

    .line 629
    iget v6, p0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mLastScrollState:I

    if-nez v6, :cond_4

    move v1, v7

    .line 631
    .local v1, bIsIdle:Z
    :goto_0
    iget-object v6, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v6, Lcom/htc/widget/HtcListView;

    invoke-virtual {v6}, Lcom/htc/widget/HtcListView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v2, v6, p1, v0, v1}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onRequestPhoto(Landroid/content/Context;ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 636
    .end local v1           #bIsIdle:Z
    :cond_1
    if-eqz v5, :cond_2

    .line 638
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 639
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 641
    :cond_2
    if-eqz v3, :cond_3

    .line 643
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->isVisible()Z

    move-result v6

    if-ne v7, v6, :cond_5

    .line 644
    invoke-virtual {v3, v7}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 650
    :cond_3
    :goto_1
    return-object p2

    :cond_4
    move v1, v8

    .line 629
    goto :goto_0

    .line 646
    :cond_5
    invoke-virtual {v3, v8}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    goto :goto_1
.end method


# virtual methods
.method public bindAdapter()V
    .locals 2

    .prologue
    .line 220
    sget-object v0, Lcom/htc/album/SocialNetwork/ListViewFriends;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ListViewFriends][bindAdapter]Begin"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v0}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcListView;

    invoke-static {v1, v0}, Lcom/htc/album/Customizable/CustHtcListViewStyle;->setStyle(Landroid/content/Context;Lcom/htc/widget/HtcListView;)V

    .line 225
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense2/album/AdapterBase;

    invoke-virtual {v0, p0}, Lcom/htc/opensense2/album/AdapterBase;->setAdapterListener(Lcom/htc/opensense2/album/AdapterInterface;)V

    .line 226
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 228
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mHandlerUI:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->setUIHandler(Landroid/os/Handler;)V

    .line 229
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->getDataHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mHandlerData:Landroid/os/Handler;

    .line 231
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 232
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mListViewScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 236
    :cond_0
    sget-object v0, Lcom/htc/album/SocialNetwork/ListViewFriends;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ListViewFriends][bindAdapter]End"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method public configureMainViewLayout(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0
    .parameter "params"

    .prologue
    .line 679
    return-void
.end method

.method public bridge synthetic createMainView()Landroid/view/View;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewFriends;->createMainView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    return-object v0
.end method

.method public createMainView()Lcom/htc/widget/HtcListView;
    .locals 2

    .prologue
    .line 182
    iget-object v1, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v1, Lcom/htc/widget/HtcListView;

    .line 188
    :goto_0
    return-object v1

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 186
    :cond_1
    new-instance v0, Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v1}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;)V

    .local v0, listView:Lcom/htc/widget/HtcListView;
    move-object v1, v0

    .line 188
    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 165
    const/4 v0, 0x0

    .line 167
    .local v0, viewItem:Landroid/view/View;
    iget-object v1, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    instance-of v1, v1, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;

    if-eqz v1, :cond_1

    .line 169
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/album/SocialNetwork/ListViewFriends;->getViewFriend(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 176
    :cond_0
    :goto_0
    return-object v0

    .line 171
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    instance-of v1, v1, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;

    if-eqz v1, :cond_0

    .line 173
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/album/SocialNetwork/ListViewFriends;->getViewFriendsPicker(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected init()V
    .locals 2

    .prologue
    .line 76
    invoke-super {p0}, Lcom/htc/opensense2/album/ViewTemplateBase;->init()V

    .line 77
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setTopBorderHeight(I)V

    .line 78
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 112
    return-void
.end method

.method public onCancel()V
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v0}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 665
    return-void
.end method

.method public onConfirm()V
    .locals 3

    .prologue
    .line 655
    iget-object v1, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v1, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->updateFileCache()V

    .line 657
    iget-object v1, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v1}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 658
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "contact_update"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 659
    iget-object v1, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v1}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 660
    iget-object v1, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v1}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 661
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)Z
    .locals 1
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method public onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 14
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
    .line 240
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    iget-object v10, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v10}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v10

    if-nez v10, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget-object v10, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    instance-of v10, v10, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;

    if-eqz v10, :cond_a

    .line 245
    const/4 v10, -0x1

    move/from16 v0, p3

    if-ne v10, v0, :cond_2

    .line 246
    const/16 p3, 0x1

    .line 248
    :cond_2
    iget-object v10, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v10}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v10

    move/from16 v0, p3

    if-gt v10, v0, :cond_3

    .line 250
    sget-object v10, Lcom/htc/album/SocialNetwork/ListViewFriends;->LOG_TAG:Ljava/lang/String;

    const-string v11, "[HTCAlbum][ListViewFriends][onListItemClick]: adapter not ready "

    invoke-static {v10, v11}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 254
    :cond_3
    iget-object v10, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v10}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 256
    .local v2, hostActivity:Landroid/app/Activity;
    move/from16 v0, p3

    iput v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mAutoFocusIndex:I

    .line 258
    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 259
    .local v1, actIntent:Landroid/content/Intent;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 260
    .local v3, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v5, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;

    .line 261
    .local v5, listAdapter:Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;
    move/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 263
    .local v4, itemSelected:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    const/4 v10, 0x1

    move/from16 v0, p3

    if-ne v0, v10, :cond_4

    .line 265
    const-string v10, "my_live_album"

    const/4 v11, 0x1

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 268
    :cond_4
    if-eqz v4, :cond_0

    .line 270
    sget-object v10, Lcom/htc/album/SocialNetwork/ListViewFriends;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HTCAlbum][ListViewFriends][onListItemClick]: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mAutoFocusIndex:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v9, userIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v10, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v10, Lcom/htc/widget/HtcListView;

    invoke-virtual {v10}, Lcom/htc/widget/HtcListView;->getContext()Landroid/content/Context;

    move-result-object v10

    check-cast v10, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;

    invoke-virtual {v10}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;->getServiceInfo()Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;

    move-result-object v10

    iget-object v8, v10, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;->mServiceName:Ljava/lang/String;

    .line 294
    .local v8, szServiceName:Ljava/lang/String;
    const-string v10, "service_display"

    invoke-virtual {v1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 295
    .local v6, serviceDisplay:Ljava/lang/String;
    const-string v10, "service_url"

    invoke-virtual {v1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 306
    .local v7, serviceUrl:Ljava/lang/String;
    const-string v10, "sort_list"

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 307
    const-string v10, "user_buddyicon"

    invoke-virtual {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getBuddyIconURL()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    const-string v10, "user_id"

    invoke-virtual {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    const-string v10, "live_album"

    const/4 v11, 0x1

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 310
    const-string v10, "service_name"

    invoke-virtual {v3, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    sget-object v10, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 314
    sget-object v10, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v3, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 325
    :cond_5
    :goto_1
    if-eqz v6, :cond_6

    const-string v10, "service_display"

    invoke-virtual {v3, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    :cond_6
    if-eqz v7, :cond_7

    const-string v10, "service_url"

    invoke-virtual {v3, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    :cond_7
    const-string v10, "user_name"

    invoke-virtual {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    const-string v10, "from_tabhost"

    const/4 v11, 0x1

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 334
    const-string v11, "listviewPos"

    iget-object v10, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v10, Lcom/htc/widget/HtcListView;

    invoke-virtual {v10}, Lcom/htc/widget/HtcListView;->getFirstVisiblePosition()I

    move-result v10

    invoke-virtual {v3, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 335
    const-string v10, "fromMainActivity"

    iget-object v11, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v11}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "fromMainActivity"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 339
    const-string v10, "com.htc.album"

    const-string v11, "com.htc.album.SocialNetwork.ActivityMainOnline"

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    invoke-virtual {v2, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 316
    :cond_8
    sget-object v10, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v11, 0x1

    aget-object v10, v10, v11

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 318
    sget-object v10, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    const/4 v11, 0x1

    aget-object v10, v10, v11

    invoke-virtual {v3, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_1

    .line 320
    :cond_9
    if-eqz v7, :cond_5

    .line 322
    invoke-virtual {v3, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_1

    .line 347
    .end local v1           #actIntent:Landroid/content/Intent;
    .end local v2           #hostActivity:Landroid/app/Activity;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #itemSelected:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    .end local v5           #listAdapter:Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;
    .end local v6           #serviceDisplay:Ljava/lang/String;
    .end local v7           #serviceUrl:Ljava/lang/String;
    .end local v8           #szServiceName:Ljava/lang/String;
    .end local v9           #userIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_a
    iget-object v10, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    instance-of v10, v10, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;

    if-eqz v10, :cond_0

    .line 349
    iget-object v5, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v5, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;

    .line 350
    .local v5, listAdapter:Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;
    move/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 351
    .restart local v4       #itemSelected:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    invoke-virtual {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->toggleVisibility()V

    goto/16 :goto_0
.end method

.method protected onListScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 4
    .parameter "view"
    .parameter "nFirstIndex"
    .parameter "nVisibleItems"
    .parameter "nTotalItems"

    .prologue
    .line 370
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    instance-of v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    sget-object v1, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->MAX_LISTVIEW_THUMB_PREV:[I

    invoke-static {}, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->getResolution()I

    move-result v2

    aget v1, v1, v2

    sub-int v1, p2, v1

    sget-object v2, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->MAX_LISTVIEW_THUMB_NEXT:[I

    invoke-static {}, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->getResolution()I

    move-result v3

    aget v2, v2, v3

    add-int/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->setVisibleRange(II)V

    .line 377
    :cond_0
    return-void
.end method

.method protected onListScrollFling()V
    .locals 3

    .prologue
    .line 381
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    instance-of v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->setScrollState(II)V

    .line 383
    :cond_0
    return-void
.end method

.method protected onListScrollIdle()V
    .locals 3

    .prologue
    .line 387
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    instance-of v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->setScrollState(II)V

    .line 389
    :cond_0
    return-void
.end method

.method protected onListScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "nScrollState"

    .prologue
    .line 399
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mLastScrollState:I

    if-ne v0, p2, :cond_1

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    iput p2, p0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mLastScrollState:I

    .line 406
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 412
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewFriends;->onListScrollIdle()V

    goto :goto_0

    .line 409
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewFriends;->onListScrollFling()V

    goto :goto_0

    .line 415
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewFriends;->onListScrollTouch()V

    goto :goto_0

    .line 406
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onListScrollTouch()V
    .locals 3

    .prologue
    .line 393
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    instance-of v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->setScrollState(II)V

    .line 395
    :cond_0
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method public setCurrPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 668
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    .line 670
    :cond_0
    return-void
.end method

.method public syncListViewLayout()V
    .locals 0

    .prologue
    .line 441
    return-void
.end method

.method public unbindAdapter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 197
    sget-object v0, Lcom/htc/album/SocialNetwork/ListViewFriends;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ListViewFriends][unbindAdapter]Begin"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 201
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense2/album/AdapterBase;

    invoke-virtual {v0, v2}, Lcom/htc/opensense2/album/AdapterBase;->setAdapterListener(Lcom/htc/opensense2/album/AdapterInterface;)V

    .line 203
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {v0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->setUIHandler(Landroid/os/Handler;)V

    .line 204
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 205
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 211
    :cond_0
    sget-object v0, Lcom/htc/album/SocialNetwork/ListViewFriends;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ListViewFriends][unbindAdapter]End"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    return-void
.end method
