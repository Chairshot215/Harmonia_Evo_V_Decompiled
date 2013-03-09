.class Lcom/google/android/googlequicksearchbox/SourceShortcutRefresher;
.super Ljava/lang/Object;
.source "SourceShortcutRefresher.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/ShortcutRefresher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/SourceShortcutRefresher$ShortcutRefreshTask;
    }
.end annotation


# instance fields
.field private final mExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

.field private final mRefreshed:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRefreshing:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;)V
    .locals 1
    .parameter "executor"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/SourceShortcutRefresher;->mRefreshed:Ljava/util/Set;

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/SourceShortcutRefresher;->mRefreshing:Ljava/util/Set;

    .line 48
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SourceShortcutRefresher;->mExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    .line 49
    return-void
.end method

.method private static makeKey(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "source"
    .parameter "shortcutId"

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/google/android/googlequicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private markShortcutRefreshing(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;)V
    .locals 2
    .parameter "source"
    .parameter "shortcutId"

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 91
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SourceShortcutRefresher;->mRefreshing:Ljava/util/Set;

    invoke-static {p1, p2}, Lcom/google/android/googlequicksearchbox/SourceShortcutRefresher;->makeKey(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public isRefreshing(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;)Z
    .locals 2
    .parameter "source"
    .parameter "shortcutId"

    .prologue
    .line 82
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SourceShortcutRefresher;->mRefreshing:Ljava/util/Set;

    invoke-static {p1, p2}, Lcom/google/android/googlequicksearchbox/SourceShortcutRefresher;->makeKey(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markShortcutRefreshed(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;)V
    .locals 2
    .parameter "source"
    .parameter "shortcutId"

    .prologue
    .line 98
    if-nez p1, :cond_0

    .line 104
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/googlequicksearchbox/SourceShortcutRefresher;->makeKey(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, key:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SourceShortcutRefresher;->mRefreshed:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SourceShortcutRefresher;->mRefreshing:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public refresh(Lcom/google/android/googlequicksearchbox/Suggestion;Lcom/google/android/googlequicksearchbox/ShortcutRefresher$Listener;)V
    .locals 6
    .parameter "shortcut"
    .parameter "listener"

    .prologue
    .line 53
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionSource()Lcom/google/android/googlequicksearchbox/Source;

    move-result-object v2

    .line 54
    .local v2, source:Lcom/google/android/googlequicksearchbox/Source;
    if-nez v2, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getShortcutId()Ljava/lang/String;

    move-result-object v3

    .line 58
    .local v3, shortcutId:Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/google/android/googlequicksearchbox/SourceShortcutRefresher;->shouldRefresh(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2, v3}, Lcom/google/android/googlequicksearchbox/SourceShortcutRefresher;->isRefreshing(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    invoke-direct {p0, v2, v3}, Lcom/google/android/googlequicksearchbox/SourceShortcutRefresher;->markShortcutRefreshing(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIntentExtraData()Ljava/lang/String;

    move-result-object v4

    .line 65
    .local v4, extraData:Ljava/lang/String;
    new-instance v0, Lcom/google/android/googlequicksearchbox/SourceShortcutRefresher$ShortcutRefreshTask;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/googlequicksearchbox/SourceShortcutRefresher$ShortcutRefreshTask;-><init>(Lcom/google/android/googlequicksearchbox/SourceShortcutRefresher;Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/ShortcutRefresher$Listener;)V

    .line 67
    .local v0, refreshTask:Lcom/google/android/googlequicksearchbox/SourceShortcutRefresher$ShortcutRefreshTask;
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SourceShortcutRefresher;->mExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    invoke-interface {v1, v0}, Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;->execute(Lcom/google/android/googlequicksearchbox/util/NamedTask;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SourceShortcutRefresher;->mRefreshed:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 112
    return-void
.end method

.method public shouldRefresh(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;)Z
    .locals 2
    .parameter "source"
    .parameter "shortcutId"

    .prologue
    .line 76
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SourceShortcutRefresher;->mRefreshed:Ljava/util/Set;

    invoke-static {p1, p2}, Lcom/google/android/googlequicksearchbox/SourceShortcutRefresher;->makeKey(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
