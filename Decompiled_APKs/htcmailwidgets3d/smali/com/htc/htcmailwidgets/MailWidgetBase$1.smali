.class Lcom/htc/htcmailwidgets/MailWidgetBase$1;
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
        "Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;",
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
    .line 347
    iput-object p1, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$1;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 350
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$1;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-wide v0, v0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$1;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/MailWidgetBase;->launchMailApp()V

    .line 352
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$1;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-boolean v0, v0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbSense30:Z

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$1;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    #calls: Lcom/htc/htcmailwidgets/MailWidgetBase;->addWidgetList()V
    invoke-static {v0}, Lcom/htc/htcmailwidgets/MailWidgetBase;->access$000(Lcom/htc/htcmailwidgets/MailWidgetBase;)V

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$1;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/MailWidgetBase;->launchAccountList()V

    goto :goto_0
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 347
    check-cast p1, Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/htcmailwidgets/MailWidgetBase$1;->onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;)V

    return-void
.end method
