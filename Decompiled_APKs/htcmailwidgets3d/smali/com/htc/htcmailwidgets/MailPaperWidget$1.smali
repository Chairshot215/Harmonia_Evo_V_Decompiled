.class Lcom/htc/htcmailwidgets/MailPaperWidget$1;
.super Ljava/lang/Object;
.source "MailPaperWidget.java"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/htcmailwidgets/MailPaperWidget;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;


# direct methods
.method constructor <init>(Lcom/htc/htcmailwidgets/MailPaperWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$1;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .locals 2
    .parameter "which"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$1;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iget-boolean v0, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbInvisible:Z

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$1;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedGetAutoSyncStatus:Z

    .line 299
    :goto_0
    return-void

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$1;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x1392

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto :goto_0
.end method
