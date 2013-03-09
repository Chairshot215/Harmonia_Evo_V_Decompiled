.class public Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;
.super Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;
.source "SuggestionsControllerImplPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone$NumVisibleSlots;
    }
.end annotation


# instance fields
.field private final mClock:Lcom/google/android/googlequicksearchbox/Clock;

.field private final mConfig:Lcom/google/android/googlequicksearchbox/Config;

.field private mCurrentNumVisibleSlots:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone$NumVisibleSlots;

.field private mMinimumSuggestionsAboveSummons:I

.field private mNumVisibleSlots:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone$NumVisibleSlots;",
            ">;"
        }
    .end annotation
.end field

.field private mNumWebSuggestions:I

.field private final mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

.field private mShowingRemoveFromHistoryButtons:Z

.field private mShowingResultsForEmptyQuery:Z

.field private mShownWebSuggestions:Lcom/google/android/googlequicksearchbox/SuggestionList;

.field private mShownWebSuggestonsCount:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/Clock;Lcom/google/android/googlequicksearchbox/SearchSettings;Lcom/google/android/googlequicksearchbox/ui/SuggestionsUpdatingObserver;)V
    .locals 2
    .parameter "uiThread"
    .parameter "config"
    .parameter "clock"
    .parameter "settings"
    .parameter "observer"

    .prologue
    .line 83
    invoke-direct {p0, p1, p5}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;-><init>(Landroid/os/Handler;Lcom/google/android/googlequicksearchbox/ui/SuggestionsUpdatingObserver;)V

    .line 84
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    .line 85
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mClock:Lcom/google/android/googlequicksearchbox/Clock;

    .line 86
    iput-object p4, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mShowingResultsForEmptyQuery:Z

    .line 88
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mNumVisibleSlots:Ljava/util/Map;

    .line 89
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Config;->getMinimumSuggestionsAboveSummons()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Config;->getMaximumSuggestionsAboveSummons()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mMinimumSuggestionsAboveSummons:I

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;)Lcom/google/android/googlequicksearchbox/Clock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mClock:Lcom/google/android/googlequicksearchbox/Clock;

    return-object v0
.end method

.method private adjustWebSuggestionsCount()V
    .locals 3

    .prologue
    .line 195
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Suggestions;->isDone()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 199
    sget-object v2, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;->SUMMONS:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;

    invoke-virtual {p0, v2}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->getPromoted(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;)Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getCount()I

    move-result v1

    .line 200
    .local v1, numSummons:I
    if-nez v1, :cond_1

    .line 201
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Config;->getMaxPromotedSuggestions()I

    move-result v2

    iput v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mNumWebSuggestions:I

    .line 210
    .end local v1           #numSummons:I
    :goto_0
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Suggestions;->areWebResultsDone()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    sget-object v2, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;->SUGGESTIONS:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;

    invoke-virtual {p0, v2}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->getPromoted(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;)Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getCount()I

    move-result v0

    .line 215
    .local v0, numSuggestions:I
    iget v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mNumWebSuggestions:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mNumWebSuggestions:I

    .line 218
    .end local v0           #numSuggestions:I
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->isEmptyQuery()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mShowingResultsForEmptyQuery:Z

    .line 221
    return-void

    .line 203
    .restart local v1       #numSummons:I
    :cond_1
    iget v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mMinimumSuggestionsAboveSummons:I

    iput v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mNumWebSuggestions:I

    goto :goto_0

    .line 208
    .end local v1           #numSummons:I
    :cond_2
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->getNumberOfWebSuggestionsToShow()I

    move-result v2

    iput v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mNumWebSuggestions:I

    goto :goto_0
.end method

.method private getNumberOfWebSuggestionsToShow()I
    .locals 3

    .prologue
    .line 227
    const/4 v0, 0x0

    .line 228
    .local v0, toShow:I
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Suggestions;->getWebSource()Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    move-result-object v1

    if-nez v1, :cond_3

    .line 258
    :cond_0
    :goto_0
    iget v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mNumWebSuggestions:I

    if-ge v0, v1, :cond_2

    sget-object v1, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;->SUMMONS:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;

    invoke-virtual {p0, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->getPromoted(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;)Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Suggestions;->areSourcesDone()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Suggestions;->areShortcutsDone()Z

    move-result v1

    if-nez v1, :cond_2

    .line 263
    :cond_1
    iget v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mNumWebSuggestions:I

    .line 266
    :cond_2
    return v0

    .line 231
    :cond_3
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Suggestions;->getWebSource()Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/googlequicksearchbox/google/GoogleSource;->canQueryNow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->isEmptyQuery()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 239
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Suggestions;->getWebSource()Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/googlequicksearchbox/google/GoogleSource;->isLikelyToReturnZeroQueryResults()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mNumWebSuggestions:I

    iget v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mMinimumSuggestionsAboveSummons:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_1
    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 242
    :cond_5
    iget-boolean v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mShowingResultsForEmptyQuery:Z

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->isEmptyQuery()Z

    move-result v1

    if-nez v1, :cond_6

    .line 246
    iget v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mNumWebSuggestions:I

    iget v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mMinimumSuggestionsAboveSummons:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 248
    :cond_6
    sget-object v1, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;->SUMMONS:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;

    invoke-virtual {p0, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->getPromoted(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;)Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getCount()I

    move-result v1

    if-lez v1, :cond_7

    .line 251
    iget v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mNumWebSuggestions:I

    iget v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mMinimumSuggestionsAboveSummons:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 255
    :cond_7
    iget v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mNumWebSuggestions:I

    goto :goto_0
.end method

.method private updateMinSuggestionsAboveSummons()Z
    .locals 4

    .prologue
    .line 166
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mCurrentNumVisibleSlots:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone$NumVisibleSlots;

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mCurrentNumVisibleSlots:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone$NumVisibleSlots;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone$NumVisibleSlots;->get()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Config;->getMinimumVisibleSummons()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Config;->getMinimumSuggestionsAboveSummons()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v3}, Lcom/google/android/googlequicksearchbox/Config;->getMaximumSuggestionsAboveSummons()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/google/android/googlequicksearchbox/util/Util;->clip(III)I

    move-result v0

    .line 171
    .local v0, min:I
    iget v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mMinimumSuggestionsAboveSummons:I

    if-eq v0, v1, :cond_0

    .line 174
    iput v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mMinimumSuggestionsAboveSummons:I

    .line 175
    const/4 v1, 0x1

    .line 178
    .end local v0           #min:I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateWebSuggestions()V
    .locals 7

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->adjustWebSuggestionsCount()V

    .line 126
    sget-object v0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;->SUGGESTIONS:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->getPromoted(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;)Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v6

    .line 127
    .local v6, webSuggestions:Lcom/google/android/googlequicksearchbox/SuggestionList;
    iget v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mNumWebSuggestions:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Suggestions;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v6}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mShownWebSuggestions:Lcom/google/android/googlequicksearchbox/SuggestionList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mShownWebSuggestions:Lcom/google/android/googlequicksearchbox/SuggestionList;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 132
    sget-object v1, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;->SUGGESTIONS:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mShownWebSuggestions:Lcom/google/android/googlequicksearchbox/SuggestionList;

    iget v3, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mShownWebSuggestonsCount:I

    iget v4, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mNumWebSuggestions:I

    iget-boolean v5, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mShowingRemoveFromHistoryButtons:Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->showSuggestionsDisabled(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;Lcom/google/android/googlequicksearchbox/SuggestionList;IIZ)V

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Suggestions;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    iput-object v6, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mShownWebSuggestions:Lcom/google/android/googlequicksearchbox/SuggestionList;

    .line 137
    iget v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mNumWebSuggestions:I

    iput v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mShownWebSuggestonsCount:I

    .line 140
    sget-object v0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;->SUMMONS:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->getAdapter(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;)Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    move-result-object v1

    iget v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mShownWebSuggestonsCount:I

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v1, v0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;->setSeparatorFirst(Z)V

    .line 142
    sget-object v0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;->SUGGESTIONS:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->shouldShowRemoveFromHistoryButtons(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mShowingRemoveFromHistoryButtons:Z

    .line 144
    sget-object v0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;->SUGGESTIONS:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;

    iget v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mNumWebSuggestions:I

    iget-boolean v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mShowingRemoveFromHistoryButtons:Z

    invoke-virtual {p0, v0, v6, v1, v2}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->showSuggestions(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;Lcom/google/android/googlequicksearchbox/SuggestionList;IZ)V

    goto :goto_0

    .line 140
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected getSummonsDistanceFromFirstSuggestion()I
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mShownWebSuggestonsCount:I

    return v0
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 95
    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->onStop()V

    .line 96
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mNumVisibleSlots:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone$NumVisibleSlots;

    .line 97
    .local v1, numVisibleSlots:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone$NumVisibleSlots;
    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone$NumVisibleSlots;->clearTimeouts()V

    goto :goto_0

    .line 99
    .end local v1           #numVisibleSlots:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone$NumVisibleSlots;
    :cond_0
    return-void
.end method

.method public setNumVisibleSuggestions(II)V
    .locals 3
    .parameter "orientation"
    .parameter "numVisibleSuggestions"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mNumVisibleSlots:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone$NumVisibleSlots;

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mCurrentNumVisibleSlots:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone$NumVisibleSlots;

    .line 154
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mCurrentNumVisibleSlots:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone$NumVisibleSlots;

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone$NumVisibleSlots;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone$NumVisibleSlots;-><init>(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;ILcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/SearchSettings;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mCurrentNumVisibleSlots:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone$NumVisibleSlots;

    .line 156
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mNumVisibleSlots:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mCurrentNumVisibleSlots:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone$NumVisibleSlots;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mCurrentNumVisibleSlots:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone$NumVisibleSlots;

    invoke-virtual {v0, p2}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone$NumVisibleSlots;->set(I)V

    .line 159
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->updateMinSuggestionsAboveSummons()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    if-eqz v0, :cond_1

    .line 161
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->updateWebSuggestions()V

    .line 163
    :cond_1
    return-void
.end method

.method public setSuggestions(Lcom/google/android/googlequicksearchbox/Suggestions;)V
    .locals 0
    .parameter "suggestions"

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->setSuggestions(Lcom/google/android/googlequicksearchbox/Suggestions;)V

    .line 109
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->updateMinSuggestionsAboveSummons()Z

    .line 114
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->updateWebSuggestions()V

    .line 115
    return-void
.end method

.method protected updateViews()V
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->updateWebSuggestions()V

    .line 120
    sget-object v0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;->SUMMONS:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->updateView(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;)V

    .line 121
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->updateObserver()V

    .line 122
    return-void
.end method
