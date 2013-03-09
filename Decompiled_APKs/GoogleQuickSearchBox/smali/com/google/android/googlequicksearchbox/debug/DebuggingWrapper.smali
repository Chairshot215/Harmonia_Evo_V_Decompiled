.class public Lcom/google/android/googlequicksearchbox/debug/DebuggingWrapper;
.super Ljava/lang/Object;
.source "DebuggingWrapper.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;


# instance fields
.field private final mConfig:Lcom/google/android/googlequicksearchbox/Config;

.field private mWrapped:Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/Config;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/debug/DebuggingWrapper;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    .line 37
    return-void
.end method

.method private declared-synchronized getWrapped()Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;
    .locals 1

    .prologue
    .line 40
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/debug/DebuggingWrapper;->mWrapped:Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/debug/DebuggingWrapper;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Config;->isDebuggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    new-instance v0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl;

    invoke-direct {v0}, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl;-><init>()V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/debug/DebuggingWrapper;->mWrapped:Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

    .line 47
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/debug/DebuggingWrapper;->mWrapped:Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 44
    :cond_1
    :try_start_1
    new-instance v0, Lcom/google/android/googlequicksearchbox/debug/NopQsbDebugging;

    invoke-direct {v0}, Lcom/google/android/googlequicksearchbox/debug/NopQsbDebugging;-><init>()V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/debug/DebuggingWrapper;->mWrapped:Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public activityStart()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/debug/DebuggingWrapper;->getWrapped()Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;->activityStart()V

    .line 53
    return-void
.end method

.method public activityStop()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/debug/DebuggingWrapper;->getWrapped()Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;->activityStop()V

    .line 58
    return-void
.end method

.method public addPromotionInfo(Lcom/google/android/googlequicksearchbox/Suggestion;Ljava/lang/String;)V
    .locals 1
    .parameter "s"
    .parameter "info"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/debug/DebuggingWrapper;->getWrapped()Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;->addPromotionInfo(Lcom/google/android/googlequicksearchbox/Suggestion;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public boundSuggestion(Lcom/google/android/googlequicksearchbox/Suggestion;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/debug/DebuggingWrapper;->getWrapped()Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;->boundSuggestion(Lcom/google/android/googlequicksearchbox/Suggestion;)V

    .line 68
    return-void
.end method

.method public debugPromotion()Z
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/debug/DebuggingWrapper;->getWrapped()Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;->debugPromotion()Z

    move-result v0

    return v0
.end method

.method public finishPromotion(Lcom/google/android/googlequicksearchbox/Suggestions;)V
    .locals 1
    .parameter "suggestions"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/debug/DebuggingWrapper;->getWrapped()Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;->finishPromotion(Lcom/google/android/googlequicksearchbox/Suggestions;)V

    .line 78
    return-void
.end method

.method public getGlobalDebugInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/debug/DebuggingWrapper;->getWrapped()Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;->getGlobalDebugInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalDebugInfoObservable()Landroid/database/DataSetObservable;
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/debug/DebuggingWrapper;->getWrapped()Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;->getGlobalDebugInfoObservable()Landroid/database/DataSetObservable;

    move-result-object v0

    return-object v0
.end method

.method public getPromotionInfo(Lcom/google/android/googlequicksearchbox/Suggestion;)Ljava/lang/String;
    .locals 1
    .parameter "s"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/debug/DebuggingWrapper;->getWrapped()Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;->getPromotionInfo(Lcom/google/android/googlequicksearchbox/Suggestion;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionDebugInfo(Lcom/google/android/googlequicksearchbox/Suggestion;)Ljava/lang/String;
    .locals 1
    .parameter "s"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/debug/DebuggingWrapper;->getWrapped()Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;->getSuggestionDebugInfo(Lcom/google/android/googlequicksearchbox/Suggestion;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public inflatedListEntryView(Lcom/google/android/googlequicksearchbox/ui/ListEntry;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/debug/DebuggingWrapper;->getWrapped()Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;->inflatedListEntryView(Lcom/google/android/googlequicksearchbox/ui/ListEntry;)V

    .line 103
    return-void
.end method

.method public listAdapterNotified()V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/debug/DebuggingWrapper;->getWrapped()Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;->listAdapterNotified()V

    .line 108
    return-void
.end method

.method public recycledListEntryView(Lcom/google/android/googlequicksearchbox/ui/ListEntry;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/debug/DebuggingWrapper;->getWrapped()Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;->recycledListEntryView(Lcom/google/android/googlequicksearchbox/ui/ListEntry;)V

    .line 113
    return-void
.end method

.method public showGlobalDebugInfo()Z
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/debug/DebuggingWrapper;->getWrapped()Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;->showGlobalDebugInfo()Z

    move-result v0

    return v0
.end method

.method public showSuggestionDebugInfo()Z
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/debug/DebuggingWrapper;->getWrapped()Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;->showSuggestionDebugInfo()Z

    move-result v0

    return v0
.end method

.method public startPromotion(Lcom/google/android/googlequicksearchbox/Suggestions;)V
    .locals 1
    .parameter "suggestions"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/debug/DebuggingWrapper;->getWrapped()Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;->startPromotion(Lcom/google/android/googlequicksearchbox/Suggestions;)V

    .line 128
    return-void
.end method
