.class Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$9;
.super Ljava/lang/Object;
.source "SearchActivityView.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/ui/QueryTextView$CommitCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->setSuggestionClickListener(Lcom/google/android/googlequicksearchbox/ui/SuggestionClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

.field final synthetic val$listener:Lcom/google/android/googlequicksearchbox/ui/SuggestionClickListener;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;Lcom/google/android/googlequicksearchbox/ui/SuggestionClickListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 552
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$9;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$9;->val$listener:Lcom/google/android/googlequicksearchbox/ui/SuggestionClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommitCompletion(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 555
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$9;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    #getter for: Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mDisplayedCompletions:Lcom/google/android/googlequicksearchbox/SuggestionList;
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->access$1000(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;)Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 556
    const-string v0, "QSB.SearchActivityView"

    const-string v1, "Clicked on an IME completion, completion list was null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :goto_0
    return-void

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$9;->val$listener:Lcom/google/android/googlequicksearchbox/ui/SuggestionClickListener;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$9;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    #getter for: Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mDisplayedCompletions:Lcom/google/android/googlequicksearchbox/SuggestionList;
    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->access$1000(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;)Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$9;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    iget-object v2, v2, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSuggestionsController:Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;

    invoke-interface {v2}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;->getSuggestions()Lcom/google/android/googlequicksearchbox/Suggestions;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/googlequicksearchbox/ui/SuggestionClickListener;->onImeSuggestionClicked(ILcom/google/android/googlequicksearchbox/SuggestionList;Lcom/google/android/googlequicksearchbox/Suggestions;)V

    goto :goto_0
.end method
