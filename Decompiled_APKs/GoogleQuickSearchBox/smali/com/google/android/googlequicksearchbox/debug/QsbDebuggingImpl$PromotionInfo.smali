.class Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$PromotionInfo;
.super Ljava/lang/Object;
.source "QsbDebuggingImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PromotionInfo"
.end annotation


# instance fields
.field private final mCoreInfo:Ljava/lang/String;

.field private final mPromotionInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/googlequicksearchbox/Suggestion;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl;Lcom/google/android/googlequicksearchbox/Suggestions;)V
    .locals 5
    .parameter
    .parameter "suggestions"

    .prologue
    .line 193
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$PromotionInfo;->this$0:Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/googlequicksearchbox/Suggestions;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/googlequicksearchbox/Suggestions;->getResultCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/googlequicksearchbox/Suggestions;->getExpectedResultCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    #getter for: Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl;->mStartTime:J
    invoke-static {p1}, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl;->access$100(Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$PromotionInfo;->mCoreInfo:Ljava/lang/String;

    .line 198
    invoke-static {}, Lcom/google/common/collect/Maps;->newIdentityHashMap()Ljava/util/IdentityHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$PromotionInfo;->mPromotionInfo:Ljava/util/Map;

    .line 199
    return-void
.end method


# virtual methods
.method public addPromotionInfo(Lcom/google/android/googlequicksearchbox/Suggestion;Ljava/lang/String;)V
    .locals 1
    .parameter "s"
    .parameter "info"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$PromotionInfo;->mPromotionInfo:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    return-void
.end method

.method public getPromotionInfo(Lcom/google/android/googlequicksearchbox/Suggestion;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$PromotionInfo;->mPromotionInfo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$PromotionInfo;->mCoreInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$PromotionInfo;->mPromotionInfo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
