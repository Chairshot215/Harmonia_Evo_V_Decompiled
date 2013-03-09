.class Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler$1;
.super Ljava/lang/Object;
.source "MailAccountOption.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;


# direct methods
.method constructor <init>(Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 437
    iput-object p1, p0, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler$1;->this$1:Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler$1;->this$1:Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    #getter for: Lcom/htc/htcmailwidgets/MailAccountOption;->mAccountAdapter:Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter;
    invoke-static {v0}, Lcom/htc/htcmailwidgets/MailAccountOption;->access$800(Lcom/htc/htcmailwidgets/MailAccountOption;)Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler$1;->this$1:Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    #getter for: Lcom/htc/htcmailwidgets/MailAccountOption;->mAccountAdapter:Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter;
    invoke-static {v0}, Lcom/htc/htcmailwidgets/MailAccountOption;->access$800(Lcom/htc/htcmailwidgets/MailAccountOption;)Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler$1;->this$1:Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;

    iget-object v1, v1, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    #getter for: Lcom/htc/htcmailwidgets/MailAccountOption;->mAccountInfo:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/htcmailwidgets/MailAccountOption;->access$200(Lcom/htc/htcmailwidgets/MailAccountOption;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter;->changeAdapter(Ljava/util/ArrayList;)V

    .line 441
    :cond_0
    return-void
.end method
