.class public Lcom/htc/album/AlbumMain/AdapterDropList;
.super Landroid/widget/BaseAdapter;
.source "AdapterDropList.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mList:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/htc/album/AlbumMain/AdapterDropList;->mContext:Landroid/content/Context;

    .line 27
    iput-object v0, p0, Lcom/htc/album/AlbumMain/AdapterDropList;->mInflater:Landroid/view/LayoutInflater;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/AlbumMain/AdapterDropList;->mList:Ljava/util/List;

    .line 32
    iput-object p1, p0, Lcom/htc/album/AlbumMain/AdapterDropList;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/album/AlbumMain/AdapterDropList;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "nIndex"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/album/AlbumMain/AdapterDropList;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 63
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "pos"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v10, 0x0

    .line 70
    if-nez p2, :cond_0

    .line 71
    iget-object v8, p0, Lcom/htc/album/AlbumMain/AdapterDropList;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f030016

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 73
    :cond_0
    const/4 v2, 0x0

    .line 74
    .local v2, listItemContent:Lcom/htc/widget/HtcListItem2LineText;
    const/4 v3, 0x0

    .line 75
    .local v3, listItemImage:Lcom/htc/widget/HtcListItemImageButton;
    iget-object v8, p0, Lcom/htc/album/AlbumMain/AdapterDropList;->mList:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense/plugin/TabPlugin;

    .line 76
    .local v6, plugin:Lcom/htc/opensense/plugin/TabPlugin;
    if-eqz p2, :cond_4

    .line 78
    const v8, 0x7f0a0029

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #listItemImage:Lcom/htc/widget/HtcListItemImageButton;
    check-cast v3, Lcom/htc/widget/HtcListItemImageButton;

    .line 79
    .restart local v3       #listItemImage:Lcom/htc/widget/HtcListItemImageButton;
    if-eqz v3, :cond_3

    .line 81
    const/4 v7, 0x0

    .line 82
    .local v7, rplugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    const/4 v5, 0x0

    .line 83
    .local v5, osDataPlugin:Z
    instance-of v8, v6, Lcom/htc/opensense/plugin/TabPluginRemote;

    if-eqz v8, :cond_1

    move-object v7, v6

    check-cast v7, Lcom/htc/opensense/plugin/TabPluginRemote;

    .line 84
    :cond_1
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/htc/opensense/plugin/TabPluginRemote;->onCreateAlbumListPlugin()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 85
    const/4 v5, 0x1

    .line 88
    :cond_2
    if-eqz v5, :cond_6

    .line 90
    invoke-virtual {v7}, Lcom/htc/opensense/plugin/TabPluginRemote;->getLogoRes()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 91
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-nez v0, :cond_5

    .line 92
    invoke-virtual {v3, v10}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 111
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v5           #osDataPlugin:Z
    .end local v7           #rplugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    :cond_3
    :goto_0
    const v8, 0x7f0a0027

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #listItemContent:Lcom/htc/widget/HtcListItem2LineText;
    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    .line 112
    .restart local v2       #listItemContent:Lcom/htc/widget/HtcListItem2LineText;
    if-eqz v2, :cond_4

    .line 115
    invoke-virtual {v6}, Lcom/htc/opensense/plugin/TabPlugin;->getTabName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 116
    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 120
    :cond_4
    return-object p2

    .line 94
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    .restart local v5       #osDataPlugin:Z
    .restart local v7       #rplugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    :cond_5
    invoke-virtual {v3, v0}, Lcom/htc/widget/HtcListItemImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 98
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :cond_6
    const/4 v4, 0x0

    .line 101
    .local v4, nResDrawable:I
    :try_start_0
    invoke-virtual {v6}, Lcom/htc/opensense/plugin/TabPlugin;->getDrawableResSet()[I

    move-result-object v8

    const/4 v9, 0x1

    aget v4, v8, v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_1
    if-eqz v4, :cond_3

    .line 108
    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    goto :goto_0

    .line 103
    :catch_0
    move-exception v1

    .line 105
    .local v1, e:Ljava/lang/Exception;
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/album/AlbumMain/AdapterDropList;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/AlbumMain/AdapterDropList;->mInflater:Landroid/view/LayoutInflater;

    .line 42
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/htc/album/AlbumMain/AdapterDropList;->mInflater:Landroid/view/LayoutInflater;

    .line 46
    iput-object v0, p0, Lcom/htc/album/AlbumMain/AdapterDropList;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method

.method public setAdapterList(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/plugin/TabPlugin;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, plugins:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/plugin/TabPlugin;>;"
    iget-object v0, p0, Lcom/htc/album/AlbumMain/AdapterDropList;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 37
    iget-object v0, p0, Lcom/htc/album/AlbumMain/AdapterDropList;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 38
    return-void
.end method
