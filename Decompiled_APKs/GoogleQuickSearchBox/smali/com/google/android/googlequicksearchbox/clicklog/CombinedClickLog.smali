.class public Lcom/google/android/googlequicksearchbox/clicklog/CombinedClickLog;
.super Ljava/lang/Object;
.source "CombinedClickLog.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;


# instance fields
.field private final mClickLog:Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;

.field private final mShortcutRepository:Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;)V
    .locals 0
    .parameter "clickLog"
    .parameter "shortcutRepo"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/clicklog/CombinedClickLog;->mClickLog:Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;

    .line 37
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/clicklog/CombinedClickLog;->mShortcutRepository:Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;

    .line 38
    return-void
.end method


# virtual methods
.method public clearHistory()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/clicklog/CombinedClickLog;->mClickLog:Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;->clearHistory()V

    .line 43
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/clicklog/CombinedClickLog;->mShortcutRepository:Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;->clearHistory()V

    .line 44
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/clicklog/CombinedClickLog;->mClickLog:Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;->close()V

    .line 49
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/clicklog/CombinedClickLog;->mShortcutRepository:Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;->close()V

    .line 50
    return-void
.end method

.method public getSourceScores(Lcom/google/android/googlequicksearchbox/util/Consumer;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/googlequicksearchbox/util/Consumer",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;,"Lcom/google/android/googlequicksearchbox/util/Consumer<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/clicklog/CombinedClickLog;->mClickLog:Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;

    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;->getSourceScores(Lcom/google/android/googlequicksearchbox/util/Consumer;)V

    .line 55
    return-void
.end method

.method public hasHistory(Lcom/google/android/googlequicksearchbox/util/Consumer;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/googlequicksearchbox/util/Consumer",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;,"Lcom/google/android/googlequicksearchbox/util/Consumer<Ljava/lang/Boolean;>;"
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Boolean;

    new-instance v2, Lcom/google/android/googlequicksearchbox/clicklog/CombinedClickLog$1;

    invoke-direct {v2, p0, p1}, Lcom/google/android/googlequicksearchbox/clicklog/CombinedClickLog$1;-><init>(Lcom/google/android/googlequicksearchbox/clicklog/CombinedClickLog;Lcom/google/android/googlequicksearchbox/util/Consumer;)V

    invoke-static {v1, v2}, Lcom/google/android/googlequicksearchbox/util/Consumers;->createMutlipleConsumer([Ljava/lang/Object;Lcom/google/android/googlequicksearchbox/util/Consumer;)Lcom/google/android/googlequicksearchbox/util/Consumer;

    move-result-object v0

    .line 69
    .local v0, orConsumer:Lcom/google/android/googlequicksearchbox/util/Consumer;,"Lcom/google/android/googlequicksearchbox/util/Consumer<Ljava/lang/Boolean;>;"
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/clicklog/CombinedClickLog;->mClickLog:Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;

    invoke-interface {v1, v0}, Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;->hasHistory(Lcom/google/android/googlequicksearchbox/util/Consumer;)V

    .line 70
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/clicklog/CombinedClickLog;->mShortcutRepository:Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;

    invoke-interface {v1, v0}, Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;->hasHistory(Lcom/google/android/googlequicksearchbox/util/Consumer;)V

    .line 71
    return-void
.end method

.method public reportClick(Lcom/google/android/googlequicksearchbox/Suggestion;Ljava/lang/String;)V
    .locals 1
    .parameter "suggestion"
    .parameter "userQuery"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/clicklog/CombinedClickLog;->mClickLog:Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;

    invoke-interface {v0, p1, p2}, Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;->reportClick(Lcom/google/android/googlequicksearchbox/Suggestion;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/clicklog/CombinedClickLog;->mShortcutRepository:Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;

    invoke-interface {v0, p1, p2}, Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;->reportClick(Lcom/google/android/googlequicksearchbox/Suggestion;Ljava/lang/String;)V

    .line 77
    return-void
.end method
