.class public Lcom/google/android/googlequicksearchbox/ShouldQueryStrategy;
.super Ljava/lang/Object;
.source "ShouldQueryStrategy.java"


# instance fields
.field private final mConfig:Lcom/google/android/googlequicksearchbox/Config;

.field private final mEmptySources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/googlequicksearchbox/Source;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastAccessValidator:Lcom/google/android/googlequicksearchbox/LastAccessValidator;

.field private mLastQuery:Ljava/lang/String;

.field private final mSources:Lcom/google/android/googlequicksearchbox/Sources;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/Sources;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/LastAccessValidator;)V
    .locals 1
    .parameter "sources"
    .parameter "config"
    .parameter "lastAccessValidator"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ShouldQueryStrategy;->mLastQuery:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ShouldQueryStrategy;->mEmptySources:Ljava/util/HashMap;

    .line 54
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ShouldQueryStrategy;->mSources:Lcom/google/android/googlequicksearchbox/Sources;

    .line 55
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/ShouldQueryStrategy;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    .line 56
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/ShouldQueryStrategy;->mLastAccessValidator:Lcom/google/android/googlequicksearchbox/LastAccessValidator;

    .line 57
    return-void
.end method

.method private updateQuery(Ljava/lang/String;)V
    .locals 3
    .parameter "query"

    .prologue
    .line 103
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ShouldQueryStrategy;->mLastQuery:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ShouldQueryStrategy;->mLastQuery:Ljava/lang/String;

    .line 119
    return-void

    .line 105
    :cond_1
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ShouldQueryStrategy;->mLastQuery:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 108
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ShouldQueryStrategy;->mEmptySources:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 109
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/Integer;>;>;"
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 111
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 116
    .end local v0           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/Integer;>;>;"
    :cond_3
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ShouldQueryStrategy;->mEmptySources:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    goto :goto_0
.end method


# virtual methods
.method public onZeroResults(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "sourceName"
    .parameter "query"

    .prologue
    .line 92
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ShouldQueryStrategy;->mSources:Lcom/google/android/googlequicksearchbox/Sources;

    invoke-interface {v1, p1}, Lcom/google/android/googlequicksearchbox/Sources;->getSource(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Source;

    move-result-object v0

    .line 95
    .local v0, source:Lcom/google/android/googlequicksearchbox/Source;
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ShouldQueryStrategy;->mLastQuery:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/Source;->queryAfterZeroResults()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ShouldQueryStrategy;->mEmptySources:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_0
    return-void
.end method

.method public shouldQuerySource(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;)Z
    .locals 4
    .parameter "source"
    .parameter "query"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, p2}, Lcom/google/android/googlequicksearchbox/ShouldQueryStrategy;->updateQuery(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 66
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ShouldQueryStrategy;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v2, p1}, Lcom/google/android/googlequicksearchbox/Config;->isZeroQuerySource(Lcom/google/android/googlequicksearchbox/Source;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 67
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ShouldQueryStrategy;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v1, p1}, Lcom/google/android/googlequicksearchbox/Config;->isIgnoredUntilUsedZeroQuerySource(Lcom/google/android/googlequicksearchbox/Source;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ShouldQueryStrategy;->mLastAccessValidator:Lcom/google/android/googlequicksearchbox/LastAccessValidator;

    invoke-virtual {v0, p1}, Lcom/google/android/googlequicksearchbox/LastAccessValidator;->hasSourceBeenAccessed(Lcom/google/android/googlequicksearchbox/Source;)Z

    move-result v0

    .line 85
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 73
    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/Source;->getQueryThreshold()I

    move-result v3

    if-lt v2, v3, :cond_3

    .line 77
    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/Source;->queryAfterZeroResults()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ShouldQueryStrategy;->mEmptySources:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 80
    goto :goto_0

    :cond_3
    move v0, v1

    .line 85
    goto :goto_0
.end method
