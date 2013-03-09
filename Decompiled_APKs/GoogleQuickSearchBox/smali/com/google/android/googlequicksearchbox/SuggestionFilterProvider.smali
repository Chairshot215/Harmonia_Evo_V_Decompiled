.class public Lcom/google/android/googlequicksearchbox/SuggestionFilterProvider;
.super Ljava/lang/Object;
.source "SuggestionFilterProvider.java"


# instance fields
.field private final mConfig:Lcom/google/android/googlequicksearchbox/Config;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/Config;)V
    .locals 0
    .parameter "context"
    .parameter "config"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SuggestionFilterProvider;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/SuggestionFilterProvider;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    .line 34
    return-void
.end method


# virtual methods
.method getFilter(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/SuggestionFilter;
    .locals 4
    .parameter "source"
    .parameter "userQuery"

    .prologue
    .line 37
    if-eqz p1, :cond_1

    const-string v1, "content://browser/bookmarks/search_suggest_query"

    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/Source;->getSuggestUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionFilterProvider;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Config;->getMaxZeroQueryResultsPerSource()I

    move-result v0

    .line 43
    .local v0, maxResults:I
    :goto_0
    new-instance v1, Lcom/google/android/googlequicksearchbox/BrowserSourceFilter;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SuggestionFilterProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/SuggestionFilterProvider;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/googlequicksearchbox/BrowserSourceFilter;-><init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/Config;I)V

    .line 45
    .end local v0           #maxResults:I
    :goto_1
    return-object v1

    .line 40
    :cond_0
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionFilterProvider;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Config;->getMaxResultsPerSource()I

    move-result v0

    goto :goto_0

    .line 45
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
