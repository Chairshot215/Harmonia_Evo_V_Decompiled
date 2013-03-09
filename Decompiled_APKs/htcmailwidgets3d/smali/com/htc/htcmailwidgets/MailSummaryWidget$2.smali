.class Lcom/htc/htcmailwidgets/MailSummaryWidget$2;
.super Lcom/htc/fusion/fx/MessageListener;
.source "MailSummaryWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcmailwidgets/MailSummaryWidget;
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
.field final synthetic this$0:Lcom/htc/htcmailwidgets/MailSummaryWidget;


# direct methods
.method constructor <init>(Lcom/htc/htcmailwidgets/MailSummaryWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 603
    iput-object p1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget$2;->this$0:Lcom/htc/htcmailwidgets/MailSummaryWidget;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 606
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget$2;->this$0:Lcom/htc/htcmailwidgets/MailSummaryWidget;

    iget-wide v0, v0, Lcom/htc/htcmailwidgets/MailSummaryWidget;->mAccountId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget$2;->this$0:Lcom/htc/htcmailwidgets/MailSummaryWidget;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->launchAccountList()V

    .line 608
    :cond_0
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 603
    check-cast p1, Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/htcmailwidgets/MailSummaryWidget$2;->onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;)V

    return-void
.end method
