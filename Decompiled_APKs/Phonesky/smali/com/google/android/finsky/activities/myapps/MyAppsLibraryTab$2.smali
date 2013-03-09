.class Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$2;
.super Ljava/lang/Object;
.source "MyAppsLibraryTab.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->configureNoAppsUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;

.field final synthetic val$appCorpus:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$2;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;

    iput-object p2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$2;->val$appCorpus:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$2;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;

    #getter for: Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;
    invoke-static {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->access$300(Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;)Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$2;->val$appCorpus:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getLandingUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$2;->val$appCorpus:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$2;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;

    #getter for: Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mToc:Lcom/google/android/finsky/api/model/DfeToc;
    invoke-static {v4}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->access$200(Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;)Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v4

    const-string v5, "myApps"

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToCorpusHome(Ljava/lang/String;Ljava/lang/String;ILcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V

    .line 155
    return-void
.end method
