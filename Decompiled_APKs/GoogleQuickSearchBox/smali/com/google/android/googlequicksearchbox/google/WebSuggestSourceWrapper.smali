.class public Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWrapper;
.super Ljava/lang/Object;
.source "WebSuggestSourceWrapper.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;


# instance fields
.field private final mWrapped:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;


# direct methods
.method protected constructor <init>(Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;)V
    .locals 0
    .parameter "wrapped"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWrapper;->mWrapped:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;

    .line 30
    return-void
.end method


# virtual methods
.method public canQueryNow()Z
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWrapper;->mWrapped:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;->canQueryNow()Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWrapper;->mWrapped:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;->close()V

    .line 35
    return-void
.end method

.method public getCachedSuggestions(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/SuggestionList;
    .locals 1
    .parameter "query"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWrapper;->mWrapped:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;

    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;->getCachedSuggestions(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v0

    return-object v0
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWrapper;->mWrapped:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;->getSourceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 59
    .local p2, consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;,"Lcom/google/android/googlequicksearchbox/util/Consumer<Lcom/google/android/googlequicksearchbox/SuggestionList;>;"
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWrapper;->mWrapped:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;

    invoke-interface {v0, p1, p2}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;->getSuggestions(Ljava/lang/String;Lcom/google/android/googlequicksearchbox/util/Consumer;)V

    .line 60
    return-void
.end method

.method public isLikelyToReturnZeroQueryResults()Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWrapper;->mWrapped:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;->isLikelyToReturnZeroQueryResults()Z

    move-result v0

    return v0
.end method

.method public logClick(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "extraData"
    .parameter "query"
    .parameter "trafficTagFlags"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWrapper;->mWrapped:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;->logClick(Ljava/lang/String;Ljava/lang/String;I)V

    .line 70
    return-void
.end method

.method public queryExternal(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/SuggestionList;
    .locals 1
    .parameter "query"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWrapper;->mWrapped:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;

    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;->queryExternal(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v0

    return-object v0
.end method

.method public removeFromHistory(Ljava/lang/String;)Z
    .locals 1
    .parameter "query"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWrapper;->mWrapped:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;

    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;->removeFromHistory(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
