.class Lcom/android/browser/SuggestionsAdapter$SuggestionResults;
.super Ljava/lang/Object;
.source "SuggestionsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/SuggestionsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SuggestionResults"
.end annotation


# instance fields
.field counts:[I

.field items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/SuggestionsAdapter$SuggestItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/browser/SuggestionsAdapter;


# direct methods
.method constructor <init>(Lcom/android/browser/SuggestionsAdapter;)V
    .locals 2
    .parameter

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/browser/SuggestionsAdapter$SuggestionResults;->this$0:Lcom/android/browser/SuggestionsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/browser/SuggestionsAdapter$SuggestionResults;->items:Ljava/util/ArrayList;

    .line 364
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/browser/SuggestionsAdapter$SuggestionResults;->counts:[I

    .line 365
    return-void
.end method


# virtual methods
.method addResult(Lcom/android/browser/SuggestionsAdapter$SuggestItem;)V
    .locals 4
    .parameter "item"

    .prologue
    .line 372
    const/4 v0, 0x0

    .line 373
    .local v0, ix:I
    :goto_0
    iget-object v1, p0, Lcom/android/browser/SuggestionsAdapter$SuggestionResults;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v2, p1, Lcom/android/browser/SuggestionsAdapter$SuggestItem;->type:I

    iget-object v1, p0, Lcom/android/browser/SuggestionsAdapter$SuggestionResults;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/SuggestionsAdapter$SuggestItem;

    iget v1, v1, Lcom/android/browser/SuggestionsAdapter$SuggestItem;->type:I

    if-lt v2, v1, :cond_0

    .line 374
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 375
    :cond_0
    iget-object v1, p0, Lcom/android/browser/SuggestionsAdapter$SuggestionResults;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 376
    iget-object v1, p0, Lcom/android/browser/SuggestionsAdapter$SuggestionResults;->counts:[I

    iget v2, p1, Lcom/android/browser/SuggestionsAdapter$SuggestItem;->type:I

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 377
    return-void
.end method

.method getLineCount()I
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/browser/SuggestionsAdapter$SuggestionResults;->this$0:Lcom/android/browser/SuggestionsAdapter;

    iget-boolean v0, v0, Lcom/android/browser/SuggestionsAdapter;->mLandscapeMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/SuggestionsAdapter$SuggestionResults;->this$0:Lcom/android/browser/SuggestionsAdapter;

    iget v0, v0, Lcom/android/browser/SuggestionsAdapter;->mLinesLandscape:I

    :goto_0
    iget-object v1, p0, Lcom/android/browser/SuggestionsAdapter$SuggestionResults;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/SuggestionsAdapter$SuggestionResults;->this$0:Lcom/android/browser/SuggestionsAdapter;

    iget v0, v0, Lcom/android/browser/SuggestionsAdapter;->mLinesPortrait:I

    goto :goto_0
.end method

.method getTypeCount(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/browser/SuggestionsAdapter$SuggestionResults;->counts:[I

    aget v0, v0, p1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 385
    iget-object v3, p0, Lcom/android/browser/SuggestionsAdapter$SuggestionResults;->items:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 395
    :goto_0
    return-object v3

    .line 386
    :cond_0
    iget-object v3, p0, Lcom/android/browser/SuggestionsAdapter$SuggestionResults;->items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "[]"

    goto :goto_0

    .line 387
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 388
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/browser/SuggestionsAdapter$SuggestionResults;->items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 389
    iget-object v3, p0, Lcom/android/browser/SuggestionsAdapter$SuggestionResults;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/SuggestionsAdapter$SuggestItem;

    .line 390
    .local v1, item:Lcom/android/browser/SuggestionsAdapter$SuggestItem;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v1, Lcom/android/browser/SuggestionsAdapter$SuggestItem;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/browser/SuggestionsAdapter$SuggestItem;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    iget-object v3, p0, Lcom/android/browser/SuggestionsAdapter$SuggestionResults;->items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_2

    .line 392
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 395
    .end local v1           #item:Lcom/android/browser/SuggestionsAdapter$SuggestItem;
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
