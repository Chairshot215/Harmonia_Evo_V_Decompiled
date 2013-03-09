.class public Lcom/google/android/finsky/adapters/SearchAdapter;
.super Lcom/google/android/finsky/adapters/BucketedListAdapter;
.source "SearchAdapter.java"


# instance fields
.field private mDfeSearch:Lcom/google/android/finsky/api/model/DfeSearch;

.field private mSpinner:Landroid/widget/Spinner;

.field private mSpinnerAdapter:Lcom/google/android/finsky/adapters/SearchSpinnerAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/api/model/DfeSearch;IIILjava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "navManager"
    .parameter "loader"
    .parameter "toc"
    .parameter "dfeSearch"
    .parameter "columnCount"
    .parameter "rowCount"
    .parameter "cellLayoutId"
    .parameter "currentPageUrl"

    .prologue
    .line 63
    invoke-direct/range {p0 .. p9}, Lcom/google/android/finsky/adapters/BucketedListAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/api/model/BucketedList;IIILjava/lang/String;)V

    .line 65
    iput-object p5, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mDfeSearch:Lcom/google/android/finsky/api/model/DfeSearch;

    .line 66
    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/SearchAdapter;->ignoreCustomTiles()V

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/adapters/SearchAdapter;)Lcom/google/android/finsky/api/model/DfeSearch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mDfeSearch:Lcom/google/android/finsky/api/model/DfeSearch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/adapters/SearchAdapter;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method private bindSuggestionHeader(Lcom/google/android/finsky/layout/SuggestionBarLayout;)V
    .locals 5
    .parameter "headerView"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 237
    iget-object v2, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mDfeSearch:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeSearch;->getSuggestedQuery()Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, suggestionQuery:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/google/android/finsky/layout/SuggestionBarLayout;->bind(Ljava/lang/String;)V

    .line 240
    invoke-direct {p0, v1}, Lcom/google/android/finsky/adapters/SearchAdapter;->makeSuggestionClickListener(Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v0

    .line 242
    .local v0, suggestionClickHandler:Landroid/view/View$OnClickListener;
    invoke-virtual {p1, v0}, Lcom/google/android/finsky/layout/SuggestionBarLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    if-eqz v0, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {p1, v2}, Lcom/google/android/finsky/layout/SuggestionBarLayout;->setClickable(Z)V

    .line 244
    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v3}, Lcom/google/android/finsky/layout/SuggestionBarLayout;->setFocusable(Z)V

    .line 245
    return-void

    :cond_0
    move v2, v4

    .line 243
    goto :goto_0

    :cond_1
    move v3, v4

    .line 244
    goto :goto_1
.end method

.method private getSuggestionHeaderView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 260
    if-nez p1, :cond_0

    const v1, 0x7f040109

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v2}, Lcom/google/android/finsky/adapters/SearchAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .local v0, headerView:Landroid/view/View;
    :goto_0
    move-object v1, v0

    .line 262
    check-cast v1, Lcom/google/android/finsky/layout/SuggestionBarLayout;

    invoke-direct {p0, v1}, Lcom/google/android/finsky/adapters/SearchAdapter;->bindSuggestionHeader(Lcom/google/android/finsky/layout/SuggestionBarLayout;)V

    .line 263
    return-object v0

    .end local v0           #headerView:Landroid/view/View;
    :cond_0
    move-object v0, p1

    .line 260
    goto :goto_0
.end method

.method private getSwitcherHeader(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x0

    .line 166
    iget-object v6, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mDfeSearch:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/DfeSearch;->getBackendId()I

    move-result v0

    .line 168
    .local v0, backendId:I
    if-nez p1, :cond_0

    .line 172
    iget-object v6, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mDfeSearch:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/DfeSearch;->isAggregateResult()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 174
    const v6, 0x7f04001f

    invoke-virtual {p0, v6, p2, v8}, Lcom/google/android/finsky/adapters/SearchAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 180
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mSpinnerAdapter:Lcom/google/android/finsky/adapters/SearchSpinnerAdapter;

    if-nez v6, :cond_1

    .line 181
    iget-object v6, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mDfeSearch:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/DfeSearch;->getRelatedSearches()Ljava/util/List;

    move-result-object v3

    .line 182
    .local v3, relatedList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;>;"
    new-instance v6, Lcom/google/android/finsky/adapters/SearchSpinnerAdapter;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, v3}, Lcom/google/android/finsky/adapters/SearchSpinnerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v6, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mSpinnerAdapter:Lcom/google/android/finsky/adapters/SearchSpinnerAdapter;

    .line 185
    .end local v3           #relatedList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;>;"
    :cond_1
    iget-object v6, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mSpinner:Landroid/widget/Spinner;

    if-nez v6, :cond_4

    .line 186
    const v6, 0x7f080061

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mSpinner:Landroid/widget/Spinner;

    .line 187
    iget-object v6, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v8}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 188
    iget-object v6, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mSpinner:Landroid/widget/Spinner;

    iget-object v7, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mSpinnerAdapter:Lcom/google/android/finsky/adapters/SearchSpinnerAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 189
    iget-object v6, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mDfeSearch:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/DfeSearch;->getRelatedSearches()Ljava/util/List;

    move-result-object v4

    .line 190
    .local v4, relatedSearches:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 191
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;

    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->getCurrent()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 192
    iget-object v6, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 196
    :cond_2
    iget-object v6, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mSpinner:Landroid/widget/Spinner;

    invoke-static {v0}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getCorpusSpinnerDrawable(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setBackgroundResource(I)V

    .line 198
    iget-object v6, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mSpinner:Landroid/widget/Spinner;

    new-instance v7, Lcom/google/android/finsky/adapters/SearchAdapter$2;

    invoke-direct {v7, p0}, Lcom/google/android/finsky/adapters/SearchAdapter$2;-><init>(Lcom/google/android/finsky/adapters/SearchAdapter;)V

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 221
    const v6, 0x7f080064

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 222
    .local v1, corpusHeaderStrip:Landroid/view/View;
    if-eqz v1, :cond_3

    .line 223
    iget-object v6, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6, v0}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendHintColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 227
    :cond_3
    const v6, 0x7f080063

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 228
    .local v5, sectionResults:Landroid/view/View;
    if-eqz v5, :cond_4

    .line 229
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 232
    .end local v1           #corpusHeaderStrip:Landroid/view/View;
    .end local v2           #i:I
    .end local v4           #relatedSearches:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;>;"
    .end local v5           #sectionResults:Landroid/view/View;
    :cond_4
    return-object p1

    .line 176
    :cond_5
    const v6, 0x7f04001e

    invoke-virtual {p0, v6, p2, v8}, Lcom/google/android/finsky/adapters/SearchAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto/16 :goto_0

    .line 190
    .restart local v2       #i:I
    .restart local v4       #relatedSearches:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;>;"
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private makeSuggestionClickListener(Ljava/lang/String;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "suggestionString"

    .prologue
    .line 248
    new-instance v0, Lcom/google/android/finsky/adapters/SearchAdapter$3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/adapters/SearchAdapter$3;-><init>(Lcom/google/android/finsky/adapters/SearchAdapter;Ljava/lang/String;)V

    return-object v0
.end method

.method private shouldShowSuggestionHeader()Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mDfeSearch:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeSearch;->getSuggestedQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldShowSwitcher()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 152
    iget-object v1, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mDfeSearch:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeSearch;->getBucketCount()I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mDfeSearch:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeSearch;->getBackendId()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getBucketHeaderLayoutId(Lcom/google/android/finsky/api/model/Bucket;)I
    .locals 1
    .parameter "bucket"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mDfeSearch:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeSearch;->isAggregateResult()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    const v0, 0x7f04001e

    .line 161
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f04001f

    goto :goto_0
.end method

.method public getCount()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 119
    invoke-super {p0}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getCount()I

    move-result v3

    invoke-direct {p0}, Lcom/google/android/finsky/adapters/SearchAdapter;->shouldShowSwitcher()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    invoke-direct {p0}, Lcom/google/android/finsky/adapters/SearchAdapter;->shouldShowSuggestionHeader()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public getItemViewType(I)I
    .locals 6
    .parameter "position"

    .prologue
    const/4 v4, 0x6

    const/4 v1, 0x5

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 89
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/SearchAdapter;->shouldShowSwitcher()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0}, Lcom/google/android/finsky/adapters/SearchAdapter;->shouldShowSuggestionHeader()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 90
    if-nez p1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v1

    .line 92
    :cond_1
    if-ne p1, v2, :cond_3

    move v1, v4

    .line 93
    goto :goto_0

    .line 95
    :cond_2
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/SearchAdapter;->shouldShowSuggestionHeader()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 96
    if-eqz p1, :cond_0

    .line 106
    :cond_3
    move v0, p1

    .line 107
    .local v0, offsetPosition:I
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/SearchAdapter;->shouldShowSwitcher()Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    :goto_1
    sub-int/2addr v0, v1

    .line 108
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/SearchAdapter;->shouldShowSuggestionHeader()Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_2
    sub-int/2addr v0, v2

    .line 109
    invoke-super {p0, v0}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getItemViewType(I)I

    move-result v1

    goto :goto_0

    .line 99
    .end local v0           #offsetPosition:I
    :cond_4
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/SearchAdapter;->shouldShowSwitcher()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 100
    if-nez p1, :cond_3

    move v1, v4

    .line 101
    goto :goto_0

    .restart local v0       #offsetPosition:I
    :cond_5
    move v1, v3

    .line 107
    goto :goto_1

    :cond_6
    move v2, v3

    .line 108
    goto :goto_2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 71
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/SearchAdapter;->getItemViewType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 77
    move v0, p1

    .line 78
    .local v0, offsetPosition:I
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/SearchAdapter;->shouldShowSwitcher()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    sub-int/2addr v0, v1

    .line 79
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/SearchAdapter;->shouldShowSuggestionHeader()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    sub-int/2addr v0, v2

    .line 80
    if-ltz v0, :cond_2

    .line 81
    invoke-super {p0, v0, p2, p3}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .end local v0           #offsetPosition:I
    :goto_2
    return-object v1

    .line 73
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/finsky/adapters/SearchAdapter;->getSuggestionHeaderView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_2

    .line 75
    :pswitch_1
    invoke-direct {p0, p2, p3}, Lcom/google/android/finsky/adapters/SearchAdapter;->getSwitcherHeader(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_2

    .restart local v0       #offsetPosition:I
    :cond_0
    move v1, v3

    .line 78
    goto :goto_0

    :cond_1
    move v2, v3

    .line 79
    goto :goto_1

    .line 83
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uncaught view type=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/SearchAdapter;->getItemViewType(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] position=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x7

    return v0
.end method

.method public isEmpty()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 126
    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/SearchAdapter;->getCount()I

    move-result v0

    .line 127
    .local v0, count:I
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/SearchAdapter;->shouldShowSwitcher()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    sub-int/2addr v0, v1

    .line 128
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/SearchAdapter;->shouldShowSuggestionHeader()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    sub-int/2addr v0, v1

    .line 129
    if-nez v0, :cond_2

    :goto_2
    return v2

    :cond_0
    move v1, v3

    .line 127
    goto :goto_0

    :cond_1
    move v1, v3

    .line 128
    goto :goto_1

    :cond_2
    move v2, v3

    .line 129
    goto :goto_2
.end method

.method protected makeHeaderClickListener(Lcom/google/android/finsky/api/model/Bucket;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "bucket"

    .prologue
    .line 135
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Bucket;->getBrowseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcom/google/android/finsky/adapters/SearchAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/adapters/SearchAdapter$1;-><init>(Lcom/google/android/finsky/adapters/SearchAdapter;Lcom/google/android/finsky/api/model/Bucket;)V

    .line 144
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mSpinner:Landroid/widget/Spinner;

    .line 272
    invoke-super {p0}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->onDestroyView()V

    .line 273
    return-void
.end method

.method public updateAdapterData(Lcom/google/android/finsky/api/model/BucketedList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/api/model/BucketedList",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 281
    .local p1, bucketedList:Lcom/google/android/finsky/api/model/BucketedList;,"Lcom/google/android/finsky/api/model/BucketedList<*>;"
    invoke-super {p0, p1}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->updateAdapterData(Lcom/google/android/finsky/api/model/BucketedList;)V

    .line 282
    check-cast p1, Lcom/google/android/finsky/api/model/DfeSearch;

    .end local p1           #bucketedList:Lcom/google/android/finsky/api/model/BucketedList;,"Lcom/google/android/finsky/api/model/BucketedList<*>;"
    iput-object p1, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mDfeSearch:Lcom/google/android/finsky/api/model/DfeSearch;

    .line 283
    return-void
.end method
