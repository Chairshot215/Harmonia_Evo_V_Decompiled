.class public Lcom/google/android/finsky/activities/SongListViewBinder;
.super Lcom/google/android/finsky/fragments/DetailsViewBinder;
.source "SongListViewBinder.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;
.implements Lcom/google/android/finsky/library/Libraries$Listener;


# instance fields
.field private mAlbumDoc:Lcom/google/android/finsky/api/model/Document;

.field private mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private mInitialDocumentsOwned:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

.field private mLibraries:Lcom/google/android/finsky/library/Libraries;

.field private mNumSongsToShow:I

.field private mUseActualTrackNumbers:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/DetailsViewBinder;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mInitialDocumentsOwned:Ljava/util/Set;

    return-void
.end method

.method private detachRequestListeners()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 182
    iget-object v0, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 184
    :cond_0
    return-void
.end method

.method private populateFromLibrary(Lcom/google/android/finsky/library/Library;)V
    .locals 11
    .parameter "library"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mLayout:Landroid/view/View;

    check-cast v0, Lcom/google/android/finsky/layout/SongList;

    .line 126
    .local v0, songList:Lcom/google/android/finsky/layout/SongList;
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 127
    .local v4, docs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    iget v1, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mNumSongsToShow:I

    iget-object v2, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeList;->getCount()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 129
    .local v9, numTracks:I
    iget-object v1, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mInitialDocumentsOwned:Ljava/util/Set;

    if-nez v1, :cond_2

    const/4 v7, 0x1

    .line 130
    .local v7, firstTimeThrough:Z
    :goto_0
    if-eqz v7, :cond_0

    .line 131
    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mInitialDocumentsOwned:Ljava/util/Set;

    .line 134
    :cond_0
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v9, :cond_3

    .line 135
    iget-object v1, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v1, v8}, Lcom/google/android/finsky/api/model/DfeList;->getItem(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/finsky/api/model/Document;

    .line 136
    .local v10, song:Lcom/google/android/finsky/api/model/Document;
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    if-eqz v7, :cond_1

    invoke-static {v10, p1}, Lcom/google/android/finsky/utils/LibraryUtils;->isOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    iget-object v1, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mInitialDocumentsOwned:Ljava/util/Set;

    invoke-virtual {v10}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 129
    .end local v7           #firstTimeThrough:Z
    .end local v8           #i:I
    .end local v10           #song:Lcom/google/android/finsky/api/model/Document;
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 142
    .restart local v7       #firstTimeThrough:Z
    .restart local v8       #i:I
    :cond_3
    iget-object v1, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v2, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v3, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mAlbumDoc:Lcom/google/android/finsky/api/model/Document;

    iget-boolean v5, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mUseActualTrackNumbers:Z

    iget-object v6, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mInitialDocumentsOwned:Ljava/util/Set;

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/layout/SongList;->setListDetails(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Ljava/util/List;ZLjava/util/Set;)V

    .line 144
    return-void
.end method


# virtual methods
.method public bind(Lcom/google/android/finsky/layout/SongList;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZLcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/utils/BitmapLoader;)V
    .locals 5
    .parameter "view"
    .parameter "albumDoc"
    .parameter "title"
    .parameter "subtitle"
    .parameter "songListUrl"
    .parameter "useActualTrackNumbers"
    .parameter "numSongsToShow"
    .parameter "hasDetailsLoaded"
    .parameter "libraries"
    .parameter "bitmapLoader"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 75
    const/4 v1, 0x2

    invoke-super {p0, p1, p3, v1}, Lcom/google/android/finsky/fragments/DetailsViewBinder;->bind(Landroid/view/View;Ljava/lang/String;I)V

    .line 77
    iput-object p9, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    .line 78
    iput-object p10, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 80
    if-nez p8, :cond_0

    .line 81
    iget-object v1, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mLayout:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 108
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 87
    iget-object v1, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mLayout:Landroid/view/View;

    const v2, 0x7f0800b0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 88
    .local v0, subheaderView:Landroid/widget/TextView;
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    :goto_1
    iput-object p2, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mAlbumDoc:Lcom/google/android/finsky/api/model/Document;

    .line 96
    iput p7, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mNumSongsToShow:I

    .line 98
    invoke-direct {p0}, Lcom/google/android/finsky/activities/SongListViewBinder;->detachRequestListeners()V

    .line 99
    new-instance v1, Lcom/google/android/finsky/api/model/DfeList;

    iget-object v2, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-direct {v1, v2, p5, v3}, Lcom/google/android/finsky/api/model/DfeList;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    .line 100
    iget-object v1, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/api/model/DfeList;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 101
    iget-object v1, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/api/model/DfeList;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 102
    iget-object v1, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeList;->startLoadItems()V

    .line 104
    iput-boolean p6, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mUseActualTrackNumbers:Z

    .line 106
    iget-object v1, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/library/Libraries;->removeListener(Lcom/google/android/finsky/library/Libraries$Listener;)V

    .line 107
    iget-object v1, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/library/Libraries;->addListener(Lcom/google/android/finsky/library/Libraries$Listener;)V

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    invoke-static {p4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onAllLibrariesLoaded()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public onDataChanged()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/SongListViewBinder;->populateFromLibrary(Lcom/google/android/finsky/library/Library;)V

    .line 113
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/library/Libraries;->removeListener(Lcom/google/android/finsky/library/Libraries$Listener;)V

    .line 157
    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/activities/SongListViewBinder;->detachRequestListeners()V

    .line 158
    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 150
    return-void
.end method

.method public onLibraryContentsChanged(Lcom/google/android/finsky/library/AccountLibrary;)V
    .locals 0
    .parameter "library"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/SongListViewBinder;->populateFromLibrary(Lcom/google/android/finsky/library/Library;)V

    .line 122
    return-void
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 161
    const-string v5, "SongListViewBinder.InitialDocumentsOwned"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 162
    .local v4, ownedDocumentIds:[Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 163
    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mInitialDocumentsOwned:Ljava/util/Set;

    .line 164
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 165
    .local v3, ownedDocumentId:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mInitialDocumentsOwned:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #ownedDocumentId:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 171
    const/4 v1, 0x0

    .line 172
    .local v1, ownedDocumentIds:[Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mInitialDocumentsOwned:Ljava/util/Set;

    if-eqz v2, :cond_0

    .line 173
    iget-object v2, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mInitialDocumentsOwned:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    .line 174
    .local v0, numDocuments:I
    iget-object v2, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mInitialDocumentsOwned:Ljava/util/Set;

    new-array v3, v0, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1           #ownedDocumentIds:[Ljava/lang/String;
    check-cast v1, [Ljava/lang/String;

    .line 176
    .end local v0           #numDocuments:I
    .restart local v1       #ownedDocumentIds:[Ljava/lang/String;
    :cond_0
    const-string v2, "SongListViewBinder.InitialDocumentsOwned"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 177
    return-void
.end method
