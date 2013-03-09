.class Lcom/htc/htcmailwidgets/MailSummaryWidget$5;
.super Ljava/lang/Object;
.source "MailSummaryWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/htcmailwidgets/MailSummaryWidget;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htcmailwidgets/MailSummaryWidget;


# direct methods
.method constructor <init>(Lcom/htc/htcmailwidgets/MailSummaryWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 1594
    iput-object p1, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailSummaryWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1596
    const/16 v0, 0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1597
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailSummaryWidget;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailSummaryWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailSummaryWidget;

    invoke-virtual {v2}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->isWithPreview()Lcom/htc/htcmailwidgets/MailWidgetBase$WithPreview;

    move-result-object v2

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/htcmailwidgets/MailSummaryWidget;->renewCursor(Ljava/lang/String;Lcom/htc/htcmailwidgets/MailWidgetBase$WithPreview;I)V

    .line 1598
    return-void
.end method
