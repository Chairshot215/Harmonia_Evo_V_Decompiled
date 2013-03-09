.class Lcom/htc/htcmailwidgets/MailPaperWidget$6$3;
.super Ljava/lang/Object;
.source "MailPaperWidget.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 2389
    iput-object p1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$6$3;->this$1:Lcom/htc/htcmailwidgets/MailPaperWidget$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x138d

    const/4 v3, 0x0

    .line 2392
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 2404
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$6$3;->this$1:Lcom/htc/htcmailwidgets/MailPaperWidget$6;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/MailPaperWidget$6;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iput-boolean v3, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbInDeleteMail:Z

    .line 2405
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$6$3;->this$1:Lcom/htc/htcmailwidgets/MailPaperWidget$6;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/MailPaperWidget$6;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    #setter for: Lcom/htc/htcmailwidgets/MailPaperWidget;->mbDoRefreshAdapterTask:Z
    invoke-static {v0, v3}, Lcom/htc/htcmailwidgets/MailPaperWidget;->access$202(Lcom/htc/htcmailwidgets/MailPaperWidget;Z)Z

    .line 2406
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$6$3;->this$1:Lcom/htc/htcmailwidgets/MailPaperWidget$6;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/MailPaperWidget$6;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    if-eqz v0, :cond_0

    .line 2407
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$6$3;->this$1:Lcom/htc/htcmailwidgets/MailPaperWidget$6;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/MailPaperWidget$6;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$6$3;->this$1:Lcom/htc/htcmailwidgets/MailPaperWidget$6;

    iget-object v1, v1, Lcom/htc/htcmailwidgets/MailPaperWidget$6;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    #getter for: Lcom/htc/htcmailwidgets/MailPaperWidget;->mbDoRefreshAdapterTask:Z
    invoke-static {v1}, Lcom/htc/htcmailwidgets/MailPaperWidget;->access$200(Lcom/htc/htcmailwidgets/MailPaperWidget;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailDataManager;->onDuringDeleteMail(Z)V

    .line 2409
    :cond_0
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$6$3;->this$1:Lcom/htc/htcmailwidgets/MailPaperWidget$6;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/MailPaperWidget$6;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iget-boolean v0, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbNeedRefreshMail:Z

    if-eqz v0, :cond_1

    .line 2410
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$6$3;->this$1:Lcom/htc/htcmailwidgets/MailPaperWidget$6;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/MailPaperWidget$6;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, v4}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 2411
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$6$3;->this$1:Lcom/htc/htcmailwidgets/MailPaperWidget$6;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/MailPaperWidget$6;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const-wide/16 v1, 0x320

    invoke-interface {v0, v4, v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->sendDelayed(IJ)V

    .line 2414
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2415
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$6$3;->this$1:Lcom/htc/htcmailwidgets/MailPaperWidget$6;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/MailPaperWidget$6;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    #setter for: Lcom/htc/htcmailwidgets/MailPaperWidget;->mDeleteDlg:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v0, v5}, Lcom/htc/htcmailwidgets/MailPaperWidget;->access$1202(Lcom/htc/htcmailwidgets/MailPaperWidget;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;

    .line 2416
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$6$3;->this$1:Lcom/htc/htcmailwidgets/MailPaperWidget$6;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/MailPaperWidget$6;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    #setter for: Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetHwnd:Landroid/view/Window;
    invoke-static {v0, v5}, Lcom/htc/htcmailwidgets/MailPaperWidget;->access$1502(Lcom/htc/htcmailwidgets/MailPaperWidget;Landroid/view/Window;)Landroid/view/Window;

    .line 2417
    :sswitch_0
    return v3

    .line 2392
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
        0x52 -> :sswitch_0
    .end sparse-switch
.end method
