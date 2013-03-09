.class Lcom/htc/store/activity/landing/LandingMyActivity$InitialRestHelperTask;
.super Landroid/os/AsyncTask;
.source "LandingMyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/landing/LandingMyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitialRestHelperTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private doChceckIcon:Z

.field final synthetic this$0:Lcom/htc/store/activity/landing/LandingMyActivity;


# direct methods
.method public constructor <init>(Lcom/htc/store/activity/landing/LandingMyActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 673
    iput-object p1, p0, Lcom/htc/store/activity/landing/LandingMyActivity$InitialRestHelperTask;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 671
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$InitialRestHelperTask;->doChceckIcon:Z

    .line 674
    return-void
.end method

.method public constructor <init>(Lcom/htc/store/activity/landing/LandingMyActivity;Z)V
    .locals 1
    .parameter
    .parameter "updateIcon"

    .prologue
    .line 676
    iput-object p1, p0, Lcom/htc/store/activity/landing/LandingMyActivity$InitialRestHelperTask;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 671
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$InitialRestHelperTask;->doChceckIcon:Z

    .line 677
    iput-boolean p2, p0, Lcom/htc/store/activity/landing/LandingMyActivity$InitialRestHelperTask;->doChceckIcon:Z

    .line 678
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 4
    .parameter "params"

    .prologue
    .line 682
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$InitialRestHelperTask;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;
    invoke-static {v0}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$1900(Lcom/htc/store/activity/landing/LandingMyActivity;)Lcom/htc/store/module/rest/RestHelper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$InitialRestHelperTask;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    new-instance v1, Lcom/htc/store/module/rest/RestHelper;

    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingMyActivity$InitialRestHelperTask;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #calls: Lcom/htc/store/activity/landing/LandingMyActivity;->getContext()Landroid/app/Activity;
    invoke-static {v2}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$2000(Lcom/htc/store/activity/landing/LandingMyActivity;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/store/module/rest/RestHelper;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;
    invoke-static {v0, v1}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$1902(Lcom/htc/store/activity/landing/LandingMyActivity;Lcom/htc/store/module/rest/RestHelper;)Lcom/htc/store/module/rest/RestHelper;

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$InitialRestHelperTask;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mImageCacheMappingAccessKey:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$2100(Lcom/htc/store/activity/landing/LandingMyActivity;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 686
    :try_start_0
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$InitialRestHelperTask;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mImageCacheMapping:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$2200(Lcom/htc/store/activity/landing/LandingMyActivity;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 687
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$InitialRestHelperTask;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mImageCacheMapping:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$2200(Lcom/htc/store/activity/landing/LandingMyActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 689
    :cond_1
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$InitialRestHelperTask;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingMyActivity$InitialRestHelperTask;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v2}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$1500(Lcom/htc/store/activity/landing/LandingMyActivity;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/store/provider/AccessHelper;->getImageCacheMappingItems(I)Ljava/util/HashMap;

    move-result-object v2

    #setter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mImageCacheMapping:Ljava/util/HashMap;
    invoke-static {v0, v2}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$2202(Lcom/htc/store/activity/landing/LandingMyActivity;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 690
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$InitialRestHelperTask;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mImageCacheMapping:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$2200(Lcom/htc/store/activity/landing/LandingMyActivity;)Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_2

    .line 691
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$InitialRestHelperTask;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #setter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mImageCacheMapping:Ljava/util/HashMap;
    invoke-static {v0, v2}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$2202(Lcom/htc/store/activity/landing/LandingMyActivity;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 693
    :cond_2
    monitor-exit v1

    .line 694
    const/4 v0, 0x0

    return-object v0

    .line 693
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 669
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/landing/LandingMyActivity$InitialRestHelperTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 8
    .parameter "result"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 699
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingMyActivity$InitialRestHelperTask;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mAdapter:Lcom/htc/store/module/adapter/MyActivityAdapter;
    invoke-static {v1}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$2300(Lcom/htc/store/activity/landing/LandingMyActivity;)Lcom/htc/store/module/adapter/MyActivityAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingMyActivity$InitialRestHelperTask;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mImageCacheMapping:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$2200(Lcom/htc/store/activity/landing/LandingMyActivity;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/store/module/adapter/MyActivityAdapter;->setImageCacheMapping(Ljava/util/HashMap;)V

    .line 700
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingMyActivity$InitialRestHelperTask;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mAdapter:Lcom/htc/store/module/adapter/MyActivityAdapter;
    invoke-static {v1}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$2300(Lcom/htc/store/activity/landing/LandingMyActivity;)Lcom/htc/store/module/adapter/MyActivityAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/store/module/adapter/MyActivityAdapter;->notifyDataSetChanged()V

    .line 703
    iget-boolean v1, p0, Lcom/htc/store/activity/landing/LandingMyActivity$InitialRestHelperTask;->doChceckIcon:Z

    if-eqz v1, :cond_2

    .line 704
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingMyActivity$InitialRestHelperTask;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #calls: Lcom/htc/store/activity/landing/LandingMyActivity;->doAction(I)V
    invoke-static {v1, v5}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$600(Lcom/htc/store/activity/landing/LandingMyActivity;I)V

    .line 705
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingMyActivity$InitialRestHelperTask;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mDirtyFlag:Z
    invoke-static {v1}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$300(Lcom/htc/store/activity/landing/LandingMyActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 706
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingMyActivity$InitialRestHelperTask;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mNonUiHandler:Lcom/htc/store/activity/landing/LandingMyActivity$NonUiHandler;
    invoke-static {v1}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$2400(Lcom/htc/store/activity/landing/LandingMyActivity;)Lcom/htc/store/activity/landing/LandingMyActivity$NonUiHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/store/activity/landing/LandingMyActivity$NonUiHandler;->sendEmptyMessage(I)Z

    .line 707
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingMyActivity$InitialRestHelperTask;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #setter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mDirtyFlag:Z
    invoke-static {v1, v4}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$302(Lcom/htc/store/activity/landing/LandingMyActivity;Z)Z

    .line 732
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingMyActivity$InitialRestHelperTask;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #calls: Lcom/htc/store/activity/landing/LandingMyActivity;->updateProgress()V
    invoke-static {v1}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$2700(Lcom/htc/store/activity/landing/LandingMyActivity;)V

    .line 733
    return-void

    .line 709
    :cond_1
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingMyActivity$InitialRestHelperTask;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #calls: Lcom/htc/store/activity/landing/LandingMyActivity;->doAction(IZ)V
    invoke-static {v1, v3, v3}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$2500(Lcom/htc/store/activity/landing/LandingMyActivity;IZ)V

    goto :goto_0

    .line 712
    :cond_2
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingMyActivity$InitialRestHelperTask;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mActionResume:I
    invoke-static {v1}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$2600(Lcom/htc/store/activity/landing/LandingMyActivity;)I

    move-result v0

    .line 713
    .local v0, action:I
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingMyActivity$InitialRestHelperTask;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #setter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mActionResume:I
    invoke-static {v1, v4}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$2602(Lcom/htc/store/activity/landing/LandingMyActivity;I)I

    .line 714
    and-int/lit8 v1, v0, 0x8

    if-ne v1, v7, :cond_3

    .line 715
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingMyActivity$InitialRestHelperTask;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #calls: Lcom/htc/store/activity/landing/LandingMyActivity;->doAction(I)V
    invoke-static {v1, v7}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$600(Lcom/htc/store/activity/landing/LandingMyActivity;I)V

    .line 717
    :cond_3
    and-int/lit8 v1, v0, 0x4

    if-ne v1, v5, :cond_4

    .line 718
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingMyActivity$InitialRestHelperTask;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #calls: Lcom/htc/store/activity/landing/LandingMyActivity;->doAction(I)V
    invoke-static {v1, v5}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$600(Lcom/htc/store/activity/landing/LandingMyActivity;I)V

    .line 720
    :cond_4
    and-int/lit8 v1, v0, 0x2

    if-ne v1, v6, :cond_6

    .line 721
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingMyActivity$InitialRestHelperTask;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #calls: Lcom/htc/store/activity/landing/LandingMyActivity;->doAction(I)V
    invoke-static {v1, v6}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$600(Lcom/htc/store/activity/landing/LandingMyActivity;I)V

    .line 728
    :cond_5
    :goto_1
    and-int/lit8 v1, v0, 0x1

    if-ne v1, v3, :cond_0

    .line 729
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingMyActivity$InitialRestHelperTask;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #calls: Lcom/htc/store/activity/landing/LandingMyActivity;->doAction(I)V
    invoke-static {v1, v3}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$600(Lcom/htc/store/activity/landing/LandingMyActivity;I)V

    goto :goto_0

    .line 723
    :cond_6
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingMyActivity$InitialRestHelperTask;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mDirtyFlag:Z
    invoke-static {v1}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$300(Lcom/htc/store/activity/landing/LandingMyActivity;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 724
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingMyActivity$InitialRestHelperTask;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mNonUiHandler:Lcom/htc/store/activity/landing/LandingMyActivity$NonUiHandler;
    invoke-static {v1}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$2400(Lcom/htc/store/activity/landing/LandingMyActivity;)Lcom/htc/store/activity/landing/LandingMyActivity$NonUiHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/store/activity/landing/LandingMyActivity$NonUiHandler;->sendEmptyMessage(I)Z

    .line 725
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingMyActivity$InitialRestHelperTask;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #setter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mDirtyFlag:Z
    invoke-static {v1, v4}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$302(Lcom/htc/store/activity/landing/LandingMyActivity;Z)Z

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 669
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/landing/LandingMyActivity$InitialRestHelperTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
