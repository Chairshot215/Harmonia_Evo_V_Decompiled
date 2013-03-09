.class Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$4;
.super Ljava/lang/Object;
.source "MyAppsTabbedFragment.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->archiveDocs(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 711
    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$4;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;)V
    .locals 4
    .parameter "modifyLibraryResponse"

    .prologue
    .line 715
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;->hasLibraryUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 716
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getLibraryReplicators()Lcom/google/android/finsky/library/LibraryReplicators;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$4;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    #getter for: Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;
    invoke-static {v1}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->access$800(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/finsky/api/DfeApi;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;->getLibraryUpdate()Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    move-result-object v2

    const-string v3, "myapps-archive"

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/finsky/library/LibraryReplicators;->applyLibraryUpdate(Landroid/accounts/Account;Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;Ljava/lang/String;)V

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$4;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->canChangeFragmentManagerState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 723
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$4;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    #calls: Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->dismissArchiveProgressDialog()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->access$900(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;)V

    .line 725
    :cond_1
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 711
    check-cast p1, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$4;->onResponse(Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;)V

    return-void
.end method
