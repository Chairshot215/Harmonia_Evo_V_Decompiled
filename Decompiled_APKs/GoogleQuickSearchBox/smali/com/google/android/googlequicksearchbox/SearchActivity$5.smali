.class Lcom/google/android/googlequicksearchbox/SearchActivity$5;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$QueryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/SearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/SearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity$5;->this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryChanged()V
    .locals 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity$5;->this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;

    #calls: Lcom/google/android/googlequicksearchbox/SearchActivity;->firstRunComplete()V
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->access$400(Lcom/google/android/googlequicksearchbox/SearchActivity;)V

    .line 166
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity$5;->this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;

    #getter for: Lcom/google/android/googlequicksearchbox/SearchActivity;->mPrefetcher:Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->access$700(Lcom/google/android/googlequicksearchbox/SearchActivity;)Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity$5;->this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SearchActivity$5;->this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getQuery()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/google/android/googlequicksearchbox/SearchActivity;->normalizeQueryForSuggest(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/google/android/googlequicksearchbox/SearchActivity;->access$600(Lcom/google/android/googlequicksearchbox/SearchActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;->onQueryChanged(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity$5;->this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;

    #getter for: Lcom/google/android/googlequicksearchbox/SearchActivity;->mPresenter:Lcom/google/android/googlequicksearchbox/SuggestionsPresenter;
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->access$800(Lcom/google/android/googlequicksearchbox/SearchActivity;)Lcom/google/android/googlequicksearchbox/SuggestionsPresenter;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/SuggestionsPresenter;->updateSuggestionsBuffered()V

    .line 168
    return-void
.end method
