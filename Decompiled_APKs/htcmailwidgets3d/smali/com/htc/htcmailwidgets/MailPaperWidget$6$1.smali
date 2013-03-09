.class Lcom/htc/htcmailwidgets/MailPaperWidget$6$1;
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
    .line 2434
    iput-object p1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$6$1;->this$1:Lcom/htc/htcmailwidgets/MailPaperWidget$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "button"

    .prologue
    const/16 v1, 0x15bf

    .line 2436
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$6$1;->this$1:Lcom/htc/htcmailwidgets/MailPaperWidget$6;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/MailPaperWidget$6;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iget v0, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mCursorCount:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$6$1;->this$1:Lcom/htc/htcmailwidgets/MailPaperWidget$6;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/MailPaperWidget$6;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iget-boolean v0, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbInvisible:Z

    if-nez v0, :cond_2

    .line 2437
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$6$1;->this$1:Lcom/htc/htcmailwidgets/MailPaperWidget$6;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/MailPaperWidget$6;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    #getter for: Lcom/htc/htcmailwidgets/MailPaperWidget;->isUnread:Z
    invoke-static {v0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->access$1300(Lcom/htc/htcmailwidgets/MailPaperWidget;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2438
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$6$1;->this$1:Lcom/htc/htcmailwidgets/MailPaperWidget$6;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/MailPaperWidget$6;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    invoke-static {v0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->access$1408(Lcom/htc/htcmailwidgets/MailPaperWidget;)I

    .line 2439
    :cond_0
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$6$1;->this$1:Lcom/htc/htcmailwidgets/MailPaperWidget$6;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/MailPaperWidget$6;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2440
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$6$1;->this$1:Lcom/htc/htcmailwidgets/MailPaperWidget$6;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/MailPaperWidget$6;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 2441
    :cond_1
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$6$1;->this$1:Lcom/htc/htcmailwidgets/MailPaperWidget$6;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/MailPaperWidget$6;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    #getter for: Lcom/htc/htcmailwidgets/MailPaperWidget;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->access$400(Lcom/htc/htcmailwidgets/MailPaperWidget;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteing mail, index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$6$1;->this$1:Lcom/htc/htcmailwidgets/MailPaperWidget$6;

    iget v2, v2, Lcom/htc/htcmailwidgets/MailPaperWidget$6;->val$index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mail_id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$6$1;->this$1:Lcom/htc/htcmailwidgets/MailPaperWidget$6;

    iget-object v2, v2, Lcom/htc/htcmailwidgets/MailPaperWidget$6;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    #getter for: Lcom/htc/htcmailwidgets/MailPaperWidget;->mDelMailId:I
    invoke-static {v2}, Lcom/htc/htcmailwidgets/MailPaperWidget;->access$500(Lcom/htc/htcmailwidgets/MailPaperWidget;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2442
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$6$1;->this$1:Lcom/htc/htcmailwidgets/MailPaperWidget$6;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/MailPaperWidget$6;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$6$1;->this$1:Lcom/htc/htcmailwidgets/MailPaperWidget$6;

    iget-object v1, v1, Lcom/htc/htcmailwidgets/MailPaperWidget$6;->val$t:Lcom/htc/fusion/fx/FxTimelineControl;

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$6$1;->this$1:Lcom/htc/htcmailwidgets/MailPaperWidget$6;

    iget v2, v2, Lcom/htc/htcmailwidgets/MailPaperWidget$6;->val$index:I

    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$6$1;->this$1:Lcom/htc/htcmailwidgets/MailPaperWidget$6;

    iget-object v3, v3, Lcom/htc/htcmailwidgets/MailPaperWidget$6;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    #getter for: Lcom/htc/htcmailwidgets/MailPaperWidget;->mDelMailId:I
    invoke-static {v3}, Lcom/htc/htcmailwidgets/MailPaperWidget;->access$500(Lcom/htc/htcmailwidgets/MailPaperWidget;)I

    move-result v3

    #calls: Lcom/htc/htcmailwidgets/MailPaperWidget;->deleteMailfromDB(Lcom/htc/fusion/fx/FxTimelineControl;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/htc/htcmailwidgets/MailPaperWidget;->access$800(Lcom/htc/htcmailwidgets/MailPaperWidget;Lcom/htc/fusion/fx/FxTimelineControl;II)V

    .line 2444
    :cond_2
    return-void
.end method
