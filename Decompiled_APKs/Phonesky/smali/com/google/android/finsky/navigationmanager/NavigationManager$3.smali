.class Lcom/google/android/finsky/navigationmanager/NavigationManager$3;
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
    .line 548
    iput-object p1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$3;->this$0:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iput-object p2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$3;->val$doc:Lcom/google/android/finsky/api/model/Document;

    iput-object p3, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$3;->val$currentPageUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 551
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$3;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDetailsUrl()Ljava/lang/String;

    move-result-object v1

    .line 552
    .local v1, detailsUrl:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$3;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->canUseAsPartialDocument()Z

    move-result v0

    if-nez v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$3;->this$0:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$3;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getCookie()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$3;->val$currentPageUrl:Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToDocPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    :goto_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$3;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$3;->val$currentPageUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$3;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getCookie()Ljava/lang/String;

    move-result-object v9

    move-object v8, v1

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    return-void

    .line 556
    :cond_0
    iget-object v5, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$3;->this$0:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v6, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$3;->val$doc:Lcom/google/android/finsky/api/model/Document;

    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$3;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getCookie()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$3;->val$currentPageUrl:Ljava/lang/String;

    move-object v9, v4

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToDocPage(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
