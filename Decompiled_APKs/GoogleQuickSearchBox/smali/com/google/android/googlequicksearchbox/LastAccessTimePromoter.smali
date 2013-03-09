.class public Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;
.super Lcom/google/android/googlequicksearchbox/AbstractPromoter;
.source "LastAccessTimePromoter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;
    }
.end annotation


# instance fields
.field private final mClickLog:Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;

.field private final mDebugging:Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

.field private mMaxSourceScore:I

.field private final mSortedCursors:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mSourceScores:Ljava/util/Map;
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

.field private final mSourceWeights:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/googlequicksearchbox/Source;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mValidator:Lcom/google/android/googlequicksearchbox/LastAccessValidator;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/Sources;Lcom/google/android/googlequicksearchbox/SuggestionFilter;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;Landroid/database/DataSetObservable;Lcom/google/android/googlequicksearchbox/LastAccessValidator;Lcom/google/android/googlequicksearchbox/Promoter;Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;)V
    .locals 1
    .parameter "sources"
    .parameter "filter"
    .parameter "config"
    .parameter "clickLog"
    .parameter "searchHistoryChangedObservable"
    .parameter "validator"
    .parameter "next"
    .parameter "debugging"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p7, p3}, Lcom/google/android/googlequicksearchbox/AbstractPromoter;-><init>(Lcom/google/android/googlequicksearchbox/Sources;Lcom/google/android/googlequicksearchbox/SuggestionFilter;Lcom/google/android/googlequicksearchbox/Promoter;Lcom/google/android/googlequicksearchbox/Config;)V

    .line 90
    iput-object p4, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->mClickLog:Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;

    .line 91
    iput-object p6, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->mValidator:Lcom/google/android/googlequicksearchbox/LastAccessValidator;

    .line 92
    iput-object p8, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->mDebugging:Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

    .line 94
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->mSortedCursors:Ljava/util/TreeSet;

    .line 95
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->mSourceWeights:Ljava/util/Map;

    .line 97
    new-instance v0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$1;

    invoke-direct {v0, p0}, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$1;-><init>(Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;)V

    invoke-virtual {p5, v0}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 103
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->updateSourceScores()V

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->updateSourceScores()V

    return-void
.end method

.method static synthetic access$102(Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->mSourceScores:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$202(Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput p1, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->mMaxSourceScore:I

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->mSourceWeights:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;Lcom/google/android/googlequicksearchbox/Suggestion;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->getLastAccessTime(Lcom/google/android/googlequicksearchbox/Suggestion;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$500(Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;Lcom/google/android/googlequicksearchbox/Source;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->getSourceScore(Lcom/google/android/googlequicksearchbox/Source;)I

    move-result v0

    return v0
.end method

.method private getBasePromotionWeight(Lcom/google/android/googlequicksearchbox/Source;)I
    .locals 1
    .parameter "source"

    .prologue
    .line 124
    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/Source;->isEnabledByDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Config;->getDefaultSourcePromotionWeight()I

    move-result v0

    .line 127
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Config;->getSourcePromotionWeight()I

    move-result v0

    goto :goto_0
.end method

.method private getLastAccessTime(Lcom/google/android/googlequicksearchbox/Suggestion;)J
    .locals 2
    .parameter "suggestion"

    .prologue
    .line 222
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->mValidator:Lcom/google/android/googlequicksearchbox/LastAccessValidator;

    invoke-virtual {v0, p1}, Lcom/google/android/googlequicksearchbox/LastAccessValidator;->validateLastAccessTime(Lcom/google/android/googlequicksearchbox/Suggestion;)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private getPromotionWeightClicksAdjustment(Lcom/google/android/googlequicksearchbox/Source;)I
    .locals 4
    .parameter "source"

    .prologue
    .line 132
    iget v2, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->mMaxSourceScore:I

    if-nez v2, :cond_0

    .line 133
    const/4 v2, 0x0

    .line 140
    :goto_0
    return v2

    .line 135
    :cond_0
    const/4 v1, 0x0

    .line 136
    .local v1, sourceScore:I
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->mSourceScores:Ljava/util/Map;

    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 137
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->mSourceScores:Ljava/util/Map;

    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 139
    :cond_1
    const/high16 v2, 0x4000

    int-to-float v3, v1

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->mMaxSourceScore:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f80

    sub-float v0, v2, v3

    .line 140
    .local v0, factor:F
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Config;->getSourcePromotionWeightRankAdjustment()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    goto :goto_0
.end method

.method private getSourceScore(Lcom/google/android/googlequicksearchbox/Source;)I
    .locals 2
    .parameter "source"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->mSourceScores:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->mSourceScores:Ljava/util/Map;

    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->mSourceScores:Ljava/util/Map;

    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 229
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private promoteSuggestion(Lcom/google/android/googlequicksearchbox/MutableSuggestionList;Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;)V
    .locals 5
    .parameter "promoted"
    .parameter "cursor"

    .prologue
    .line 199
    invoke-virtual {p2}, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->getSuggestion()Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v0

    .line 200
    .local v0, s:Lcom/google/android/googlequicksearchbox/Suggestion;
    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->accept(Lcom/google/android/googlequicksearchbox/Suggestion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    invoke-interface {p1, v0}, Lcom/google/android/googlequicksearchbox/MutableSuggestionList;->add(Lcom/google/android/googlequicksearchbox/Suggestion;)Z

    move-result v1

    .line 202
    .local v1, wasPromoted:Z
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->mDebugging:Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

    invoke-interface {v2}, Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;->debugPromotion()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->mDebugging:Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LATP["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->getDebugInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;->addPromotionInfo(Lcom/google/android/googlequicksearchbox/Suggestion;Ljava/lang/String;)V

    .line 206
    .end local v1           #wasPromoted:Z
    :cond_0
    return-void
.end method

.method private shouldPromoteTentatively(Lcom/google/android/googlequicksearchbox/Suggestions;)Z
    .locals 2
    .parameter "suggestions"

    .prologue
    const/4 v0, 0x0

    .line 191
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestions;->shouldDisplayTentatively()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 192
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestions;->areShortcutsDone()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestions;->areSourcesDone()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 194
    :cond_1
    return v0
.end method

.method private updateSourceScores()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->mClickLog:Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;

    new-instance v1, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$2;

    invoke-direct {v1, p0}, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$2;-><init>(Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;)V

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;->getSourceScores(Lcom/google/android/googlequicksearchbox/util/Consumer;)V

    .line 121
    return-void
.end method


# virtual methods
.method public declared-synchronized doPickPromoted(Lcom/google/android/googlequicksearchbox/Suggestions;ILcom/google/android/googlequicksearchbox/MutableSuggestionList;Lcom/google/android/googlequicksearchbox/SuggestionList;)V
    .locals 9
    .parameter "suggestions"
    .parameter "maxPromoted"
    .parameter "promoted"
    .parameter "currentlyDisplayed"

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->mSortedCursors:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 150
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestions;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 152
    .local v5, zeroQuery:Z
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->shouldPromoteTentatively(Lcom/google/android/googlequicksearchbox/Suggestions;)Z

    move-result v8

    .line 154
    .local v8, promoteTentatively:Z
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestions;->getSourceResults()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/googlequicksearchbox/SuggestionList;

    .line 155
    .local v3, results:Lcom/google/android/googlequicksearchbox/SuggestionList;
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->getSources()Lcom/google/android/googlequicksearchbox/Sources;

    move-result-object v1

    invoke-interface {v3}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getSourceName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/google/android/googlequicksearchbox/Sources;->getSource(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Source;

    move-result-object v2

    .line 156
    .local v2, source:Lcom/google/android/googlequicksearchbox/Source;
    new-instance v0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestions;->getShortcuts()Lcom/google/android/googlequicksearchbox/ShortcutList;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;-><init>(Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;Lcom/google/android/googlequicksearchbox/Source;Lcom/google/android/googlequicksearchbox/SuggestionList;Lcom/google/android/googlequicksearchbox/SuggestionList;Z)V

    .line 157
    .local v0, cursor:Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;
    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->prepareNextSuggestion()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->mSortedCursors:Ljava/util/TreeSet;

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 148
    .end local v0           #cursor:Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;
    .end local v2           #source:Lcom/google/android/googlequicksearchbox/Source;
    .end local v3           #results:Lcom/google/android/googlequicksearchbox/SuggestionList;
    .end local v5           #zeroQuery:Z
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #promoteTentatively:Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 175
    .restart local v5       #zeroQuery:Z
    .local v6, firstCursor:Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v8       #promoteTentatively:Z
    :cond_2
    :try_start_1
    invoke-direct {p0, p3, v6}, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->promoteSuggestion(Lcom/google/android/googlequicksearchbox/MutableSuggestionList;Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;)V

    .line 179
    invoke-virtual {v6}, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->prepareNextSuggestion()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 180
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->mSortedCursors:Ljava/util/TreeSet;

    invoke-virtual {v1, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 162
    .end local v6           #firstCursor:Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;
    :cond_3
    invoke-interface {p3}, Lcom/google/android/googlequicksearchbox/MutableSuggestionList;->getCount()I

    move-result v1

    if-ge v1, p2, :cond_4

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->mSortedCursors:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 164
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->mSortedCursors:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->pollFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;

    .line 166
    .restart local v6       #firstCursor:Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;
    if-eqz v8, :cond_2

    invoke-virtual {v6}, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;->getWeightUsage()I

    move-result v1

    if-lez v1, :cond_2

    .line 171
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestions;->displayedTentatively()V

    .line 183
    .end local v6           #firstCursor:Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$Cursor;
    :cond_4
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->mSortedCursors:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    monitor-exit p0

    return-void
.end method

.method getPromotionWeight(Lcom/google/android/googlequicksearchbox/Source;)I
    .locals 3
    .parameter "source"

    .prologue
    .line 210
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->mSourceWeights:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 211
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->getBasePromotionWeight(Lcom/google/android/googlequicksearchbox/Source;)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->getPromotionWeightClicksAdjustment(Lcom/google/android/googlequicksearchbox/Source;)I

    move-result v2

    add-int v0, v1, v2

    .line 214
    .local v0, weight:I
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Config;->getMaxSourcePromotionWeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Config;->getMinSourcePromotionWeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 216
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->mSourceWeights:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .end local v0           #weight:I
    :cond_0
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->mSourceWeights:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method
