.class Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$6;
.super Ljava/lang/Object;
.source "ShortcutRepositoryImplLog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->getShortcutsForQuery(Ljava/lang/String;Ljava/util/Collection;ZLcom/google/android/googlequicksearchbox/util/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;

.field final synthetic val$allowedSources:Ljava/util/Collection;

.field final synthetic val$consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;

.field final synthetic val$includeNav:Z

.field final synthetic val$now:J

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;Ljava/lang/String;Ljava/util/Collection;ZJLcom/google/android/googlequicksearchbox/util/Consumer;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$6;->this$0:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;

    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$6;->val$query:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$6;->val$allowedSources:Ljava/util/Collection;

    iput-boolean p4, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$6;->val$includeNav:Z

    iput-wide p5, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$6;->val$now:J

    iput-object p7, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$6;->val$consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 320
    new-instance v6, Lcom/google/android/googlequicksearchbox/LatencyTracker;

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$6;->this$0:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->getClock()Lcom/google/android/googlequicksearchbox/Clock;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/google/android/googlequicksearchbox/LatencyTracker;-><init>(Lcom/google/android/googlequicksearchbox/Clock;)V

    .line 321
    .local v6, latency:Lcom/google/android/googlequicksearchbox/LatencyTracker;
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$6;->this$0:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$6;->val$query:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$6;->val$allowedSources:Ljava/util/Collection;

    iget-boolean v3, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$6;->val$includeNav:Z

    iget-wide v4, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$6;->val$now:J

    #calls: Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->getShortcutsForQuery(Ljava/lang/String;Ljava/util/Collection;ZJ)Lcom/google/android/googlequicksearchbox/ShortcutList;
    invoke-static/range {v0 .. v5}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->access$200(Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;Ljava/lang/String;Ljava/util/Collection;ZJ)Lcom/google/android/googlequicksearchbox/ShortcutList;

    move-result-object v7

    .line 323
    .local v7, shortcuts:Lcom/google/android/googlequicksearchbox/ShortcutList;
    invoke-virtual {v6}, Lcom/google/android/googlequicksearchbox/LatencyTracker;->getLatency()I

    move-result v0

    invoke-interface {v7, v0}, Lcom/google/android/googlequicksearchbox/ShortcutList;->setLatency(I)V

    .line 324
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$6;->val$consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;

    invoke-interface {v0, v7}, Lcom/google/android/googlequicksearchbox/util/Consumer;->consume(Ljava/lang/Object;)Z

    .line 325
    return-void
.end method
