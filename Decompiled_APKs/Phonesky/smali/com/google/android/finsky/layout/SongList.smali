.class public Lcom/google/android/finsky/layout/SongList;
.super Landroid/widget/LinearLayout;
.source "SongList.java"


# instance fields
.field private final mCorpusColor:I

.field private mHighlightedSongDocId:Ljava/lang/String;

.field private mParent:Landroid/widget/ScrollView;

.field private final mScrollRunnable:Ljava/lang/Runnable;

.field private final mSongSnippets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/layout/SongSnippet;",
            ">;"
        }
    .end annotation
.end field

.field private mSongsContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/SongList;->mSongSnippets:Ljava/util/Map;

    .line 40
    new-instance v0, Lcom/google/android/finsky/layout/SongList$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/layout/SongList$1;-><init>(Lcom/google/android/finsky/layout/SongList;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/SongList;->mScrollRunnable:Ljava/lang/Runnable;

    .line 64
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendHintColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/layout/SongList;->mCorpusColor:I

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/SongList;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongList;->mHighlightedSongDocId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/SongList;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongList;->mSongSnippets:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/layout/SongList;)Landroid/widget/ScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongList;->mParent:Landroid/widget/ScrollView;

    return-object v0
.end method

.method private hideUi()V
    .locals 2

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/SongList;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 177
    .local v0, parent:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 182
    :goto_0
    return-void

    .line 180
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/SongList;->setVisibility(I)V

    goto :goto_0
.end method

.method private highlightSong()V
    .locals 4

    .prologue
    .line 166
    iget-object v2, p0, Lcom/google/android/finsky/layout/SongList;->mSongSnippets:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/android/finsky/layout/SongList;->mHighlightedSongDocId:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 167
    iget-object v2, p0, Lcom/google/android/finsky/layout/SongList;->mSongSnippets:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 168
    .local v1, songDocId:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/finsky/layout/SongList;->mSongSnippets:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/layout/SongSnippet;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/SongSnippet;->setState(I)V

    goto :goto_0

    .line 171
    .end local v1           #songDocId:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/layout/SongList;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/layout/SongList;->post(Ljava/lang/Runnable;)Z

    .line 173
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private shouldShowArtistNames(Lcom/google/android/finsky/api/model/Document;Ljava/util/List;)Z
    .locals 5
    .parameter "album"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/api/model/Document;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, songs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    const/4 v4, 0x0

    .line 144
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDisplayArtist()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 145
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDisplayArtist()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->getName()Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, representativeTitle:Ljava/lang/String;
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/api/model/Document;

    .line 153
    .local v2, song:Lcom/google/android/finsky/api/model/Document;
    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 154
    const/4 v3, 0x1

    .line 157
    .end local v2           #song:Lcom/google/android/finsky/api/model/Document;
    :goto_1
    return v3

    .line 148
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #representativeTitle:Ljava/lang/String;
    :cond_1
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #representativeTitle:Ljava/lang/String;
    goto :goto_0

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2
    move v3, v4

    .line 157
    goto :goto_1
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongList;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SongList;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 77
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 78
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 71
    const v0, 0x7f080172

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SongList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/finsky/layout/SongList;->mSongsContainer:Landroid/widget/LinearLayout;

    .line 72
    return-void
.end method

.method public setHighlightedSong(Ljava/lang/String;Landroid/widget/ScrollView;)V
    .locals 0
    .parameter "songDocumentId"
    .parameter "parent"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/google/android/finsky/layout/SongList;->mHighlightedSongDocId:Ljava/lang/String;

    .line 162
    iput-object p2, p0, Lcom/google/android/finsky/layout/SongList;->mParent:Landroid/widget/ScrollView;

    .line 163
    return-void
.end method

.method public setListDetails(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Ljava/util/List;ZLjava/util/Set;)V
    .locals 19
    .parameter "navigationManager"
    .parameter "bitmapLoader"
    .parameter "album"
    .parameter
    .parameter "useActualTrackNumbers"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/navigationmanager/NavigationManager;",
            "Lcom/google/android/finsky/utils/BitmapLoader;",
            "Lcom/google/android/finsky/api/model/Document;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;Z",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p4, songs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    .local p6, initiallyOwnedDocuments:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/layout/SongList;->mSongSnippets:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 85
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/layout/SongList;->mSongSnippets:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 86
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/layout/SongList;->mSongsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 89
    :cond_0
    if-eqz p4, :cond_1

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 90
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/finsky/layout/SongList;->hideUi()V

    .line 135
    :goto_0
    return-void

    .line 94
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/layout/SongList;->shouldShowArtistNames(Lcom/google/android/finsky/api/model/Document;Ljava/util/List;)Z

    move-result v8

    .line 95
    .local v8, showArtistNames:Z
    const v4, 0x7f0800af

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/finsky/layout/SongList;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 96
    .local v12, headerText:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/finsky/layout/SongList;->mCorpusColor:I

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    const v4, 0x7f080171

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/finsky/layout/SongList;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/google/android/finsky/layout/PlaylistControlButtons;

    .line 100
    .local v17, songListControl:Lcom/google/android/finsky/layout/PlaylistControlButtons;
    move-object/from16 v0, v17

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/PlaylistControlButtons;->setDocuments(Ljava/util/Collection;)V

    .line 102
    const v4, 0x7f080170

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/finsky/layout/SongList;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 103
    .local v11, header:Landroid/view/View;
    new-instance v4, Lcom/google/android/finsky/layout/SongList$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1}, Lcom/google/android/finsky/layout/SongList$2;-><init>(Lcom/google/android/finsky/layout/SongList;Lcom/google/android/finsky/layout/PlaylistControlButtons;)V

    invoke-virtual {v11, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/SongList;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    .line 112
    .local v14, inflater:Landroid/view/LayoutInflater;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v16

    .line 113
    .local v16, library:Lcom/google/android/finsky/library/Library;
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v13, v4, :cond_6

    .line 114
    move-object/from16 v0, p4

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/api/model/Document;

    .line 115
    .local v6, song:Lcom/google/android/finsky/api/model/Document;
    const v4, 0x7f04009b

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v14, v4, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/layout/SongSnippet;

    .line 117
    .local v3, snippet:Lcom/google/android/finsky/layout/SongSnippet;
    if-eqz p5, :cond_4

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Document;->getSongDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->getTrackNumber()I

    move-result v7

    .line 120
    .local v7, trackNumber:I
    :goto_2
    move-object/from16 v0, v16

    invoke-static {v6, v0}, Lcom/google/android/finsky/utils/LibraryUtils;->isOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;)Z

    move-result v15

    .line 121
    .local v15, isOwned:Z
    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v18

    .line 122
    .local v18, wasOwned:Z
    if-eqz v15, :cond_5

    if-nez v18, :cond_5

    const/4 v10, 0x1

    .local v10, isNewPurchase:Z
    :goto_3
    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v9, p1

    .line 123
    invoke-virtual/range {v3 .. v10}, Lcom/google/android/finsky/layout/SongSnippet;->setSongDetails(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/Document;IZLcom/google/android/finsky/navigationmanager/NavigationManager;Z)V

    .line 125
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/layout/SongList;->mSongsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 126
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/layout/SongList;->mSongSnippets:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    if-nez v13, :cond_3

    .line 130
    invoke-virtual {v3}, Lcom/google/android/finsky/layout/SongSnippet;->initialize()V

    .line 113
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 117
    .end local v7           #trackNumber:I
    .end local v10           #isNewPurchase:Z
    .end local v15           #isOwned:Z
    .end local v18           #wasOwned:Z
    :cond_4
    add-int/lit8 v7, v13, 0x1

    goto :goto_2

    .line 122
    .restart local v7       #trackNumber:I
    .restart local v15       #isOwned:Z
    .restart local v18       #wasOwned:Z
    :cond_5
    const/4 v10, 0x0

    goto :goto_3

    .line 134
    .end local v3           #snippet:Lcom/google/android/finsky/layout/SongSnippet;
    .end local v6           #song:Lcom/google/android/finsky/api/model/Document;
    .end local v7           #trackNumber:I
    .end local v15           #isOwned:Z
    .end local v18           #wasOwned:Z
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/google/android/finsky/layout/SongList;->highlightSong()V

    goto/16 :goto_0
.end method
