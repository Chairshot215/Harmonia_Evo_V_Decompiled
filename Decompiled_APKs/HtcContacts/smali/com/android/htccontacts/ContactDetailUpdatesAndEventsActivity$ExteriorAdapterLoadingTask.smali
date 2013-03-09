.class Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$ExteriorAdapterLoadingTask;
.super Landroid/os/AsyncTask;
.source "ContactDetailUpdatesAndEventsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExteriorAdapterLoadingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Lcom/htc/opensense/plugin/ExteriorListAdapter;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private lock:Ljava/lang/Object;

.field private mAccountList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;Ljava/util/HashMap;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 714
    .local p2, accountList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$ExteriorAdapterLoadingTask;->this$0:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 712
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$ExteriorAdapterLoadingTask;->lock:Ljava/lang/Object;

    .line 715
    iput-object p2, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$ExteriorAdapterLoadingTask;->mAccountList:Ljava/util/HashMap;

    .line 716
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 709
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$ExteriorAdapterLoadingTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 14
    .parameter "params"

    .prologue
    .line 730
    iget-object v9, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$ExteriorAdapterLoadingTask;->mAccountList:Ljava/util/HashMap;

    if-nez v9, :cond_0

    .line 731
    const/4 v9, 0x0

    .line 779
    :goto_0
    return-object v9

    .line 734
    :cond_0
    iget-object v9, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$ExteriorAdapterLoadingTask;->this$0:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;

    invoke-virtual {v9}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->isFinishing()Z

    move-result v9

    if-nez v9, :cond_4

    .line 737
    iget-object v9, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$ExteriorAdapterLoadingTask;->this$0:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "AddFriendStreamAdapter"

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$AmortizedUpdateAdapter;->loadExteriorAdaptersFromFeatures(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 743
    .local v3, adapters:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/plugin/ExteriorListAdapter;>;"
    iget-object v10, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$ExteriorAdapterLoadingTask;->lock:Ljava/lang/Object;

    monitor-enter v10

    .line 744
    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/plugin/ExteriorListAdapter;

    .line 746
    .local v2, adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;
    iget-object v9, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$ExteriorAdapterLoadingTask;->this$0:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mExteriorListAdapters:Ljava/util/List;
    invoke-static {v9}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->access$400(Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 747
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 748
    .local v4, bundle:Landroid/os/Bundle;
    const-string v9, "datatype"

    const-string v11, "all"

    invoke-virtual {v4, v9, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    iget-object v9, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$ExteriorAdapterLoadingTask;->mAccountList:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 751
    .local v7, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 752
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 753
    .local v1, accountType:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$ExteriorAdapterLoadingTask;->mAccountList:Ljava/util/HashMap;

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v4, v1, v9}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_2

    .line 777
    .end local v1           #accountType:Ljava/lang/String;
    .end local v2           #adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;
    .end local v4           #bundle:Landroid/os/Bundle;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v7           #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 762
    .restart local v2       #adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;
    .restart local v4       #bundle:Landroid/os/Bundle;
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v6       #ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v7       #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 763
    .local v0, accountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 765
    .local v8, sourceIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$ExteriorAdapterLoadingTask;->this$0:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;

    iget-object v9, v9, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mParent:Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;

    if-eqz v9, :cond_2

    .line 767
    iget-object v9, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$ExteriorAdapterLoadingTask;->this$0:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;

    iget-object v9, v9, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mParent:Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;

    invoke-virtual {v9, v0, v8}, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;->getItemAccountArray(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 770
    :cond_2
    const-string v9, "com.htc.friendstream.PEOPLE_ACCOUNT_TYPE"

    invoke-virtual {v4, v9, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 771
    const-string v9, "com.htc.friendstream.PEOPLE_USER_ID"

    invoke-virtual {v4, v9, v8}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 772
    const-string v9, "isMyProfile"

    iget-object v11, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$ExteriorAdapterLoadingTask;->this$0:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;

    #calls: Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->isMyContactType()Z
    invoke-static {v11}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->access$500(Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;)Z

    move-result v11

    invoke-virtual {v4, v9, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 773
    invoke-virtual {v2, v4}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->setDataBundle(Landroid/os/Bundle;)V

    .line 774
    invoke-virtual {v2}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->loadData()V

    .line 775
    const/4 v9, 0x1

    new-array v11, v9, [Lcom/htc/opensense/plugin/ExteriorListAdapter;

    const/4 v12, 0x0

    iget-object v9, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$ExteriorAdapterLoadingTask;->this$0:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mExteriorListAdapters:Ljava/util/List;
    invoke-static {v9}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->access$400(Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;)Ljava/util/List;

    move-result-object v9

    iget-object v13, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$ExteriorAdapterLoadingTask;->this$0:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mExteriorListAdapters:Ljava/util/List;
    invoke-static {v13}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->access$400(Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense/plugin/ExteriorListAdapter;

    aput-object v9, v11, v12

    invoke-virtual {p0, v11}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$ExteriorAdapterLoadingTask;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 777
    .end local v0           #accountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;
    .end local v4           #bundle:Landroid/os/Bundle;
    .end local v6           #ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v7           #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8           #sourceIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 779
    .end local v3           #adapters:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/plugin/ExteriorListAdapter;>;"
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 709
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$ExteriorAdapterLoadingTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 792
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$ExteriorAdapterLoadingTask;->this$0:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mAmortizedUpdateAdapter:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$AmortizedUpdateAdapter;
    invoke-static {v0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->access$600(Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;)Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$AmortizedUpdateAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$AmortizedUpdateAdapter;->setAdapterLoadingComplete(Z)V

    .line 793
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$ExteriorAdapterLoadingTask;->this$0:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->exteriorAdapterLoadingTaskProcessing:Z
    invoke-static {v0, v1}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->access$202(Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;Z)Z

    .line 794
    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 720
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$ExteriorAdapterLoadingTask;->this$0:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;

    const/4 v1, 0x1

    #setter for: Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->exteriorAdapterLoadingTaskProcessing:Z
    invoke-static {v0, v1}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->access$202(Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;Z)Z

    .line 721
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 723
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$ExteriorAdapterLoadingTask;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 724
    :try_start_0
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$ExteriorAdapterLoadingTask;->this$0:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;

    #calls: Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->removeExteriorAdapter()V
    invoke-static {v0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->access$300(Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;)V

    .line 725
    monitor-exit v1

    .line 726
    return-void

    .line 725
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected varargs onProgressUpdate([Lcom/htc/opensense/plugin/ExteriorListAdapter;)V
    .locals 2
    .parameter "exteriorAdapters"

    .prologue
    .line 783
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$ExteriorAdapterLoadingTask;->this$0:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$ExteriorAdapterLoadingTask;->this$0:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mAmortizedUpdateAdapter:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$AmortizedUpdateAdapter;
    invoke-static {v0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->access$600(Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;)Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$AmortizedUpdateAdapter;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$AmortizedUpdateAdapter;->addExteriorAdapter(Lcom/htc/opensense/plugin/ExteriorListAdapter;)V

    .line 785
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$ExteriorAdapterLoadingTask;->this$0:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->access$700(Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;)Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$ExteriorAdapterLoadingTask;->this$0:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;

    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$ExteriorAdapterLoadingTask;->this$0:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v1}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->access$800(Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;)Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 789
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 709
    check-cast p1, [Lcom/htc/opensense/plugin/ExteriorListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$ExteriorAdapterLoadingTask;->onProgressUpdate([Lcom/htc/opensense/plugin/ExteriorListAdapter;)V

    return-void
.end method
