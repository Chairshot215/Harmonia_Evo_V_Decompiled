.class Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;
.super Landroid/widget/BaseAdapter;
.source "ActivityAlbumFolderSelector.java"

# interfaces
.implements Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DataUpdateNotifier;
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;
.implements Lcom/htc/widget/HtcAbsListView$OnScrollListener;
.implements Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$BitmapDecodeNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FolderSelectorAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;
    }
.end annotation


# instance fields
.field private mDecodeThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;

.field private mDefaultItemDrawable:Landroid/graphics/drawable/Drawable;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadingThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;

.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 323
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 317
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    .line 326
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 328
    new-instance v0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$600(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;-><init>(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DataUpdateNotifier;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mLoadingThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;

    .line 329
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mLoadingThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->start()V

    .line 330
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mLoadingThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->doLoading()V

    .line 332
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getIconDefaultAlbum(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mDefaultItemDrawable:Landroid/graphics/drawable/Drawable;

    .line 334
    new-instance v0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;

    invoke-direct {v0, p1, p0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;-><init>(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$BitmapDecodeNotifier;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mDecodeThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;

    .line 335
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mDecodeThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->start()V

    .line 336
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mDecodeThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->doPause()V

    .line 337
    return-void
.end method

.method static synthetic access$100(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;)Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mLoadingThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;

    return-object v0
.end method

.method private getListCategoryItem(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/album/TabPluginDevice/AlbumCollection;
    .locals 3
    .parameter "context"
    .parameter "szCategoryType"

    .prologue
    .line 736
    const/4 v0, 0x0

    .line 737
    .local v0, acCategory:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    const-string v1, "com.htc.HTCAlbum.SMART_DEFAULT"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 739
    new-instance v0, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .end local v0           #acCategory:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    const-string v1, "com.htc.HTCAlbum.DUMMY"

    const-string v2, "com.htc.HTCAlbum.DUMMY"

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/htc/album/TabPluginDevice/AlbumCollection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    .restart local v0       #acCategory:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    sget-object v1, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_DIVIDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 741
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;

    move-result-object v1

    const-string v2, "SEPARABLE_DIVIDER"

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/util/SeparatorTag;->setType(Ljava/lang/String;)V

    .line 756
    :cond_0
    :goto_0
    return-object v0

    .line 743
    :cond_1
    const-string v1, "com.htc.HTCAlbum.PHONE_STORAGE"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 745
    new-instance v0, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .end local v0           #acCategory:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    const-string v1, "com.htc.HTCAlbum.DUMMY"

    const-string v2, "com.htc.HTCAlbum.DUMMY"

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/htc/album/TabPluginDevice/AlbumCollection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    .restart local v0       #acCategory:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    sget-object v1, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_DIVIDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 747
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;

    move-result-object v1

    const-string v2, "SEPARABLE_DIVIDER"

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/util/SeparatorTag;->setType(Ljava/lang/String;)V

    goto :goto_0

    .line 749
    :cond_2
    const-string v1, "com.htc.HTCAlbum.LOCAL_FOLDER"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 751
    new-instance v0, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .end local v0           #acCategory:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    const-string v1, "com.htc.HTCAlbum.DUMMY"

    const-string v2, "com.htc.HTCAlbum.DUMMY"

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/htc/album/TabPluginDevice/AlbumCollection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    .restart local v0       #acCategory:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    sget-object v1, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_DIVIDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 753
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;

    move-result-object v1

    const-string v2, "SEPARABLE_DIVIDER"

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/util/SeparatorTag;->setType(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private inflateListViewItem(ILcom/htc/album/TabPluginDevice/AlbumCollection;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "acItem"
    .parameter "parent"

    .prologue
    .line 355
    const/4 v1, 0x0

    .line 358
    .local v1, view:Landroid/view/View;
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030015

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 364
    new-instance v0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;-><init>(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;)V

    .line 365
    .local v0, tag:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;
    invoke-virtual {p2}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->separatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    .line 366
    const v2, 0x7f0a003f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v2, v0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->titleText:Lcom/htc/widget/HtcListItem2LineText;

    .line 367
    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->titleText:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 368
    const v2, 0x7f0a0029

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemTileImage;

    iput-object v2, v0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->titleImg:Lcom/htc/widget/HtcListItemTileImage;

    .line 369
    const v2, 0x7f0a0040

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemCheckBox;

    iput-object v2, v0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->chkbox:Lcom/htc/widget/HtcListItemCheckBox;

    .line 370
    iput p1, v0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->position:I

    .line 371
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 373
    return-object v1
.end method

.method private insertSeparatorInfo(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 11
    .parameter
    .parameter "szFolderType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, listAlbumCollection:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    const/4 v10, 0x1

    const/4 v9, -0x1

    .line 600
    const/4 v0, 0x0

    .line 601
    .local v0, acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 602
    .local v3, nCount:I
    const/4 v4, 0x0

    .line 603
    .local v4, nIndex:I
    const/4 v5, -0x1

    .line 604
    .local v5, nIndexFirst:I
    const/4 v6, -0x1

    .line 609
    .local v6, nIndexLast:I
    const/4 v4, 0x0

    :goto_0
    if-le v3, v4, :cond_4

    .line 611
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    check-cast v0, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .restart local v0       #acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    if-nez v0, :cond_1

    .line 609
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 614
    :cond_1
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.htc.HTCAlbum.DUMMY"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 617
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getFolderType()Ljava/lang/String;

    move-result-object v2

    .line 619
    .local v2, folderType:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 622
    const-string v7, "com.htc.HTCAlbum.SMART_DEFAULT"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 624
    const-string v7, "com.htc.HTCAlbum.SMART_DEFAULT"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "com.htc.HTCAlbum.CAMERA_SHOTS"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "com.htc.HTCAlbum.SNAPBOOTH"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "com.htc.HTCAlbum.PANORAMA_SHOTS"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "com.htc.HTCAlbum.BURST_SHOTS"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "com.htc.HTCAlbum.MY_FAVORITES"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "com.htc.HTCAlbum.MY_INKS"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "com.htc.HTCAlbum.ALL_PHOTOS"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "com.htc.HTCAlbum.ALL_VIDEOS"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "com.htc.HTCAlbum.ALL_DOWNLOADS"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "com.htc.HTCAlbum.ALL_3DS"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v2}, Lcom/htc/album/Customizable/CustAlbumCollection;->isCustomerSmartFolder(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 638
    :cond_2
    if-ne v9, v5, :cond_0

    .line 639
    move v5, v4

    goto :goto_1

    .line 643
    :cond_3
    if-eq v9, v5, :cond_0

    if-ne v9, v6, :cond_0

    .line 645
    move v6, v4

    .line 668
    .end local v2           #folderType:Ljava/lang/String;
    :cond_4
    :goto_2
    if-ne v9, v5, :cond_8

    if-ne v9, v6, :cond_8

    .line 732
    :cond_5
    :goto_3
    return-void

    .line 652
    .restart local v2       #folderType:Ljava/lang/String;
    :cond_6
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 654
    if-ne v9, v5, :cond_0

    .line 655
    move v5, v4

    goto/16 :goto_1

    .line 659
    :cond_7
    if-eq v9, v5, :cond_0

    if-ne v9, v6, :cond_0

    .line 661
    move v6, v4

    .line 662
    goto :goto_2

    .line 670
    .end local v2           #folderType:Ljava/lang/String;
    :cond_8
    if-eq v9, v5, :cond_9

    if-ne v9, v6, :cond_9

    .line 671
    move v6, v4

    .line 676
    :cond_9
    const/4 v1, 0x0

    .line 677
    .local v1, bIsEnableDivider:Z
    const-string v7, "com.htc.HTCAlbum.SMART_DEFAULT"

    if-ne v7, p2, :cond_c

    .line 678
    const/4 v1, 0x1

    .line 688
    :cond_a
    :goto_4
    if-ne v10, v1, :cond_b

    .line 690
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    invoke-direct {p0, v7, p2}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->getListCategoryItem(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/album/TabPluginDevice/AlbumCollection;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 692
    invoke-virtual {p1, v5, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 693
    add-int/lit8 v5, v5, 0x1

    .line 694
    add-int/lit8 v6, v6, 0x1

    .line 700
    :cond_b
    sub-int v7, v6, v5

    if-ne v10, v7, :cond_e

    .line 702
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    check-cast v0, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .restart local v0       #acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    if-eqz v0, :cond_5

    .line 704
    sget-object v7, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BOTTOM:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v0, v7}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 705
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;

    move-result-object v7

    const-string v8, "SEPARABLE_BOTTOM"

    invoke-virtual {v7, v8}, Lcom/htc/opensense2/album/util/SeparatorTag;->setType(Ljava/lang/String;)V

    goto :goto_3

    .line 680
    :cond_c
    const-string v7, "com.htc.HTCAlbum.LOCAL_FOLDER"

    if-ne v7, p2, :cond_d

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isSupportPhoneStorage()Z

    move-result v7

    if-ne v10, v7, :cond_d

    .line 682
    const/4 v1, 0x1

    goto :goto_4

    .line 684
    :cond_d
    const-string v7, "com.htc.HTCAlbum.PHONE_STORAGE"

    if-ne v7, p2, :cond_a

    .line 685
    const/4 v1, 0x1

    goto :goto_4

    .line 710
    :cond_e
    move v4, v5

    :goto_5
    if-le v6, v4, :cond_5

    .line 712
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    check-cast v0, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .restart local v0       #acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    if-nez v0, :cond_f

    .line 710
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 715
    :cond_f
    if-ne v5, v4, :cond_10

    .line 717
    sget-object v7, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_DIVIDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v0, v7}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 718
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;

    move-result-object v7

    const-string v8, "SEPARABLE_TOP"

    invoke-virtual {v7, v8}, Lcom/htc/opensense2/album/util/SeparatorTag;->setType(Ljava/lang/String;)V

    goto :goto_6

    .line 720
    :cond_10
    add-int/lit8 v7, v6, -0x1

    if-ne v7, v4, :cond_11

    .line 722
    sget-object v7, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BOTTOM:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v0, v7}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 723
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;

    move-result-object v7

    const-string v8, "SEPARABLE_BOTTOM"

    invoke-virtual {v7, v8}, Lcom/htc/opensense2/album/util/SeparatorTag;->setType(Ljava/lang/String;)V

    goto :goto_6

    .line 727
    :cond_11
    sget-object v7, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v0, v7}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 728
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;

    move-result-object v7

    const-string v8, "SEPARABLE_MIDDLE"

    invoke-virtual {v7, v8}, Lcom/htc/opensense2/album/util/SeparatorTag;->setType(Ljava/lang/String;)V

    goto :goto_6
.end method

.method private setDisplaySeparatorInfo(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 590
    .local p1, listAlbumCollection:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    const/4 v0, 0x0

    .line 591
    .local v0, acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 593
    .local v1, nCount:I
    const-string v2, "com.htc.HTCAlbum.SMART_DEFAULT"

    invoke-direct {p0, p1, v2}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->insertSeparatorInfo(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 594
    const-string v2, "com.htc.HTCAlbum.PHONE_STORAGE"

    invoke-direct {p0, p1, v2}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->insertSeparatorInfo(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 595
    const-string v2, "com.htc.HTCAlbum.LOCAL_FOLDER"

    invoke-direct {p0, p1, v2}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->insertSeparatorInfo(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 596
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDeSelectedItem()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 573
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 575
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 576
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 578
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 579
    .local v0, acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->isVisible()Z

    move-result v4

    if-nez v4, :cond_0

    .line 581
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 585
    .end local v0           #acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    :cond_1
    return-object v3
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 351
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 378
    if-ltz p1, :cond_0

    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gt v8, p1, :cond_1

    :cond_0
    const/4 v8, 0x0

    .line 467
    :goto_0
    return-object v8

    .line 380
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 385
    .local v0, acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;

    move-result-object v2

    .line 386
    .local v2, currentTag:Lcom/htc/opensense2/album/util/SeparatorTag;
    if-nez p2, :cond_4

    .line 387
    invoke-direct {p0, p1, v0, p3}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->inflateListViewItem(ILcom/htc/album/TabPluginDevice/AlbumCollection;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 397
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;

    .line 399
    .local v4, tag:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;
    iput p1, v4, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->position:I

    .line 401
    iput-object v2, v4, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->separatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    .line 406
    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/SeparatorTag;->isDivider()Z

    move-result v8

    if-ne v11, v8, :cond_7

    .line 408
    iget-object v5, v4, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->titleText:Lcom/htc/widget/HtcListItem2LineText;

    .line 409
    .local v5, txt:Lcom/htc/widget/HtcListItem2LineText;
    invoke-virtual {v5, v10}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextVisibility(I)V

    .line 411
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getFolderType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.HTCAlbum.SMART_DEFAULT"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 413
    const v8, 0x7f0b0023

    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .end local v5           #txt:Lcom/htc/widget/HtcListItem2LineText;
    :cond_3
    :goto_2
    move-object v8, p2

    .line 467
    goto :goto_0

    .line 390
    .end local v4           #tag:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;

    .line 391
    .restart local v4       #tag:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;
    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/SeparatorTag;->isDivider()Z

    move-result v8

    iget-object v9, v4, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->separatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v9}, Lcom/htc/opensense2/album/util/SeparatorTag;->isDivider()Z

    move-result v9

    if-eq v8, v9, :cond_2

    .line 392
    invoke-virtual {v4}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->clear()V

    .line 393
    invoke-direct {p0, p1, v0, p3}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->inflateListViewItem(ILcom/htc/album/TabPluginDevice/AlbumCollection;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    .line 415
    .restart local v5       #txt:Lcom/htc/widget/HtcListItem2LineText;
    :cond_5
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getFolderType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.HTCAlbum.PHONE_STORAGE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 417
    const v8, 0x7f0b0099

    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    goto :goto_2

    .line 419
    :cond_6
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getFolderType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.HTCAlbum.LOCAL_FOLDER"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 421
    const v8, 0x7f0b009a

    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    goto :goto_2

    .line 429
    .end local v5           #txt:Lcom/htc/widget/HtcListItem2LineText;
    :cond_7
    iget-object v6, v4, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->titleText:Lcom/htc/widget/HtcListItem2LineText;

    .line 430
    .local v6, txtView:Lcom/htc/widget/HtcListItem2LineText;
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 431
    invoke-virtual {v6, v10}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextVisibility(I)V

    .line 436
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mDecodeThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;

    invoke-virtual {v8, p1, v0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->pull(ILcom/htc/album/TabPluginDevice/AlbumCollection;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 438
    .local v1, bitmap:Landroid/graphics/Bitmap;
    iget-object v3, v4, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->titleImg:Lcom/htc/widget/HtcListItemTileImage;

    .line 439
    .local v3, imgView:Lcom/htc/widget/HtcListItemTileImage;
    if-eqz v3, :cond_8

    .line 442
    invoke-virtual {v3, v10}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    .line 445
    :cond_8
    if-eqz v1, :cond_9

    .line 446
    invoke-virtual {v3, v1}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 455
    :goto_3
    iget-object v7, v4, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->chkbox:Lcom/htc/widget/HtcListItemCheckBox;

    .line 456
    .local v7, viewChkbox:Lcom/htc/widget/HtcListItemCheckBox;
    if-eqz v7, :cond_3

    .line 458
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->isVisible()Z

    move-result v8

    if-ne v11, v8, :cond_a

    .line 459
    invoke-virtual {v7, v11}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    goto :goto_2

    .line 449
    .end local v7           #viewChkbox:Lcom/htc/widget/HtcListItemCheckBox;
    :cond_9
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mDefaultItemDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v8}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 462
    .restart local v7       #viewChkbox:Lcom/htc/widget/HtcListItemCheckBox;
    :cond_a
    invoke-virtual {v7, v10}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    goto :goto_2
.end method

.method public isDeselectAll()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 551
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 559
    :cond_0
    :goto_0
    return v3

    .line 552
    :cond_1
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 553
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 554
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 555
    .local v0, acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->isVisible()Z

    move-result v5

    if-eq v4, v5, :cond_0

    .line 553
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    :cond_2
    move v3, v4

    .line 559
    goto :goto_0
.end method

.method public isSelectAll()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 539
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 547
    :cond_0
    :goto_0
    return v3

    .line 540
    :cond_1
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 541
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 542
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 543
    .local v0, acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 541
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 547
    .end local v0           #acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    const/4 v3, 0x1

    .line 506
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 508
    :cond_1
    invoke-virtual {p0, p3}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 509
    .local v0, acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    if-eqz v0, :cond_0

    .line 511
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->toggleVisibility()V

    .line 513
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;

    iget-object v1, v2, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->chkbox:Lcom/htc/widget/HtcListItemCheckBox;

    .line 514
    .local v1, viewChkbox:Lcom/htc/widget/HtcListItemCheckBox;
    if-eqz v1, :cond_0

    .line 516
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->isVisible()Z

    move-result v2

    if-ne v3, v2, :cond_2

    .line 517
    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    goto :goto_0

    .line 520
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public onNotifyUpdateComplete(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 488
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->notifyDataSetChanged()V

    .line 492
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 493
    if-nez p1, :cond_0

    .line 494
    new-instance p1, Ljava/util/ArrayList;

    .end local p1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 495
    .restart local p1       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 498
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 500
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mDecodeThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->doClear()V

    .line 501
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mDecodeThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->doResume()V

    .line 502
    return-void
.end method

.method public onReady(ILandroid/graphics/Bitmap;)V
    .locals 2
    .parameter "position"
    .parameter "bitmap"

    .prologue
    .line 564
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$600(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 565
    .local v0, m:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 566
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 567
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 568
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$600(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 569
    return-void
.end method

.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 4
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 781
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mDecodeThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mDecodeThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;

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

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->setVisibleRange(II)V

    .line 785
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 0
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 777
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 471
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mDecodeThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->doStop()V

    .line 472
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mDecodeThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->doClear()V

    .line 473
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mDefaultItemDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 475
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mLoadingThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->doStop()V

    .line 477
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 478
    return-void
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mDecodeThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->doPause()V

    .line 482
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mLoadingThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->doLoading()V

    .line 484
    return-void
.end method

.method public setAllItemSelection(Z)V
    .locals 6
    .parameter "isSelected"

    .prologue
    .line 526
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 536
    :goto_0
    return-void

    .line 528
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->getCount()I

    move-result v1

    .line 529
    .local v1, count:I
    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    const/4 v3, 0x0

    .line 530
    .local v3, visible:I
    :goto_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v1, :cond_2

    .line 531
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 532
    .local v0, acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    invoke-virtual {v0, v3}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->setVisibility(I)V

    .line 530
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 529
    .end local v0           #acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    .end local v2           #i:I
    .end local v3           #visible:I
    :cond_1
    const/4 v3, 0x4

    goto :goto_1

    .line 535
    .restart local v2       #i:I
    .restart local v3       #visible:I
    :cond_2
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$600(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
