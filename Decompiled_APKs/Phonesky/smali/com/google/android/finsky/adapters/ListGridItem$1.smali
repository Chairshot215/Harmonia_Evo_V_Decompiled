.class Lcom/google/android/finsky/adapters/ListGridItem$1;
.super Ljava/lang/Object;
.source "ListGridItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/adapters/ListGridItem;->bind(Landroid/view/ViewGroup;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/adapters/ListGridItem;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/adapters/ListGridItem;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/google/android/finsky/adapters/ListGridItem$1;->this$0:Lcom/google/android/finsky/adapters/ListGridItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ListGridItem$1;->this$0:Lcom/google/android/finsky/adapters/ListGridItem;

    #getter for: Lcom/google/android/finsky/adapters/ListGridItem;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;
    invoke-static {v0}, Lcom/google/android/finsky/adapters/ListGridItem;->access$300(Lcom/google/android/finsky/adapters/ListGridItem;)Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/adapters/ListGridItem$1;->this$0:Lcom/google/android/finsky/adapters/ListGridItem;

    #getter for: Lcom/google/android/finsky/adapters/ListGridItem;->mBucket:Lcom/google/android/finsky/api/model/Bucket;
    invoke-static {v1}, Lcom/google/android/finsky/adapters/ListGridItem;->access$000(Lcom/google/android/finsky/adapters/ListGridItem;)Lcom/google/android/finsky/api/model/Bucket;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Bucket;->getBrowseUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/adapters/ListGridItem$1;->this$0:Lcom/google/android/finsky/adapters/ListGridItem;

    #getter for: Lcom/google/android/finsky/adapters/ListGridItem;->mBucket:Lcom/google/android/finsky/api/model/Bucket;
    invoke-static {v2}, Lcom/google/android/finsky/adapters/ListGridItem;->access$000(Lcom/google/android/finsky/adapters/ListGridItem;)Lcom/google/android/finsky/api/model/Bucket;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Bucket;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/adapters/ListGridItem$1;->this$0:Lcom/google/android/finsky/adapters/ListGridItem;

    #getter for: Lcom/google/android/finsky/adapters/ListGridItem;->mBucket:Lcom/google/android/finsky/api/model/Bucket;
    invoke-static {v3}, Lcom/google/android/finsky/adapters/ListGridItem;->access$000(Lcom/google/android/finsky/adapters/ListGridItem;)Lcom/google/android/finsky/api/model/Bucket;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Bucket;->getBackend()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/adapters/ListGridItem$1;->this$0:Lcom/google/android/finsky/adapters/ListGridItem;

    #getter for: Lcom/google/android/finsky/adapters/ListGridItem;->mReferrerUrl:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/finsky/adapters/ListGridItem;->access$100(Lcom/google/android/finsky/adapters/ListGridItem;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/adapters/ListGridItem$1;->this$0:Lcom/google/android/finsky/adapters/ListGridItem;

    #getter for: Lcom/google/android/finsky/adapters/ListGridItem;->mToc:Lcom/google/android/finsky/api/model/DfeToc;
    invoke-static {v5}, Lcom/google/android/finsky/adapters/ListGridItem;->access$200(Lcom/google/android/finsky/adapters/ListGridItem;)Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goBrowse(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 125
    return-void
.end method
