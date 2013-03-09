.class Lcom/android/browser/SuggestionsAdapter$SlowFilterTask;
.super Landroid/os/AsyncTask;
.source "SuggestionsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/SuggestionsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SlowFilterTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/android/browser/SuggestionsAdapter$SuggestItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/SuggestionsAdapter;


# direct methods
.method constructor <init>(Lcom/android/browser/SuggestionsAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/browser/SuggestionsAdapter$SlowFilterTask;->this$0:Lcom/android/browser/SuggestionsAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 222
    check-cast p1, [Ljava/lang/CharSequence;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/SuggestionsAdapter$SlowFilterTask;->doInBackground([Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 5
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/browser/SuggestionsAdapter$SuggestItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    new-instance v1, Lcom/android/browser/SuggestionsAdapter$SuggestCursor;

    iget-object v4, p0, Lcom/android/browser/SuggestionsAdapter$SlowFilterTask;->this$0:Lcom/android/browser/SuggestionsAdapter;

    invoke-direct {v1, v4}, Lcom/android/browser/SuggestionsAdapter$SuggestCursor;-><init>(Lcom/android/browser/SuggestionsAdapter;)V

    .line 227
    .local v1, cursor:Lcom/android/browser/SuggestionsAdapter$SuggestCursor;
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v1, v4}, Lcom/android/browser/SuggestionsAdapter$SuggestCursor;->runQuery(Ljava/lang/CharSequence;)V

    .line 228
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v3, results:Ljava/util/List;,"Ljava/util/List<Lcom/android/browser/SuggestionsAdapter$SuggestItem;>;"
    invoke-virtual {v1}, Lcom/android/browser/SuggestionsAdapter$SuggestCursor;->getCount()I

    move-result v0

    .line 230
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 231
    invoke-virtual {v1}, Lcom/android/browser/SuggestionsAdapter$SuggestCursor;->getItem()Lcom/android/browser/SuggestionsAdapter$SuggestItem;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    invoke-virtual {v1}, Lcom/android/browser/SuggestionsAdapter$SuggestCursor;->moveToNext()Z

    .line 230
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 234
    :cond_0
    invoke-virtual {v1}, Lcom/android/browser/SuggestionsAdapter$SuggestCursor;->close()V

    .line 235
    return-object v3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 222
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/SuggestionsAdapter$SlowFilterTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/browser/SuggestionsAdapter$SuggestItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/browser/SuggestionsAdapter$SuggestItem;>;"
    iget-object v0, p0, Lcom/android/browser/SuggestionsAdapter$SlowFilterTask;->this$0:Lcom/android/browser/SuggestionsAdapter;

    iput-object p1, v0, Lcom/android/browser/SuggestionsAdapter;->mSuggestResults:Ljava/util/List;

    .line 241
    iget-object v0, p0, Lcom/android/browser/SuggestionsAdapter$SlowFilterTask;->this$0:Lcom/android/browser/SuggestionsAdapter;

    iget-object v1, p0, Lcom/android/browser/SuggestionsAdapter$SlowFilterTask;->this$0:Lcom/android/browser/SuggestionsAdapter;

    invoke-virtual {v1}, Lcom/android/browser/SuggestionsAdapter;->buildSuggestionResults()Lcom/android/browser/SuggestionsAdapter$SuggestionResults;

    move-result-object v1

    iput-object v1, v0, Lcom/android/browser/SuggestionsAdapter;->mMixedResults:Lcom/android/browser/SuggestionsAdapter$SuggestionResults;

    .line 242
    iget-object v0, p0, Lcom/android/browser/SuggestionsAdapter$SlowFilterTask;->this$0:Lcom/android/browser/SuggestionsAdapter;

    invoke-virtual {v0}, Lcom/android/browser/SuggestionsAdapter;->notifyDataSetChanged()V

    .line 243
    return-void
.end method
