.class public Lcom/google/android/googlequicksearchbox/google/QueryDedupingSourceWrapper;
.super Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWrapper;
.source "QueryDedupingSourceWrapper.java"


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;)V
    .locals 0
    .parameter "wrapped"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWrapper;-><init>(Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;)V

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/googlequicksearchbox/google/QueryDedupingSourceWrapper;Lcom/google/android/googlequicksearchbox/SuggestionList;Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/SuggestionList;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/google/QueryDedupingSourceWrapper;->removeQueryFrom(Lcom/google/android/googlequicksearchbox/SuggestionList;Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v0

    return-object v0
.end method

.method private removeQueryFrom(Lcom/google/android/googlequicksearchbox/SuggestionList;Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/SuggestionList;
    .locals 3
    .parameter "list"
    .parameter "query"

    .prologue
    .line 39
    if-nez p1, :cond_0

    const/4 v2, 0x0

    .line 51
    :goto_0
    return-object v2

    .line 40
    :cond_0
    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_3

    .line 41
    invoke-interface {p1, v0}, Lcom/google/android/googlequicksearchbox/SuggestionList;->get(I)Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v1

    .line 42
    .local v1, s:Lcom/google/android/googlequicksearchbox/Suggestion;
    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Suggestion;->isWebSearchSuggestion()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionQuery()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 43
    instance-of v2, p1, Lcom/google/android/googlequicksearchbox/MutableSuggestionList;

    if-nez v2, :cond_1

    .line 45
    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getMutableCopy()Lcom/google/android/googlequicksearchbox/MutableSuggestionList;

    move-result-object p1

    :cond_1
    move-object v2, p1

    .line 48
    check-cast v2, Lcom/google/android/googlequicksearchbox/MutableSuggestionList;

    invoke-interface {v2, v0}, Lcom/google/android/googlequicksearchbox/MutableSuggestionList;->remove(I)V

    .line 40
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .end local v1           #s:Lcom/google/android/googlequicksearchbox/Suggestion;
    :cond_3
    move-object v2, p1

    .line 51
    goto :goto_0
.end method


# virtual methods
.method public getCachedSuggestions(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/SuggestionList;
    .locals 2
    .parameter "query"

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWrapper;->getCachedSuggestions(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v0

    .line 57
    .local v0, list:Lcom/google/android/googlequicksearchbox/SuggestionList;
    invoke-direct {p0, v0, p1}, Lcom/google/android/googlequicksearchbox/google/QueryDedupingSourceWrapper;->removeQueryFrom(Lcom/google/android/googlequicksearchbox/SuggestionList;Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v1

    return-object v1
.end method

.method public getSuggestions(Ljava/lang/String;Lcom/google/android/googlequicksearchbox/util/Consumer;)V
    .locals 1
    .parameter "query"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/googlequicksearchbox/util/Consumer",
            "<",
            "Lcom/google/android/googlequicksearchbox/SuggestionList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p2, consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;,"Lcom/google/android/googlequicksearchbox/util/Consumer<Lcom/google/android/googlequicksearchbox/SuggestionList;>;"
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/QueryDedupingSourceWrapper$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/googlequicksearchbox/google/QueryDedupingSourceWrapper$1;-><init>(Lcom/google/android/googlequicksearchbox/google/QueryDedupingSourceWrapper;Lcom/google/android/googlequicksearchbox/util/Consumer;Ljava/lang/String;)V

    invoke-super {p0, p1, v0}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWrapper;->getSuggestions(Ljava/lang/String;Lcom/google/android/googlequicksearchbox/util/Consumer;)V

    .line 67
    return-void
.end method
