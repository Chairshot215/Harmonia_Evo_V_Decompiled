.class public Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;
.super Lcom/google/android/googlequicksearchbox/google/AbstractGoogleWebSource;
.source "GenieAllSource.java"


# instance fields
.field private final mGenieClient:Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;

.field private final mHttpHelper:Lcom/google/android/googlequicksearchbox/util/HttpHelper;

.field private mLogger:Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;

.field private final mMaps:Lcom/google/android/googlequicksearchbox/google/Maps;

.field private final mSearchUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

.field private mSuggestionFactory:Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/QsbContext;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/SearchSettings;Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;Lcom/google/android/googlequicksearchbox/util/HttpHelper;Lcom/google/android/googlequicksearchbox/google/Maps;)V
    .locals 6
    .parameter "context"
    .parameter "config"
    .parameter "settings"
    .parameter "searchUrlHelper"
    .parameter "httpHelper"
    .parameter "maps"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/google/AbstractGoogleWebSource;-><init>(Lcom/google/android/googlequicksearchbox/QsbContext;Lcom/google/android/googlequicksearchbox/Config;)V

    .line 49
    iput-object p4, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->mSearchUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    .line 50
    iput-object p5, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->mHttpHelper:Lcom/google/android/googlequicksearchbox/util/HttpHelper;

    .line 51
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p0

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;-><init>(Lcom/google/android/googlequicksearchbox/QsbContext;Lcom/google/android/googlequicksearchbox/SearchSettings;Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;Lcom/google/android/googlequicksearchbox/util/HttpHelper;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->mGenieClient:Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;

    .line 52
    iput-object p6, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->mMaps:Lcom/google/android/googlequicksearchbox/google/Maps;

    .line 53
    return-void
.end method

.method private getGenieUrl(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .parameter "format"
    .parameter "forceDefaultDomain"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->mSearchUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->formatUrl(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public canQueryNow()Z
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->mGenieClient:Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->haveNetwork()Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->mGenieClient:Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->close()V

    .line 129
    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/google/AbstractGoogleWebSource;->close()V

    .line 130
    return-void
.end method

.method protected createGenieLogger()Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;
    .locals 4

    .prologue
    .line 63
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->getSuggestionFactory()Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->mHttpHelper:Lcom/google/android/googlequicksearchbox/util/HttpHelper;

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;-><init>(Lcom/google/android/googlequicksearchbox/QsbContext;Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;Lcom/google/android/googlequicksearchbox/util/HttpHelper;)V

    return-object v0
.end method

.method protected createGenieSuggestionFactory()Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;
    .locals 3

    .prologue
    .line 75
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->mMaps:Lcom/google/android/googlequicksearchbox/google/Maps;

    invoke-direct {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;-><init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/google/Maps;)V

    return-object v0
.end method

.method public declared-synchronized getGenieLogger()Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;
    .locals 1

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->mLogger:Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;

    if-nez v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->createGenieLogger()Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->mLogger:Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->mLogger:Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getGenieLoggingServer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    const-string v0, "http://%1$s/m/gne/suggestlog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->getGenieUrl(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGeniePSuggestServer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    const-string v0, "https://%1$s/m/gne/suggest/v2"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->getGenieUrl(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGenieSuggestServer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    const-string v0, "http://%1$s/m/gne/suggest/v2"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->getGenieUrl(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    const-string v0, "genie"

    return-object v0
.end method

.method public declared-synchronized getSuggestionFactory()Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;
    .locals 1

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->mSuggestionFactory:Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;

    if-nez v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->createGenieSuggestionFactory()Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->mSuggestionFactory:Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->mSuggestionFactory:Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isLikelyToReturnZeroQueryResults()Z
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->mGenieClient:Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->isLikelyToReturnZeroQueryResults()Z

    move-result v0

    return v0
.end method

.method public logClick(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "extraData"
    .parameter "query"
    .parameter "trafficTagFlags"

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->getGenieLogger()Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;->logClick(Ljava/lang/String;Ljava/lang/String;I)V

    .line 109
    return-void
.end method

.method protected query(Ljava/lang/String;ZLcom/google/android/googlequicksearchbox/MutableSuggestionList;)V
    .locals 1
    .parameter "query"
    .parameter "internal"
    .parameter "list"

    .prologue
    .line 96
    if-eqz p2, :cond_0

    .line 97
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->mGenieClient:Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;

    invoke-virtual {v0, p0, p1, p3}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->queryEnhancedFeeds(Lcom/google/android/googlequicksearchbox/google/GoogleSource;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/MutableSuggestionList;)V

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->mGenieClient:Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;

    invoke-virtual {v0, p0, p1, p3}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->queryBasicFeeds(Lcom/google/android/googlequicksearchbox/google/GoogleSource;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/MutableSuggestionList;)V

    goto :goto_0
.end method

.method public removeFromHistory(Ljava/lang/String;)Z
    .locals 1
    .parameter "query"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->mGenieClient:Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;

    invoke-virtual {v0, p1}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->removeFromHistory(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
