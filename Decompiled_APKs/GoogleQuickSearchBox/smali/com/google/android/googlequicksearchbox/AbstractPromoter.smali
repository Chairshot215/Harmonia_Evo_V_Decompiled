.class public abstract Lcom/google/android/googlequicksearchbox/AbstractPromoter;
.super Ljava/lang/Object;
.source "AbstractPromoter.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/Promoter;


# instance fields
.field private final mConfig:Lcom/google/android/googlequicksearchbox/Config;

.field private final mFilter:Lcom/google/android/googlequicksearchbox/SuggestionFilter;

.field private final mNext:Lcom/google/android/googlequicksearchbox/Promoter;

.field private final mSources:Lcom/google/android/googlequicksearchbox/Sources;


# direct methods
.method protected constructor <init>(Lcom/google/android/googlequicksearchbox/Sources;Lcom/google/android/googlequicksearchbox/SuggestionFilter;Lcom/google/android/googlequicksearchbox/Promoter;Lcom/google/android/googlequicksearchbox/Config;)V
    .locals 0
    .parameter "sources"
    .parameter "filter"
    .parameter "next"
    .parameter "config"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/AbstractPromoter;->mSources:Lcom/google/android/googlequicksearchbox/Sources;

    .line 31
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/AbstractPromoter;->mFilter:Lcom/google/android/googlequicksearchbox/SuggestionFilter;

    .line 32
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/AbstractPromoter;->mNext:Lcom/google/android/googlequicksearchbox/Promoter;

    .line 33
    iput-object p4, p0, Lcom/google/android/googlequicksearchbox/AbstractPromoter;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    .line 34
    return-void
.end method


# virtual methods
.method protected accept(Lcom/google/android/googlequicksearchbox/Suggestion;)Z
    .locals 1
    .parameter "s"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/AbstractPromoter;->mFilter:Lcom/google/android/googlequicksearchbox/SuggestionFilter;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/AbstractPromoter;->mFilter:Lcom/google/android/googlequicksearchbox/SuggestionFilter;

    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/SuggestionFilter;->accept(Lcom/google/android/googlequicksearchbox/Suggestion;)Z

    move-result v0

    .line 58
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected abstract doPickPromoted(Lcom/google/android/googlequicksearchbox/Suggestions;ILcom/google/android/googlequicksearchbox/MutableSuggestionList;Lcom/google/android/googlequicksearchbox/SuggestionList;)V
.end method

.method protected getConfig()Lcom/google/android/googlequicksearchbox/Config;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/AbstractPromoter;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    return-object v0
.end method

.method protected getSources()Lcom/google/android/googlequicksearchbox/Sources;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/AbstractPromoter;->mSources:Lcom/google/android/googlequicksearchbox/Sources;

    return-object v0
.end method

.method public pickPromoted(Lcom/google/android/googlequicksearchbox/Suggestions;ILcom/google/android/googlequicksearchbox/MutableSuggestionList;Lcom/google/android/googlequicksearchbox/SuggestionList;)V
    .locals 1
    .parameter "suggestions"
    .parameter "maxPromoted"
    .parameter "promoted"
    .parameter "currentlyDisplayed"

    .prologue
    .line 40
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/googlequicksearchbox/AbstractPromoter;->doPickPromoted(Lcom/google/android/googlequicksearchbox/Suggestions;ILcom/google/android/googlequicksearchbox/MutableSuggestionList;Lcom/google/android/googlequicksearchbox/SuggestionList;)V

    .line 41
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/AbstractPromoter;->mNext:Lcom/google/android/googlequicksearchbox/Promoter;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/AbstractPromoter;->mNext:Lcom/google/android/googlequicksearchbox/Promoter;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/googlequicksearchbox/Promoter;->pickPromoted(Lcom/google/android/googlequicksearchbox/Suggestions;ILcom/google/android/googlequicksearchbox/MutableSuggestionList;Lcom/google/android/googlequicksearchbox/SuggestionList;)V

    .line 44
    :cond_0
    return-void
.end method
