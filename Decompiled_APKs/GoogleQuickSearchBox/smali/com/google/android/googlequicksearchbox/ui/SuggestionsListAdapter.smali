.class public Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SuggestionsListAdapter.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;


# instance fields
.field private mAllDisabled:Z

.field private final mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

.field private mCurrentNumSlots:I

.field private mCurrentNumSuggestions:I

.field private mCurrentSuggestionList:Lcom/google/android/googlequicksearchbox/SuggestionList;

.field private final mDebugging:Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

.field private final mListEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/googlequicksearchbox/ui/ListEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mNumListEntries:I

.field private mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mOnKeyListener:Landroid/view/View$OnKeyListener;

.field private mRelativeDistanceFromFirstSuggestion:I

.field private mSeparatorFirst:Z

.field private mShowRemoveFromHistoryButtons:Z

.field private mSuggestionClickListener:Lcom/google/android/googlequicksearchbox/ui/SuggestionClickListener;

.field private final mViewFactory:Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;

.field private final mViewTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/QsbContext;Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;)V
    .locals 1
    .parameter "context"
    .parameter "viewFactory"
    .parameter "debugging"

    .prologue
    .line 94
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mSeparatorFirst:Z

    .line 95
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    .line 96
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mViewFactory:Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;

    .line 97
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mDebugging:Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

    .line 98
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mListEntries:Ljava/util/List;

    .line 99
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mViewTypeMap:Ljava/util/Map;

    .line 100
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mViewFactory:Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;->getViewTypes()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->addViewTypes(Ljava/util/Collection;)V

    .line 101
    return-void
.end method

.method private addViewTypes(Ljava/util/Collection;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 297
    .local p1, viewTypes:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 298
    .local v1, viewType:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mViewTypeMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 299
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mViewTypeMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mViewTypeMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 302
    .end local v1           #viewType:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private getSeparator(Lcom/google/android/googlequicksearchbox/Suggestion;Lcom/google/android/googlequicksearchbox/Suggestion;)Lcom/google/android/googlequicksearchbox/ui/ListEntry;
    .locals 3
    .parameter "suggestion"
    .parameter "prevSuggestion"

    .prologue
    .line 266
    invoke-direct {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->getSuggestionGrouping(Lcom/google/android/googlequicksearchbox/Suggestion;Lcom/google/android/googlequicksearchbox/Suggestion;)Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;

    move-result-object v1

    sget-object v2, Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;->WITHIN_GROUP:Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;

    if-ne v1, v2, :cond_0

    .line 267
    sget-object v1, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->SEP_WITHIN_GROUP:Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    .line 273
    :goto_0
    return-object v1

    .line 269
    :cond_0
    if-nez p1, :cond_2

    move-object v0, p2

    .line 270
    .local v0, s:Lcom/google/android/googlequicksearchbox/Suggestion;
    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Suggestion;->isWebSearchSuggestion()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 271
    :cond_1
    sget-object v1, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->SEP_WEB:Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    goto :goto_0

    .end local v0           #s:Lcom/google/android/googlequicksearchbox/Suggestion;
    :cond_2
    move-object v0, p1

    .line 269
    goto :goto_1

    .line 273
    .restart local v0       #s:Lcom/google/android/googlequicksearchbox/Suggestion;
    :cond_3
    sget-object v1, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->SEP_SUMMONS:Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    goto :goto_0
.end method

.method private getSuggestionGrouping(Lcom/google/android/googlequicksearchbox/Suggestion;Lcom/google/android/googlequicksearchbox/Suggestion;)Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;
    .locals 2
    .parameter "suggestion"
    .parameter "prev"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbContext;->getApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Config;->shouldGroupSimilarSuggestions()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 252
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionSource()Lcom/google/android/googlequicksearchbox/Source;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionSource()Lcom/google/android/googlequicksearchbox/Source;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionSource()Lcom/google/android/googlequicksearchbox/Source;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIcon1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIcon1()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    sget-object v0, Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;->WITHIN_GROUP:Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;

    .line 258
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;->NONE:Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;

    goto :goto_0
.end method

.method private populateListEntries(Lcom/google/android/googlequicksearchbox/SuggestionList;II)V
    .locals 10
    .parameter "suggestionList"
    .parameter "numSuggestions"
    .parameter "numSlots"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 200
    iget-object v7, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mListEntries:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 202
    iget-boolean v7, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mSeparatorFirst:Z

    if-eqz v7, :cond_0

    .line 204
    iget-object v7, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mListEntries:Ljava/util/List;

    sget-object v8, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->SEP_FIRST:Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_0
    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getCount()I

    move-result v7

    invoke-static {p2, v7}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 208
    const/4 v1, 0x0

    .line 209
    .local v1, prevSuggestion:Lcom/google/android/googlequicksearchbox/Suggestion;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p3, :cond_4

    .line 210
    const/4 v4, 0x0

    .line 211
    .local v4, suggestion:Lcom/google/android/googlequicksearchbox/Suggestion;
    if-ge v0, p2, :cond_1

    .line 212
    invoke-interface {p1, v0}, Lcom/google/android/googlequicksearchbox/SuggestionList;->get(I)Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v4

    .line 214
    :cond_1
    if-lez v0, :cond_2

    .line 215
    invoke-direct {p0, v4, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->getSeparator(Lcom/google/android/googlequicksearchbox/Suggestion;Lcom/google/android/googlequicksearchbox/Suggestion;)Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    move-result-object v2

    .line 216
    .local v2, separator:Lcom/google/android/googlequicksearchbox/ui/ListEntry;
    if-eqz v2, :cond_2

    .line 217
    iget-object v7, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mListEntries:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    .end local v2           #separator:Lcom/google/android/googlequicksearchbox/ui/ListEntry;
    :cond_2
    if-eqz v4, :cond_3

    .line 221
    iget-object v7, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mListEntries:Ljava/util/List;

    new-instance v8, Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    invoke-direct {p0, v4, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->getSuggestionGrouping(Lcom/google/android/googlequicksearchbox/Suggestion;Lcom/google/android/googlequicksearchbox/Suggestion;)Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;

    move-result-object v9

    invoke-direct {v8, p1, v0, v9}, Lcom/google/android/googlequicksearchbox/ui/ListEntry;-><init>(Lcom/google/android/googlequicksearchbox/SuggestionList;ILcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    move-object v1, v4

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 227
    :cond_3
    if-nez v0, :cond_6

    move v3, v5

    .line 228
    .local v3, showSpinner:Z
    :goto_1
    iget-object v7, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mListEntries:Ljava/util/List;

    new-instance v8, Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    sub-int v9, p3, v0

    invoke-direct {v8, v9, v3}, Lcom/google/android/googlequicksearchbox/ui/ListEntry;-><init>(IZ)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    .end local v3           #showSpinner:Z
    .end local v4           #suggestion:Lcom/google/android/googlequicksearchbox/Suggestion;
    :cond_4
    iget-boolean v7, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mSeparatorFirst:Z

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mListEntries:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v5, :cond_5

    .line 236
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mListEntries:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 241
    :cond_5
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mListEntries:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iput v5, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mNumListEntries:I

    .line 242
    return-void

    .restart local v4       #suggestion:Lcom/google/android/googlequicksearchbox/Suggestion;
    :cond_6
    move v3, v6

    .line 227
    goto :goto_1
.end method

.method private showSuggestionsInternal(Lcom/google/android/googlequicksearchbox/SuggestionList;IIZZ)V
    .locals 1
    .parameter "newList"
    .parameter "numSuggestions"
    .parameter "numSlots"
    .parameter "disabled"
    .parameter "showRemoveFromHistoryButtons"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mCurrentSuggestionList:Lcom/google/android/googlequicksearchbox/SuggestionList;

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mCurrentNumSuggestions:I

    if-ne v0, p2, :cond_1

    iget v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mCurrentNumSlots:I

    if-ne v0, p3, :cond_1

    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mAllDisabled:Z

    if-ne v0, p4, :cond_1

    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mShowRemoveFromHistoryButtons:Z

    if-ne v0, p5, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mCurrentSuggestionList:Lcom/google/android/googlequicksearchbox/SuggestionList;

    if-nez v0, :cond_2

    if-nez p2, :cond_2

    if-eqz p3, :cond_0

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mCurrentSuggestionList:Lcom/google/android/googlequicksearchbox/SuggestionList;

    if-ne p1, v0, :cond_3

    iget v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mCurrentNumSuggestions:I

    if-ne p2, v0, :cond_3

    iget v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mCurrentNumSlots:I

    if-eq p3, v0, :cond_4

    .line 187
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->populateListEntries(Lcom/google/android/googlequicksearchbox/SuggestionList;II)V

    .line 189
    :cond_4
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mCurrentSuggestionList:Lcom/google/android/googlequicksearchbox/SuggestionList;

    .line 190
    iput p2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mCurrentNumSuggestions:I

    .line 191
    iput p3, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mCurrentNumSlots:I

    .line 192
    iput-boolean p4, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mAllDisabled:Z

    .line 193
    iput-boolean p5, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mShowRemoveFromHistoryButtons:Z

    .line 194
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 363
    const/4 v0, 0x0

    return v0
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 114
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mListEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 115
    iput v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mNumListEntries:I

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mCurrentSuggestionList:Lcom/google/android/googlequicksearchbox/SuggestionList;

    .line 117
    iput v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mCurrentNumSuggestions:I

    .line 118
    iput v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mCurrentNumSlots:I

    .line 119
    iput-boolean v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mAllDisabled:Z

    .line 120
    iput-boolean v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mShowRemoveFromHistoryButtons:Z

    .line 121
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->notifyDataSetChanged()V

    .line 122
    return-void
.end method

.method public getAbsoluteClickPosition(Lcom/google/android/googlequicksearchbox/ui/ListEntry;)I
    .locals 2
    .parameter "entry"

    .prologue
    .line 378
    iget v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mRelativeDistanceFromFirstSuggestion:I

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->getSuggestionPosition()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mNumListEntries:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 338
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->getListEntry(J)Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 343
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 5
    .parameter "position"

    .prologue
    .line 348
    int-to-long v2, p1

    invoke-virtual {p0, v2, v3}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->getListEntry(J)Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    move-result-object v0

    .line 349
    .local v0, entry:Lcom/google/android/googlequicksearchbox/ui/ListEntry;
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mViewFactory:Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;

    invoke-interface {v2, v0}, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;->getViewType(Lcom/google/android/googlequicksearchbox/ui/ListEntry;)Ljava/lang/String;

    move-result-object v1

    .line 350
    .local v1, viewType:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mViewTypeMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 351
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown viewType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 353
    :cond_0
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mViewTypeMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2
.end method

.method public getListEntry(J)Lcom/google/android/googlequicksearchbox/ui/ListEntry;
    .locals 3
    .parameter "position"

    .prologue
    .line 143
    iget v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mNumListEntries:I

    int-to-long v0, v0

    cmp-long v0, v0, p1

    if-gtz v0, :cond_0

    .line 144
    const-string v0, "QSB.SuggestionsListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Returning dummy suggestion view for stale position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    sget-object v0, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->DUMMY:Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    .line 147
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mListEntries:Ljava/util/List;

    long-to-int v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    goto :goto_0
.end method

.method public getSuggestionFormatter()Lcom/google/android/googlequicksearchbox/SuggestionFormatter;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbContext;->getApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSuggestionFormatter()Lcom/google/android/googlequicksearchbox/SuggestionFormatter;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 316
    int-to-long v5, p1

    invoke-virtual {p0, v5, v6}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->getListEntry(J)Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    move-result-object v0

    .line 317
    .local v0, entry:Lcom/google/android/googlequicksearchbox/ui/ListEntry;
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mViewFactory:Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;

    invoke-interface {v5, v0, p2, p3}, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;->getView(Lcom/google/android/googlequicksearchbox/ui/ListEntry;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 318
    .local v3, v:Landroid/view/View;
    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->isSuggestion()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 319
    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->getSuggestion()Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v1

    .line 320
    .local v1, s:Lcom/google/android/googlequicksearchbox/Suggestion;
    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->getSuggestionList()Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getUserQuery()Ljava/lang/String;

    move-result-object v2

    .local v2, userQuery:Ljava/lang/String;
    move-object v4, v3

    .line 321
    check-cast v4, Lcom/google/android/googlequicksearchbox/ui/SuggestionView;

    .line 322
    .local v4, view:Lcom/google/android/googlequicksearchbox/ui/SuggestionView;
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mDebugging:Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

    invoke-interface {v4, v5}, Lcom/google/android/googlequicksearchbox/ui/SuggestionView;->setDebugging(Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;)V

    .line 323
    invoke-interface {v4, p0, p1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionView;->bindAdapter(Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;I)V

    .line 324
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    iget-boolean v6, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mShowRemoveFromHistoryButtons:Z

    invoke-interface {v4, v5, v1, v2, v6}, Lcom/google/android/googlequicksearchbox/ui/SuggestionView;->bindAsSuggestion(Lcom/google/android/googlequicksearchbox/QsbContext;Lcom/google/android/googlequicksearchbox/Suggestion;Ljava/lang/String;Z)Z

    .line 325
    iget-boolean v5, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mAllDisabled:Z

    invoke-interface {v4, v5}, Lcom/google/android/googlequicksearchbox/ui/SuggestionView;->setFadedOut(Z)V

    .line 326
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    if-eqz v5, :cond_0

    .line 327
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 329
    :cond_0
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    if-eqz v5, :cond_1

    .line 330
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 333
    .end local v1           #s:Lcom/google/android/googlequicksearchbox/Suggestion;
    .end local v2           #userQuery:Ljava/lang/String;
    .end local v4           #view:Lcom/google/android/googlequicksearchbox/ui/SuggestionView;
    :cond_1
    return-object v3
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mViewTypeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mNumListEntries:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 368
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->getListEntry(J)Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->isSuggestion()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mAllDisabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mDebugging:Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;->listAdapterNotified()V

    .line 153
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 154
    return-void
.end method

.method public onSuggestionClicked(J)V
    .locals 1
    .parameter "suggestionId"

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mSuggestionClickListener:Lcom/google/android/googlequicksearchbox/ui/SuggestionClickListener;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mSuggestionClickListener:Lcom/google/android/googlequicksearchbox/ui/SuggestionClickListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/google/android/googlequicksearchbox/ui/SuggestionClickListener;->onSuggestionClicked(Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;J)V

    .line 282
    :cond_0
    return-void
.end method

.method public onSuggestionQueryRefineClicked(J)V
    .locals 1
    .parameter "suggestionId"

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mSuggestionClickListener:Lcom/google/android/googlequicksearchbox/ui/SuggestionClickListener;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mSuggestionClickListener:Lcom/google/android/googlequicksearchbox/ui/SuggestionClickListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/google/android/googlequicksearchbox/ui/SuggestionClickListener;->onSuggestionQueryRefineClicked(Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;J)V

    .line 294
    :cond_0
    return-void
.end method

.method public onSuggestionRemoveFromHistoryClicked(J)V
    .locals 1
    .parameter "suggestionId"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mSuggestionClickListener:Lcom/google/android/googlequicksearchbox/ui/SuggestionClickListener;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mSuggestionClickListener:Lcom/google/android/googlequicksearchbox/ui/SuggestionClickListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/google/android/googlequicksearchbox/ui/SuggestionClickListener;->onSuggestionRemoveFromHistoryClicked(Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;J)V

    .line 288
    :cond_0
    return-void
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Can\'t reset key listener"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 311
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    .line 312
    return-void

    .line 310
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRelativeDistanceFromFirstSuggestion(I)V
    .locals 0
    .parameter "relativeDistanceFromFirstSuggestion"

    .prologue
    .line 373
    iput p1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mRelativeDistanceFromFirstSuggestion:I

    .line 374
    return-void
.end method

.method public setSeparatorFirst(Z)V
    .locals 0
    .parameter "separatorFirst"

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mSeparatorFirst:Z

    .line 105
    return-void
.end method

.method public setSuggestionClickListener(Lcom/google/android/googlequicksearchbox/ui/SuggestionClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mSuggestionClickListener:Lcom/google/android/googlequicksearchbox/ui/SuggestionClickListener;

    .line 132
    return-void
.end method

.method public showSuggestions(Lcom/google/android/googlequicksearchbox/SuggestionList;IIZ)V
    .locals 6
    .parameter "newList"
    .parameter "numSuggestions"
    .parameter "numSlots"
    .parameter "showRemoveFromHistoryButtons"

    .prologue
    .line 158
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->showSuggestionsInternal(Lcom/google/android/googlequicksearchbox/SuggestionList;IIZZ)V

    .line 160
    return-void
.end method

.method public showSuggestionsDisabled(Lcom/google/android/googlequicksearchbox/SuggestionList;IIZ)V
    .locals 6
    .parameter "newList"
    .parameter "numSuggestions"
    .parameter "numSlots"
    .parameter "showRemoveFromHistoryButtons"

    .prologue
    .line 164
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->showSuggestionsInternal(Lcom/google/android/googlequicksearchbox/SuggestionList;IIZZ)V

    .line 166
    return-void
.end method
