.class public Lcom/google/android/googlequicksearchbox/MutableSuggestionListImpl;
.super Lcom/google/android/googlequicksearchbox/SuggestionListImpl;
.source "MutableSuggestionListImpl.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/MutableSuggestionList;


# instance fields
.field private final mDataSetObservable:Landroid/database/DataSetObservable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "sourceName"
    .parameter "userQuery"

    .prologue
    .line 32
    const/16 v0, 0x10

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/googlequicksearchbox/SuggestionListImpl;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 29
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/MutableSuggestionListImpl;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 33
    return-void
.end method

.method private notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/MutableSuggestionListImpl;->mExtraColumns:Ljava/util/HashSet;

    .line 63
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/MutableSuggestionListImpl;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 64
    return-void
.end method


# virtual methods
.method public add(Lcom/google/android/googlequicksearchbox/Suggestion;)Z
    .locals 1
    .parameter "suggestion"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/MutableSuggestionListImpl;->mSuggestions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/MutableSuggestionListImpl;->notifyDataSetChanged()V

    .line 38
    const/4 v0, 0x1

    return v0
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
    .line 72
    .local p1, suggestions:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Lcom/google/android/googlequicksearchbox/Suggestion;>;"
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/MutableSuggestionListImpl;->getCount()I

    move-result v1

    .line 73
    .local v1, initialCount:I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/googlequicksearchbox/Suggestion;

    .line 74
    .local v2, s:Lcom/google/android/googlequicksearchbox/Suggestion;
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/MutableSuggestionListImpl;->mSuggestions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    .end local v2           #s:Lcom/google/android/googlequicksearchbox/Suggestion;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/MutableSuggestionListImpl;->getCount()I

    move-result v3

    sub-int/2addr v3, v1

    return v3
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/MutableSuggestionListImpl;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method public remove(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/MutableSuggestionListImpl;->mSuggestions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 43
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/MutableSuggestionListImpl;->notifyDataSetChanged()V

    .line 44
    return-void
.end method

.method public replace(ILcom/google/android/googlequicksearchbox/Suggestion;)V
    .locals 1
    .parameter "index"
    .parameter "suggestion"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/MutableSuggestionListImpl;->mSuggestions:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/MutableSuggestionListImpl;->notifyDataSetChanged()V

    .line 49
    return-void
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0
    .parameter "account"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/MutableSuggestionListImpl;->mAccount:Ljava/lang/String;

    .line 83
    return-void
.end method
