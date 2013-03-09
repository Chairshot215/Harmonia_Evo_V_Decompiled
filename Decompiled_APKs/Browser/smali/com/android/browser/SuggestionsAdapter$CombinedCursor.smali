.class Lcom/android/browser/SuggestionsAdapter$CombinedCursor;
.super Lcom/android/browser/SuggestionsAdapter$CursorSource;
.source "SuggestionsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/SuggestionsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CombinedCursor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/SuggestionsAdapter;


# direct methods
.method constructor <init>(Lcom/android/browser/SuggestionsAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 442
    iput-object p1, p0, Lcom/android/browser/SuggestionsAdapter$CombinedCursor;->this$0:Lcom/android/browser/SuggestionsAdapter;

    invoke-direct {p0, p1}, Lcom/android/browser/SuggestionsAdapter$CursorSource;-><init>(Lcom/android/browser/SuggestionsAdapter;)V

    return-void
.end method

.method private getTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "title"
    .parameter "url"

    .prologue
    .line 497
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_1

    .line 498
    :cond_0
    invoke-static {p2}, Lcom/android/browser/UrlUtils;->stripUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 500
    :cond_1
    return-object p1
.end method

.method private getUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "title"
    .parameter "url"

    .prologue
    .line 511
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 514
    :cond_0
    const/4 v0, 0x0

    .line 516
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p2}, Lcom/android/browser/UrlUtils;->stripUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getItem()Lcom/android/browser/SuggestionsAdapter$SuggestItem;
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 446
    iget-object v5, p0, Lcom/android/browser/SuggestionsAdapter$CombinedCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/browser/SuggestionsAdapter$CombinedCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_2

    .line 447
    iget-object v5, p0, Lcom/android/browser/SuggestionsAdapter$CombinedCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 448
    .local v1, title:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/browser/SuggestionsAdapter$CombinedCursor;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 449
    .local v2, url:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/browser/SuggestionsAdapter$CombinedCursor;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v3, :cond_0

    move v0, v3

    .line 450
    .local v0, isBookmark:Z
    :goto_0
    new-instance v5, Lcom/android/browser/SuggestionsAdapter$SuggestItem;

    iget-object v6, p0, Lcom/android/browser/SuggestionsAdapter$CombinedCursor;->this$0:Lcom/android/browser/SuggestionsAdapter;

    invoke-direct {p0, v1, v2}, Lcom/android/browser/SuggestionsAdapter$CombinedCursor;->getTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v1, v2}, Lcom/android/browser/SuggestionsAdapter$CombinedCursor;->getUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v0, :cond_1

    :goto_1
    invoke-direct {v5, v6, v7, v8, v4}, Lcom/android/browser/SuggestionsAdapter$SuggestItem;-><init>(Lcom/android/browser/SuggestionsAdapter;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v3, v5

    .line 453
    .end local v0           #isBookmark:Z
    .end local v1           #title:Ljava/lang/String;
    .end local v2           #url:Ljava/lang/String;
    :goto_2
    return-object v3

    .restart local v1       #title:Ljava/lang/String;
    .restart local v2       #url:Ljava/lang/String;
    :cond_0
    move v0, v4

    .line 449
    goto :goto_0

    .restart local v0       #isBookmark:Z
    :cond_1
    move v4, v3

    .line 450
    goto :goto_1

    .line 453
    .end local v0           #isBookmark:Z
    .end local v1           #title:Ljava/lang/String;
    .end local v2           #url:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public runQuery(Ljava/lang/CharSequence;)V
    .locals 9
    .parameter "constraint"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 459
    iget-object v0, p0, Lcom/android/browser/SuggestionsAdapter$CombinedCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/android/browser/SuggestionsAdapter$CombinedCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 462
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 463
    .local v7, like:Ljava/lang/String;
    const/4 v6, 0x0

    .line 464
    .local v6, args:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 465
    .local v3, selection:Ljava/lang/String;
    const-string v0, "http"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "file"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 466
    :cond_1
    new-array v6, v4, [Ljava/lang/String;

    .line 467
    aput-object v7, v6, v2

    .line 468
    const-string v3, "url LIKE ?"

    .line 479
    :goto_0
    sget-object v0, Lcom/android/browser/provider/BrowserProvider2$OmniboxSuggestions;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 480
    .local v8, ub:Landroid/net/Uri$Builder;
    const-string v0, "limit"

    iget-object v1, p0, Lcom/android/browser/SuggestionsAdapter$CombinedCursor;->this$0:Lcom/android/browser/SuggestionsAdapter;

    iget v1, v1, Lcom/android/browser/SuggestionsAdapter;->mLinesLandscape:I

    iget-object v2, p0, Lcom/android/browser/SuggestionsAdapter$CombinedCursor;->this$0:Lcom/android/browser/SuggestionsAdapter;

    iget v2, v2, Lcom/android/browser/SuggestionsAdapter;->mLinesPortrait:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 482
    iget-object v0, p0, Lcom/android/browser/SuggestionsAdapter$CombinedCursor;->this$0:Lcom/android/browser/SuggestionsAdapter;

    iget-object v0, v0, Lcom/android/browser/SuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/android/browser/SuggestionsAdapter;->access$100()[Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_4

    move-object v4, v6

    :goto_1
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/SuggestionsAdapter$CombinedCursor;->mCursor:Landroid/database/Cursor;

    .line 485
    iget-object v0, p0, Lcom/android/browser/SuggestionsAdapter$CombinedCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 486
    iget-object v0, p0, Lcom/android/browser/SuggestionsAdapter$CombinedCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 488
    :cond_2
    return-void

    .line 470
    .end local v8           #ub:Landroid/net/Uri$Builder;
    :cond_3
    const/4 v0, 0x5

    new-array v6, v0, [Ljava/lang/String;

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://www."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v4

    .line 473
    const/4 v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    .line 474
    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://www."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    .line 476
    const/4 v0, 0x4

    aput-object v7, v6, v0

    .line 477
    const-string v3, "(url LIKE ? OR url LIKE ? OR url LIKE ? OR url LIKE ? OR title LIKE ?)"

    goto/16 :goto_0

    .restart local v8       #ub:Landroid/net/Uri$Builder;
    :cond_4
    move-object v4, v5

    .line 482
    goto :goto_1
.end method
