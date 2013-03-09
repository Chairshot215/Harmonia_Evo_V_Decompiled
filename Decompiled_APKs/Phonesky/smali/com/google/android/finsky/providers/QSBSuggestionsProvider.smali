.class public Lcom/google/android/finsky/providers/QSBSuggestionsProvider;
.super Landroid/content/SearchRecentSuggestionsProvider;
.source "QSBSuggestionsProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/SearchRecentSuggestionsProvider;-><init>()V

    .line 21
    const-string v0, "com.google.android.finsky.QSBSuggestionsProvider2"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/providers/QSBSuggestionsProvider;->setupSuggestions(Ljava/lang/String;I)V

    .line 22
    return-void
.end method


# virtual methods
.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 32
    if-eqz p4, :cond_0

    array-length v1, p4

    if-nez v1, :cond_1

    .line 33
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SelectionArgs must be provided for the Uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 37
    :cond_1
    aget-object v1, p4, v5

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, query:Ljava/lang/String;
    new-instance v0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;

    invoke-virtual {p0}, Lcom/google/android/finsky/providers/QSBSuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;-><init>(Landroid/content/Context;Ljava/lang/String;ZZI)V

    .line 40
    .local v0, suggester:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;
    invoke-virtual {v0}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;->gatherSuggestions()Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method
