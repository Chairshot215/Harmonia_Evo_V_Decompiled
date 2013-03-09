.class Lcom/htc/android/mail/MailList$4;
.super Ljava/lang/Object;
.source "MailList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailList;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailList;)V
    .locals 0
    .parameter

    .prologue
    .line 830
    iput-object p1, p0, Lcom/htc/android/mail/MailList$4;->this$0:Lcom/htc/android/mail/MailList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v6, 0x0

    .line 832
    iget-object v1, p0, Lcom/htc/android/mail/MailList$4;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mAdapter:Lcom/htc/android/mail/MoveToAdapter;
    invoke-static {v1}, Lcom/htc/android/mail/MailList;->access$1000(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MoveToAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/MailList$4;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v2, v2, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    iget-object v3, p0, Lcom/htc/android/mail/MailList$4;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;
    invoke-static {v3}, Lcom/htc/android/mail/MailList;->access$500(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/Mailbox;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/MailList$4;->this$0:Lcom/htc/android/mail/MailList;

    invoke-virtual {v4}, Lcom/htc/android/mail/MailList;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v2, v3, p2, v4}, Lcom/htc/android/mail/MoveToAdapter;->getToMailbox(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Mailbox;ILandroid/content/Context;)Lcom/htc/android/mail/Mailbox;

    move-result-object v0

    .line 833
    .local v0, toMailbox:Lcom/htc/android/mail/Mailbox;
    if-nez v0, :cond_0

    .line 844
    :goto_0
    return-void

    .line 834
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/MailList$4;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v1}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v1

    iget v1, v1, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 835
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "MailList"

    const-string v2, "confirmBatchMoveMail in thread>"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/MailList$4;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mSelectedMailGroups:Lcom/htc/android/mail/util/SelectedMailGroups;
    invoke-static {v1}, Lcom/htc/android/mail/MailList;->access$1400(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/util/SelectedMailGroups;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/MailList$4;->this$0:Lcom/htc/android/mail/MailList;

    invoke-virtual {v2}, Lcom/htc/android/mail/MailList;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/MailList$4;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mRequestController:Lcom/htc/android/mail/AbsRequestController;
    invoke-static {v3}, Lcom/htc/android/mail/MailList;->access$1300(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/AbsRequestController;

    move-result-object v3

    iget-wide v4, v0, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/android/mail/util/SelectedMailGroups;->moveConversationMail(Landroid/content/Context;Lcom/htc/android/mail/AbsRequestController;J)V

    .line 838
    iget-object v1, p0, Lcom/htc/android/mail/MailList$4;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v1, v1, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    invoke-virtual {v1, v6}, Lcom/htc/android/mail/MailListTab;->setFooterBarAreaVisible(Z)V

    goto :goto_0

    .line 841
    :cond_2
    iget-object v1, p0, Lcom/htc/android/mail/MailList$4;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mSelectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;
    invoke-static {v1}, Lcom/htc/android/mail/MailList;->access$800(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/util/SelectedMailMessages;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/MailList$4;->this$0:Lcom/htc/android/mail/MailList;

    invoke-virtual {v2}, Lcom/htc/android/mail/MailList;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/MailList$4;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mRequestController:Lcom/htc/android/mail/AbsRequestController;
    invoke-static {v3}, Lcom/htc/android/mail/MailList;->access$1300(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/AbsRequestController;

    move-result-object v3

    iget-wide v4, v0, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/android/mail/util/SelectedMailMessages;->moveMail(Landroid/content/Context;Lcom/htc/android/mail/AbsRequestController;J)V

    .line 843
    iget-object v1, p0, Lcom/htc/android/mail/MailList$4;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v1, v1, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    invoke-virtual {v1, v6}, Lcom/htc/android/mail/MailListTab;->setFooterBarAreaVisible(Z)V

    goto :goto_0
.end method
