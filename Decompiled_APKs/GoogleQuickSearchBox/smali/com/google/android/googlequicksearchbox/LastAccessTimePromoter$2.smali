.class Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$2;
.super Ljava/lang/Object;
.source "LastAccessTimePromoter.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->updateSourceScores()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/googlequicksearchbox/util/Consumer",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$2;->this$0:Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic consume(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    check-cast p1, Ljava/util/Map;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$2;->consume(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public consume(Ljava/util/Map;)Z
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, sourceScores:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 110
    .local v1, maxScore:I
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 111
    .local v2, score:I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    .line 113
    .end local v2           #score:I
    :cond_0
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$2;->this$0:Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;

    monitor-enter v4

    .line 114
    :try_start_0
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$2;->this$0:Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;

    #setter for: Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->mSourceScores:Ljava/util/Map;
    invoke-static {v3, p1}, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->access$102(Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;Ljava/util/Map;)Ljava/util/Map;

    .line 115
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$2;->this$0:Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;

    #setter for: Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->mMaxSourceScore:I
    invoke-static {v3, v1}, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->access$202(Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;I)I

    .line 116
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$2;->this$0:Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;

    #getter for: Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->mSourceWeights:Ljava/util/Map;
    invoke-static {v3}, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->access$300(Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 117
    monitor-exit v4

    .line 118
    const/4 v3, 0x1

    return v3

    .line 117
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
