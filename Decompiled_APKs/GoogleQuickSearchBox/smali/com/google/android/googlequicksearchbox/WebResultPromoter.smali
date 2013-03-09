.class public Lcom/google/android/googlequicksearchbox/WebResultPromoter;
.super Lcom/google/android/googlequicksearchbox/AbstractPromoter;
.source "WebResultPromoter.java"


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/Sources;Lcom/google/android/googlequicksearchbox/SuggestionFilter;Lcom/google/android/googlequicksearchbox/Promoter;Lcom/google/android/googlequicksearchbox/Config;)V
    .locals 0
    .parameter "sources"
    .parameter "filter"
    .parameter "next"
    .parameter "config"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/googlequicksearchbox/AbstractPromoter;-><init>(Lcom/google/android/googlequicksearchbox/Sources;Lcom/google/android/googlequicksearchbox/SuggestionFilter;Lcom/google/android/googlequicksearchbox/Promoter;Lcom/google/android/googlequicksearchbox/Config;)V

    .line 27
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
    .line 33
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestions;->getWebResult()Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v3

    .line 34
    .local v3, webResults:Lcom/google/android/googlequicksearchbox/SuggestionList;
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestions;->getShortcuts()Lcom/google/android/googlequicksearchbox/ShortcutList;

    move-result-object v2

    .line 35
    .local v2, shortcuts:Lcom/google/android/googlequicksearchbox/ShortcutList;
    if-eqz v2, :cond_1

    .line 36
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Lcom/google/android/googlequicksearchbox/ShortcutList;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    invoke-interface {p3}, Lcom/google/android/googlequicksearchbox/MutableSuggestionList;->getCount()I

    move-result v4

    if-ge v4, p2, :cond_1

    .line 37
    invoke-interface {v2, v0}, Lcom/google/android/googlequicksearchbox/ShortcutList;->get(I)Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v1

    .line 38
    .local v1, s:Lcom/google/android/googlequicksearchbox/Suggestion;
    invoke-virtual {p0, v1}, Lcom/google/android/googlequicksearchbox/WebResultPromoter;->accept(Lcom/google/android/googlequicksearchbox/Suggestion;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionSource()Lcom/google/android/googlequicksearchbox/Source;

    move-result-object v4

    if-nez v4, :cond_0

    .line 39
    invoke-interface {p3, v1}, Lcom/google/android/googlequicksearchbox/MutableSuggestionList;->add(Lcom/google/android/googlequicksearchbox/Suggestion;)Z

    .line 36
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    .end local v0           #i:I
    .end local v1           #s:Lcom/google/android/googlequicksearchbox/Suggestion;
    :cond_1
    if-eqz v3, :cond_3

    .line 44
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    invoke-interface {v3}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_3

    invoke-interface {p3}, Lcom/google/android/googlequicksearchbox/MutableSuggestionList;->getCount()I

    move-result v4

    if-ge v4, p2, :cond_3

    .line 45
    invoke-interface {v3, v0}, Lcom/google/android/googlequicksearchbox/SuggestionList;->get(I)Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v1

    .line 46
    .restart local v1       #s:Lcom/google/android/googlequicksearchbox/Suggestion;
    invoke-virtual {p0, v1}, Lcom/google/android/googlequicksearchbox/WebResultPromoter;->accept(Lcom/google/android/googlequicksearchbox/Suggestion;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 47
    invoke-interface {p3, v1}, Lcom/google/android/googlequicksearchbox/MutableSuggestionList;->add(Lcom/google/android/googlequicksearchbox/Suggestion;)Z

    .line 44
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 51
    .end local v0           #i:I
    .end local v1           #s:Lcom/google/android/googlequicksearchbox/Suggestion;
    :cond_3
    return-void
.end method
