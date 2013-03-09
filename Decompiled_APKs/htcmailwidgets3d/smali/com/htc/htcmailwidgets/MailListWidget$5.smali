.class Lcom/htc/htcmailwidgets/MailListWidget$5;
.super Ljava/lang/Object;
.source "MailListWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/htcmailwidgets/MailListWidget;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htcmailwidgets/MailListWidget;


# direct methods
.method constructor <init>(Lcom/htc/htcmailwidgets/MailListWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 1561
    iput-object p1, p0, Lcom/htc/htcmailwidgets/MailListWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailListWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1563
    const/16 v0, 0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1564
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailListWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailListWidget;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailListWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailListWidget;

    invoke-virtual {v2}, Lcom/htc/htcmailwidgets/MailListWidget;->isWithPreview()Lcom/htc/htcmailwidgets/MailWidgetBase$WithPreview;

    move-result-object v2

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/htcmailwidgets/MailListWidget;->renewCursor(Ljava/lang/String;Lcom/htc/htcmailwidgets/MailWidgetBase$WithPreview;I)V

    .line 1565
    return-void
.end method
