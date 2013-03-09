.class public Lcom/google/android/googlequicksearchbox/PreviousResultsPromoter;
.super Lcom/google/android/googlequicksearchbox/AbstractPromoter;
.source "PreviousResultsPromoter.java"


# instance fields
.field private final mDebugging:Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

.field private final mDisplayedSuggestionSources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/googlequicksearchbox/Source;",
            ">;"
        }
    .end annotation
.end field

.field private final mNewSuggestionsByKey:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/googlequicksearchbox/Suggestion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/Sources;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/SuggestionFilter;Lcom/google/android/googlequicksearchbox/Promoter;Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;)V
    .locals 1
    .parameter "sources"
    .parameter "config"
    .parameter "filter"
    .parameter "next"
    .parameter "debugging"

    .prologue
    .line 40
    invoke-direct {p0, p1, p3, p4, p2}, Lcom/google/android/googlequicksearchbox/AbstractPromoter;-><init>(Lcom/google/android/googlequicksearchbox/Sources;Lcom/google/android/googlequicksearchbox/SuggestionFilter;Lcom/google/android/googlequicksearchbox/Promoter;Lcom/google/android/googlequicksearchbox/Config;)V

    .line 41
    iput-object p5, p0, Lcom/google/android/googlequicksearchbox/PreviousResultsPromoter;->mDebugging:Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

    .line 42
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/PreviousResultsPromoter;->mNewSuggestionsByKey:Ljava/util/Map;

    .line 43
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/PreviousResultsPromoter;->mDisplayedSuggestionSources:Ljava/util/Map;

    .line 44
    return-void
.end method

.method private addDebugInfo(Lcom/google/android/googlequicksearchbox/Suggestion;Lcom/google/android/googlequicksearchbox/Suggestion;)V
    .locals 4
    .parameter "promoted"
    .parameter "becauseOf"

    .prologue
    .line 104
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/PreviousResultsPromoter;->mDebugging:Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

    invoke-interface {v1, p2}, Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;->getPromotionInfo(Lcom/google/android/googlequicksearchbox/Suggestion;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, previousInfo:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 106
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/PreviousResultsPromoter;->mDebugging:Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PRP["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;->addPromotionInfo(Lcom/google/android/googlequicksearchbox/Suggestion;Ljava/lang/String;)V

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/PreviousResultsPromoter;->mDebugging:Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

    const-string v2, "PRP[NO INFO]"

    invoke-interface {v1, p1, v2}, Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;->addPromotionInfo(Lcom/google/android/googlequicksearchbox/Suggestion;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addSuggestionKeys(Lcom/google/android/googlequicksearchbox/SuggestionList;)V
    .locals 5
    .parameter "list"

    .prologue
    .line 113
    if-eqz p1, :cond_2

    .line 114
    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/SuggestionList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/googlequicksearchbox/Suggestion;

    .line 115
    .local v2, s:Lcom/google/android/googlequicksearchbox/Suggestion;
    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionKey()Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, key:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/PreviousResultsPromoter;->mNewSuggestionsByKey:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionSource()Lcom/google/android/googlequicksearchbox/Source;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/PreviousResultsPromoter;->mDisplayedSuggestionSources:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 120
    :cond_1
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/PreviousResultsPromoter;->mNewSuggestionsByKey:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 124
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #s:Lcom/google/android/googlequicksearchbox/Suggestion;
    :cond_2
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
    .line 50
    monitor-enter p0

    if-nez p4, :cond_1

    .line 101
    :cond_0
    monitor-exit p0

    return-void

    .line 55
    :cond_1
    :try_start_0
    invoke-interface {p4}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getUserQuery()Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, displayedQuery:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestions;->getQuery()Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, promotingForQuery:Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 64
    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/PreviousResultsPromoter;->mNewSuggestionsByKey:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 65
    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/PreviousResultsPromoter;->mDisplayedSuggestionSources:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 69
    invoke-interface {p4}, Lcom/google/android/googlequicksearchbox/SuggestionList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/googlequicksearchbox/Suggestion;

    .line 70
    .local v5, s:Lcom/google/android/googlequicksearchbox/Suggestion;
    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/PreviousResultsPromoter;->mDisplayedSuggestionSources:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionSource()Lcom/google/android/googlequicksearchbox/Source;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 50
    .end local v1           #displayedQuery:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #promotingForQuery:Ljava/lang/String;
    .end local v5           #s:Lcom/google/android/googlequicksearchbox/Suggestion;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 76
    .restart local v1       #displayedQuery:Ljava/lang/String;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #promotingForQuery:Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestions;->getSourceResults()Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/googlequicksearchbox/SuggestionList;

    .line 77
    .local v3, list:Lcom/google/android/googlequicksearchbox/SuggestionList;
    if-eqz v3, :cond_3

    invoke-interface {v3}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getCount()I

    move-result v6

    if-lez v6, :cond_3

    .line 78
    invoke-direct {p0, v3}, Lcom/google/android/googlequicksearchbox/PreviousResultsPromoter;->addSuggestionKeys(Lcom/google/android/googlequicksearchbox/SuggestionList;)V

    goto :goto_1

    .line 81
    .end local v3           #list:Lcom/google/android/googlequicksearchbox/SuggestionList;
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestions;->getShortcuts()Lcom/google/android/googlequicksearchbox/ShortcutList;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/google/android/googlequicksearchbox/PreviousResultsPromoter;->addSuggestionKeys(Lcom/google/android/googlequicksearchbox/SuggestionList;)V

    .line 82
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestions;->getWebResult()Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/google/android/googlequicksearchbox/PreviousResultsPromoter;->addSuggestionKeys(Lcom/google/android/googlequicksearchbox/SuggestionList;)V

    .line 85
    invoke-interface {p4}, Lcom/google/android/googlequicksearchbox/SuggestionList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/googlequicksearchbox/Suggestion;

    .line 86
    .local v0, current:Lcom/google/android/googlequicksearchbox/Suggestion;
    invoke-interface {p3}, Lcom/google/android/googlequicksearchbox/MutableSuggestionList;->getCount()I

    move-result v6

    if-ge v6, p2, :cond_0

    .line 90
    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/PreviousResultsPromoter;->mNewSuggestionsByKey:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionKey()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/googlequicksearchbox/Suggestion;

    .line 91
    .restart local v5       #s:Lcom/google/android/googlequicksearchbox/Suggestion;
    if-eqz v5, :cond_0

    invoke-interface {p3, v5}, Lcom/google/android/googlequicksearchbox/MutableSuggestionList;->add(Lcom/google/android/googlequicksearchbox/Suggestion;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 92
    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/PreviousResultsPromoter;->mDebugging:Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

    invoke-interface {v6}, Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;->debugPromotion()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 93
    invoke-direct {p0, v5, v0}, Lcom/google/android/googlequicksearchbox/PreviousResultsPromoter;->addDebugInfo(Lcom/google/android/googlequicksearchbox/Suggestion;Lcom/google/android/googlequicksearchbox/Suggestion;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method
