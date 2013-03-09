.class Lcom/htc/android/mail/MailSearch$RequestHandler;
.super Lcom/htc/android/mail/MailRequestHandler;
.source "MailSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestHandler"
.end annotation


# instance fields
.field private final mTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/android/mail/MailSearch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/android/mail/MailSearch;)V
    .locals 1
    .parameter "context"
    .parameter "target"

    .prologue
    .line 1829
    invoke-direct {p0, p1}, Lcom/htc/android/mail/MailRequestHandler;-><init>(Landroid/content/Context;)V

    .line 1830
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailSearch$RequestHandler;->mTarget:Ljava/lang/ref/WeakReference;

    .line 1831
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "message"

    .prologue
    .line 1834
    invoke-static {}, Lcom/htc/android/mail/MailSearch;->access$900()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MailSearch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1836
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/MailSearch$RequestHandler;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/MailSearch;

    .line 1837
    .local v0, target:Lcom/htc/android/mail/MailSearch;
    if-nez v0, :cond_2

    .line 1860
    :cond_1
    :goto_0
    return-void

    .line 1839
    :cond_2
    invoke-virtual {v0}, Lcom/htc/android/mail/MailSearch;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1841
    invoke-super {p0, p1}, Lcom/htc/android/mail/MailRequestHandler;->handleMessage(Landroid/os/Message;)V

    .line 1843
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 1852
    :sswitch_0
    invoke-static {}, Lcom/htc/android/mail/MailSearch;->access$900()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "MailSearch"

    const-string v2, "receive refresh_complete message"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1853
    :cond_3
    #getter for: Lcom/htc/android/mail/MailSearch;->mRequestController:Lcom/htc/android/mail/AbsRequestController;
    invoke-static {v0}, Lcom/htc/android/mail/MailSearch;->access$800(Lcom/htc/android/mail/MailSearch;)Lcom/htc/android/mail/AbsRequestController;

    move-result-object v1

    if-eqz v1, :cond_1

    #getter for: Lcom/htc/android/mail/MailSearch;->mRequestController:Lcom/htc/android/mail/AbsRequestController;
    invoke-static {v0}, Lcom/htc/android/mail/MailSearch;->access$800(Lcom/htc/android/mail/MailSearch;)Lcom/htc/android/mail/AbsRequestController;

    move-result-object v1

    #getter for: Lcom/htc/android/mail/MailSearch;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v0}, Lcom/htc/android/mail/MailSearch;->access$200(Lcom/htc/android/mail/MailSearch;)Lcom/htc/android/mail/Account;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/AbsRequestController;->isServerRefreshing(Lcom/htc/android/mail/Account;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1854
    const/4 v1, 0x0

    #setter for: Lcom/htc/android/mail/MailSearch;->mRefreshMailing:Z
    invoke-static {v0, v1}, Lcom/htc/android/mail/MailSearch;->access$3002(Lcom/htc/android/mail/MailSearch;Z)Z

    .line 1855
    iget-object v1, v0, Lcom/htc/android/mail/MailSearch;->mResultContentObserver:Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;

    invoke-virtual {v1}, Lcom/htc/android/mail/MailSearch$SearchResultContentObserver;->finalQuery()V

    goto :goto_0

    .line 1846
    :sswitch_1
    invoke-static {}, Lcom/htc/android/mail/MailSearch;->access$900()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "MailSearch"

    const-string v2, "show_progress_for_refresh>"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1847
    :cond_4
    const/4 v1, 0x1

    #setter for: Lcom/htc/android/mail/MailSearch;->mRefreshMailing:Z
    invoke-static {v0, v1}, Lcom/htc/android/mail/MailSearch;->access$3002(Lcom/htc/android/mail/MailSearch;Z)Z

    goto :goto_0

    .line 1843
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x4 -> :sswitch_1
        0xe -> :sswitch_1
    .end sparse-switch
.end method

.method public onCheckMoreComplete(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;Landroid/os/Message;)V
    .locals 6
    .parameter "account"
    .parameter "r"
    .parameter "msg"

    .prologue
    .line 1902
    iget-object v2, p0, Lcom/htc/android/mail/MailSearch$RequestHandler;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/MailSearch;

    .line 1903
    .local v1, target:Lcom/htc/android/mail/MailSearch;
    if-nez v1, :cond_1

    .line 1912
    :cond_0
    :goto_0
    return-void

    .line 1904
    :cond_1
    if-eqz p1, :cond_0

    #getter for: Lcom/htc/android/mail/MailSearch;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v1}, Lcom/htc/android/mail/MailSearch;->access$200(Lcom/htc/android/mail/MailSearch;)Lcom/htc/android/mail/Account;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1905
    #getter for: Lcom/htc/android/mail/MailSearch;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v1}, Lcom/htc/android/mail/MailSearch;->access$200(Lcom/htc/android/mail/MailSearch;)Lcom/htc/android/mail/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    #getter for: Lcom/htc/android/mail/MailSearch;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v1}, Lcom/htc/android/mail/MailSearch;->access$200(Lcom/htc/android/mail/MailSearch;)Lcom/htc/android/mail/Account;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 1907
    :cond_2
    invoke-static {}, Lcom/htc/android/mail/MailSearch;->access$900()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "MailSearch"

    const-string v3, "onCheckMoreComplete"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1908
    :cond_3
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/MailSearch$RequestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1909
    .local v0, message:Landroid/os/Message;
    if-eqz p3, :cond_4

    iget-object v2, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_4

    iget-object v2, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1910
    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1911
    :cond_5
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onRefreshComplete(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;Landroid/os/Message;)V
    .locals 6
    .parameter "account"
    .parameter "r"
    .parameter "msg"

    .prologue
    .line 1888
    iget-object v2, p0, Lcom/htc/android/mail/MailSearch$RequestHandler;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/MailSearch;

    .line 1889
    .local v1, target:Lcom/htc/android/mail/MailSearch;
    if-nez v1, :cond_1

    .line 1898
    :cond_0
    :goto_0
    return-void

    .line 1890
    :cond_1
    if-eqz p1, :cond_0

    #getter for: Lcom/htc/android/mail/MailSearch;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v1}, Lcom/htc/android/mail/MailSearch;->access$200(Lcom/htc/android/mail/MailSearch;)Lcom/htc/android/mail/Account;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1891
    #getter for: Lcom/htc/android/mail/MailSearch;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v1}, Lcom/htc/android/mail/MailSearch;->access$200(Lcom/htc/android/mail/MailSearch;)Lcom/htc/android/mail/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    #getter for: Lcom/htc/android/mail/MailSearch;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v1}, Lcom/htc/android/mail/MailSearch;->access$200(Lcom/htc/android/mail/MailSearch;)Lcom/htc/android/mail/Account;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 1893
    :cond_2
    invoke-static {}, Lcom/htc/android/mail/MailSearch;->access$900()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "MailSearch"

    const-string v3, "onRefreshComplete"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1894
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/MailSearch$RequestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1895
    .local v0, message:Landroid/os/Message;
    if-eqz p3, :cond_4

    iget-object v2, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_4

    iget-object v2, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1896
    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1897
    :cond_5
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onShowProgressForReadMoreMail(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;)V
    .locals 6
    .parameter "account"
    .parameter "r"

    .prologue
    .line 1876
    invoke-static {}, Lcom/htc/android/mail/MailSearch;->access$900()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "MailSearch"

    const-string v3, "onShowProgressForReadMoreMail"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1877
    :cond_0
    iget-object v2, p0, Lcom/htc/android/mail/MailSearch$RequestHandler;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/MailSearch;

    .line 1878
    .local v1, target:Lcom/htc/android/mail/MailSearch;
    if-nez v1, :cond_2

    .line 1884
    :cond_1
    :goto_0
    return-void

    .line 1879
    :cond_2
    if-eqz p1, :cond_1

    #getter for: Lcom/htc/android/mail/MailSearch;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v1}, Lcom/htc/android/mail/MailSearch;->access$200(Lcom/htc/android/mail/MailSearch;)Lcom/htc/android/mail/Account;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1880
    #getter for: Lcom/htc/android/mail/MailSearch;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v1}, Lcom/htc/android/mail/MailSearch;->access$200(Lcom/htc/android/mail/MailSearch;)Lcom/htc/android/mail/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    #getter for: Lcom/htc/android/mail/MailSearch;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v1}, Lcom/htc/android/mail/MailSearch;->access$200(Lcom/htc/android/mail/MailSearch;)Lcom/htc/android/mail/Account;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 1882
    :cond_3
    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/MailSearch$RequestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1883
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onShowProgressForRefresh(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;)V
    .locals 6
    .parameter "account"
    .parameter "r"

    .prologue
    .line 1864
    invoke-static {}, Lcom/htc/android/mail/MailSearch;->access$900()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "MailSearch"

    const-string v3, "onShowProgressForRefresh"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1865
    :cond_0
    iget-object v2, p0, Lcom/htc/android/mail/MailSearch$RequestHandler;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/MailSearch;

    .line 1866
    .local v1, target:Lcom/htc/android/mail/MailSearch;
    if-nez v1, :cond_2

    .line 1872
    :cond_1
    :goto_0
    return-void

    .line 1867
    :cond_2
    if-eqz p1, :cond_1

    #getter for: Lcom/htc/android/mail/MailSearch;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v1}, Lcom/htc/android/mail/MailSearch;->access$200(Lcom/htc/android/mail/MailSearch;)Lcom/htc/android/mail/Account;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1868
    #getter for: Lcom/htc/android/mail/MailSearch;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v1}, Lcom/htc/android/mail/MailSearch;->access$200(Lcom/htc/android/mail/MailSearch;)Lcom/htc/android/mail/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    #getter for: Lcom/htc/android/mail/MailSearch;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v1}, Lcom/htc/android/mail/MailSearch;->access$200(Lcom/htc/android/mail/MailSearch;)Lcom/htc/android/mail/Account;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 1870
    :cond_3
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/MailSearch$RequestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1871
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
