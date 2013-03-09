.class Lcom/google/android/finsky/adapters/SearchAdapter$2;
.super Ljava/lang/Object;
.source "SearchAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/adapters/SearchAdapter;->getSwitcherHeader(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/adapters/SearchAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/adapters/SearchAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/google/android/finsky/adapters/SearchAdapter$2;->this$0:Lcom/google/android/finsky/adapters/SearchAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/google/android/finsky/adapters/SearchAdapter$2;->this$0:Lcom/google/android/finsky/adapters/SearchAdapter;

    #getter for: Lcom/google/android/finsky/adapters/SearchAdapter;->mSpinner:Landroid/widget/Spinner;
    invoke-static {v1}, Lcom/google/android/finsky/adapters/SearchAdapter;->access$100(Lcom/google/android/finsky/adapters/SearchAdapter;)Landroid/widget/Spinner;

    move-result-object v1

    if-nez v1, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/adapters/SearchAdapter$2;->this$0:Lcom/google/android/finsky/adapters/SearchAdapter;

    #getter for: Lcom/google/android/finsky/adapters/SearchAdapter;->mSpinner:Landroid/widget/Spinner;
    invoke-static {v1}, Lcom/google/android/finsky/adapters/SearchAdapter;->access$100(Lcom/google/android/finsky/adapters/SearchAdapter;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/SpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;

    .line 209
    .local v0, item:Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;
    iget-object v1, p0, Lcom/google/android/finsky/adapters/SearchAdapter$2;->this$0:Lcom/google/android/finsky/adapters/SearchAdapter;

    #getter for: Lcom/google/android/finsky/adapters/SearchAdapter;->mSpinner:Landroid/widget/Spinner;
    invoke-static {v1}, Lcom/google/android/finsky/adapters/SearchAdapter;->access$100(Lcom/google/android/finsky/adapters/SearchAdapter;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->getCurrent()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/adapters/SearchAdapter$2;->this$0:Lcom/google/android/finsky/adapters/SearchAdapter;

    iget-object v1, v1, Lcom/google/android/finsky/adapters/SearchAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentPageType()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 212
    iget-object v1, p0, Lcom/google/android/finsky/adapters/SearchAdapter$2;->this$0:Lcom/google/android/finsky/adapters/SearchAdapter;

    iget-object v1, v1, Lcom/google/android/finsky/adapters/SearchAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v2, p0, Lcom/google/android/finsky/adapters/SearchAdapter$2;->this$0:Lcom/google/android/finsky/adapters/SearchAdapter;

    #getter for: Lcom/google/android/finsky/adapters/SearchAdapter;->mDfeSearch:Lcom/google/android/finsky/api/model/DfeSearch;
    invoke-static {v2}, Lcom/google/android/finsky/adapters/SearchAdapter;->access$000(Lcom/google/android/finsky/adapters/SearchAdapter;)Lcom/google/android/finsky/api/model/DfeSearch;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeSearch;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;->getSearchUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToSearch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
