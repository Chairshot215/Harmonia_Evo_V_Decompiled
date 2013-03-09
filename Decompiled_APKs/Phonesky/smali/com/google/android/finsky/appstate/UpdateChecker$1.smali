.class Lcom/google/android/finsky/appstate/UpdateChecker$1;
.super Landroid/os/AsyncTask;
.source "UpdateChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/appstate/UpdateChecker;->checkForUpdates(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
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
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/appstate/UpdateChecker;

.field final synthetic val$errorRunnable:Ljava/lang/Runnable;

.field final synthetic val$finalAccount:Landroid/accounts/Account;

.field final synthetic val$gmsCoreHelper:Lcom/google/android/finsky/appstate/GmsCoreHelper;

.field final synthetic val$successRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/appstate/UpdateChecker;Lcom/google/android/finsky/appstate/GmsCoreHelper;Landroid/accounts/Account;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/android/finsky/appstate/UpdateChecker$1;->this$0:Lcom/google/android/finsky/appstate/UpdateChecker;

    iput-object p2, p0, Lcom/google/android/finsky/appstate/UpdateChecker$1;->val$gmsCoreHelper:Lcom/google/android/finsky/appstate/GmsCoreHelper;

    iput-object p3, p0, Lcom/google/android/finsky/appstate/UpdateChecker$1;->val$finalAccount:Landroid/accounts/Account;

    iput-object p4, p0, Lcom/google/android/finsky/appstate/UpdateChecker$1;->val$successRunnable:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/google/android/finsky/appstate/UpdateChecker$1;->val$errorRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/appstate/UpdateChecker$1;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 5
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 91
    .local v1, docids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/google/android/finsky/appstate/UpdateChecker$1;->this$0:Lcom/google/android/finsky/appstate/UpdateChecker;

    #getter for: Lcom/google/android/finsky/appstate/UpdateChecker;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;
    invoke-static {v3}, Lcom/google/android/finsky/appstate/UpdateChecker;->access$100(Lcom/google/android/finsky/appstate/UpdateChecker;)Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/appstate/UpdateChecker$1;->this$0:Lcom/google/android/finsky/appstate/UpdateChecker;

    #getter for: Lcom/google/android/finsky/appstate/UpdateChecker;->mLibraries:Lcom/google/android/finsky/library/Libraries;
    invoke-static {v4}, Lcom/google/android/finsky/appstate/UpdateChecker;->access$000(Lcom/google/android/finsky/appstate/UpdateChecker;)Lcom/google/android/finsky/library/Libraries;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/appstate/AppStates;->getInstalledAndOwnedBlocking(Lcom/google/android/finsky/library/Libraries;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/appstate/AppStates$AppState;

    .line 92
    .local v0, appstate:Lcom/google/android/finsky/appstate/AppStates$AppState;
    iget-object v3, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageName:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    .end local v0           #appstate:Lcom/google/android/finsky/appstate/AppStates$AppState;
    :cond_0
    iget-object v3, p0, Lcom/google/android/finsky/appstate/UpdateChecker$1;->val$gmsCoreHelper:Lcom/google/android/finsky/appstate/GmsCoreHelper;

    invoke-virtual {v3, v1}, Lcom/google/android/finsky/appstate/GmsCoreHelper;->insertGmsCore(Ljava/util/List;)V

    .line 95
    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/appstate/UpdateChecker$1;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, docids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/android/finsky/appstate/UpdateChecker$1;->this$0:Lcom/google/android/finsky/appstate/UpdateChecker;

    #getter for: Lcom/google/android/finsky/appstate/UpdateChecker;->mDfeApiProvider:Lcom/google/android/finsky/api/DfeApiProvider;
    invoke-static {v0}, Lcom/google/android/finsky/appstate/UpdateChecker;->access$400(Lcom/google/android/finsky/appstate/UpdateChecker;)Lcom/google/android/finsky/api/DfeApiProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/appstate/UpdateChecker$1;->val$finalAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/api/DfeApiProvider;->getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/appstate/UpdateChecker$1$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/appstate/UpdateChecker$1$1;-><init>(Lcom/google/android/finsky/appstate/UpdateChecker$1;Ljava/util/List;)V

    new-instance v2, Lcom/google/android/finsky/appstate/UpdateChecker$1$2;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/appstate/UpdateChecker$1$2;-><init>(Lcom/google/android/finsky/appstate/UpdateChecker$1;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/finsky/api/DfeApi;->getDetails(Ljava/util/Collection;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 136
    return-void
.end method
