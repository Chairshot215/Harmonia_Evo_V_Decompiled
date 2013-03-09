.class public Lcom/google/android/googlequicksearchbox/QsbInternalPromoter;
.super Lcom/google/android/googlequicksearchbox/AbstractPromoter;
.source "QsbInternalPromoter.java"


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/Sources;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/Promoter;)V
    .locals 1
    .parameter "sources"
    .parameter "config"
    .parameter "next"

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3, p2}, Lcom/google/android/googlequicksearchbox/AbstractPromoter;-><init>(Lcom/google/android/googlequicksearchbox/Sources;Lcom/google/android/googlequicksearchbox/SuggestionFilter;Lcom/google/android/googlequicksearchbox/Promoter;Lcom/google/android/googlequicksearchbox/Config;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected doPickPromoted(Lcom/google/android/googlequicksearchbox/Suggestions;ILcom/google/android/googlequicksearchbox/MutableSuggestionList;Lcom/google/android/googlequicksearchbox/SuggestionList;)V
    .locals 5
    .parameter "suggestions"
    .parameter "maxPromoted"
    .parameter "promoted"
    .parameter "currentlyDisplayed"

    .prologue
    .line 29
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestions;->getSourceResults()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/googlequicksearchbox/SuggestionList;

    .line 30
    .local v2, list:Lcom/google/android/googlequicksearchbox/SuggestionList;
    invoke-interface {v2}, Lcom/google/android/googlequicksearchbox/SuggestionList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/googlequicksearchbox/Suggestion;

    .line 31
    .local v3, suggestion:Lcom/google/android/googlequicksearchbox/Suggestion;
    invoke-virtual {v3}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionSource()Lcom/google/android/googlequicksearchbox/Source;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/googlequicksearchbox/Source;->isInternalSource()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 32
    invoke-interface {p3, v3}, Lcom/google/android/googlequicksearchbox/MutableSuggestionList;->add(Lcom/google/android/googlequicksearchbox/Suggestion;)Z

    goto :goto_0

    .line 36
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #list:Lcom/google/android/googlequicksearchbox/SuggestionList;
    .end local v3           #suggestion:Lcom/google/android/googlequicksearchbox/Suggestion;
    :cond_2
    return-void
.end method
