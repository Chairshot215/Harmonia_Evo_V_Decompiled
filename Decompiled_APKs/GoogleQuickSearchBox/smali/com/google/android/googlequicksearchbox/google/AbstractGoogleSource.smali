.class public abstract Lcom/google/android/googlequicksearchbox/google/AbstractGoogleSource;
.super Ljava/lang/Object;
.source "AbstractGoogleSource.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/google/GoogleSource;


# instance fields
.field private final mConfig:Lcom/google/android/googlequicksearchbox/Config;

.field private final mContext:Lcom/google/android/googlequicksearchbox/QsbContext;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/QsbContext;Lcom/google/android/googlequicksearchbox/Config;)V
    .locals 0
    .parameter "context"
    .parameter "config"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/AbstractGoogleSource;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    .line 36
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/google/AbstractGoogleSource;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    .line 37
    return-void
.end method


# virtual methods
.method protected abstract doQueryInternal(Ljava/lang/String;Lcom/google/android/googlequicksearchbox/util/Consumer;)V
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
.end method

.method public getCachedSuggestions(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/SuggestionList;
    .locals 1
    .parameter "query"

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getConfig()Lcom/google/android/googlequicksearchbox/Config;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/AbstractGoogleSource;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    return-object v0
.end method

.method protected getContext()Lcom/google/android/googlequicksearchbox/QsbContext;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/AbstractGoogleSource;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    return-object v0
.end method

.method public getSuggestions(Ljava/lang/String;Lcom/google/android/googlequicksearchbox/util/Consumer;)V
    .locals 2
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
    .line 54
    .local p2, consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;,"Lcom/google/android/googlequicksearchbox/util/Consumer<Lcom/google/android/googlequicksearchbox/SuggestionList;>;"
    new-instance v0, Lcom/google/android/googlequicksearchbox/LatencyTracker;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/google/AbstractGoogleSource;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/QsbContext;->getApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getClock()Lcom/google/android/googlequicksearchbox/Clock;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/googlequicksearchbox/LatencyTracker;-><init>(Lcom/google/android/googlequicksearchbox/Clock;)V

    .line 56
    .local v0, latency:Lcom/google/android/googlequicksearchbox/LatencyTracker;
    new-instance v1, Lcom/google/android/googlequicksearchbox/google/AbstractGoogleSource$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/google/android/googlequicksearchbox/google/AbstractGoogleSource$1;-><init>(Lcom/google/android/googlequicksearchbox/google/AbstractGoogleSource;Lcom/google/android/googlequicksearchbox/LatencyTracker;Lcom/google/android/googlequicksearchbox/util/Consumer;)V

    invoke-virtual {p0, p1, v1}, Lcom/google/android/googlequicksearchbox/google/AbstractGoogleSource;->doQueryInternal(Ljava/lang/String;Lcom/google/android/googlequicksearchbox/util/Consumer;)V

    .line 61
    return-void
.end method
