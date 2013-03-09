.class Lcom/google/android/googlequicksearchbox/DefaultSourceRanker$RankedSourceCache;
.super Lcom/google/android/googlequicksearchbox/util/CachedLater;
.source "DefaultSourceRanker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/DefaultSourceRanker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RankedSourceCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/googlequicksearchbox/util/CachedLater",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/googlequicksearchbox/Source;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/DefaultSourceRanker;


# direct methods
.method private constructor <init>(Lcom/google/android/googlequicksearchbox/DefaultSourceRanker;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/DefaultSourceRanker$RankedSourceCache;->this$0:Lcom/google/android/googlequicksearchbox/DefaultSourceRanker;

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/util/CachedLater;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/googlequicksearchbox/DefaultSourceRanker;Lcom/google/android/googlequicksearchbox/DefaultSourceRanker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/DefaultSourceRanker$RankedSourceCache;-><init>(Lcom/google/android/googlequicksearchbox/DefaultSourceRanker;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/googlequicksearchbox/DefaultSourceRanker$RankedSourceCache;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/DefaultSourceRanker$RankedSourceCache;->store(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected create()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/DefaultSourceRanker$RankedSourceCache;->this$0:Lcom/google/android/googlequicksearchbox/DefaultSourceRanker;

    #getter for: Lcom/google/android/googlequicksearchbox/DefaultSourceRanker;->mClickLog:Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/DefaultSourceRanker;->access$500(Lcom/google/android/googlequicksearchbox/DefaultSourceRanker;)Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;

    move-result-object v0

    new-instance v1, Lcom/google/android/googlequicksearchbox/DefaultSourceRanker$RankedSourceCache$1;

    invoke-direct {v1, p0}, Lcom/google/android/googlequicksearchbox/DefaultSourceRanker$RankedSourceCache$1;-><init>(Lcom/google/android/googlequicksearchbox/DefaultSourceRanker$RankedSourceCache;)V

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;->getSourceScores(Lcom/google/android/googlequicksearchbox/util/Consumer;)V

    .line 103
    return-void
.end method
