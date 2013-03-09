.class public Lcom/htc/android/mail/MailList$RequestHandler;
.super Lcom/htc/android/mail/MailRequestHandler;
.source "MailList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailList;
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
            "Lcom/htc/android/mail/MailList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/android/mail/MailList;Lcom/htc/android/mail/util/MailDialogManager;)V
    .locals 1
    .parameter "context"
    .parameter "target"
    .parameter "dialogManager"

    .prologue
    .line 4934
    invoke-direct {p0, p1, p3}, Lcom/htc/android/mail/MailRequestHandler;-><init>(Landroid/content/Context;Lcom/htc/android/mail/util/MailDialogManager;)V

    .line 4935
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailList$RequestHandler;->mTarget:Ljava/lang/ref/WeakReference;

    .line 4936
    return-void
.end method

.method static synthetic access$7200(Lcom/htc/android/mail/MailList$RequestHandler;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4931
    iget-object v0, p0, Lcom/htc/android/mail/MailList$RequestHandler;->mTarget:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$7300(Lcom/htc/android/mail/MailList$RequestHandler;Lcom/htc/android/mail/MailMessage;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 4931
    invoke-direct {p0, p1, p2}, Lcom/htc/android/mail/MailList$RequestHandler;->deselectMailMessage(Lcom/htc/android/mail/MailMessage;Z)V

    return-void
.end method

.method private deselectMailMessage(Lcom/htc/android/mail/MailMessage;Z)V
    .locals 10
    .parameter "message"
    .parameter "deleted"

    .prologue
    .line 5189
    iget-object v0, p0, Lcom/htc/android/mail/MailList$RequestHandler;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/android/mail/MailList;

    .line 5190
    .local v9, target:Lcom/htc/android/mail/MailList;
    if-nez v9, :cond_1

    .line 5197
    :cond_0
    :goto_0
    return-void

    .line 5191
    :cond_1
    #getter for: Lcom/htc/android/mail/MailList;->mSelectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;
    invoke-static {v9}, Lcom/htc/android/mail/MailList;->access$800(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/util/SelectedMailMessages;

    move-result-object v0

    iget v0, v0, Lcom/htc/android/mail/util/SelectedMailMessages;->mCount:I

    if-lez v0, :cond_2

    .line 5192
    #getter for: Lcom/htc/android/mail/MailList;->mSelectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;
    invoke-static {v9}, Lcom/htc/android/mail/MailList;->access$800(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/util/SelectedMailMessages;

    move-result-object v0

    iget-wide v1, p1, Lcom/htc/android/mail/MailMessage;->accountId:J

    iget-wide v3, p1, Lcom/htc/android/mail/MailMessage;->mailBoxId:J

    iget-wide v5, p1, Lcom/htc/android/mail/MailMessage;->id:J

    invoke-virtual/range {v0 .. v6}, Lcom/htc/android/mail/util/SelectedMailMessages;->deselect(JJJ)V

    .line 5194
    :cond_2
    #getter for: Lcom/htc/android/mail/MailList;->mSelectedMailGroups:Lcom/htc/android/mail/util/SelectedMailGroups;
    invoke-static {v9}, Lcom/htc/android/mail/MailList;->access$1400(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/util/SelectedMailGroups;

    move-result-object v0

    iget v0, v0, Lcom/htc/android/mail/util/SelectedMailGroups;->mCount:I

    if-lez v0, :cond_0

    .line 5195
    #getter for: Lcom/htc/android/mail/MailList;->mSelectedMailGroups:Lcom/htc/android/mail/util/SelectedMailGroups;
    invoke-static {v9}, Lcom/htc/android/mail/MailList;->access$1400(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/util/SelectedMailGroups;

    move-result-object v0

    #getter for: Lcom/htc/android/mail/MailList;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/htc/android/mail/MailList;->access$3100(Lcom/htc/android/mail/MailList;)Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p1, Lcom/htc/android/mail/MailMessage;->accountId:J

    #getter for: Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;
    invoke-static {v9}, Lcom/htc/android/mail/MailList;->access$500(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/Mailbox;

    move-result-object v4

    iget-object v5, p1, Lcom/htc/android/mail/MailMessage;->group:Ljava/lang/String;

    iget-wide v6, p1, Lcom/htc/android/mail/MailMessage;->id:J

    move v8, p2

    invoke-virtual/range {v0 .. v8}, Lcom/htc/android/mail/util/SelectedMailGroups;->deselectMessage(Landroid/content/Context;JLcom/htc/android/mail/Mailbox;Ljava/lang/String;JZ)V

    goto :goto_0
.end method

.method private updateCmdBar(Lcom/htc/android/mail/MailList;)V
    .locals 5
    .parameter "target"

    .prologue
    .line 5168
    if-nez p1, :cond_1

    .line 5186
    :cond_0
    :goto_0
    return-void

    .line 5169
    :cond_1
    iget-object v3, p1, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    invoke-virtual {v3}, Lcom/htc/android/mail/MailListTab;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v2

    .line 5170
    .local v2, host:Lcom/htc/widget/CarouselHost;
    if-eqz v2, :cond_0

    .line 5172
    iget-object v3, p1, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v3, v3, Lcom/htc/android/mail/MailListTab;->mBasicTabInfos:[Lcom/htc/android/mail/MailList$BasicTabInfo;

    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {p1}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v4

    iget v4, v4, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    aget-object v0, v3, v4

    .line 5173
    .local v0, basicTabInfo:Lcom/htc/android/mail/MailList$BasicTabInfo;
    if-eqz v0, :cond_0

    .line 5175
    invoke-virtual {v2}, Lcom/htc/widget/CarouselHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    .line 5176
    .local v1, currentTabName:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 5177
    iget-object v3, v0, Lcom/htc/android/mail/MailList$BasicTabInfo;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5178
    #getter for: Lcom/htc/android/mail/MailList;->mSelectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;
    invoke-static {p1}, Lcom/htc/android/mail/MailList;->access$800(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/util/SelectedMailMessages;

    move-result-object v3

    iget v3, v3, Lcom/htc/android/mail/util/SelectedMailMessages;->mCount:I

    if-nez v3, :cond_2

    #getter for: Lcom/htc/android/mail/MailList;->mSelectedMailGroups:Lcom/htc/android/mail/util/SelectedMailGroups;
    invoke-static {p1}, Lcom/htc/android/mail/MailList;->access$1400(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/util/SelectedMailGroups;

    move-result-object v3

    iget v3, v3, Lcom/htc/android/mail/util/SelectedMailGroups;->mCount:I

    if-nez v3, :cond_2

    .line 5179
    iget-object v3, p1, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/MailListTab;->setFooterBarAreaVisible(Z)V

    goto :goto_0

    .line 5180
    :cond_2
    #getter for: Lcom/htc/android/mail/MailList;->mSelectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;
    invoke-static {p1}, Lcom/htc/android/mail/MailList;->access$800(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/util/SelectedMailMessages;

    move-result-object v3

    iget v3, v3, Lcom/htc/android/mail/util/SelectedMailMessages;->mCount:I

    if-lez v3, :cond_3

    .line 5181
    iget-object v3, p1, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    #getter for: Lcom/htc/android/mail/MailList;->mSelectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;
    invoke-static {p1}, Lcom/htc/android/mail/MailList;->access$800(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/util/SelectedMailMessages;

    move-result-object v4

    iget v4, v4, Lcom/htc/android/mail/util/SelectedMailMessages;->mCount:I

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/MailListTab;->updateCmdBarButton1Count(I)V

    goto :goto_0

    .line 5182
    :cond_3
    #getter for: Lcom/htc/android/mail/MailList;->mSelectedMailGroups:Lcom/htc/android/mail/util/SelectedMailGroups;
    invoke-static {p1}, Lcom/htc/android/mail/MailList;->access$1400(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/util/SelectedMailGroups;

    move-result-object v3

    iget v3, v3, Lcom/htc/android/mail/util/SelectedMailGroups;->mCount:I

    if-lez v3, :cond_0

    .line 5183
    iget-object v3, p1, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    #getter for: Lcom/htc/android/mail/MailList;->mSelectedMailGroups:Lcom/htc/android/mail/util/SelectedMailGroups;
    invoke-static {p1}, Lcom/htc/android/mail/MailList;->access$1400(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/util/SelectedMailGroups;

    move-result-object v4

    iget v4, v4, Lcom/htc/android/mail/util/SelectedMailGroups;->mCount:I

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/MailListTab;->updateCmdBarButton1Count(I)V

    goto :goto_0
.end method

.method private updateListView()V
    .locals 3

    .prologue
    .line 5155
    iget-object v2, p0, Lcom/htc/android/mail/MailList$RequestHandler;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/MailList;

    .line 5156
    .local v1, target:Lcom/htc/android/mail/MailList;
    if-nez v1, :cond_0

    .line 5165
    :goto_0
    return-void

    .line 5158
    :cond_0
    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v1}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v0

    .line 5160
    .local v0, tabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    if-eqz v0, :cond_1

    .line 5161
    invoke-virtual {v0}, Lcom/htc/android/mail/MailList$TabInfo;->updateListView()V

    .line 5164
    :cond_1
    invoke-direct {p0, v1}, Lcom/htc/android/mail/MailList$RequestHandler;->updateCmdBar(Lcom/htc/android/mail/MailList;)V

    goto :goto_0
.end method


# virtual methods
.method public accountSyncResult(Z)V
    .locals 2
    .parameter "result"

    .prologue
    .line 5148
    const/16 v1, 0x25

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/MailList$RequestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5150
    .local v0, message:Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 5151
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5152
    return-void

    .line 5150
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "message"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x7

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 4939
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "MailList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleMessage>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4941
    :cond_0
    iget-object v6, p0, Lcom/htc/android/mail/MailList$RequestHandler;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/MailList;

    .line 4942
    .local v4, target:Lcom/htc/android/mail/MailList;
    if-nez v4, :cond_2

    .line 5144
    :cond_1
    :goto_0
    return-void

    .line 4944
    :cond_2
    invoke-virtual {v4}, Lcom/htc/android/mail/MailList;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_1

    .line 4946
    #getter for: Lcom/htc/android/mail/MailList;->mIsDestroyed:Z
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$5100(Lcom/htc/android/mail/MailList;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 4948
    invoke-super {p0, p1}, Lcom/htc/android/mail/MailRequestHandler;->handleMessage(Landroid/os/Message;)V

    .line 4950
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 4978
    :pswitch_1
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "MailList"

    const-string v7, "receive refresh_complete message"

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4980
    :cond_3
    #getter for: Lcom/htc/android/mail/MailList;->mRequestController:Lcom/htc/android/mail/AbsRequestController;
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$1300(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/AbsRequestController;

    move-result-object v6

    if-eqz v6, :cond_8

    #getter for: Lcom/htc/android/mail/MailList;->mRequestController:Lcom/htc/android/mail/AbsRequestController;
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$1300(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/AbsRequestController;

    move-result-object v6

    iget-object v7, v4, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v6, v7}, Lcom/htc/android/mail/AbsRequestController;->isServerRefreshing(Lcom/htc/android/mail/Account;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 4981
    #calls: Lcom/htc/android/mail/MailList;->refreshComplete()V
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$5600(Lcom/htc/android/mail/MailList;)V

    .line 4982
    #calls: Lcom/htc/android/mail/MailList;->updateMailRemain()V
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$4300(Lcom/htc/android/mail/MailList;)V

    .line 4983
    #calls: Lcom/htc/android/mail/MailList;->notifyChange()V
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$5700(Lcom/htc/android/mail/MailList;)V

    goto :goto_0

    .line 4952
    :pswitch_2
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "MailList"

    const-string v7, "show_progress_for_refresh>"

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4953
    :cond_4
    #getter for: Lcom/htc/android/mail/MailList;->mRequestController:Lcom/htc/android/mail/AbsRequestController;
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$1300(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/AbsRequestController;

    move-result-object v6

    if-eqz v6, :cond_5

    #getter for: Lcom/htc/android/mail/MailList;->mRequestController:Lcom/htc/android/mail/AbsRequestController;
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$1300(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/AbsRequestController;

    move-result-object v6

    iget-object v7, v4, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v6, v7}, Lcom/htc/android/mail/AbsRequestController;->isServerRefreshing(Lcom/htc/android/mail/Account;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4956
    :cond_5
    #calls: Lcom/htc/android/mail/MailList;->hideEmptyText()V
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$5200(Lcom/htc/android/mail/MailList;)V

    .line 4957
    #calls: Lcom/htc/android/mail/MailList;->showRefreshStatus()V
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$5300(Lcom/htc/android/mail/MailList;)V

    .line 4958
    #setter for: Lcom/htc/android/mail/MailList;->refreshMailing:Z
    invoke-static {v4, v9}, Lcom/htc/android/mail/MailList;->access$4102(Lcom/htc/android/mail/MailList;Z)Z

    .line 4959
    iput-boolean v10, v4, Lcom/htc/android/mail/MailList;->allowReadMore:Z

    .line 4960
    #calls: Lcom/htc/android/mail/MailList;->updateMenuItems()V
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$5400(Lcom/htc/android/mail/MailList;)V

    .line 4961
    #calls: Lcom/htc/android/mail/MailList;->removeRemainFooter()V
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$5500(Lcom/htc/android/mail/MailList;)V

    .line 4962
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "MailList"

    const-string v7, "progress_small>>9>>VISIBLE"

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4965
    :pswitch_3
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "MailList"

    const-string v7, "show_progress_for_readMoreMail>"

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4966
    :cond_6
    #getter for: Lcom/htc/android/mail/MailList;->mRequestController:Lcom/htc/android/mail/AbsRequestController;
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$1300(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/AbsRequestController;

    move-result-object v6

    if-eqz v6, :cond_7

    #getter for: Lcom/htc/android/mail/MailList;->mRequestController:Lcom/htc/android/mail/AbsRequestController;
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$1300(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/AbsRequestController;

    move-result-object v6

    iget-object v7, v4, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v6, v7}, Lcom/htc/android/mail/AbsRequestController;->isServerRefreshing(Lcom/htc/android/mail/Account;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4969
    :cond_7
    #calls: Lcom/htc/android/mail/MailList;->hideEmptyText()V
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$5200(Lcom/htc/android/mail/MailList;)V

    .line 4970
    #calls: Lcom/htc/android/mail/MailList;->showRefreshStatus()V
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$5300(Lcom/htc/android/mail/MailList;)V

    .line 4971
    #setter for: Lcom/htc/android/mail/MailList;->readMoreMailing:Z
    invoke-static {v4, v9}, Lcom/htc/android/mail/MailList;->access$4202(Lcom/htc/android/mail/MailList;Z)Z

    .line 4972
    iput-boolean v10, v4, Lcom/htc/android/mail/MailList;->allowReadMore:Z

    .line 4973
    #calls: Lcom/htc/android/mail/MailList;->updateMenuItems()V
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$5400(Lcom/htc/android/mail/MailList;)V

    .line 4974
    #calls: Lcom/htc/android/mail/MailList;->removeRemainFooter()V
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$5500(Lcom/htc/android/mail/MailList;)V

    .line 4975
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "MailList"

    const-string v7, "progress_small>>9>>VISIBLE"

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4985
    :cond_8
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "MailList"

    const-string v7, "Server is still busy on refreshing, don\'t process refreshComplete()"

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4989
    :pswitch_4
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, "MailList"

    const-string v7, "receive checkmore_complete message"

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4991
    :cond_9
    #getter for: Lcom/htc/android/mail/MailList;->mRequestController:Lcom/htc/android/mail/AbsRequestController;
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$1300(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/AbsRequestController;

    move-result-object v6

    if-eqz v6, :cond_1

    #getter for: Lcom/htc/android/mail/MailList;->mRequestController:Lcom/htc/android/mail/AbsRequestController;
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$1300(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/AbsRequestController;

    move-result-object v6

    iget-object v7, v4, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v6, v7}, Lcom/htc/android/mail/AbsRequestController;->isServerRefreshing(Lcom/htc/android/mail/Account;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 4992
    #calls: Lcom/htc/android/mail/MailList;->checkMoreComplete()V
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$5800(Lcom/htc/android/mail/MailList;)V

    .line 4993
    #calls: Lcom/htc/android/mail/MailList;->updateMailRemain()V
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$4300(Lcom/htc/android/mail/MailList;)V

    .line 4994
    #calls: Lcom/htc/android/mail/MailList;->notifyChange()V
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$5700(Lcom/htc/android/mail/MailList;)V

    goto/16 :goto_0

    .line 4998
    :pswitch_5
    new-instance v6, Lcom/htc/android/mail/MailList$RequestHandler$1;

    invoke-direct {v6, p0, v4}, Lcom/htc/android/mail/MailList$RequestHandler$1;-><init>(Lcom/htc/android/mail/MailList$RequestHandler;Lcom/htc/android/mail/MailList;)V

    invoke-virtual {v4, v6}, Lcom/htc/android/mail/MailList;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5003
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "MailList"

    const-string v7, "list complete"

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5008
    :pswitch_6
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v6

    if-eqz v6, :cond_a

    const-string v6, "MailList"

    const-string v7, "onReloadMailList"

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5009
    :cond_a
    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v6

    iget v6, v6, Lcom/htc/android/mail/MailList$TabInfo;->mNowTokenId:I

    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v7

    iget v7, v7, Lcom/htc/android/mail/MailList$TabInfo;->mLoadFinishedTokenId:I

    if-eq v6, v7, :cond_1

    .line 5010
    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v6

    const/16 v7, 0x1e

    #calls: Lcom/htc/android/mail/MailList;->loadListViewContent(Lcom/htc/android/mail/MailList$TabInfo;I)V
    invoke-static {v4, v6, v7}, Lcom/htc/android/mail/MailList;->access$5900(Lcom/htc/android/mail/MailList;Lcom/htc/android/mail/MailList$TabInfo;I)V

    goto/16 :goto_0

    .line 5014
    :pswitch_7
    #getter for: Lcom/htc/android/mail/MailList;->progressSubject:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$6000(Lcom/htc/android/mail/MailList;)Landroid/widget/TextView;

    move-result-object v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 5018
    :pswitch_8
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, "MailList"

    const-string v7, "setReadStatus_complete"

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5019
    :cond_b
    invoke-direct {p0}, Lcom/htc/android/mail/MailList$RequestHandler;->updateListView()V

    .line 5020
    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v6

    iget v6, v6, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    #calls: Lcom/htc/android/mail/MailList;->updateEmptyMessage(I)V
    invoke-static {v4, v6}, Lcom/htc/android/mail/MailList;->access$6100(Lcom/htc/android/mail/MailList;I)V

    goto/16 :goto_0

    .line 5023
    :pswitch_9
    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 5024
    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/android/mail/MailList$TabInfo;->updateListView()V

    goto/16 :goto_0

    .line 5028
    :pswitch_a
    invoke-direct {p0}, Lcom/htc/android/mail/MailList$RequestHandler;->updateListView()V

    .line 5029
    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v6

    iget v6, v6, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    #calls: Lcom/htc/android/mail/MailList;->updateEmptyMessage(I)V
    invoke-static {v4, v6}, Lcom/htc/android/mail/MailList;->access$6100(Lcom/htc/android/mail/MailList;I)V

    goto/16 :goto_0

    .line 5033
    :pswitch_b
    invoke-direct {p0}, Lcom/htc/android/mail/MailList$RequestHandler;->updateListView()V

    .line 5034
    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v6

    iget v6, v6, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    #calls: Lcom/htc/android/mail/MailList;->updateEmptyMessage(I)V
    invoke-static {v4, v6}, Lcom/htc/android/mail/MailList;->access$6100(Lcom/htc/android/mail/MailList;I)V

    goto/16 :goto_0

    .line 5037
    :pswitch_c
    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v6

    iget v6, v6, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    if-ne v6, v11, :cond_1

    .line 5038
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v6

    if-eqz v6, :cond_c

    const-string v6, "MailList"

    const-string v7, "importantMail_changed>"

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5039
    :cond_c
    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/htc/android/mail/MailList$TabInfo;->mAdapter:Lcom/htc/android/mail/MailList$MailListAdapter;

    if-eqz v6, :cond_1

    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/htc/android/mail/MailList$TabInfo;->mCursorContentObserver:Lcom/htc/android/mail/MailList$CursorContentObserver;

    if-eqz v6, :cond_1

    .line 5040
    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/htc/android/mail/MailList$TabInfo;->mCursorContentObserver:Lcom/htc/android/mail/MailList$CursorContentObserver;

    invoke-virtual {v6, v10}, Lcom/htc/android/mail/MailList$CursorContentObserver;->onChange(Z)V

    goto/16 :goto_0

    .line 5046
    :pswitch_d
    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v3

    .line 5047
    .local v3, tabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    if-eqz v3, :cond_1

    iget-object v6, v3, Lcom/htc/android/mail/MailList$TabInfo;->mCursorContentObserver:Lcom/htc/android/mail/MailList$CursorContentObserver;

    if-eqz v6, :cond_1

    .line 5048
    iget-object v6, v3, Lcom/htc/android/mail/MailList$TabInfo;->mCursorContentObserver:Lcom/htc/android/mail/MailList$CursorContentObserver;

    invoke-virtual {v6, v10}, Lcom/htc/android/mail/MailList$CursorContentObserver;->onChange(Z)V

    goto/16 :goto_0

    .line 5053
    .end local v3           #tabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    :pswitch_e
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$2900()Z

    move-result v6

    if-eqz v6, :cond_d

    const-string v6, "MailList"

    const-string v7, "contactGroup_changed>"

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5054
    :cond_d
    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v6

    iget v6, v6, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    if-ne v6, v11, :cond_1

    .line 5055
    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v6

    #calls: Lcom/htc/android/mail/MailList;->updateTabTitle(Lcom/htc/android/mail/MailList$TabInfo;)V
    invoke-static {v4, v6}, Lcom/htc/android/mail/MailList;->access$4900(Lcom/htc/android/mail/MailList;Lcom/htc/android/mail/MailList$TabInfo;)V

    .line 5056
    #calls: Lcom/htc/android/mail/MailList;->updateEmptyMessage(I)V
    invoke-static {v4, v11}, Lcom/htc/android/mail/MailList;->access$6100(Lcom/htc/android/mail/MailList;I)V

    .line 5057
    iget-object v6, v4, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v6, v6, Lcom/htc/android/mail/MailListTab;->mPanelHost:Lcom/htc/widget/CarouselHost;

    const-string v7, "tab_important"

    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/android/mail/MailList$TabInfo;->getMailListTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/htc/widget/CarouselHost;->setAlternativeTabName(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 5058
    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/htc/android/mail/MailList$TabInfo;->mAdapter:Lcom/htc/android/mail/MailList$MailListAdapter;

    if-eqz v6, :cond_e

    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/htc/android/mail/MailList$TabInfo;->mAdapter:Lcom/htc/android/mail/MailList$MailListAdapter;

    invoke-virtual {v6, v12}, Lcom/htc/android/mail/MailList$MailListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 5059
    :cond_e
    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/htc/android/mail/MailList$TabInfo;->mCursorContentObserver:Lcom/htc/android/mail/MailList$CursorContentObserver;

    if-eqz v6, :cond_1

    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/htc/android/mail/MailList$TabInfo;->mCursorContentObserver:Lcom/htc/android/mail/MailList$CursorContentObserver;

    invoke-virtual {v6, v10}, Lcom/htc/android/mail/MailList$CursorContentObserver;->dispatchChange(Z)V

    goto/16 :goto_0

    .line 5063
    :pswitch_f
    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v6

    #getter for: Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$500(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/Mailbox;

    move-result-object v7

    iget-object v8, v4, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v8}, Lcom/htc/android/mail/Account;->getSortBy()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/htc/android/mail/MailList$TabInfo;->getSortItemsIndexByIndex(Lcom/htc/android/mail/Mailbox;I)I

    move-result v6

    #calls: Lcom/htc/android/mail/MailList;->setBottomBar(I)V
    invoke-static {v4, v6}, Lcom/htc/android/mail/MailList;->access$1800(Lcom/htc/android/mail/MailList;I)V

    goto/16 :goto_0

    .line 5067
    :pswitch_10
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/res/Configuration;

    .line 5068
    .local v2, newConfig:Landroid/content/res/Configuration;
    invoke-virtual {v4, v2}, Lcom/htc/android/mail/MailList;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto/16 :goto_0

    .line 5072
    .end local v2           #newConfig:Landroid/content/res/Configuration;
    :pswitch_11
    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v6

    iget v6, v6, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    if-nez v6, :cond_f

    .line 5073
    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v6

    #calls: Lcom/htc/android/mail/MailList;->updateTabTitle(Lcom/htc/android/mail/MailList$TabInfo;)V
    invoke-static {v4, v6}, Lcom/htc/android/mail/MailList;->access$4900(Lcom/htc/android/mail/MailList;Lcom/htc/android/mail/MailList$TabInfo;)V

    .line 5075
    :cond_f
    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/htc/android/mail/MailList$TabInfo;->mAdapter:Lcom/htc/android/mail/MailList$MailListAdapter;

    if-eqz v6, :cond_10

    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/htc/android/mail/MailList$TabInfo;->mAdapter:Lcom/htc/android/mail/MailList$MailListAdapter;

    invoke-virtual {v6, v12}, Lcom/htc/android/mail/MailList$MailListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 5076
    :cond_10
    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/htc/android/mail/MailList$TabInfo;->mCursorContentObserver:Lcom/htc/android/mail/MailList$CursorContentObserver;

    if-eqz v6, :cond_1

    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/htc/android/mail/MailList$TabInfo;->mCursorContentObserver:Lcom/htc/android/mail/MailList$CursorContentObserver;

    invoke-virtual {v6, v10}, Lcom/htc/android/mail/MailList$CursorContentObserver;->dispatchChange(Z)V

    goto/16 :goto_0

    .line 5080
    :pswitch_12
    #getter for: Lcom/htc/android/mail/MailList;->mIsInForeground:Z
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$4600(Lcom/htc/android/mail/MailList;)Z

    move-result v6

    if-ne v6, v9, :cond_1

    .line 5081
    #calls: Lcom/htc/android/mail/MailList;->doComposeView()V
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$6200(Lcom/htc/android/mail/MailList;)V

    goto/16 :goto_0

    .line 5086
    :pswitch_13
    #getter for: Lcom/htc/android/mail/MailList;->mIsInForeground:Z
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$4600(Lcom/htc/android/mail/MailList;)Z

    move-result v6

    if-ne v6, v9, :cond_1

    .line 5087
    #calls: Lcom/htc/android/mail/MailList;->changeFolder()V
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$6300(Lcom/htc/android/mail/MailList;)V

    goto/16 :goto_0

    .line 5092
    :pswitch_14
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-lez v6, :cond_11

    .line 5093
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 5094
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v4}, Lcom/htc/android/mail/MailList;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/htc/android/mail/MailListTab;

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 5095
    invoke-virtual {v4}, Lcom/htc/android/mail/MailList;->finish()V

    .line 5096
    invoke-virtual {v4, v1}, Lcom/htc/android/mail/MailList;->startActivity(Landroid/content/Intent;)V

    .line 5099
    .end local v1           #intent:Landroid/content/Intent;
    :cond_11
    const/16 v6, 0x12

    invoke-virtual {v4, v6}, Lcom/htc/android/mail/MailList;->removeDialog(I)V

    goto/16 :goto_0

    .line 5102
    :pswitch_15
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 5103
    .local v0, accountId:Ljava/lang/Long;
    #getter for: Lcom/htc/android/mail/MailList;->mIsInForeground:Z
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$4600(Lcom/htc/android/mail/MailList;)Z

    move-result v6

    if-ne v6, v9, :cond_1

    .line 5104
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    #calls: Lcom/htc/android/mail/MailList;->changeAccount(J)V
    invoke-static {v4, v6, v7}, Lcom/htc/android/mail/MailList;->access$6400(Lcom/htc/android/mail/MailList;J)V

    goto/16 :goto_0

    .line 5109
    .end local v0           #accountId:Ljava/lang/Long;
    :pswitch_16
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 5110
    .local v5, token:Z
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v6

    if-eqz v6, :cond_12

    const-string v6, "MailList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AAA case MailService.startDoInvokeMailSearch:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5111
    :cond_12
    #getter for: Lcom/htc/android/mail/MailList;->mIsInForeground:Z
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$4600(Lcom/htc/android/mail/MailList;)Z

    move-result v6

    if-ne v6, v9, :cond_1

    .line 5112
    #calls: Lcom/htc/android/mail/MailList;->invokeMailSearch(ZZ)V
    invoke-static {v4, v5, v10}, Lcom/htc/android/mail/MailList;->access$6500(Lcom/htc/android/mail/MailList;ZZ)V

    goto/16 :goto_0

    .line 5118
    .end local v5           #token:Z
    :pswitch_17
    #getter for: Lcom/htc/android/mail/MailList;->mIsInForeground:Z
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$4600(Lcom/htc/android/mail/MailList;)Z

    move-result v6

    if-ne v6, v9, :cond_1

    .line 5119
    #calls: Lcom/htc/android/mail/MailList;->lunchAccountList()V
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$6600(Lcom/htc/android/mail/MailList;)V

    goto/16 :goto_0

    .line 5124
    :pswitch_18
    #getter for: Lcom/htc/android/mail/MailList;->mIsInForeground:Z
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$4600(Lcom/htc/android/mail/MailList;)Z

    move-result v6

    if-ne v6, v9, :cond_1

    .line 5125
    iget v6, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/htc/android/mail/MailList;->updateActionBarUnreadNumView(I)V
    invoke-static {v4, v6}, Lcom/htc/android/mail/MailList;->access$6700(Lcom/htc/android/mail/MailList;I)V

    goto/16 :goto_0

    .line 5129
    :pswitch_19
    #getter for: Lcom/htc/android/mail/MailList;->mIsInForeground:Z
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$4600(Lcom/htc/android/mail/MailList;)Z

    move-result v6

    if-ne v6, v9, :cond_1

    .line 5130
    invoke-virtual {v4}, Lcom/htc/android/mail/MailList;->openOptionsMenu()V

    goto/16 :goto_0

    .line 5134
    :pswitch_1a
    #getter for: Lcom/htc/android/mail/MailList;->mIsInForeground:Z
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$4600(Lcom/htc/android/mail/MailList;)Z

    move-result v6

    if-ne v6, v9, :cond_13

    iget-object v6, v4, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-boolean v6, v6, Lcom/htc/android/mail/MailListTab;->mIsMailSearch:Z

    if-eqz v6, :cond_13

    .line 5135
    #calls: Lcom/htc/android/mail/MailList;->setFilterSubTitle(Z)V
    invoke-static {v4, v9}, Lcom/htc/android/mail/MailList;->access$6800(Lcom/htc/android/mail/MailList;Z)V

    .line 5136
    const/16 v6, 0x32

    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v7

    #calls: Lcom/htc/android/mail/MailList;->startQuery(Ljava/lang/String;ILcom/htc/android/mail/MailList$TabInfo;)V
    invoke-static {v4, v12, v6, v7}, Lcom/htc/android/mail/MailList;->access$6900(Lcom/htc/android/mail/MailList;Ljava/lang/String;ILcom/htc/android/mail/MailList$TabInfo;)V

    goto/16 :goto_0

    .line 5137
    :cond_13
    #getter for: Lcom/htc/android/mail/MailList;->mIsInForeground:Z
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$4600(Lcom/htc/android/mail/MailList;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 5139
    #setter for: Lcom/htc/android/mail/MailList;->mFilterTitleState:Z
    invoke-static {v4, v10}, Lcom/htc/android/mail/MailList;->access$7002(Lcom/htc/android/mail/MailList;Z)Z

    .line 5140
    #setter for: Lcom/htc/android/mail/MailList;->mFilterNeedRequery:Z
    invoke-static {v4, v9}, Lcom/htc/android/mail/MailList;->access$7102(Lcom/htc/android/mail/MailList;Z)Z

    goto/16 :goto_0

    .line 4950
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_3
        :pswitch_0
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_9
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_12
        :pswitch_15
        :pswitch_17
        :pswitch_16
        :pswitch_0
        :pswitch_13
        :pswitch_18
        :pswitch_0
        :pswitch_11
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_1a
        :pswitch_19
    .end packed-switch
.end method

.method public onCheckMoreComplete(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;Landroid/os/Message;)V
    .locals 6
    .parameter "account"
    .parameter "r"
    .parameter "msg"

    .prologue
    const/4 v3, 0x6

    .line 5270
    iget-object v2, p0, Lcom/htc/android/mail/MailList$RequestHandler;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/MailList;

    .line 5272
    .local v1, target:Lcom/htc/android/mail/MailList;
    if-nez v1, :cond_1

    .line 5283
    :cond_0
    :goto_0
    return-void

    .line 5273
    :cond_1
    if-eqz p1, :cond_0

    iget-object v2, v1, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    if-eqz v2, :cond_0

    .line 5274
    iget-object v2, v1, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    if-ne v2, v3, :cond_2

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    if-eq v2, v3, :cond_3

    .line 5275
    :cond_2
    iget-object v2, v1, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    iget-object v4, v1, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 5278
    :cond_3
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "MailList"

    const-string v3, "onCheckMoreComplete"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5279
    :cond_4
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/MailList$RequestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5280
    .local v0, message:Landroid/os/Message;
    if-eqz p3, :cond_5

    iget-object v2, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_5

    iget-object v2, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5281
    :cond_5
    if-eqz p3, :cond_6

    invoke-virtual {p3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 5282
    :cond_6
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 5621
    const/16 v1, 0x1a

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/MailList$RequestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5622
    .local v0, message:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5623
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5624
    return-void
.end method

.method public onContactGroupChanged()V
    .locals 4

    .prologue
    .line 5548
    iget-object v2, p0, Lcom/htc/android/mail/MailList$RequestHandler;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/MailList;

    .line 5549
    .local v1, target:Lcom/htc/android/mail/MailList;
    if-nez v1, :cond_1

    .line 5559
    :cond_0
    :goto_0
    return-void

    .line 5551
    :cond_1
    iget-object v2, v1, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    if-eqz v2, :cond_0

    .line 5552
    iget-object v2, v1, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    const-string v3, "Favorite_8656150684447252476_6727701920173350445"

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/Account;->setContactGroup(Ljava/lang/String;)V

    .line 5553
    #getter for: Lcom/htc/android/mail/MailList;->mImportantMailStore:Lcom/htc/android/mail/database/ImportantMailStore;
    invoke-static {v1}, Lcom/htc/android/mail/MailList;->access$4400(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/database/ImportantMailStore;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 5554
    #getter for: Lcom/htc/android/mail/MailList;->mImportantMailStore:Lcom/htc/android/mail/database/ImportantMailStore;
    invoke-static {v1}, Lcom/htc/android/mail/MailList;->access$4400(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/database/ImportantMailStore;

    move-result-object v2

    iget-object v3, v1, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->getContactGroup()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/database/ImportantMailStore;->changeGroup(Ljava/lang/String;)V

    .line 5556
    :cond_2
    const/16 v2, 0x17

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/MailList$RequestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5557
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onDeleteComplete(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;Landroid/os/Message;)V
    .locals 6
    .parameter "account"
    .parameter "r"
    .parameter "msg"

    .prologue
    .line 5315
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "MailList"

    const-string v3, "onDeleteComplete"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5316
    :cond_0
    iget-object v2, p0, Lcom/htc/android/mail/MailList$RequestHandler;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/MailList;

    .line 5317
    .local v1, target:Lcom/htc/android/mail/MailList;
    if-eqz v1, :cond_1

    if-nez p3, :cond_2

    .line 5325
    :cond_1
    :goto_0
    return-void

    .line 5318
    :cond_2
    if-eqz p1, :cond_1

    iget-object v2, v1, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    if-eqz v2, :cond_1

    .line 5319
    iget-object v2, v1, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    iget-object v4, v1, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 5321
    :cond_3
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/MailList$RequestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5322
    .local v0, message:Landroid/os/Message;
    iget-object v2, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5323
    invoke-virtual {p3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 5324
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onDeleteMailComplete(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "account"
    .parameter "r"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/Account;",
            "Lcom/htc/android/mail/Request;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/MailMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5531
    .local p3, messageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/android/mail/MailList$RequestHandler;->onMoveMailComplete(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;Ljava/util/ArrayList;)V

    .line 5532
    return-void
.end method

.method public onGroupMailChanged()V
    .locals 2

    .prologue
    .line 5542
    const/16 v1, 0x16

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/MailList$RequestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5543
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5544
    return-void
.end method

.method public onImportantMailUpdateComplete()V
    .locals 2

    .prologue
    .line 5536
    const/16 v1, 0x15

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/MailList$RequestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5537
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5538
    return-void
.end method

.method public onListComplete(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;Landroid/os/Message;)V
    .locals 6
    .parameter "account"
    .parameter "r"
    .parameter "msg"

    .prologue
    .line 5287
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "MailList"

    const-string v3, "onListComplete"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5288
    :cond_0
    iget-object v2, p0, Lcom/htc/android/mail/MailList$RequestHandler;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/MailList;

    .line 5289
    .local v1, target:Lcom/htc/android/mail/MailList;
    if-eqz v1, :cond_1

    if-nez p3, :cond_2

    .line 5297
    :cond_1
    :goto_0
    return-void

    .line 5290
    :cond_2
    if-eqz p1, :cond_1

    iget-object v2, v1, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    if-eqz v2, :cond_1

    .line 5291
    iget-object v2, v1, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    iget-object v4, v1, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 5293
    :cond_3
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/MailList$RequestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5294
    .local v0, message:Landroid/os/Message;
    iget-object v2, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5295
    invoke-virtual {p3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 5296
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onMarkStarComplete(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;Lcom/htc/android/mail/MailMessage;Ljava/lang/Integer;)V
    .locals 8
    .parameter "account"
    .parameter "r"
    .parameter "message"
    .parameter "flag"

    .prologue
    .line 5434
    iget-object v4, p0, Lcom/htc/android/mail/MailList$RequestHandler;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/MailList;

    .line 5435
    .local v3, target:Lcom/htc/android/mail/MailList;
    if-eqz v3, :cond_0

    if-nez p3, :cond_1

    .line 5476
    :cond_0
    :goto_0
    return-void

    .line 5436
    :cond_1
    if-eqz p1, :cond_0

    iget-object v4, v3, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    if-eqz v4, :cond_0

    .line 5437
    iget-object v4, v3, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v4

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v4

    iget-object v6, v3, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v6}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 5440
    :cond_2
    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v3}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v2

    .line 5441
    .local v2, tabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    if-eqz v2, :cond_4

    .line 5443
    iget-object v1, v2, Lcom/htc/android/mail/MailList$TabInfo;->mPreMessageStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;

    .line 5444
    .local v1, statusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;
    if-eqz v1, :cond_3

    .line 5445
    const-string v4, "FLAG"

    invoke-virtual {v1, v4}, Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;->get(Ljava/lang/String;)Lcom/htc/android/mail/AbsRequestController$MessageStatus;

    move-result-object v0

    .line 5446
    .local v0, messageStatus:Lcom/htc/android/mail/AbsRequestController$MessageStatus;
    if-eqz v0, :cond_3

    .line 5447
    iget-wide v4, p3, Lcom/htc/android/mail/MailMessage;->id:J

    new-instance v6, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/android/mail/AbsRequestController$MessageStatus;->putLocal(JI)V

    .line 5450
    .end local v0           #messageStatus:Lcom/htc/android/mail/AbsRequestController$MessageStatus;
    :cond_3
    iget-object v1, v2, Lcom/htc/android/mail/MailList$TabInfo;->mMessageStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;

    .line 5451
    if-eqz v1, :cond_4

    .line 5452
    const-string v4, "FLAG"

    invoke-virtual {v1, v4}, Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;->get(Ljava/lang/String;)Lcom/htc/android/mail/AbsRequestController$MessageStatus;

    move-result-object v0

    .line 5453
    .restart local v0       #messageStatus:Lcom/htc/android/mail/AbsRequestController$MessageStatus;
    if-eqz v0, :cond_4

    .line 5454
    iget-wide v4, p3, Lcom/htc/android/mail/MailMessage;->id:J

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/android/mail/AbsRequestController$MessageStatus;->putLocal(JI)V

    .line 5461
    .end local v0           #messageStatus:Lcom/htc/android/mail/AbsRequestController$MessageStatus;
    .end local v1           #statusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;
    :cond_4
    #getter for: Lcom/htc/android/mail/MailList;->mRequestHandler:Lcom/htc/android/mail/MailList$RequestHandler;
    invoke-static {v3}, Lcom/htc/android/mail/MailList;->access$4700(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$RequestHandler;

    move-result-object v4

    new-instance v5, Lcom/htc/android/mail/MailList$RequestHandler$4;

    invoke-direct {v5, p0, p4, v3, p3}, Lcom/htc/android/mail/MailList$RequestHandler$4;-><init>(Lcom/htc/android/mail/MailList$RequestHandler;Ljava/lang/Integer;Lcom/htc/android/mail/MailList;Lcom/htc/android/mail/MailMessage;)V

    invoke-virtual {v4, v5}, Lcom/htc/android/mail/MailList$RequestHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onMoveComplete(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;Landroid/os/Message;)V
    .locals 6
    .parameter "account"
    .parameter "r"
    .parameter "msg"

    .prologue
    .line 5329
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "MailList"

    const-string v3, "onMoveComplete"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5330
    :cond_0
    iget-object v2, p0, Lcom/htc/android/mail/MailList$RequestHandler;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/MailList;

    .line 5331
    .local v1, target:Lcom/htc/android/mail/MailList;
    if-eqz v1, :cond_1

    if-nez p3, :cond_2

    .line 5339
    :cond_1
    :goto_0
    return-void

    .line 5332
    :cond_2
    if-eqz p1, :cond_1

    iget-object v2, v1, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    if-eqz v2, :cond_1

    .line 5333
    iget-object v2, v1, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    iget-object v4, v1, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 5335
    :cond_3
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/MailList$RequestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5336
    .local v0, message:Landroid/os/Message;
    iget-object v2, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5337
    invoke-virtual {p3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 5338
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onMoveMailComplete(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;Ljava/util/ArrayList;)V
    .locals 5
    .parameter "account"
    .parameter "r"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/Account;",
            "Lcom/htc/android/mail/Request;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/MailMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5480
    .local p3, messageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    iget-object v1, p0, Lcom/htc/android/mail/MailList$RequestHandler;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/MailList;

    .line 5481
    .local v0, target:Lcom/htc/android/mail/MailList;
    if-nez v0, :cond_1

    .line 5527
    :cond_0
    :goto_0
    return-void

    .line 5482
    :cond_1
    if-eqz p1, :cond_0

    iget-object v1, v0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    if-eqz v1, :cond_0

    .line 5483
    iget-object v1, v0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v1

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v1

    iget-object v3, v0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 5486
    :cond_2
    new-instance v1, Lcom/htc/android/mail/MailList$RequestHandler$5;

    invoke-direct {v1, p0, v0, p3}, Lcom/htc/android/mail/MailList$RequestHandler$5;-><init>(Lcom/htc/android/mail/MailList$RequestHandler;Lcom/htc/android/mail/MailList;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/MailList$RequestHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onRefreshComplete(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;Landroid/os/Message;)V
    .locals 6
    .parameter "account"
    .parameter "r"
    .parameter "msg"

    .prologue
    const/4 v3, 0x6

    .line 5253
    iget-object v2, p0, Lcom/htc/android/mail/MailList$RequestHandler;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/MailList;

    .line 5255
    .local v1, target:Lcom/htc/android/mail/MailList;
    if-nez v1, :cond_1

    .line 5266
    :cond_0
    :goto_0
    return-void

    .line 5256
    :cond_1
    if-eqz p1, :cond_0

    iget-object v2, v1, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    if-eqz v2, :cond_0

    .line 5257
    iget-object v2, v1, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    if-ne v2, v3, :cond_2

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    if-eq v2, v3, :cond_3

    .line 5258
    :cond_2
    iget-object v2, v1, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    iget-object v4, v1, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 5261
    :cond_3
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "MailList"

    const-string v3, "onRefreshComplete"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5262
    :cond_4
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/MailList$RequestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5263
    .local v0, message:Landroid/os/Message;
    if-eqz p3, :cond_5

    iget-object v2, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_5

    iget-object v2, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5264
    :cond_5
    if-eqz p3, :cond_6

    invoke-virtual {p3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 5265
    :cond_6
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onReloadMailList(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;Landroid/os/Message;)V
    .locals 6
    .parameter "account"
    .parameter "r"
    .parameter "msg"

    .prologue
    .line 5301
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "MailList"

    const-string v3, "onReloadMailList"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5302
    :cond_0
    iget-object v2, p0, Lcom/htc/android/mail/MailList$RequestHandler;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/MailList;

    .line 5303
    .local v1, target:Lcom/htc/android/mail/MailList;
    if-eqz v1, :cond_1

    if-nez p3, :cond_2

    .line 5311
    :cond_1
    :goto_0
    return-void

    .line 5304
    :cond_2
    if-eqz p1, :cond_1

    iget-object v2, v1, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    if-eqz v2, :cond_1

    .line 5305
    iget-object v2, v1, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    iget-object v4, v1, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 5307
    :cond_3
    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/MailList$RequestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5308
    .local v0, message:Landroid/os/Message;
    iget-object v2, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5309
    invoke-virtual {p3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 5310
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onSetReadStatusComplete(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    .locals 10
    .parameter "account"
    .parameter "r"
    .parameter
    .parameter "status"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/Account;",
            "Lcom/htc/android/mail/Request;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/MailMessage;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 5366
    .local p3, messageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    iget-object v6, p0, Lcom/htc/android/mail/MailList$RequestHandler;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/android/mail/MailList;

    .line 5367
    .local v5, target:Lcom/htc/android/mail/MailList;
    if-nez v5, :cond_1

    .line 5430
    :cond_0
    :goto_0
    return-void

    .line 5368
    :cond_1
    if-eqz p1, :cond_0

    iget-object v6, v5, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    if-eqz v6, :cond_0

    .line 5369
    iget-object v6, v5, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v6}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v6

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v6

    iget-object v8, v5, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v8}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 5372
    :cond_2
    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v5}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v4

    .line 5373
    .local v4, tabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    if-eqz v4, :cond_5

    .line 5374
    const/4 v3, 0x0

    .line 5375
    .local v3, statusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/MailMessage;

    .line 5376
    .local v1, mailMessage:Lcom/htc/android/mail/MailMessage;
    iget-object v3, v4, Lcom/htc/android/mail/MailList$TabInfo;->mPreMessageStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;

    .line 5377
    if-eqz v3, :cond_4

    .line 5378
    const-string v6, "READ"

    invoke-virtual {v3, v6}, Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;->get(Ljava/lang/String;)Lcom/htc/android/mail/AbsRequestController$MessageStatus;

    move-result-object v2

    .line 5379
    .local v2, messageStatus:Lcom/htc/android/mail/AbsRequestController$MessageStatus;
    if-eqz v2, :cond_4

    .line 5380
    iget-wide v6, v1, Lcom/htc/android/mail/MailMessage;->id:J

    new-instance v8, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v2, v6, v7, v8}, Lcom/htc/android/mail/AbsRequestController$MessageStatus;->putLocal(JI)V

    .line 5383
    .end local v2           #messageStatus:Lcom/htc/android/mail/AbsRequestController$MessageStatus;
    :cond_4
    iget-object v3, v4, Lcom/htc/android/mail/MailList$TabInfo;->mMessageStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;

    .line 5384
    if-eqz v3, :cond_3

    .line 5385
    const-string v6, "READ"

    invoke-virtual {v3, v6}, Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;->get(Ljava/lang/String;)Lcom/htc/android/mail/AbsRequestController$MessageStatus;

    move-result-object v2

    .line 5386
    .restart local v2       #messageStatus:Lcom/htc/android/mail/AbsRequestController$MessageStatus;
    if-eqz v2, :cond_3

    .line 5387
    iget-wide v6, v1, Lcom/htc/android/mail/MailMessage;->id:J

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v2, v6, v7, v8}, Lcom/htc/android/mail/AbsRequestController$MessageStatus;->putLocal(JI)V

    goto :goto_1

    .line 5395
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #mailMessage:Lcom/htc/android/mail/MailMessage;
    .end local v2           #messageStatus:Lcom/htc/android/mail/AbsRequestController$MessageStatus;
    .end local v3           #statusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;
    :cond_5
    #getter for: Lcom/htc/android/mail/MailList;->mRequestHandler:Lcom/htc/android/mail/MailList$RequestHandler;
    invoke-static {v5}, Lcom/htc/android/mail/MailList;->access$4700(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$RequestHandler;

    move-result-object v6

    new-instance v7, Lcom/htc/android/mail/MailList$RequestHandler$3;

    invoke-direct {v7, p0, p3, v5, p4}, Lcom/htc/android/mail/MailList$RequestHandler$3;-><init>(Lcom/htc/android/mail/MailList$RequestHandler;Ljava/util/ArrayList;Lcom/htc/android/mail/MailList;Ljava/lang/Integer;)V

    invoke-virtual {v6, v7}, Lcom/htc/android/mail/MailList$RequestHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onSetSortComplete(Lcom/htc/android/mail/Account;)V
    .locals 6
    .parameter "account"

    .prologue
    .line 5563
    iget-object v2, p0, Lcom/htc/android/mail/MailList$RequestHandler;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/MailList;

    .line 5564
    .local v1, target:Lcom/htc/android/mail/MailList;
    if-nez v1, :cond_1

    .line 5573
    :cond_0
    :goto_0
    return-void

    .line 5565
    :cond_1
    if-eqz p1, :cond_0

    iget-object v2, v1, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    if-eqz v2, :cond_0

    .line 5566
    iget-object v2, v1, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    iget-object v4, v1, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 5568
    :cond_2
    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v1}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 5569
    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v1}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/htc/android/mail/MailList$TabInfo;->mIsInvalidate:Z

    .line 5571
    :cond_3
    const/16 v2, 0x19

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/MailList$RequestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5572
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onShowProgressForReadMoreMail(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;)V
    .locals 6
    .parameter "account"
    .parameter "r"

    .prologue
    const/4 v4, 0x6

    .line 5239
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "MailList"

    const-string v3, "onShowProgressForReadMoreMail"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5240
    :cond_0
    iget-object v2, p0, Lcom/htc/android/mail/MailList$RequestHandler;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/MailList;

    .line 5241
    .local v1, target:Lcom/htc/android/mail/MailList;
    if-nez v1, :cond_2

    .line 5249
    :cond_1
    :goto_0
    return-void

    .line 5242
    :cond_2
    if-eqz p1, :cond_1

    iget-object v2, v1, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    if-eqz v2, :cond_1

    .line 5243
    iget-object v2, v1, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    if-ne v2, v4, :cond_3

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    if-eq v2, v4, :cond_4

    .line 5244
    :cond_3
    iget-object v2, v1, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    iget-object v4, v1, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 5247
    :cond_4
    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/MailList$RequestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5248
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onShowProgressForRefresh(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;)V
    .locals 6
    .parameter "account"
    .parameter "r"

    .prologue
    const/4 v4, 0x6

    .line 5225
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "MailList"

    const-string v3, "onShowProgressForRefresh"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5226
    :cond_0
    iget-object v2, p0, Lcom/htc/android/mail/MailList$RequestHandler;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/MailList;

    .line 5227
    .local v1, target:Lcom/htc/android/mail/MailList;
    if-nez v1, :cond_2

    .line 5235
    :cond_1
    :goto_0
    return-void

    .line 5228
    :cond_2
    if-eqz p1, :cond_1

    iget-object v2, v1, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    if-eqz v2, :cond_1

    .line 5229
    iget-object v2, v1, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    if-ne v2, v4, :cond_3

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    if-eq v2, v4, :cond_4

    .line 5230
    :cond_3
    iget-object v2, v1, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    iget-object v4, v1, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 5233
    :cond_4
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/MailList$RequestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5234
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onTagChanged(Lcom/htc/android/mail/Account;)V
    .locals 2
    .parameter "account"

    .prologue
    .line 5628
    const/16 v1, 0x24

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/MailList$RequestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5629
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5630
    return-void
.end method

.method public onUpdateProgressStatus(Lcom/htc/android/mail/Account;Landroid/os/Message;)V
    .locals 7
    .parameter "account"
    .parameter "msg"

    .prologue
    const/16 v6, 0xd

    const/4 v3, 0x6

    .line 5343
    iget-object v2, p0, Lcom/htc/android/mail/MailList$RequestHandler;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/MailList;

    .line 5344
    .local v1, target:Lcom/htc/android/mail/MailList;
    if-eqz v1, :cond_0

    if-nez p2, :cond_1

    .line 5362
    :cond_0
    :goto_0
    return-void

    .line 5345
    :cond_1
    if-eqz p1, :cond_0

    iget-object v2, v1, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    if-eqz v2, :cond_0

    .line 5346
    iget-object v2, v1, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    if-ne v2, v3, :cond_2

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    if-eq v2, v3, :cond_3

    .line 5347
    :cond_2
    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    iget-object v4, v1, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 5350
    :cond_3
    #getter for: Lcom/htc/android/mail/MailList;->mIsScrolling:Z
    invoke-static {v1}, Lcom/htc/android/mail/MailList;->access$3500(Lcom/htc/android/mail/MailList;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5351
    const-string v2, "MailList"

    const-string v3, "onUpdateProgressStatus, ListView is scrolling, put message to mQueueMessageForScroll"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5354
    invoke-virtual {p0, v6}, Lcom/htc/android/mail/MailList$RequestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    #setter for: Lcom/htc/android/mail/MailList;->mQueueMessageForScroll:Landroid/os/Message;
    invoke-static {v1, v2}, Lcom/htc/android/mail/MailList;->access$3602(Lcom/htc/android/mail/MailList;Landroid/os/Message;)Landroid/os/Message;

    .line 5355
    #getter for: Lcom/htc/android/mail/MailList;->mQueueMessageForScroll:Landroid/os/Message;
    invoke-static {v1}, Lcom/htc/android/mail/MailList;->access$3600(Lcom/htc/android/mail/MailList;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 5357
    :cond_4
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "MailList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onUpdateProgressStatus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/android/mail/MailList$RequestHandler;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5358
    :cond_5
    invoke-virtual {p0, v6}, Lcom/htc/android/mail/MailList$RequestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5359
    .local v0, message:Landroid/os/Message;
    iget-object v2, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5360
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public searchFilterChanged()V
    .locals 2

    .prologue
    .line 5609
    const/16 v1, 0x28

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/MailList$RequestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5610
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5611
    return-void
.end method

.method protected showDlgMailboxNotFound(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "str"

    .prologue
    .line 5201
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b005c

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0291

    new-instance v3, Lcom/htc/android/mail/MailList$RequestHandler$2;

    invoke-direct {v3, p0}, Lcom/htc/android/mail/MailList$RequestHandler$2;-><init>(Lcom/htc/android/mail/MailList$RequestHandler;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 5213
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    iget-object v1, p0, Lcom/htc/android/mail/MailRequestHandler;->mMailDialogManager:Lcom/htc/android/mail/util/MailDialogManager;

    invoke-static {v1, v0}, Lcom/htc/android/mail/util/MailDialogManager;->show(Lcom/htc/android/mail/util/MailDialogManager;Lcom/htc/widget/HtcAlertDialog$Builder;)Lcom/htc/widget/HtcAlertDialog;

    .line 5214
    return-void
.end method

.method public showMenu()V
    .locals 2

    .prologue
    .line 5603
    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/MailList$RequestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5604
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5605
    return-void
.end method

.method public startChangeAccount(J)V
    .locals 2
    .parameter "accountId"

    .prologue
    .line 5589
    const/16 v1, 0x1d

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/MailList$RequestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5590
    .local v0, message:Landroid/os/Message;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5591
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5592
    return-void
.end method

.method public startDoChangeFolder()V
    .locals 2

    .prologue
    .line 5583
    const/16 v1, 0x21

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/MailList$RequestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5584
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5585
    return-void
.end method

.method public startDoComposeView()V
    .locals 2

    .prologue
    .line 5577
    const/16 v1, 0x1c

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/MailList$RequestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5578
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5579
    return-void
.end method

.method public startDoLaunchAccountList()V
    .locals 2

    .prologue
    .line 5615
    const/16 v1, 0x1e

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/MailList$RequestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5616
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5617
    return-void
.end method

.method public startMailSearch(Z)V
    .locals 4
    .parameter "token"

    .prologue
    .line 5596
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MailList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AAA startMailSearch"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5597
    :cond_0
    const/16 v1, 0x1f

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {p0, v1, v2}, Lcom/htc/android/mail/MailList$RequestHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5598
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5599
    return-void
.end method

.method public updateActionBarUnreadNum(I)V
    .locals 2
    .parameter "num"

    .prologue
    .line 5218
    const/16 v1, 0x22

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/MailList$RequestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5219
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 5220
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5221
    return-void
.end method
