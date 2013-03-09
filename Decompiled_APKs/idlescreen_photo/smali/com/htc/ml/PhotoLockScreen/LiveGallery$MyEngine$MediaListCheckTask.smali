.class Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MediaListCheckTask;
.super Landroid/os/AsyncTask;
.source "LiveGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaListCheckTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;


# direct methods
.method constructor <init>(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 759
    iput-object p1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MediaListCheckTask;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6
    .parameter "arg0"

    .prologue
    .line 772
    const-string v3, "brian_LiveGallery_IdleScreen"

    const-string v4, ">>doInBackground"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    const/4 v2, 0x0

    .line 778
    .local v2, res:Z
    :try_start_0
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MediaListCheckTask;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    iget-object v4, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MediaListCheckTask;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->m_listMedia:Ljava/util/List;
    invoke-static {v4}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$900(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Ljava/util/List;

    move-result-object v4

    sget-object v5, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->arrListMediaStore:Ljava/util/List;

    #calls: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->isMediaListChanged(Ljava/util/List;Ljava/util/List;)Z
    invoke-static {v3, v4, v5}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$1000(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    .line 779
    .local v0, bMediaChange:Z
    const-string v3, "brian_LiveGallery_IdleScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doInBackground, bMediaChange = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 780
    move v2, v0

    .line 787
    .end local v0           #bMediaChange:Z
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    .line 782
    :catch_0
    move-exception v1

    .line 784
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "brian_LiveGallery_IdleScreen"

    const-string v4, "doInBackground, occurs exception."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 759
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MediaListCheckTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 793
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MediaListCheckTask;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mDestroy:Z
    invoke-static {v1}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$100(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 834
    :goto_0
    return-void

    .line 798
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 800
    const-string v1, "brian_LiveGallery_IdleScreen"

    const-string v2, "onPostExecute bMediaChange = true, reload."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    :try_start_0
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MediaListCheckTask;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$1100(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 806
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MediaListCheckTask;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$1100(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 807
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MediaListCheckTask;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$1100(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 808
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MediaListCheckTask;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$1100(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 809
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MediaListCheckTask;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$1100(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 810
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MediaListCheckTask;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$1100(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 813
    :cond_1
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MediaListCheckTask;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->lihandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$1200(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 815
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MediaListCheckTask;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->lihandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$1200(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1001

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 816
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MediaListCheckTask;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->lihandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$1200(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1002

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 819
    :cond_2
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MediaListCheckTask;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #calls: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->stopAll()V
    invoke-static {v1}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$1300(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)V

    .line 820
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MediaListCheckTask;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #calls: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->runInNonUI()V
    invoke-static {v1}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$1400(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)V

    .line 821
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MediaListCheckTask;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #calls: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->loadResource()V
    invoke-static {v1}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$1500(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)V

    .line 822
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MediaListCheckTask;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #calls: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->loadPhoDeoAndPlay()V
    invoke-static {v1}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$1600(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 833
    :goto_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0

    .line 824
    :catch_0
    move-exception v0

    .line 826
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "brian_LiveGallery_IdleScreen"

    const-string v2, "onPostExecute occur exception."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 831
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    const-string v1, "brian_LiveGallery_IdleScreen"

    const-string v2, "bMediaChange = false, do nothing."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 759
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MediaListCheckTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 764
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 765
    return-void
.end method
