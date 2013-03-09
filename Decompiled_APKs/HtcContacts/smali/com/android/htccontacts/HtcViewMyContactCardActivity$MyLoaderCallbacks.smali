.class Lcom/android/htccontacts/HtcViewMyContactCardActivity$MyLoaderCallbacks;
.super Ljava/lang/Object;
.source "HtcViewMyContactCardActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/HtcViewMyContactCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLoaderCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Landroid/content/Entity;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;


# direct methods
.method private constructor <init>(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1831
    iput-object p1, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$MyLoaderCallbacks;->this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/HtcViewMyContactCardActivity;Lcom/android/htccontacts/HtcViewMyContactCardActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1831
    invoke-direct {p0, p1}, Lcom/android/htccontacts/HtcViewMyContactCardActivity$MyLoaderCallbacks;-><init>(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1834
    new-instance v0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$MyEntityLoader;

    iget-object v1, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$MyLoaderCallbacks;->this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;

    invoke-direct {v0, v1}, Lcom/android/htccontacts/HtcViewMyContactCardActivity$MyEntityLoader;-><init>(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)V

    return-object v0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1831
    check-cast p2, Ljava/util/ArrayList;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/HtcViewMyContactCardActivity$MyLoaderCallbacks;->onLoadFinished(Landroid/content/Loader;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1841
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Ljava/util/ArrayList<Landroid/content/Entity;>;>;"
    .local p2, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1842
    :cond_0
    const-string v0, "HtcViewMyContactCardActivity"

    const-string v1, "Failed to load"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$MyLoaderCallbacks;->this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->finish()V

    .line 1862
    :cond_1
    :goto_0
    return-void

    .line 1846
    :cond_2
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$MyLoaderCallbacks;->this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;

    #setter for: Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mEntities:Ljava/util/ArrayList;
    invoke-static {v0, p2}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->access$1502(Lcom/android/htccontacts/HtcViewMyContactCardActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1849
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$MyLoaderCallbacks;->this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;

    #getter for: Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mEntities:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->access$1500(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$MyLoaderCallbacks;->this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;

    #getter for: Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mEntities:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->access$1500(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 1850
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$MyLoaderCallbacks;->this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;

    #calls: Lcom/android/htccontacts/HtcViewMyContactCardActivity;->isSocialNetworkLogin()V
    invoke-static {v0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->access$1600(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)V

    .line 1851
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$MyLoaderCallbacks;->this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;

    #getter for: Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mFacebookLogin:Z
    invoke-static {v0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->access$700(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$MyLoaderCallbacks;->this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;

    #getter for: Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mTwitterLogin:Z
    invoke-static {v0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->access$800(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$MyLoaderCallbacks;->this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;

    #getter for: Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mPlurkLogin:Z
    invoke-static {v0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->access$900(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1852
    :cond_3
    new-instance v0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$BuildSocialNetworkEntryTask;

    iget-object v1, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$MyLoaderCallbacks;->this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;

    iget-object v2, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$MyLoaderCallbacks;->this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;

    invoke-direct {v0, v1, v2}, Lcom/android/htccontacts/HtcViewMyContactCardActivity$BuildSocialNetworkEntryTask;-><init>(Lcom/android/htccontacts/HtcViewMyContactCardActivity;Lcom/android/htccontacts/HtcViewMyContactCardActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/HtcViewMyContactCardActivity$BuildSocialNetworkEntryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1858
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$MyLoaderCallbacks;->this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;

    #getter for: Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mCreate:Z
    invoke-static {v0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->access$1700(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1859
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$MyLoaderCallbacks;->this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;

    #calls: Lcom/android/htccontacts/HtcViewMyContactCardActivity;->doUpdateContactInfo()V
    invoke-static {v0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->access$1800(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)V

    goto :goto_0

    .line 1854
    :cond_5
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$MyLoaderCallbacks;->this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->dataChanged()V

    .line 1855
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$MyLoaderCallbacks;->this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->startQueryAction()V

    goto :goto_1
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1867
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Ljava/util/ArrayList<Landroid/content/Entity;>;>;"
    return-void
.end method
