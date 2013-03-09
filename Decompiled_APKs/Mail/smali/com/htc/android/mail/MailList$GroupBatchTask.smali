.class Lcom/htc/android/mail/MailList$GroupBatchTask;
.super Lcom/htc/android/mail/util/DelayedProgressDialogTask;
.source "MailList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GroupBatchTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/android/mail/util/DelayedProgressDialogTask",
        "<",
        "Ljava/lang/Void;",
        "Lcom/htc/android/mail/MailList;",
        "Landroid/os/Handler;",
        ">;"
    }
.end annotation


# static fields
.field private static final DELETE:I = 0x1

.field private static final READ:I


# instance fields
.field private mType:I


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/MailList;Landroid/os/Handler;I)V
    .locals 0
    .parameter "target"
    .parameter "handler"
    .parameter "type"

    .prologue
    .line 2119
    invoke-direct {p0, p1, p2}, Lcom/htc/android/mail/util/DelayedProgressDialogTask;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    .line 2120
    iput p3, p0, Lcom/htc/android/mail/MailList$GroupBatchTask;->mType:I

    .line 2121
    return-void
.end method


# virtual methods
.method protected bridge synthetic doHeavyTask()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2113
    invoke-virtual {p0}, Lcom/htc/android/mail/MailList$GroupBatchTask;->doHeavyTask()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected doHeavyTask()Ljava/lang/Void;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 2125
    iget-object v2, p0, Lcom/htc/android/mail/util/DelayedProgressDialogTask;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/MailList;

    .line 2126
    .local v0, target:Lcom/htc/android/mail/MailList;
    if-nez v0, :cond_1

    .line 2132
    :cond_0
    :goto_0
    return-object v6

    .line 2127
    :cond_1
    iget v2, p0, Lcom/htc/android/mail/MailList$GroupBatchTask;->mType:I

    if-nez v2, :cond_3

    .line 2128
    #getter for: Lcom/htc/android/mail/MailList;->mSelectedMailGroups:Lcom/htc/android/mail/util/SelectedMailGroups;
    invoke-static {v0}, Lcom/htc/android/mail/MailList;->access$1400(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/util/SelectedMailGroups;

    move-result-object v2

    #getter for: Lcom/htc/android/mail/MailList;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/android/mail/MailList;->access$3100(Lcom/htc/android/mail/MailList;)Landroid/content/Context;

    move-result-object v3

    #getter for: Lcom/htc/android/mail/MailList;->mRequestController:Lcom/htc/android/mail/AbsRequestController;
    invoke-static {v0}, Lcom/htc/android/mail/MailList;->access$1300(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/AbsRequestController;

    move-result-object v4

    #getter for: Lcom/htc/android/mail/MailList;->setBatchRead:I
    invoke-static {v0}, Lcom/htc/android/mail/MailList;->access$3400(Lcom/htc/android/mail/MailList;)I

    move-result v5

    if-eq v5, v1, :cond_2

    :goto_1
    invoke-virtual {v2, v3, v4, v1}, Lcom/htc/android/mail/util/SelectedMailGroups;->setReadStatus(Landroid/content/Context;Lcom/htc/android/mail/AbsRequestController;Z)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 2129
    :cond_3
    iget v2, p0, Lcom/htc/android/mail/MailList$GroupBatchTask;->mType:I

    if-ne v2, v1, :cond_0

    .line 2130
    #getter for: Lcom/htc/android/mail/MailList;->mSelectedMailGroups:Lcom/htc/android/mail/util/SelectedMailGroups;
    invoke-static {v0}, Lcom/htc/android/mail/MailList;->access$1400(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/util/SelectedMailGroups;

    move-result-object v1

    #getter for: Lcom/htc/android/mail/MailList;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/android/mail/MailList;->access$3100(Lcom/htc/android/mail/MailList;)Landroid/content/Context;

    move-result-object v2

    #getter for: Lcom/htc/android/mail/MailList;->mRequestController:Lcom/htc/android/mail/AbsRequestController;
    invoke-static {v0}, Lcom/htc/android/mail/MailList;->access$1300(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/AbsRequestController;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/mail/util/SelectedMailGroups;->deleteConversationMail(Landroid/content/Context;Lcom/htc/android/mail/AbsRequestController;)V

    goto :goto_0
.end method

.method protected bridge synthetic doPostTask(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2113
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/MailList$GroupBatchTask;->doPostTask(Ljava/lang/Void;)V

    return-void
.end method

.method protected doPostTask(Ljava/lang/Void;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 2137
    iget-object v1, p0, Lcom/htc/android/mail/util/DelayedProgressDialogTask;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/MailList;

    .line 2138
    .local v0, target:Lcom/htc/android/mail/MailList;
    if-nez v0, :cond_0

    .line 2140
    :goto_0
    return-void

    .line 2139
    :cond_0
    iget-object v1, v0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/MailListTab;->setFooterBarAreaVisible(Z)V

    goto :goto_0
.end method
