.class Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler$2;
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
    .line 470
    iput-object p1, p0, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler$2;->this$1:Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 472
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler$2;->this$1:Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    #getter for: Lcom/htc/htcmailwidgets/MailAccountOption;->mAccountAdapter:Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter;
    invoke-static {v0}, Lcom/htc/htcmailwidgets/MailAccountOption;->access$800(Lcom/htc/htcmailwidgets/MailAccountOption;)Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler$2;->this$1:Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    #getter for: Lcom/htc/htcmailwidgets/MailAccountOption;->mAccountAdapter:Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter;
    invoke-static {v0}, Lcom/htc/htcmailwidgets/MailAccountOption;->access$800(Lcom/htc/htcmailwidgets/MailAccountOption;)Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler$2;->this$1:Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;

    iget-object v1, v1, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    #getter for: Lcom/htc/htcmailwidgets/MailAccountOption;->mAccountInfo:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/htcmailwidgets/MailAccountOption;->access$200(Lcom/htc/htcmailwidgets/MailAccountOption;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter;->changeAdapter(Ljava/util/ArrayList;)V

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler$2;->this$1:Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    #getter for: Lcom/htc/htcmailwidgets/MailAccountOption;->mbHasNewAccount:Z
    invoke-static {v0}, Lcom/htc/htcmailwidgets/MailAccountOption;->access$900(Lcom/htc/htcmailwidgets/MailAccountOption;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler$2;->this$1:Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    #getter for: Lcom/htc/htcmailwidgets/MailAccountOption;->bChangeAccount:Z
    invoke-static {v0}, Lcom/htc/htcmailwidgets/MailAccountOption;->access$1200(Lcom/htc/htcmailwidgets/MailAccountOption;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 475
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler$2;->this$1:Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    #getter for: Lcom/htc/htcmailwidgets/MailAccountOption;->mHandler:Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;
    invoke-static {v0}, Lcom/htc/htcmailwidgets/MailAccountOption;->access$1300(Lcom/htc/htcmailwidgets/MailAccountOption;)Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;

    move-result-object v0

    const/16 v1, 0x5003

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/htcmailwidgets/MailAccountOption$DataHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 476
    :cond_1
    return-void
.end method
