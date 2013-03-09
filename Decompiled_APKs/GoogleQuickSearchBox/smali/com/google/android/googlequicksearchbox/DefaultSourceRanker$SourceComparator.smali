.class Lcom/google/android/googlequicksearchbox/DefaultSourceRanker$SourceComparator;
.super Ljava/lang/Object;
.source "DefaultSourceRanker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/DefaultSourceRanker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SourceComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/googlequicksearchbox/Source;",
        ">;"
    }
.end annotation


# instance fields
.field private final mClickScores:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, clickScores:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/DefaultSourceRanker$SourceComparator;->mClickScores:Ljava/util/Map;

    .line 112
    return-void
.end method

.method private getClickScore(Lcom/google/android/googlequicksearchbox/Source;)I
    .locals 4
    .parameter "source"

    .prologue
    const/4 v1, 0x0

    .line 141
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/DefaultSourceRanker$SourceComparator;->mClickScores:Ljava/util/Map;

    if-nez v2, :cond_1

    .line 143
    :cond_0
    :goto_0
    return v1

    .line 142
    :cond_1
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/DefaultSourceRanker$SourceComparator;->mClickScores:Ljava/util/Map;

    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 143
    .local v0, clickScore:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method private getSourceScore(Lcom/google/android/googlequicksearchbox/Source;)I
    .locals 1
    .parameter "source"

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/DefaultSourceRanker$SourceComparator;->getClickScore(Lcom/google/android/googlequicksearchbox/Source;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public compare(Lcom/google/android/googlequicksearchbox/Source;Lcom/google/android/googlequicksearchbox/Source;)I
    .locals 5
    .parameter "source1"
    .parameter "source2"

    .prologue
    .line 115
    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/Source;->isEnabledByDefault()Z

    move-result v1

    .line 116
    .local v1, source1IsDefault:Z
    invoke-interface {p2}, Lcom/google/android/googlequicksearchbox/Source;->isEnabledByDefault()Z

    move-result v2

    .line 118
    .local v2, source2IsDefault:Z
    if-eq v1, v2, :cond_1

    .line 120
    if-eqz v1, :cond_0

    const/4 v3, -0x1

    .line 130
    :goto_0
    return v3

    .line 120
    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    .line 124
    :cond_1
    invoke-direct {p0, p2}, Lcom/google/android/googlequicksearchbox/DefaultSourceRanker$SourceComparator;->getSourceScore(Lcom/google/android/googlequicksearchbox/Source;)I

    move-result v3

    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/DefaultSourceRanker$SourceComparator;->getSourceScore(Lcom/google/android/googlequicksearchbox/Source;)I

    move-result v4

    sub-int v0, v3, v4

    .line 125
    .local v0, scoreDiff:I
    if-eqz v0, :cond_2

    move v3, v0

    .line 126
    goto :goto_0

    .line 130
    :cond_2
    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/Source;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, Lcom/google/android/googlequicksearchbox/Source;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    check-cast p1, Lcom/google/android/googlequicksearchbox/Source;

    .end local p1
    check-cast p2, Lcom/google/android/googlequicksearchbox/Source;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/DefaultSourceRanker$SourceComparator;->compare(Lcom/google/android/googlequicksearchbox/Source;Lcom/google/android/googlequicksearchbox/Source;)I

    move-result v0

    return v0
.end method
