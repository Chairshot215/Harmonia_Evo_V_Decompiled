.class Lcom/htc/htcmailwidgets/MailAccountOption$3;
.super Ljava/lang/Object;
.source "MailAccountOption.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/htcmailwidgets/MailAccountOption;->chooseOption()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htcmailwidgets/MailAccountOption;


# direct methods
.method constructor <init>(Lcom/htc/htcmailwidgets/MailAccountOption;)V
    .locals 0
    .parameter

    .prologue
    .line 315
    iput-object p1, p0, Lcom/htc/htcmailwidgets/MailAccountOption$3;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 317
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailAccountOption$3;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    #setter for: Lcom/htc/htcmailwidgets/MailAccountOption;->mOption:I
    invoke-static {v1, p2}, Lcom/htc/htcmailwidgets/MailAccountOption;->access$002(Lcom/htc/htcmailwidgets/MailAccountOption;I)I

    .line 318
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailAccountOption$3;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    invoke-virtual {v1}, Lcom/htc/htcmailwidgets/MailAccountOption;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 319
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ACCOUNT_ID"

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailAccountOption$3;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    #getter for: Lcom/htc/htcmailwidgets/MailAccountOption;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;
    invoke-static {v2}, Lcom/htc/htcmailwidgets/MailAccountOption;->access$500(Lcom/htc/htcmailwidgets/MailAccountOption;)[Lcom/htc/htcmailwidgets/MailUtils$Account;

    move-result-object v2

    aget-object v2, v2, p2

    iget-wide v2, v2, Lcom/htc/htcmailwidgets/MailUtils$Account;->id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 320
    const-string v1, "ACCOUNT_NAME"

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailAccountOption$3;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    #getter for: Lcom/htc/htcmailwidgets/MailAccountOption;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;
    invoke-static {v2}, Lcom/htc/htcmailwidgets/MailAccountOption;->access$500(Lcom/htc/htcmailwidgets/MailAccountOption;)[Lcom/htc/htcmailwidgets/MailUtils$Account;

    move-result-object v2

    aget-object v2, v2, p2

    iget-object v2, v2, Lcom/htc/htcmailwidgets/MailUtils$Account;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    const-string v1, "ACCOUNT_PROTOCOL"

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailAccountOption$3;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    #getter for: Lcom/htc/htcmailwidgets/MailAccountOption;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;
    invoke-static {v2}, Lcom/htc/htcmailwidgets/MailAccountOption;->access$500(Lcom/htc/htcmailwidgets/MailAccountOption;)[Lcom/htc/htcmailwidgets/MailUtils$Account;

    move-result-object v2

    aget-object v2, v2, p2

    iget v2, v2, Lcom/htc/htcmailwidgets/MailUtils$Account;->protocol:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 322
    const-string v1, "ACCOUNT_DEFAULTFOLDER"

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailAccountOption$3;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    #getter for: Lcom/htc/htcmailwidgets/MailAccountOption;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;
    invoke-static {v2}, Lcom/htc/htcmailwidgets/MailAccountOption;->access$500(Lcom/htc/htcmailwidgets/MailAccountOption;)[Lcom/htc/htcmailwidgets/MailUtils$Account;

    move-result-object v2

    aget-object v2, v2, p2

    iget v2, v2, Lcom/htc/htcmailwidgets/MailUtils$Account;->defaultfolderid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 323
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailAccountOption$3;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/htc/htcmailwidgets/MailAccountOption;->setResult(ILandroid/content/Intent;)V

    .line 325
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 326
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailAccountOption$3;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    invoke-virtual {v1}, Lcom/htc/htcmailwidgets/MailAccountOption;->finish()V

    .line 327
    return-void
.end method
