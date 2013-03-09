.class public Lcom/htc/android/mail/MailListTab$RequestHandler;
.super Lcom/htc/android/mail/MailRequestHandler;
.source "MailListTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailListTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestHandler"
.end annotation


# instance fields
.field private final mTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/android/mail/MailListTab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/android/mail/MailListTab;)V
    .locals 1
    .parameter "context"
    .parameter "target"

    .prologue
    .line 1236
    invoke-direct {p0, p1}, Lcom/htc/android/mail/MailRequestHandler;-><init>(Landroid/content/Context;)V

    .line 1237
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailListTab$RequestHandler;->mTarget:Ljava/lang/ref/WeakReference;

    .line 1238
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "message"

    .prologue
    .line 1241
    invoke-static {}, Lcom/htc/android/mail/MailListTab;->access$800()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MailListTab"

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

    .line 1243
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab$RequestHandler;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/MailListTab;

    .line 1244
    .local v0, target:Lcom/htc/android/mail/MailListTab;
    if-nez v0, :cond_2

    .line 1279
    :cond_1
    :goto_0
    return-void

    .line 1246
    :cond_2
    invoke-virtual {v0}, Lcom/htc/android/mail/MailListTab;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1248
    invoke-super {p0, p1}, Lcom/htc/android/mail/MailRequestHandler;->handleMessage(Landroid/os/Message;)V

    .line 1250
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 1252
    :sswitch_0
    invoke-static {}, Lcom/htc/android/mail/MailListTab;->access$800()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "MailListTab"

    const-string v2, "receive refresh_complete message"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    :cond_3
    #getter for: Lcom/htc/android/mail/MailListTab;->mRequestController:Lcom/htc/android/mail/AbsRequestController;
    invoke-static {v0}, Lcom/htc/android/mail/MailListTab;->access$1400(Lcom/htc/android/mail/MailListTab;)Lcom/htc/android/mail/AbsRequestController;

    move-result-object v1

    if-eqz v1, :cond_1

    #getter for: Lcom/htc/android/mail/MailListTab;->mRequestController:Lcom/htc/android/mail/AbsRequestController;
    invoke-static {v0}, Lcom/htc/android/mail/MailListTab;->access$1400(Lcom/htc/android/mail/MailListTab;)Lcom/htc/android/mail/AbsRequestController;

    move-result-object v1

    #getter for: Lcom/htc/android/mail/MailListTab;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v0}, Lcom/htc/android/mail/MailListTab;->access$1500(Lcom/htc/android/mail/MailListTab;)Lcom/htc/android/mail/Account;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/AbsRequestController;->isServerRefreshing(Lcom/htc/android/mail/Account;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1254
    #getter for: Lcom/htc/android/mail/MailListTab;->mDirty:Z
    invoke-static {v0}, Lcom/htc/android/mail/MailListTab;->access$1600(Lcom/htc/android/mail/MailListTab;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/htc/android/mail/MailListTab;->update()V

    goto :goto_0

    .line 1258
    :sswitch_1
    invoke-static {}, Lcom/htc/android/mail/MailListTab;->access$800()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "MailListTab"

    const-string v2, "receive checkmore_complete message"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    :cond_4
    #getter for: Lcom/htc/android/mail/MailListTab;->mRequestController:Lcom/htc/android/mail/AbsRequestController;
    invoke-static {v0}, Lcom/htc/android/mail/MailListTab;->access$1400(Lcom/htc/android/mail/MailListTab;)Lcom/htc/android/mail/AbsRequestController;

    move-result-object v1

    if-eqz v1, :cond_1

    #getter for: Lcom/htc/android/mail/MailListTab;->mRequestController:Lcom/htc/android/mail/AbsRequestController;
    invoke-static {v0}, Lcom/htc/android/mail/MailListTab;->access$1400(Lcom/htc/android/mail/MailListTab;)Lcom/htc/android/mail/AbsRequestController;

    move-result-object v1

    #getter for: Lcom/htc/android/mail/MailListTab;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v0}, Lcom/htc/android/mail/MailListTab;->access$1500(Lcom/htc/android/mail/MailListTab;)Lcom/htc/android/mail/Account;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/AbsRequestController;->isServerRefreshing(Lcom/htc/android/mail/Account;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1260
    #getter for: Lcom/htc/android/mail/MailListTab;->mDirty:Z
    invoke-static {v0}, Lcom/htc/android/mail/MailListTab;->access$1600(Lcom/htc/android/mail/MailListTab;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/htc/android/mail/MailListTab;->update()V

    goto :goto_0

    .line 1264
    :sswitch_2
    const-string v1, "MailListTab"

    const-string v2, "importantMail_changed>"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    invoke-virtual {v0}, Lcom/htc/android/mail/MailListTab;->updateTabUnreadNumber()V

    goto :goto_0

    .line 1269
    :sswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/htc/android/mail/MailListTab;->updateTabUnreadNumberView(I)V
    invoke-static {v0, v1}, Lcom/htc/android/mail/MailListTab;->access$1700(Lcom/htc/android/mail/MailListTab;I)V

    .line 1270
    #calls: Lcom/htc/android/mail/MailListTab;->doUpdateDropList()V
    invoke-static {v0}, Lcom/htc/android/mail/MailListTab;->access$1800(Lcom/htc/android/mail/MailListTab;)V

    goto :goto_0

    .line 1274
    :sswitch_4
    invoke-static {}, Lcom/htc/android/mail/MailListTab;->access$800()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "MailListTab"

    const-string v2, "UPDATE_DROPLIST_COUNT>"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    :cond_5
    #calls: Lcom/htc/android/mail/MailListTab;->doUpdateDropList()V
    invoke-static {v0}, Lcom/htc/android/mail/MailListTab;->access$1800(Lcom/htc/android/mail/MailListTab;)V

    goto/16 :goto_0

    .line 1250
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x15 -> :sswitch_2
        0x18 -> :sswitch_3
        0x23 -> :sswitch_4
    .end sparse-switch
.end method

.method public onCheckMoreComplete(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;Landroid/os/Message;)V
    .locals 6
    .parameter "account"
    .parameter "r"
    .parameter "msg"

    .prologue
    .line 1303
    iget-object v2, p0, Lcom/htc/android/mail/MailListTab$RequestHandler;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/MailListTab;

    .line 1304
    .local v1, target:Lcom/htc/android/mail/MailListTab;
    if-nez v1, :cond_1

    .line 1313
    :cond_0
    :goto_0
    return-void

    .line 1305
    :cond_1
    if-eqz p1, :cond_0

    #getter for: Lcom/htc/android/mail/MailListTab;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v1}, Lcom/htc/android/mail/MailListTab;->access$1500(Lcom/htc/android/mail/MailListTab;)Lcom/htc/android/mail/Account;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1306
    #getter for: Lcom/htc/android/mail/MailListTab;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v1}, Lcom/htc/android/mail/MailListTab;->access$1500(Lcom/htc/android/mail/MailListTab;)Lcom/htc/android/mail/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    #getter for: Lcom/htc/android/mail/MailListTab;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v1}, Lcom/htc/android/mail/MailListTab;->access$1500(Lcom/htc/android/mail/MailListTab;)Lcom/htc/android/mail/Account;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 1308
    :cond_2
    invoke-static {}, Lcom/htc/android/mail/MailListTab;->access$800()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "MailListTab"

    const-string v3, "onCheckMoreComplete"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    :cond_3
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/MailListTab$RequestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1310
    .local v0, message:Landroid/os/Message;
    if-eqz p3, :cond_4

    iget-object v2, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_4

    iget-object v2, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1311
    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1312
    :cond_5
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onContactGroupChanged()V
    .locals 2

    .prologue
    .line 1317
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab$RequestHandler;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/MailListTab;

    .line 1318
    .local v0, target:Lcom/htc/android/mail/MailListTab;
    if-nez v0, :cond_0

    .line 1322
    :goto_0
    return-void

    .line 1321
    :cond_0
    invoke-virtual {v0}, Lcom/htc/android/mail/MailListTab;->updateTabUnreadNumber()V

    goto :goto_0
.end method

.method public onImportantMailUpdateComplete()V
    .locals 2

    .prologue
    .line 1283
    const/16 v1, 0x15

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/MailListTab$RequestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1284
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1285
    return-void
.end method

.method public onRefreshComplete(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;Landroid/os/Message;)V
    .locals 6
    .parameter "account"
    .parameter "r"
    .parameter "msg"

    .prologue
    .line 1289
    iget-object v2, p0, Lcom/htc/android/mail/MailListTab$RequestHandler;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/MailListTab;

    .line 1290
    .local v1, target:Lcom/htc/android/mail/MailListTab;
    if-nez v1, :cond_1

    .line 1299
    :cond_0
    :goto_0
    return-void

    .line 1291
    :cond_1
    if-eqz p1, :cond_0

    #getter for: Lcom/htc/android/mail/MailListTab;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v1}, Lcom/htc/android/mail/MailListTab;->access$1500(Lcom/htc/android/mail/MailListTab;)Lcom/htc/android/mail/Account;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1292
    #getter for: Lcom/htc/android/mail/MailListTab;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v1}, Lcom/htc/android/mail/MailListTab;->access$1500(Lcom/htc/android/mail/MailListTab;)Lcom/htc/android/mail/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    #getter for: Lcom/htc/android/mail/MailListTab;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v1}, Lcom/htc/android/mail/MailListTab;->access$1500(Lcom/htc/android/mail/MailListTab;)Lcom/htc/android/mail/Account;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 1294
    :cond_2
    invoke-static {}, Lcom/htc/android/mail/MailListTab;->access$800()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "MailListTab"

    const-string v3, "onRefreshComplete"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/MailListTab$RequestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1296
    .local v0, message:Landroid/os/Message;
    if-eqz p3, :cond_4

    iget-object v2, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_4

    iget-object v2, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1297
    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1298
    :cond_5
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
