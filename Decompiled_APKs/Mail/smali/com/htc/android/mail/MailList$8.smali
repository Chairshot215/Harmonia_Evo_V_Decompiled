.class Lcom/htc/android/mail/MailList$8;
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
    .line 1081
    iput-object p1, p0, Lcom/htc/android/mail/MailList$8;->this$0:Lcom/htc/android/mail/MailList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1083
    iget-object v1, p0, Lcom/htc/android/mail/MailList$8;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v1}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/MailList$8;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;
    invoke-static {v2}, Lcom/htc/android/mail/MailList;->access$500(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/Mailbox;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/htc/android/mail/MailList$TabInfo;->getSortItemsIndexByPosition(Lcom/htc/android/mail/Mailbox;I)I

    move-result v0

    .line 1084
    .local v0, sortByIndex:I
    iget-object v1, p0, Lcom/htc/android/mail/MailList$8;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v1, v1, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1, v0}, Lcom/htc/android/mail/Account;->setSortBy(I)V

    .line 1085
    iget-object v1, p0, Lcom/htc/android/mail/MailList$8;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v2, p0, Lcom/htc/android/mail/MailList$8;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v2}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/MailList$8;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;
    invoke-static {v3}, Lcom/htc/android/mail/MailList;->access$500(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/Mailbox;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/MailList$8;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v4, v4, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->getSortBy()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/mail/MailList$TabInfo;->getSortItemsIndexByIndex(Lcom/htc/android/mail/Mailbox;I)I

    move-result v2

    #calls: Lcom/htc/android/mail/MailList;->setBottomBar(I)V
    invoke-static {v1, v2}, Lcom/htc/android/mail/MailList;->access$1800(Lcom/htc/android/mail/MailList;I)V

    .line 1086
    iget-object v1, p0, Lcom/htc/android/mail/MailList$8;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v2, p0, Lcom/htc/android/mail/MailList$8;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v2}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v2

    #calls: Lcom/htc/android/mail/MailList;->sortMail(ILcom/htc/android/mail/MailList$TabInfo;)V
    invoke-static {v1, v0, v2}, Lcom/htc/android/mail/MailList;->access$1900(Lcom/htc/android/mail/MailList;ILcom/htc/android/mail/MailList$TabInfo;)V

    .line 1087
    iget-object v1, p0, Lcom/htc/android/mail/MailList$8;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v1, v1, Lcom/htc/android/mail/MailList;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1088
    return-void
.end method
