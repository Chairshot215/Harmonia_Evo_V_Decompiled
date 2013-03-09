.class Lcom/google/android/finsky/navigationmanager/NavigationManager$2;
.super Ljava/lang/Object;
.source "NavigationManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/navigationmanager/NavigationManager;->getClickListener(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field final synthetic val$currentPageUrl:Ljava/lang/String;

.field final synthetic val$doc:Lcom/google/android/finsky/api/model/Document;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 536
    iput-object p1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$2;->this$0:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iput-object p2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$2;->val$doc:Lcom/google/android/finsky/api/model/Document;

    iput-object p3, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$2;->val$currentPageUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 539
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$2;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getContainerAnnotation()Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->getBrowseUrl()Ljava/lang/String;

    move-result-object v1

    .line 540
    .local v1, browseUrl:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$2;->this$0:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$2;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$2;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$2;->val$currentPageUrl:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goBrowse(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 543
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$2;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$2;->val$currentPageUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$2;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getCookie()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    return-void
.end method
