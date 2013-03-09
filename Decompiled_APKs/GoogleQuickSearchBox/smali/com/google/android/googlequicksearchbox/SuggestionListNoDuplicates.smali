.class public Lcom/google/android/googlequicksearchbox/SuggestionListNoDuplicates;
.super Lcom/google/android/googlequicksearchbox/MutableSuggestionListImpl;
.source "SuggestionListNoDuplicates.java"


# instance fields
.field private final mSuggestionKeys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "sourceName"
    .parameter "userQuery"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/MutableSuggestionListImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionListNoDuplicates;->mSuggestionKeys:Ljava/util/HashSet;

    .line 37
    return-void
.end method

.method private findSuggestionPosByKey(Ljava/lang/String;)I
    .locals 2
    .parameter "key"

    .prologue
    .line 64
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SuggestionListNoDuplicates;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 65
    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/SuggestionListNoDuplicates;->get(I)Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    .end local v0           #i:I
    :goto_1
    return v0

    .line 64
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public add(Lcom/google/android/googlequicksearchbox/Suggestion;)Z
    .locals 7
    .parameter "suggestion"

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 74
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionKey()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, key:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/SuggestionListNoDuplicates;->mSuggestionKeys:Ljava/util/HashSet;

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 76
    invoke-super {p0, p1}, Lcom/google/android/googlequicksearchbox/MutableSuggestionListImpl;->add(Lcom/google/android/googlequicksearchbox/Suggestion;)Z

    move-result v3

    .line 92
    :cond_0
    :goto_0
    return v3

    .line 78
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->shouldPrefetch()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->isHistorySuggestion()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 80
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/googlequicksearchbox/SuggestionListNoDuplicates;->findSuggestionPosByKey(Ljava/lang/String;)I

    move-result v2

    .line 81
    .local v2, pos:I
    new-instance v4, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    invoke-direct {v4}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/google/android/googlequicksearchbox/SuggestionListNoDuplicates;->get(I)Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->fromSuggestion(Lcom/google/android/googlequicksearchbox/Suggestion;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v0

    .line 82
    .local v0, builder:Lcom/google/android/googlequicksearchbox/Suggestion$Builder;
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->shouldPrefetch()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 83
    invoke-virtual {v0, v6}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->shouldPrefetch(Z)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    .line 85
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->isHistorySuggestion()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 86
    invoke-virtual {v0, v6}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->isHistory(Z)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    .line 88
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->build()Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/google/android/googlequicksearchbox/SuggestionListNoDuplicates;->replace(ILcom/google/android/googlequicksearchbox/Suggestion;)V

    goto :goto_0
.end method

.method public addAll(Ljava/lang/Iterable;)I
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/android/googlequicksearchbox/Suggestion;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, suggestions:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Lcom/google/android/googlequicksearchbox/Suggestion;>;"
    const/4 v0, 0x0

    .line 100
    .local v0, count:I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/googlequicksearchbox/Suggestion;

    .line 101
    .local v2, s:Lcom/google/android/googlequicksearchbox/Suggestion;
    invoke-virtual {p0, v2}, Lcom/google/android/googlequicksearchbox/SuggestionListNoDuplicates;->add(Lcom/google/android/googlequicksearchbox/Suggestion;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    .end local v2           #s:Lcom/google/android/googlequicksearchbox/Suggestion;
    :cond_1
    return v0
.end method

.method public getMutableCopy()Lcom/google/android/googlequicksearchbox/MutableSuggestionList;
    .locals 3

    .prologue
    .line 41
    new-instance v0, Lcom/google/android/googlequicksearchbox/SuggestionListNoDuplicates;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SuggestionListNoDuplicates;->getSourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SuggestionListNoDuplicates;->getUserQuery()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/SuggestionListNoDuplicates;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .local v0, mutable:Lcom/google/android/googlequicksearchbox/MutableSuggestionList;
    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/SuggestionListNoDuplicates;->copyInto(Lcom/google/android/googlequicksearchbox/MutableSuggestionList;)V

    .line 44
    return-object v0
.end method

.method public remove(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionListNoDuplicates;->mSuggestionKeys:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/SuggestionListNoDuplicates;->get(I)Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 50
    invoke-super {p0, p1}, Lcom/google/android/googlequicksearchbox/MutableSuggestionListImpl;->remove(I)V

    .line 51
    return-void
.end method

.method public replace(ILcom/google/android/googlequicksearchbox/Suggestion;)V
    .locals 2
    .parameter "index"
    .parameter "suggestion"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionListNoDuplicates;->mSuggestionKeys:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/SuggestionListNoDuplicates;->get(I)Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionListNoDuplicates;->mSuggestionKeys:Ljava/util/HashSet;

    invoke-virtual {p2}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-super {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/MutableSuggestionListImpl;->replace(ILcom/google/android/googlequicksearchbox/Suggestion;)V

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/SuggestionListNoDuplicates;->remove(I)V

    goto :goto_0
.end method
