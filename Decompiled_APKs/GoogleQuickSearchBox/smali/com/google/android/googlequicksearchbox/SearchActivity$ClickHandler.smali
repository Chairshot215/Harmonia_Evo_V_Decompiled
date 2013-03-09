.class Lcom/google/android/googlequicksearchbox/SearchActivity$ClickHandler;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/ui/SuggestionClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClickHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/googlequicksearchbox/SearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 609
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity$ClickHandler;->this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/googlequicksearchbox/SearchActivity;Lcom/google/android/googlequicksearchbox/SearchActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 609
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/SearchActivity$ClickHandler;-><init>(Lcom/google/android/googlequicksearchbox/SearchActivity;)V

    return-void
.end method


# virtual methods
.method public onImeSuggestionClicked(ILcom/google/android/googlequicksearchbox/SuggestionList;Lcom/google/android/googlequicksearchbox/Suggestions;)V
    .locals 8
    .parameter "clickPosition"
    .parameter "displayedSuggestions"
    .parameter "allSuggestions"

    .prologue
    .line 646
    invoke-interface {p2, p1}, Lcom/google/android/googlequicksearchbox/SuggestionList;->get(I)Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v7

    .line 647
    .local v7, clicked:Lcom/google/android/googlequicksearchbox/Suggestion;
    if-eqz p3, :cond_0

    .line 648
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity$ClickHandler;->this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;

    #getter for: Lcom/google/android/googlequicksearchbox/SearchActivity;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->access$1400(Lcom/google/android/googlequicksearchbox/SearchActivity;)Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getLogger()Lcom/google/android/googlequicksearchbox/Logger;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {p3}, Lcom/google/android/googlequicksearchbox/Suggestions;->getIncludedSourceNames()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {p3}, Lcom/google/android/googlequicksearchbox/Suggestions;->getWebSource()Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    move-result-object v5

    const/4 v6, 0x0

    move-object v3, p2

    invoke-interface/range {v0 .. v6}, Lcom/google/android/googlequicksearchbox/Logger;->logSuggestionClick(JLcom/google/android/googlequicksearchbox/SuggestionList;Ljava/util/Set;Lcom/google/android/googlequicksearchbox/google/GoogleSource;I)V

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity$ClickHandler;->this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;

    #getter for: Lcom/google/android/googlequicksearchbox/SearchActivity;->mLauncher:Lcom/google/android/googlequicksearchbox/SuggestionLauncher;
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->access$1200(Lcom/google/android/googlequicksearchbox/SearchActivity;)Lcom/google/android/googlequicksearchbox/SuggestionLauncher;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity$ClickHandler;->this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;

    invoke-interface {p2}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getUserQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v7, v2}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->clickedSuggestion(Landroid/app/Activity;Lcom/google/android/googlequicksearchbox/Suggestion;Ljava/lang/String;)V

    .line 655
    return-void
.end method

.method public onSuggestionClicked(Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;J)V
    .locals 5
    .parameter "adapter"
    .parameter "id"

    .prologue
    .line 612
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SearchActivity$ClickHandler;->this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;

    const/4 v3, 0x0

    #calls: Lcom/google/android/googlequicksearchbox/SearchActivity;->getAndLogClickedSuggestion(Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;JI)Lcom/google/android/googlequicksearchbox/ui/ListEntry;
    invoke-static {v2, p1, p2, p3, v3}, Lcom/google/android/googlequicksearchbox/SearchActivity;->access$1100(Lcom/google/android/googlequicksearchbox/SearchActivity;Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;JI)Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    move-result-object v0

    .line 614
    .local v0, entry:Lcom/google/android/googlequicksearchbox/ui/ListEntry;
    if-eqz v0, :cond_0

    .line 615
    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->getSuggestion()Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v1

    .line 616
    .local v1, suggestion:Lcom/google/android/googlequicksearchbox/Suggestion;
    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getInternalIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 617
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SearchActivity$ClickHandler;->this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getInternalIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/googlequicksearchbox/SearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 624
    .end local v1           #suggestion:Lcom/google/android/googlequicksearchbox/Suggestion;
    :cond_0
    :goto_0
    return-void

    .line 619
    .restart local v1       #suggestion:Lcom/google/android/googlequicksearchbox/Suggestion;
    :cond_1
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SearchActivity$ClickHandler;->this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;

    #getter for: Lcom/google/android/googlequicksearchbox/SearchActivity;->mLauncher:Lcom/google/android/googlequicksearchbox/SuggestionLauncher;
    invoke-static {v2}, Lcom/google/android/googlequicksearchbox/SearchActivity;->access$1200(Lcom/google/android/googlequicksearchbox/SearchActivity;)Lcom/google/android/googlequicksearchbox/SuggestionLauncher;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/SearchActivity$ClickHandler;->this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->getSuggestionList()Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getUserQuery()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->clickedSuggestion(Landroid/app/Activity;Lcom/google/android/googlequicksearchbox/Suggestion;Ljava/lang/String;)V

    .line 621
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SearchActivity$ClickHandler;->this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;

    #getter for: Lcom/google/android/googlequicksearchbox/SearchActivity;->mSearchActivityView:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;
    invoke-static {v2}, Lcom/google/android/googlequicksearchbox/SearchActivity;->access$300(Lcom/google/android/googlequicksearchbox/SearchActivity;)Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->hideInputMethod()V

    goto :goto_0
.end method

.method public onSuggestionQueryRefineClicked(Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;J)V
    .locals 3
    .parameter "adapter"
    .parameter "id"

    .prologue
    .line 636
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity$ClickHandler;->this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;

    const/4 v2, 0x1

    #calls: Lcom/google/android/googlequicksearchbox/SearchActivity;->getAndLogClickedSuggestion(Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;JI)Lcom/google/android/googlequicksearchbox/ui/ListEntry;
    invoke-static {v1, p1, p2, p3, v2}, Lcom/google/android/googlequicksearchbox/SearchActivity;->access$1100(Lcom/google/android/googlequicksearchbox/SearchActivity;Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;JI)Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    move-result-object v0

    .line 638
    .local v0, suggestion:Lcom/google/android/googlequicksearchbox/ui/ListEntry;
    if-eqz v0, :cond_0

    .line 639
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity$ClickHandler;->this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;

    #getter for: Lcom/google/android/googlequicksearchbox/SearchActivity;->mLauncher:Lcom/google/android/googlequicksearchbox/SuggestionLauncher;
    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/SearchActivity;->access$1200(Lcom/google/android/googlequicksearchbox/SearchActivity;)Lcom/google/android/googlequicksearchbox/SuggestionLauncher;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->getSuggestion()Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->clickedRefineSuggestion(Lcom/google/android/googlequicksearchbox/Suggestion;)V

    .line 641
    :cond_0
    return-void
.end method

.method public onSuggestionRemoveFromHistoryClicked(Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;J)V
    .locals 5
    .parameter "adapter"
    .parameter "id"

    .prologue
    .line 627
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity$ClickHandler;->this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;

    const/4 v2, 0x3

    #calls: Lcom/google/android/googlequicksearchbox/SearchActivity;->getAndLogClickedSuggestion(Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;JI)Lcom/google/android/googlequicksearchbox/ui/ListEntry;
    invoke-static {v1, p1, p2, p3, v2}, Lcom/google/android/googlequicksearchbox/SearchActivity;->access$1100(Lcom/google/android/googlequicksearchbox/SearchActivity;Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;JI)Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    move-result-object v0

    .line 629
    .local v0, suggestion:Lcom/google/android/googlequicksearchbox/ui/ListEntry;
    if-eqz v0, :cond_0

    .line 630
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity$ClickHandler;->this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SearchActivity$ClickHandler;->this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;

    #getter for: Lcom/google/android/googlequicksearchbox/SearchActivity;->mLauncher:Lcom/google/android/googlequicksearchbox/SuggestionLauncher;
    invoke-static {v2}, Lcom/google/android/googlequicksearchbox/SearchActivity;->access$1200(Lcom/google/android/googlequicksearchbox/SearchActivity;)Lcom/google/android/googlequicksearchbox/SuggestionLauncher;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/SearchActivity$ClickHandler;->this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->getSuggestion()Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->clickedRemoveFromHistory(Landroid/app/Activity;Lcom/google/android/googlequicksearchbox/Suggestion;)Landroid/app/Dialog;

    move-result-object v2

    #setter for: Lcom/google/android/googlequicksearchbox/SearchActivity;->mRemoveFromHistoryDialog:Landroid/app/Dialog;
    invoke-static {v1, v2}, Lcom/google/android/googlequicksearchbox/SearchActivity;->access$1302(Lcom/google/android/googlequicksearchbox/SearchActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 633
    :cond_0
    return-void
.end method
