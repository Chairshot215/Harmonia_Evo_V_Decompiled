.class Lcom/google/android/finsky/adapters/CategoryAdapter$1;
.super Ljava/lang/Object;
.source "CategoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/adapters/CategoryAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/adapters/CategoryAdapter;

.field final synthetic val$category:Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/adapters/CategoryAdapter;Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/android/finsky/adapters/CategoryAdapter$1;->this$0:Lcom/google/android/finsky/adapters/CategoryAdapter;

    iput-object p2, p0, Lcom/google/android/finsky/adapters/CategoryAdapter$1;->val$category:Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/finsky/adapters/CategoryAdapter$1;->this$0:Lcom/google/android/finsky/adapters/CategoryAdapter;

    #getter for: Lcom/google/android/finsky/adapters/CategoryAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;
    invoke-static {v0}, Lcom/google/android/finsky/adapters/CategoryAdapter;->access$400(Lcom/google/android/finsky/adapters/CategoryAdapter;)Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/adapters/CategoryAdapter$1;->val$category:Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->getDataUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/adapters/CategoryAdapter$1;->val$category:Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/adapters/CategoryAdapter$1;->this$0:Lcom/google/android/finsky/adapters/CategoryAdapter;

    #getter for: Lcom/google/android/finsky/adapters/CategoryAdapter;->mBackendId:I
    invoke-static {v3}, Lcom/google/android/finsky/adapters/CategoryAdapter;->access$100(Lcom/google/android/finsky/adapters/CategoryAdapter;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/adapters/CategoryAdapter$1;->this$0:Lcom/google/android/finsky/adapters/CategoryAdapter;

    #getter for: Lcom/google/android/finsky/adapters/CategoryAdapter;->mCurrentBrowseUrl:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/finsky/adapters/CategoryAdapter;->access$200(Lcom/google/android/finsky/adapters/CategoryAdapter;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/adapters/CategoryAdapter$1;->this$0:Lcom/google/android/finsky/adapters/CategoryAdapter;

    #getter for: Lcom/google/android/finsky/adapters/CategoryAdapter;->mToc:Lcom/google/android/finsky/api/model/DfeToc;
    invoke-static {v5}, Lcom/google/android/finsky/adapters/CategoryAdapter;->access$300(Lcom/google/android/finsky/adapters/CategoryAdapter;)Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goBrowse(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 74
    return-void
.end method
