.class public Lcom/google/android/googlequicksearchbox/SourceResultBuilder;
.super Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;
.source "SourceResultBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder",
        "<",
        "Lcom/google/android/googlequicksearchbox/SuggestionList;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFilter:Lcom/google/android/googlequicksearchbox/SuggestionFilter;

.field private final mSource:Lcom/google/android/googlequicksearchbox/Source;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;Landroid/database/Cursor;Lcom/google/android/googlequicksearchbox/SuggestionFilter;)V
    .locals 0
    .parameter "source"
    .parameter "userQuery"
    .parameter "cursor"
    .parameter "filter"

    .prologue
    .line 36
    invoke-direct {p0, p2, p3}, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;-><init>(Ljava/lang/String;Landroid/database/Cursor;)V

    .line 37
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SourceResultBuilder;->mSource:Lcom/google/android/googlequicksearchbox/Source;

    .line 38
    iput-object p4, p0, Lcom/google/android/googlequicksearchbox/SourceResultBuilder;->mFilter:Lcom/google/android/googlequicksearchbox/SuggestionFilter;

    .line 39
    return-void
.end method

.method private isQsbApp(Lcom/google/android/googlequicksearchbox/Suggestion;)Z
    .locals 2
    .parameter "s"

    .prologue
    .line 58
    const-string v0, "content://applications/applications/com.google.android.googlequicksearchbox/com.google.android.googlequicksearchbox.SearchActivity"

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIntentDataString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIntentAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected createSuggestionList(Ljava/lang/String;Ljava/util/List;)Lcom/google/android/googlequicksearchbox/SuggestionList;
    .locals 2
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
            "Lcom/google/android/googlequicksearchbox/SuggestionList;"
        }
    .end annotation

    .prologue
    .line 43
    .local p2, contents:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/googlequicksearchbox/Suggestion;>;"
    new-instance v0, Lcom/google/android/googlequicksearchbox/SuggestionListImpl;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SourceResultBuilder;->mSource:Lcom/google/android/googlequicksearchbox/Source;

    invoke-interface {v1}, Lcom/google/android/googlequicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/google/android/googlequicksearchbox/SuggestionListImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 44
    .local v0, result:Lcom/google/android/googlequicksearchbox/SuggestionList;
    return-object v0
.end method

.method public getExtras()Lcom/google/android/googlequicksearchbox/SuggestionExtras;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SourceResultBuilder;->mCursor:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/MapBackedSuggestionExtras;->fromCursor(Landroid/database/Cursor;)Lcom/google/android/googlequicksearchbox/SuggestionExtras;

    move-result-object v0

    return-object v0
.end method

.method protected getIcon1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SourceResultBuilder;->mSource:Lcom/google/android/googlequicksearchbox/Source;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/Source;->isIgnoreIcon1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->getIcon1()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSuggestionSource()Lcom/google/android/googlequicksearchbox/Source;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SourceResultBuilder;->mSource:Lcom/google/android/googlequicksearchbox/Source;

    return-object v0
.end method

.method public isHistory()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public isShortcut()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldKeepSuggestion(Lcom/google/android/googlequicksearchbox/Suggestion;)Z
    .locals 1
    .parameter "s"

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/google/android/googlequicksearchbox/CursorSuggestionBuilder;->shouldKeepSuggestion(Lcom/google/android/googlequicksearchbox/Suggestion;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/SourceResultBuilder;->isQsbApp(Lcom/google/android/googlequicksearchbox/Suggestion;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SourceResultBuilder;->mFilter:Lcom/google/android/googlequicksearchbox/SuggestionFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SourceResultBuilder;->mFilter:Lcom/google/android/googlequicksearchbox/SuggestionFilter;

    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/SuggestionFilter;->accept(Lcom/google/android/googlequicksearchbox/Suggestion;)Z

    move-result v0

    .line 53
    :goto_0
    return v0

    .line 51
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 53
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
