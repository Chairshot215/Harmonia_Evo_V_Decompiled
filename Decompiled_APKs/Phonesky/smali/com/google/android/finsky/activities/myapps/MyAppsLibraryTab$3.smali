.class Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$3;
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

.field final synthetic val$gamesUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$3;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;

    iput-object p2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$3;->val$gamesUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$3;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;

    #getter for: Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;
    invoke-static {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->access$300(Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;)Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$3;->val$gamesUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$3;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;

    iget-object v2, v2, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701f3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$3;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;

    #getter for: Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mToc:Lcom/google/android/finsky/api/model/DfeToc;
    invoke-static {v4}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->access$200(Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;)Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v4

    const-string v5, "myApps"

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToCorpusHome(Ljava/lang/String;Ljava/lang/String;ILcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V

    .line 171
    return-void
.end method
