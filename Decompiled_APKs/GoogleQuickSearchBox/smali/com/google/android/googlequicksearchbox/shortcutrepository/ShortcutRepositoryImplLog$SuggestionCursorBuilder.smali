.class Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$SuggestionCursorBuilder;
.super Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;
.source "ShortcutRepositoryImplLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestionCursorBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder",
        "<",
        "Lcom/google/android/googlequicksearchbox/ShortcutList;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAllowedSources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/googlequicksearchbox/Source;",
            ">;"
        }
    .end annotation
.end field

.field private final mExtrasColumn:I

.field private final mIncludeNav:Z

.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;Ljava/util/Map;ZLjava/lang/String;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter
    .parameter "includeNav"
    .parameter "userQuery"
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/googlequicksearchbox/Source;",
            ">;Z",
            "Ljava/lang/String;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 450
    .local p2, allowedSources:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/googlequicksearchbox/Source;>;"
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$SuggestionCursorBuilder;->this$0:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;

    .line 451
    invoke-direct {p0, p4, p5}, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;-><init>(Ljava/lang/String;Landroid/database/Cursor;)V

    .line 452
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$SuggestionCursorBuilder;->mAllowedSources:Ljava/util/Map;

    .line 453
    iput-boolean p3, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$SuggestionCursorBuilder;->mIncludeNav:Z

    .line 454
    sget-object v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->custom_columns:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$SuggestionCursorBuilder;->mExtrasColumn:I

    .line 455
    return-void
.end method

.method private mapIcon(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "iconUri"

    .prologue
    .line 503
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$SuggestionCursorBuilder;->this$0:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;

    #getter for: Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->mResourceFixer:Lcom/google/android/googlequicksearchbox/shortcutrepository/BrokenResourceUriFixer;
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->access$500(Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;)Lcom/google/android/googlequicksearchbox/shortcutrepository/BrokenResourceUriFixer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$SuggestionCursorBuilder;->this$0:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;

    #getter for: Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->mResourceFixer:Lcom/google/android/googlequicksearchbox/shortcutrepository/BrokenResourceUriFixer;
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->access$500(Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;)Lcom/google/android/googlequicksearchbox/shortcutrepository/BrokenResourceUriFixer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/BrokenResourceUriFixer;->mapDrawableId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 506
    .end local p1
    :cond_0
    return-object p1
.end method

.method private shouldKeepShortcut(Lcom/google/android/googlequicksearchbox/Suggestion;)Z
    .locals 8
    .parameter "s"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 475
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$SuggestionCursorBuilder;->mCursor:Landroid/database/Cursor;

    sget-object v5, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->source:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v5}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 476
    .local v0, srcCol:I
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$SuggestionCursorBuilder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 478
    .local v1, srcStr:Ljava/lang/String;
    const-string v4, "web"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 479
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->isShortcuttable()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$SuggestionCursorBuilder;->mIncludeNav:Z

    if-eqz v4, :cond_1

    .line 486
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    .line 479
    goto :goto_0

    .line 481
    :cond_2
    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$SuggestionCursorBuilder;->this$0:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;

    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$SuggestionCursorBuilder;->mAllowedSources:Ljava/util/Map;

    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$SuggestionCursorBuilder;->mCursor:Landroid/database/Cursor;

    sget-object v7, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->source_version_code:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v7}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->ordinal()I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v4, v5, v1, v6}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->isCompatibleWithSources(Ljava/util/Map;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_3
    move v2, v3

    .line 486
    goto :goto_0
.end method


# virtual methods
.method protected createSuggestionList(Ljava/lang/String;Ljava/util/List;)Lcom/google/android/googlequicksearchbox/ShortcutList;
    .locals 6
    .parameter "userQuery"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/googlequicksearchbox/Suggestion;",
            ">;)",
            "Lcom/google/android/googlequicksearchbox/ShortcutList;"
        }
    .end annotation

    .prologue
    .line 464
    .local p2, contents:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/googlequicksearchbox/Suggestion;>;"
    new-instance v0, Lcom/google/android/googlequicksearchbox/ShortcutListImpl;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$SuggestionCursorBuilder;->this$0:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->getUiThread()Landroid/os/Handler;

    move-result-object v2

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$SuggestionCursorBuilder;->this$0:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->getRefresher()Lcom/google/android/googlequicksearchbox/ShortcutRefresher;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$SuggestionCursorBuilder;->this$0:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/googlequicksearchbox/ShortcutListImpl;-><init>(Ljava/lang/String;Landroid/os/Handler;Lcom/google/android/googlequicksearchbox/ShortcutRefresher;Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;Ljava/lang/Iterable;)V

    return-object v0
.end method

.method protected bridge synthetic createSuggestionList(Ljava/lang/String;Ljava/util/List;)Lcom/google/android/googlequicksearchbox/SuggestionList;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 443
    invoke-virtual {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$SuggestionCursorBuilder;->createSuggestionList(Ljava/lang/String;Ljava/util/List;)Lcom/google/android/googlequicksearchbox/ShortcutList;

    move-result-object v0

    return-object v0
.end method

.method public getExtras()Lcom/google/android/googlequicksearchbox/SuggestionExtras;
    .locals 5

    .prologue
    .line 542
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$SuggestionCursorBuilder;->mCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$SuggestionCursorBuilder;->mExtrasColumn:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 543
    .local v1, json:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 545
    :try_start_0
    new-instance v2, Lcom/google/android/googlequicksearchbox/JsonBackedSuggestionExtras;

    invoke-direct {v2, v1}, Lcom/google/android/googlequicksearchbox/JsonBackedSuggestionExtras;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    :goto_0
    return-object v2

    .line 546
    :catch_0
    move-exception v0

    .line 547
    .local v0, e:Lorg/json/JSONException;
    const-string v2, "QSB.CursorSuggestionBuilder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not parse JSON extras from DB: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    .end local v0           #e:Lorg/json/JSONException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getIcon1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 511
    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->getIcon1()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$SuggestionCursorBuilder;->mapIcon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIcon2()Ljava/lang/String;
    .locals 3

    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$SuggestionCursorBuilder;->isSpinnerWhileRefreshing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$SuggestionCursorBuilder;->this$0:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->getRefresher()Lcom/google/android/googlequicksearchbox/ShortcutRefresher;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$SuggestionCursorBuilder;->getSuggestionSource()Lcom/google/android/googlequicksearchbox/Source;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$SuggestionCursorBuilder;->getShortcutId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/ShortcutRefresher;->shouldRefresh(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$SuggestionCursorBuilder;->this$0:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->getRefresher()Lcom/google/android/googlequicksearchbox/ShortcutRefresher;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$SuggestionCursorBuilder;->getSuggestionSource()Lcom/google/android/googlequicksearchbox/Source;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$SuggestionCursorBuilder;->getShortcutId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/ShortcutRefresher;->isRefreshing(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 520
    :cond_0
    const-string v0, "spinner"

    .line 523
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->getIcon2()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$SuggestionCursorBuilder;->mapIcon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSuggestionSource()Lcom/google/android/googlequicksearchbox/Source;
    .locals 4

    .prologue
    .line 491
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$SuggestionCursorBuilder;->mCursor:Landroid/database/Cursor;

    sget-object v3, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->source:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v3}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 492
    .local v0, srcCol:I
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$SuggestionCursorBuilder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 494
    .local v1, srcStr:Ljava/lang/String;
    const-string v2, "web"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 497
    const/4 v2, 0x0

    .line 499
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$SuggestionCursorBuilder;->mAllowedSources:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/googlequicksearchbox/Source;

    goto :goto_0
.end method

.method public isHistory()Z
    .locals 1

    .prologue
    .line 537
    const/4 v0, 0x0

    return v0
.end method

.method public isShortcut()Z
    .locals 1

    .prologue
    .line 528
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldKeepSuggestion(Lcom/google/android/googlequicksearchbox/Suggestion;)Z
    .locals 1
    .parameter "s"

    .prologue
    .line 459
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$SuggestionCursorBuilder;->shouldKeepShortcut(Lcom/google/android/googlequicksearchbox/Suggestion;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->shouldKeepSuggestion(Lcom/google/android/googlequicksearchbox/Suggestion;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
