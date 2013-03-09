.class Lcom/google/android/finsky/adapters/SearchAdapter$1;
.super Ljava/lang/Object;
.source "SearchAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/adapters/SearchAdapter;->makeHeaderClickListener(Lcom/google/android/finsky/api/model/Bucket;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/adapters/SearchAdapter;

.field final synthetic val$bucket:Lcom/google/android/finsky/api/model/Bucket;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/adapters/SearchAdapter;Lcom/google/android/finsky/api/model/Bucket;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/google/android/finsky/adapters/SearchAdapter$1;->this$0:Lcom/google/android/finsky/adapters/SearchAdapter;

    iput-object p2, p0, Lcom/google/android/finsky/adapters/SearchAdapter$1;->val$bucket:Lcom/google/android/finsky/api/model/Bucket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/finsky/adapters/SearchAdapter$1;->this$0:Lcom/google/android/finsky/adapters/SearchAdapter;

    iget-object v0, v0, Lcom/google/android/finsky/adapters/SearchAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/adapters/SearchAdapter$1;->this$0:Lcom/google/android/finsky/adapters/SearchAdapter;

    #getter for: Lcom/google/android/finsky/adapters/SearchAdapter;->mDfeSearch:Lcom/google/android/finsky/api/model/DfeSearch;
    invoke-static {v1}, Lcom/google/android/finsky/adapters/SearchAdapter;->access$000(Lcom/google/android/finsky/adapters/SearchAdapter;)Lcom/google/android/finsky/api/model/DfeSearch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeSearch;->getQuery()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/adapters/SearchAdapter$1;->val$bucket:Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Bucket;->getBrowseUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/adapters/SearchAdapter$1;->this$0:Lcom/google/android/finsky/adapters/SearchAdapter;

    iget-object v3, v3, Lcom/google/android/finsky/adapters/SearchAdapter;->mCurrentPageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToSearch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method
