.class Lcom/htc/android/mail/MailList$RequestHandler$2;
.super Ljava/lang/Object;
.source "MailList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailList$RequestHandler;->showDlgMailboxNotFound(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailList$RequestHandler;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailList$RequestHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 5204
    iput-object p1, p0, Lcom/htc/android/mail/MailList$RequestHandler$2;->this$0:Lcom/htc/android/mail/MailList$RequestHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 5206
    iget-object v3, p0, Lcom/htc/android/mail/MailList$RequestHandler$2;->this$0:Lcom/htc/android/mail/MailList$RequestHandler;

    #getter for: Lcom/htc/android/mail/MailList$RequestHandler;->mTarget:Ljava/lang/ref/WeakReference;
    invoke-static {v3}, Lcom/htc/android/mail/MailList$RequestHandler;->access$7200(Lcom/htc/android/mail/MailList$RequestHandler;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/MailList;

    .line 5207
    .local v2, target:Lcom/htc/android/mail/MailList;
    if-nez v2, :cond_0

    .line 5211
    :goto_0
    return-void

    .line 5208
    :cond_0
    iget-object v3, v2, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/mail/Mailboxs;->getDefaultMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v3

    iget-wide v0, v3, Lcom/htc/android/mail/Mailbox;->id:J

    .line 5209
    .local v0, mailboxId:J
    iget-object v3, v2, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v1, v4}, Lcom/htc/android/mail/MailCommon;->changeFolder(Landroid/content/Context;Lcom/htc/android/mail/Account;JLjava/lang/String;)V

    .line 5210
    invoke-virtual {v2}, Lcom/htc/android/mail/MailList;->finish()V

    goto :goto_0
.end method
