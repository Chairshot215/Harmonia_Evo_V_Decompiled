.class Lcom/google/android/finsky/adapters/BucketedListAdapter$2;
.super Ljava/lang/Object;
.source "BucketedListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/adapters/BucketedListAdapter;->makeHeaderClickListener(Lcom/google/android/finsky/api/model/Bucket;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/adapters/BucketedListAdapter;

.field final synthetic val$bucket:Lcom/google/android/finsky/api/model/Bucket;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/adapters/BucketedListAdapter;Lcom/google/android/finsky/api/model/Bucket;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 569
    iput-object p1, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter$2;->this$0:Lcom/google/android/finsky/adapters/BucketedListAdapter;

    iput-object p2, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter$2;->val$bucket:Lcom/google/android/finsky/api/model/Bucket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 572
    iget-object v0, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter$2;->this$0:Lcom/google/android/finsky/adapters/BucketedListAdapter;

    iget-object v0, v0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter$2;->val$bucket:Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Bucket;->getBrowseUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter$2;->val$bucket:Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Bucket;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter$2;->val$bucket:Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Bucket;->getBackend()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter$2;->this$0:Lcom/google/android/finsky/adapters/BucketedListAdapter;

    iget-object v4, v4, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mCurrentPageUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter$2;->this$0:Lcom/google/android/finsky/adapters/BucketedListAdapter;

    iget-object v5, v5, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goBrowse(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 574
    return-void
.end method
