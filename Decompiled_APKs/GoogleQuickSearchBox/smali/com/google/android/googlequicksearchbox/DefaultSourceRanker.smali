.class public Lcom/google/android/googlequicksearchbox/DefaultSourceRanker;
.super Ljava/lang/Object;
.source "DefaultSourceRanker.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/SourceRanker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/DefaultSourceRanker$1;,
        Lcom/google/android/googlequicksearchbox/DefaultSourceRanker$SourceComparator;,
        Lcom/google/android/googlequicksearchbox/DefaultSourceRanker$RankedSourceCache;,
        Lcom/google/android/googlequicksearchbox/DefaultSourceRanker$SourcesObserver;
    }
.end annotation


# instance fields
.field private final mClickLog:Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;

.field private final mRankedSources:Lcom/google/android/googlequicksearchbox/DefaultSourceRanker$RankedSourceCache;

.field private final mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

.field private final mSources:Lcom/google/android/googlequicksearchbox/Sources;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/Sources;Lcom/google/android/googlequicksearchbox/SearchSettings;Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;)V
    .locals 3
    .parameter "sources"
    .parameter "settings"
    .parameter "clickLog"

    .prologue
    const/4 v2, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/DefaultSourceRanker;->mSources:Lcom/google/android/googlequicksearchbox/Sources;

    .line 59
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/DefaultSourceRanker;->mSources:Lcom/google/android/googlequicksearchbox/Sources;

    new-instance v1, Lcom/google/android/googlequicksearchbox/DefaultSourceRanker$SourcesObserver;

    invoke-direct {v1, p0, v2}, Lcom/google/android/googlequicksearchbox/DefaultSourceRanker$SourcesObserver;-><init>(Lcom/google/android/googlequicksearchbox/DefaultSourceRanker;Lcom/google/android/googlequicksearchbox/DefaultSourceRanker$1;)V

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/Sources;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 60
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/DefaultSourceRanker;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    .line 61
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/DefaultSourceRanker;->mClickLog:Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;

    .line 62
    new-instance v0, Lcom/google/android/googlequicksearchbox/DefaultSourceRanker$RankedSourceCache;

    invoke-direct {v0, p0, v2}, Lcom/google/android/googlequicksearchbox/DefaultSourceRanker$RankedSourceCache;-><init>(Lcom/google/android/googlequicksearchbox/DefaultSourceRanker;Lcom/google/android/googlequicksearchbox/DefaultSourceRanker$1;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/DefaultSourceRanker;->mRankedSources:Lcom/google/android/googlequicksearchbox/DefaultSourceRanker$RankedSourceCache;

    .line 63
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/googlequicksearchbox/DefaultSourceRanker;)Lcom/google/android/googlequicksearchbox/Sources;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/DefaultSourceRanker;->mSources:Lcom/google/android/googlequicksearchbox/Sources;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/googlequicksearchbox/DefaultSourceRanker;)Lcom/google/android/googlequicksearchbox/SearchSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/DefaultSourceRanker;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/googlequicksearchbox/DefaultSourceRanker;)Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/DefaultSourceRanker;->mClickLog:Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/DefaultSourceRanker;->mRankedSources:Lcom/google/android/googlequicksearchbox/DefaultSourceRanker$RankedSourceCache;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/DefaultSourceRanker$RankedSourceCache;->clear()V

    .line 71
    return-void
.end method

.method public getSourcesInAll(Lcom/google/android/googlequicksearchbox/util/Consumer;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/googlequicksearchbox/util/Consumer",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/googlequicksearchbox/Source;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;,"Lcom/google/android/googlequicksearchbox/util/Consumer<Ljava/util/List<Lcom/google/android/googlequicksearchbox/Source;>;>;"
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/DefaultSourceRanker;->mRankedSources:Lcom/google/android/googlequicksearchbox/DefaultSourceRanker$RankedSourceCache;

    invoke-virtual {v0, p1}, Lcom/google/android/googlequicksearchbox/DefaultSourceRanker$RankedSourceCache;->getLater(Lcom/google/android/googlequicksearchbox/util/Consumer;)V

    .line 67
    return-void
.end method
