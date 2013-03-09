.class Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab$1;
.super Landroid/os/AsyncTask;
.source "MyAppsInstalledTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->requestData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/finsky/appstate/AppStates$AppState;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab$1;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab$1;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 3
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/appstate/AppStates$AppState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v1

    .line 65
    .local v1, libraries:Lcom/google/android/finsky/library/Libraries;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v0

    .line 66
    .local v0, appStates:Lcom/google/android/finsky/appstate/AppStates;
    invoke-virtual {v0, v1}, Lcom/google/android/finsky/appstate/AppStates;->getOwnedBlocking(Lcom/google/android/finsky/library/Libraries;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab$1;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/appstate/AppStates$AppState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, owned:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/appstate/AppStates$AppState;>;"
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 72
    .local v2, ownedDocIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/appstate/AppStates$AppState;

    .line 73
    .local v1, ownedAppState:Lcom/google/android/finsky/appstate/AppStates$AppState;
    iget-object v3, v1, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/finsky/appstate/GmsCoreHelper;->isGmsCore(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 76
    iget-object v3, v1, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 78
    .end local v1           #ownedAppState:Lcom/google/android/finsky/appstate/AppStates$AppState;
    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 79
    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab$1;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;

    iget-object v3, v3, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab$1;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;

    #getter for: Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mOwnedDocIds:Ljava/util/List;
    invoke-static {v3}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->access$000(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 81
    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab$1;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;

    invoke-virtual {v3}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->onDataChanged()V

    .line 91
    :goto_1
    return-void

    .line 84
    :cond_2
    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab$1;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;

    #setter for: Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mOwnedDocIds:Ljava/util/List;
    invoke-static {v3, v2}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->access$002(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;Ljava/util/List;)Ljava/util/List;

    .line 86
    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab$1;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;

    invoke-virtual {v3}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->clearState()V

    .line 88
    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab$1;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;

    new-instance v4, Lcom/google/android/finsky/api/model/DfeBulkDetails;

    iget-object v5, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab$1;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;

    iget-object v5, v5, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-direct {v4, v5, v2}, Lcom/google/android/finsky/api/model/DfeBulkDetails;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/util/List;)V

    iput-object v4, v3, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    .line 89
    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab$1;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;

    iget-object v3, v3, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    check-cast v3, Lcom/google/android/finsky/api/model/DfeBulkDetails;

    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab$1;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/api/model/DfeBulkDetails;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 90
    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab$1;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;

    iget-object v3, v3, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    check-cast v3, Lcom/google/android/finsky/api/model/DfeBulkDetails;

    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab$1;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/api/model/DfeBulkDetails;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    goto :goto_1
.end method
