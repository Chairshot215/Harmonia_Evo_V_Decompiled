.class Lcom/htc/htcmailwidgets/MailWidgetBase$5;
.super Lcom/htc/fusion/fx/MessageListener;
.source "MailWidgetBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcmailwidgets/MailWidgetBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageListener",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;


# direct methods
.method constructor <init>(Lcom/htc/htcmailwidgets/MailWidgetBase;)V
    .locals 0
    .parameter

    .prologue
    .line 392
    iput-object p1, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$5;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 392
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/htcmailwidgets/MailWidgetBase$5;->onMessageReceived(Ljava/lang/Void;)V

    return-void
.end method

.method public onMessageReceived(Ljava/lang/Void;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 394
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$5;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-wide v0, v0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 395
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$5;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/MailWidgetBase;->launchMailApp()V

    .line 396
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$5;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-boolean v0, v0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbSense30:Z

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$5;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    #calls: Lcom/htc/htcmailwidgets/MailWidgetBase;->addWidgetList()V
    invoke-static {v0}, Lcom/htc/htcmailwidgets/MailWidgetBase;->access$000(Lcom/htc/htcmailwidgets/MailWidgetBase;)V

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$5;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/MailWidgetBase;->launchAccountList()V

    goto :goto_0
.end method
