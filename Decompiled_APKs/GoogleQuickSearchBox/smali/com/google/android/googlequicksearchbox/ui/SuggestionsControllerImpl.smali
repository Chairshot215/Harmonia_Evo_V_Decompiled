.class public Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;
.super Ljava/lang/Object;
.source "SuggestionsControllerImpl.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$MySuggestionsObserver;,
        Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;
    }
.end annotation


# instance fields
.field private final mAdapters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;",
            "Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mDelayingNewSuggestions:Z

.field private mIsEmptyQuery:Z

.field private mMaxDisplayDelayMillis:J

.field private final mPromoters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;",
            "Lcom/google/android/googlequicksearchbox/CachingPromoter;",
            ">;"
        }
    .end annotation
.end field

.field protected mShowRemoveFromHistoryButtons:Z

.field private mShowRemoveFromHistoryButtonsDelay:J

.field private final mShowRemoveFromHistoryTask:Ljava/lang/Runnable;

.field private final mShownSuggestions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;",
            "Lcom/google/android/googlequicksearchbox/SuggestionList;",
            ">;"
        }
    .end annotation
.end field

.field protected mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

.field final mSuggestionsObserver:Landroid/database/DataSetObserver;

.field private final mUiThread:Landroid/os/Handler;

.field private final mUpdatingObserver:Lcom/google/android/googlequicksearchbox/ui/SuggestionsUpdatingObserver;

.field private mUpdatingShown:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/googlequicksearchbox/ui/SuggestionsUpdatingObserver;)V
    .locals 2
    .parameter "uiThread"
    .parameter "observer"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$MySuggestionsObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$MySuggestionsObserver;-><init>(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$1;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mSuggestionsObserver:Landroid/database/DataSetObserver;

    .line 65
    new-instance v0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$1;-><init>(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mShowRemoveFromHistoryTask:Ljava/lang/Runnable;

    .line 92
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mUiThread:Landroid/os/Handler;

    .line 93
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mUpdatingObserver:Lcom/google/android/googlequicksearchbox/ui/SuggestionsUpdatingObserver;

    .line 94
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mPromoters:Ljava/util/Map;

    .line 95
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mAdapters:Ljava/util/Map;

    .line 96
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mShownSuggestions:Ljava/util/Map;

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mIsEmptyQuery:Z

    .line 98
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mDelayingNewSuggestions:Z

    return v0
.end method

.method static synthetic access$102(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mDelayingNewSuggestions:Z

    return p1
.end method

.method private scheduleShowRemoveFromHistoryButtons()V
    .locals 4

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mUiThread:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mShowRemoveFromHistoryTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 251
    iget-wide v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mShowRemoveFromHistoryButtonsDelay:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mUiThread:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mShowRemoveFromHistoryTask:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mShowRemoveFromHistoryButtonsDelay:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 254
    :cond_0
    return-void
.end method

.method private shouldPublish(Lcom/google/android/googlequicksearchbox/Suggestions;ZLcom/google/android/googlequicksearchbox/SuggestionList;)Z
    .locals 1
    .parameter "suggestions"
    .parameter "done"
    .parameter "list"

    .prologue
    .line 269
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestions;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    invoke-interface {p3}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startDelayTimer(Lcom/google/android/googlequicksearchbox/Suggestions;)V
    .locals 4
    .parameter "suggestions"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mUiThread:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$2;-><init>(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;Lcom/google/android/googlequicksearchbox/Suggestions;)V

    iget-wide v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mMaxDisplayDelayMillis:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 198
    return-void
.end method


# virtual methods
.method delayTimerExpired(Lcom/google/android/googlequicksearchbox/Suggestions;)V
    .locals 1
    .parameter "suggestions"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mDelayingNewSuggestions:Z

    if-eqz v0, :cond_0

    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mDelayingNewSuggestions:Z

    .line 204
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->updateViews()V

    .line 206
    :cond_0
    return-void
.end method

.method protected getAdapter(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;)Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;
    .locals 1
    .parameter "type"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mAdapters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    return-object v0
.end method

.method protected getPromoted(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;)Lcom/google/android/googlequicksearchbox/SuggestionList;
    .locals 2
    .parameter "viewType"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mPromoters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/googlequicksearchbox/CachingPromoter;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mShownSuggestions:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/googlequicksearchbox/SuggestionList;

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/CachingPromoter;->getPromoted(Lcom/google/android/googlequicksearchbox/SuggestionList;)Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v0

    return-object v0
.end method

.method public getPromotedSuggestions()Lcom/google/android/googlequicksearchbox/SuggestionList;
    .locals 1

    .prologue
    .line 215
    sget-object v0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;->SUGGESTIONS:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->getPromoted(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;)Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestions()Lcom/google/android/googlequicksearchbox/Suggestions;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    return-object v0
.end method

.method protected getSummonsDistanceFromFirstSuggestion()I
    .locals 1

    .prologue
    .line 329
    const/4 v0, 0x1

    return v0
.end method

.method protected isEmptyQuery()Z
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mIsEmptyQuery:Z

    return v0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mUiThread:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mShowRemoveFromHistoryTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    .line 108
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mShownSuggestions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 109
    return-void
.end method

.method public setMaxDisplayDelayMillis(J)V
    .locals 0
    .parameter "maxDisplayDelayMillis"

    .prologue
    .line 133
    iput-wide p1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mMaxDisplayDelayMillis:J

    .line 134
    return-void
.end method

.method public setNumVisibleSuggestions(II)V
    .locals 0
    .parameter "orientation"
    .parameter "numVisibleSuggestions"

    .prologue
    .line 143
    return-void
.end method

.method public setShowRemoveFromHistoryButtonsDelay(J)V
    .locals 0
    .parameter "delay"

    .prologue
    .line 138
    iput-wide p1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mShowRemoveFromHistoryButtonsDelay:J

    .line 139
    return-void
.end method

.method public setSuggestions(Lcom/google/android/googlequicksearchbox/Suggestions;)V
    .locals 8
    .parameter "suggestions"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 148
    invoke-static {}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkThread()V

    .line 149
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    if-ne p1, v4, :cond_0

    .line 190
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mPromoters:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/googlequicksearchbox/CachingPromoter;

    .line 154
    .local v1, promoter:Lcom/google/android/googlequicksearchbox/CachingPromoter;
    invoke-virtual {v1, p1}, Lcom/google/android/googlequicksearchbox/CachingPromoter;->setSuggestions(Lcom/google/android/googlequicksearchbox/Suggestions;)V

    goto :goto_1

    .line 157
    .end local v1           #promoter:Lcom/google/android/googlequicksearchbox/CachingPromoter;
    :cond_1
    iget-wide v4, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mShowRemoveFromHistoryButtonsDelay:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_8

    .line 159
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v4}, Lcom/google/android/googlequicksearchbox/Suggestions;->getQuery()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestions;->getQuery()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 163
    :cond_2
    iput-boolean v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mShowRemoveFromHistoryButtons:Z

    .line 170
    :cond_3
    :goto_2
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    .line 171
    iput-boolean v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mUpdatingShown:Z

    .line 172
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mUiThread:Landroid/os/Handler;

    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mShowRemoveFromHistoryTask:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 174
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v4}, Lcom/google/android/googlequicksearchbox/Suggestions;->getQuery()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    move v2, v3

    :cond_5
    iput-boolean v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mIsEmptyQuery:Z

    .line 175
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    if-eqz v2, :cond_6

    .line 180
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mSuggestionsObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v2, v4}, Lcom/google/android/googlequicksearchbox/Suggestions;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 183
    :cond_6
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestions;->isDone()Z

    move-result v2

    if-nez v2, :cond_7

    iget-wide v4, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mMaxDisplayDelayMillis:J

    cmp-long v2, v4, v6

    if-nez v2, :cond_9

    .line 184
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->updateViews()V

    goto :goto_0

    .line 167
    :cond_8
    iput-boolean v3, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mShowRemoveFromHistoryButtons:Z

    goto :goto_2

    .line 186
    :cond_9
    iput-boolean v3, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mDelayingNewSuggestions:Z

    .line 187
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->startDelayTimer(Lcom/google/android/googlequicksearchbox/Suggestions;)V

    .line 188
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->updateObserver()V

    goto :goto_0
.end method

.method public setSuggestionsView(Lcom/google/android/googlequicksearchbox/CachingPromoter;Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;)V
    .locals 2
    .parameter "promoter"
    .parameter "adapter"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mPromoters:Ljava/util/Map;

    sget-object v1, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;->SUGGESTIONS:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Can\'t reset suggestions view"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mPromoters:Ljava/util/Map;

    sget-object v1, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;->SUGGESTIONS:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mAdapters:Ljava/util/Map;

    sget-object v1, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;->SUGGESTIONS:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    return-void

    .line 117
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSummonsView(Lcom/google/android/googlequicksearchbox/CachingPromoter;Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;)V
    .locals 2
    .parameter "promoter"
    .parameter "adapter"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mPromoters:Ljava/util/Map;

    sget-object v1, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;->SUMMONS:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Can\'t reset summons view"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mPromoters:Ljava/util/Map;

    sget-object v1, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;->SUMMONS:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mAdapters:Ljava/util/Map;

    sget-object v1, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;->SUMMONS:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    return-void

    .line 125
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldShowRemoveFromHistoryButtons(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;)Z
    .locals 1
    .parameter "viewType"

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mShowRemoveFromHistoryButtons:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;->SUGGESTIONS:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected showSuggestions(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;Lcom/google/android/googlequicksearchbox/SuggestionList;)V
    .locals 2
    .parameter "viewType"
    .parameter "suggestions"

    .prologue
    .line 277
    invoke-interface {p2}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getCount()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->shouldShowRemoveFromHistoryButtons(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;)Z

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->showSuggestions(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;Lcom/google/android/googlequicksearchbox/SuggestionList;IZ)V

    .line 279
    return-void
.end method

.method protected showSuggestions(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;Lcom/google/android/googlequicksearchbox/SuggestionList;IZ)V
    .locals 2
    .parameter "viewType"
    .parameter "suggestions"
    .parameter "numSlots"
    .parameter "showRemoveFromHistoryButtons"

    .prologue
    .line 285
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mShownSuggestions:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mAdapters:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    .line 288
    .local v0, adapter:Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;
    invoke-interface {p2}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getCount()I

    move-result v1

    invoke-interface {v0, p2, v1, p3, p4}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;->showSuggestions(Lcom/google/android/googlequicksearchbox/SuggestionList;IIZ)V

    .line 291
    sget-object v1, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;->SUMMONS:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;

    if-ne p1, v1, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->getSummonsDistanceFromFirstSuggestion()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;->setRelativeDistanceFromFirstSuggestion(I)V

    .line 294
    :cond_0
    return-void
.end method

.method protected showSuggestionsDisabled(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;Lcom/google/android/googlequicksearchbox/SuggestionList;IIZ)V
    .locals 1
    .parameter "viewType"
    .parameter "suggestions"
    .parameter "numSuggestions"
    .parameter "numSlots"
    .parameter "showRemoveFromHistoryButtons"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mShownSuggestions:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->getAdapter(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;)Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    move-result-object v0

    invoke-interface {v0, p2, p3, p4, p5}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;->showSuggestionsDisabled(Lcom/google/android/googlequicksearchbox/SuggestionList;IIZ)V

    .line 303
    return-void
.end method

.method protected updateObserver()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 234
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mUpdatingObserver:Lcom/google/android/googlequicksearchbox/ui/SuggestionsUpdatingObserver;

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Suggestions;->isDone()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mUpdatingObserver:Lcom/google/android/googlequicksearchbox/ui/SuggestionsUpdatingObserver;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsUpdatingObserver;->setSuggestionsUpdating(Z)V

    .line 237
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mUpdatingObserver:Lcom/google/android/googlequicksearchbox/ui/SuggestionsUpdatingObserver;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsUpdatingObserver;->onSuggestionsDone(Lcom/google/android/googlequicksearchbox/Suggestions;)V

    .line 239
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->scheduleShowRemoveFromHistoryButtons()V

    .line 247
    :cond_1
    :goto_0
    return-void

    .line 241
    :cond_2
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Suggestions;->areSourcesDone()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Suggestions;->areWebResultsDone()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mUpdatingShown:Z

    if-nez v0, :cond_1

    .line 243
    iput-boolean v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mUpdatingShown:Z

    .line 244
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mUpdatingObserver:Lcom/google/android/googlequicksearchbox/ui/SuggestionsUpdatingObserver;

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsUpdatingObserver;->setSuggestionsUpdating(Z)V

    goto :goto_0
.end method

.method protected updateView(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;)V
    .locals 3
    .parameter "viewType"

    .prologue
    .line 257
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->getPromoted(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;)Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v1

    .line 258
    .local v1, promoted:Lcom/google/android/googlequicksearchbox/SuggestionList;
    sget-object v2, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;->SUGGESTIONS:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Suggestions;->areWebResultsDone()Z

    move-result v0

    .line 260
    .local v0, done:Z
    :goto_0
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->shouldPublish(Lcom/google/android/googlequicksearchbox/Suggestions;ZLcom/google/android/googlequicksearchbox/SuggestionList;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 261
    invoke-virtual {p0, p1, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->showSuggestions(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;Lcom/google/android/googlequicksearchbox/SuggestionList;)V

    .line 263
    :cond_0
    return-void

    .line 258
    .end local v0           #done:Z
    :cond_1
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Suggestions;->areSourcesDone()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Suggestions;->areShortcutsDone()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateViews()V
    .locals 3

    .prologue
    .line 223
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mPromoters:Ljava/util/Map;

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

    check-cast v1, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;

    .line 224
    .local v1, viewType:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;
    invoke-virtual {p0, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->updateView(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;)V

    goto :goto_0

    .line 226
    .end local v1           #viewType:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->updateObserver()V

    .line 227
    return-void
.end method
