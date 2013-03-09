.class Lcom/htc/android/mail/MailSearch$1;
.super Ljava/lang/Object;
.source "MailSearch.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailSearch;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailSearch;)V
    .locals 0
    .parameter

    .prologue
    .line 360
    iput-object p1, p0, Lcom/htc/android/mail/MailSearch$1;->this$0:Lcom/htc/android/mail/MailSearch;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 362
    iget-object v1, p0, Lcom/htc/android/mail/MailSearch$1;->this$0:Lcom/htc/android/mail/MailSearch;

    #getter for: Lcom/htc/android/mail/MailSearch;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v1}, Lcom/htc/android/mail/MailSearch;->access$200(Lcom/htc/android/mail/MailSearch;)Lcom/htc/android/mail/Account;

    move-result-object v1

    if-nez v1, :cond_0

    .line 363
    const-string v1, "MailSearch"

    const-string v2, "confirmBatchMoveMail - mAccount is null"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    :goto_0
    return-void

    .line 366
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/MailSearch$1;->this$0:Lcom/htc/android/mail/MailSearch;

    #getter for: Lcom/htc/android/mail/MailSearch;->mMailbox:Lcom/htc/android/mail/Mailbox;
    invoke-static {v1}, Lcom/htc/android/mail/MailSearch;->access$100(Lcom/htc/android/mail/MailSearch;)Lcom/htc/android/mail/Mailbox;

    move-result-object v1

    if-nez v1, :cond_1

    .line 367
    const-string v1, "MailSearch"

    const-string v2, "confirmBatchMoveMail - mMailbox is null"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 371
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/MailSearch$1;->this$0:Lcom/htc/android/mail/MailSearch;

    #getter for: Lcom/htc/android/mail/MailSearch;->mMoveToAdapter:Lcom/htc/android/mail/MoveToAdapter;
    invoke-static {v1}, Lcom/htc/android/mail/MailSearch;->access$700(Lcom/htc/android/mail/MailSearch;)Lcom/htc/android/mail/MoveToAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/MailSearch$1;->this$0:Lcom/htc/android/mail/MailSearch;

    #getter for: Lcom/htc/android/mail/MailSearch;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v2}, Lcom/htc/android/mail/MailSearch;->access$200(Lcom/htc/android/mail/MailSearch;)Lcom/htc/android/mail/Account;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/MailSearch$1;->this$0:Lcom/htc/android/mail/MailSearch;

    #getter for: Lcom/htc/android/mail/MailSearch;->mMailbox:Lcom/htc/android/mail/Mailbox;
    invoke-static {v3}, Lcom/htc/android/mail/MailSearch;->access$100(Lcom/htc/android/mail/MailSearch;)Lcom/htc/android/mail/Mailbox;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/MailSearch$1;->this$0:Lcom/htc/android/mail/MailSearch;

    invoke-virtual {v4}, Lcom/htc/android/mail/MailSearch;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v2, v3, p2, v4}, Lcom/htc/android/mail/MoveToAdapter;->getToMailbox(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Mailbox;ILandroid/content/Context;)Lcom/htc/android/mail/Mailbox;

    move-result-object v0

    .line 372
    .local v0, toMailbox:Lcom/htc/android/mail/Mailbox;
    if-nez v0, :cond_2

    .line 373
    const-string v1, "MailSearch"

    const-string v2, "confirmBatchMoveMail - toMailBox is null"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 376
    :cond_2
    iget-object v1, p0, Lcom/htc/android/mail/MailSearch$1;->this$0:Lcom/htc/android/mail/MailSearch;

    #getter for: Lcom/htc/android/mail/MailSearch;->mSelectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;
    invoke-static {v1}, Lcom/htc/android/mail/MailSearch;->access$600(Lcom/htc/android/mail/MailSearch;)Lcom/htc/android/mail/util/SelectedMailMessages;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/MailSearch$1;->this$0:Lcom/htc/android/mail/MailSearch;

    invoke-virtual {v2}, Lcom/htc/android/mail/MailSearch;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/MailSearch$1;->this$0:Lcom/htc/android/mail/MailSearch;

    #getter for: Lcom/htc/android/mail/MailSearch;->mRequestController:Lcom/htc/android/mail/AbsRequestController;
    invoke-static {v3}, Lcom/htc/android/mail/MailSearch;->access$800(Lcom/htc/android/mail/MailSearch;)Lcom/htc/android/mail/AbsRequestController;

    move-result-object v3

    iget-wide v4, v0, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/android/mail/util/SelectedMailMessages;->moveMail(Landroid/content/Context;Lcom/htc/android/mail/AbsRequestController;J)V

    .line 378
    iget-object v1, p0, Lcom/htc/android/mail/MailSearch$1;->this$0:Lcom/htc/android/mail/MailSearch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/MailSearch;->showCmdBar(Z)V

    goto :goto_0
.end method
