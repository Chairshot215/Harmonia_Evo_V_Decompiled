.class Lcom/google/android/talk/SearchActivity$1;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/SearchActivity;->setupSearchUI(Landroid/app/ActionBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/SearchActivity;


# direct methods
.method constructor <init>(Lcom/google/android/talk/SearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/android/talk/SearchActivity$1;->this$0:Lcom/google/android/talk/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .parameter "queryString"

    .prologue
    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 4
    .parameter "query"

    .prologue
    .line 112
    iget-object v3, p0, Lcom/google/android/talk/SearchActivity$1;->this$0:Lcom/google/android/talk/SearchActivity;

    invoke-virtual {v3}, Lcom/google/android/talk/SearchActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 113
    .local v0, fragmentManager:Landroid/app/FragmentManager;
    invoke-static {}, Lcom/google/android/talk/SearchActivity;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;

    .line 115
    .local v1, searchFrag:Lcom/google/android/talk/SearchActivity$SearchResultsFragment;
    if-eqz v1, :cond_0

    .line 116
    iget-object v3, p0, Lcom/google/android/talk/SearchActivity$1;->this$0:Lcom/google/android/talk/SearchActivity;

    #calls: Lcom/google/android/talk/SearchActivity;->clearChatResult()V
    invoke-static {v3}, Lcom/google/android/talk/SearchActivity;->access$100(Lcom/google/android/talk/SearchActivity;)V

    .line 118
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 119
    .local v2, searchIntent:Landroid/content/Intent;
    const-string v3, "query"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string v3, "SearchActivity"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->doSearchQuery(Landroid/content/Intent;Ljava/lang/String;)V

    .line 123
    .end local v2           #searchIntent:Landroid/content/Intent;
    :cond_0
    const/4 v3, 0x1

    return v3
.end method
