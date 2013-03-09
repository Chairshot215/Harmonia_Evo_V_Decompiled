.class Lcom/htc/htcmailwidgets/MailPaperWidget$6$2;
.super Ljava/lang/Object;
.source "MailPaperWidget.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/htcmailwidgets/MailPaperWidget$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/htcmailwidgets/MailPaperWidget$6;


# direct methods
.method constructor <init>(Lcom/htc/htcmailwidgets/MailPaperWidget$6;)V
    .locals 0
    .parameter

    .prologue
    .line 2420
    iput-object p1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$6$2;->this$1:Lcom/htc/htcmailwidgets/MailPaperWidget$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/16 v3, 0x138d

    const/4 v1, 0x0

    .line 2423
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$6$2;->this$1:Lcom/htc/htcmailwidgets/MailPaperWidget$6;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/MailPaperWidget$6;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iput-boolean v1, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbInDeleteMail:Z

    .line 2424
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$6$2;->this$1:Lcom/htc/htcmailwidgets/MailPaperWidget$6;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/MailPaperWidget$6;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    #setter for: Lcom/htc/htcmailwidgets/MailPaperWidget;->mbDoRefreshAdapterTask:Z
    invoke-static {v0, v1}, Lcom/htc/htcmailwidgets/MailPaperWidget;->access$202(Lcom/htc/htcmailwidgets/MailPaperWidget;Z)Z

    .line 2425
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$6$2;->this$1:Lcom/htc/htcmailwidgets/MailPaperWidget$6;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/MailPaperWidget$6;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    if-eqz v0, :cond_0

    .line 2426
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$6$2;->this$1:Lcom/htc/htcmailwidgets/MailPaperWidget$6;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/MailPaperWidget$6;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$6$2;->this$1:Lcom/htc/htcmailwidgets/MailPaperWidget$6;

    iget-object v1, v1, Lcom/htc/htcmailwidgets/MailPaperWidget$6;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    #getter for: Lcom/htc/htcmailwidgets/MailPaperWidget;->mbDoRefreshAdapterTask:Z
    invoke-static {v1}, Lcom/htc/htcmailwidgets/MailPaperWidget;->access$200(Lcom/htc/htcmailwidgets/MailPaperWidget;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailDataManager;->onDuringDeleteMail(Z)V

    .line 2428
    :cond_0
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$6$2;->this$1:Lcom/htc/htcmailwidgets/MailPaperWidget$6;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/MailPaperWidget$6;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iget-boolean v0, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedRefreshMail:Z

    if-eqz v0, :cond_1

    .line 2429
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$6$2;->this$1:Lcom/htc/htcmailwidgets/MailPaperWidget$6;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/MailPaperWidget$6;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 2430
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$6$2;->this$1:Lcom/htc/htcmailwidgets/MailPaperWidget$6;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/MailPaperWidget$6;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const-wide/16 v1, 0x320

    invoke-interface {v0, v3, v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->sendDelayed(IJ)V

    .line 2432
    :cond_1
    return-void
.end method
