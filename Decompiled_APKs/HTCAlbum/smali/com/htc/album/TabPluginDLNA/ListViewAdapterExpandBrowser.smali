.class public Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;
.super Lcom/htc/widget/MoreExpandableBaseAdapter;
.source "ListViewAdapterExpandBrowser.java"


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field protected mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mTextPaddingRight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/LinkedList;)V
    .locals 7
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p2, itemList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;>;"
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/MoreExpandableBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/LinkedList;)V

    .line 23
    const-string v2, "ExpandListView"

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->LOG_TAG:Ljava/lang/String;

    .line 27
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    .line 29
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->mTextPaddingRight:I

    .line 34
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->mContext:Landroid/content/Context;

    .line 35
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->mInflater:Landroid/view/LayoutInflater;

    .line 37
    new-instance v2, Lcom/htc/album/TabPluginDLNA/ImageProvider;

    invoke-direct {v2}, Lcom/htc/album/TabPluginDLNA/ImageProvider;-><init>()V

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    .line 38
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    sget-object v5, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->MAX_LISTVIEW_THUMB_BUFFER:[I

    invoke-static {}, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->getResolution()I

    move-result v6

    aget v5, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->Initialize(Landroid/content/Context;ZI)Z

    .line 43
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x2050050

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->mTextPaddingRight:I

    .line 44
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x2080025

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 45
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 49
    .local v1, expandIconWidth:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 50
    iget v2, p0, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->mTextPaddingRight:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->mTextPaddingRight:I

    goto :goto_0
.end method


# virtual methods
.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 58
    if-nez p4, :cond_2

    .line 59
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030022

    invoke-virtual {v5, v6, p5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 64
    .local v4, view:Landroid/view/View;
    :goto_0
    invoke-static {p1, p2}, Lcom/htc/widget/MoreExpandableItemInfo;->getPosition(II)I

    move-result v2

    .line 65
    .local v2, position:I
    invoke-virtual {p0, v2}, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    .line 67
    .local v1, item:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    const v5, 0x7f0a0059

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItem2LineText;

    .line 68
    .local v3, text:Lcom/htc/widget/HtcListItem2LineText;
    const v5, 0x7f0a0058

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItemTileImage;

    .line 69
    .local v0, icon:Lcom/htc/widget/HtcListItemTileImage;
    invoke-virtual {v3, v8}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 71
    if-eqz v1, :cond_1

    .line 73
    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 74
    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 76
    :cond_0
    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    .line 78
    const-string v5, "0"

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetFileType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 80
    const v5, 0x208024f

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageResource(I)V

    .line 95
    :cond_1
    :goto_1
    return-object v4

    .line 61
    .end local v0           #icon:Lcom/htc/widget/HtcListItemTileImage;
    .end local v1           #item:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    .end local v2           #position:I
    .end local v3           #text:Lcom/htc/widget/HtcListItem2LineText;
    .end local v4           #view:Landroid/view/View;
    :cond_2
    move-object v4, p4

    .restart local v4       #view:Landroid/view/View;
    goto :goto_0

    .line 82
    .restart local v0       #icon:Lcom/htc/widget/HtcListItemTileImage;
    .restart local v1       #item:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    .restart local v2       #position:I
    .restart local v3       #text:Lcom/htc/widget/HtcListItem2LineText;
    :cond_3
    const-string v5, "2"

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetFileType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "4"

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetFileType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 85
    :cond_4
    const v5, 0x7f0b00b2

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 86
    const/high16 v5, 0x7f02

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageResource(I)V

    goto :goto_1

    .line 88
    :cond_5
    const-string v5, "UNKNOWN"

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetFileType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 90
    const v5, 0x7f0b00b6

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 91
    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    goto :goto_1
.end method

.method public getChildren(ILcom/htc/widget/MoreExpandableItemInfo;)Ljava/util/LinkedList;
    .locals 1
    .parameter "groupPosition"
    .parameter "self"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ")",
            "Ljava/util/LinkedList",
            "<+",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 103
    .local v0, childList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;>;"
    return-object v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x0

    .line 111
    if-nez p3, :cond_1

    .line 112
    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f030022

    invoke-virtual {v6, v7, p4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 117
    .local v5, view:Landroid/view/View;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    .line 119
    .local v2, item:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    const v6, 0x7f0a0059

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItem2LineText;

    .line 120
    .local v3, text:Lcom/htc/widget/HtcListItem2LineText;
    const v6, 0x7f0a0058

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItemTileImage;

    .line 121
    .local v0, icon:Lcom/htc/widget/HtcListItemTileImage;
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 122
    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    .line 124
    invoke-virtual {v3}, Lcom/htc/widget/HtcListItem2LineText;->getPaddingLeft()I

    move-result v6

    invoke-virtual {v3}, Lcom/htc/widget/HtcListItem2LineText;->getPaddingTop()I

    move-result v7

    iget v8, p0, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->mTextPaddingRight:I

    invoke-virtual {v3}, Lcom/htc/widget/HtcListItem2LineText;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v3, v6, v7, v8, v9}, Lcom/htc/widget/HtcListItem2LineText;->setPadding(IIII)V

    .line 126
    if-eqz v2, :cond_0

    .line 128
    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetParentID()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetContainerName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 131
    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetContainerName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 132
    const v6, 0x208024f

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageResource(I)V

    .line 157
    :cond_0
    :goto_1
    return-object v5

    .line 114
    .end local v0           #icon:Lcom/htc/widget/HtcListItemTileImage;
    .end local v2           #item:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    .end local v3           #text:Lcom/htc/widget/HtcListItem2LineText;
    .end local v5           #view:Landroid/view/View;
    :cond_1
    move-object v5, p3

    .restart local v5       #view:Landroid/view/View;
    goto :goto_0

    .line 137
    .restart local v0       #icon:Lcom/htc/widget/HtcListItemTileImage;
    .restart local v2       #item:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    .restart local v3       #text:Lcom/htc/widget/HtcListItem2LineText;
    :cond_2
    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 140
    const/4 v4, 0x0

    .line 141
    .local v4, thumbBmp:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetImg()Landroid/graphics/Bitmap;

    move-result-object v6

    if-nez v6, :cond_3

    .line 143
    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetImgPath()Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, imgPath:Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 146
    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, p1, v1}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->getImageBitmap(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 149
    .end local v1           #imgPath:Ljava/lang/String;
    :cond_3
    if-eqz v4, :cond_4

    .line 150
    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 152
    :cond_4
    const v6, 0x2080246

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageResource(I)V

    goto :goto_1
.end method
