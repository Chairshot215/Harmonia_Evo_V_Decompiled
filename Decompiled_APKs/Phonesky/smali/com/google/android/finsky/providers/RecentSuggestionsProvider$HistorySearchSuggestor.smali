.class Lcom/google/android/finsky/providers/RecentSuggestionsProvider$HistorySearchSuggestor;
.super Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;
.source "RecentSuggestionsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/providers/RecentSuggestionsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HistorySearchSuggestor"
.end annotation


# instance fields
.field private final mCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/database/Cursor;Landroid/content/Context;)V
    .locals 0
    .parameter "query"
    .parameter "historyCursor"
    .parameter "context"

    .prologue
    .line 452
    invoke-direct {p0, p1, p3}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 453
    iput-object p2, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$HistorySearchSuggestor;->mCursor:Landroid/database/Cursor;

    .line 454
    return-void
.end method


# virtual methods
.method protected makeRequest(Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;)V
    .locals 10
    .parameter "listener"

    .prologue
    .line 458
    const/4 v1, 0x0

    .line 459
    .local v1, col:I
    const/4 v4, 0x0

    .line 460
    .local v4, idColumn:I
    const/4 v7, 0x0

    .line 461
    .local v7, textColumn:I
    iget-object v8, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$HistorySearchSuggestor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v2, v0, v3

    .line 462
    .local v2, historyCol:Ljava/lang/String;
    const-string v8, "_id"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 463
    move v4, v1

    .line 467
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 461
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 464
    :cond_1
    const-string v8, "suggest_text_1"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 465
    move v7, v1

    goto :goto_1

    .line 469
    .end local v2           #historyCol:Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$HistorySearchSuggestor;->mCursor:Landroid/database/Cursor;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 470
    :goto_2
    iget-object v8, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$HistorySearchSuggestor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_4

    .line 472
    iget-object v8, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$HistorySearchSuggestor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 473
    .local v6, suggestion:Ljava/lang/String;
    iget-object v8, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$HistorySearchSuggestor;->mQuery:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 474
    iget-object v8, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$HistorySearchSuggestor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const v9, 0x108004a

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v8, v9, v6}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$HistorySearchSuggestor;->addRow(ILjava/lang/Object;Ljava/lang/String;)V

    .line 477
    :cond_3
    iget-object v8, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$HistorySearchSuggestor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 479
    .end local v6           #suggestion:Ljava/lang/String;
    :cond_4
    iget-object v8, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$HistorySearchSuggestor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 480
    invoke-interface {p1}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;->onComplete()V

    .line 481
    return-void
.end method
