.class Lcom/htc/htcmailwidgets/MailPaperWidget$6;
.super Ljava/lang/Object;
.source "MailPaperWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/htcmailwidgets/MailPaperWidget;->createDeleteDlg(ILcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/controls/FxButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

.field final synthetic val$index:I

.field final synthetic val$stringLeft:Ljava/lang/String;

.field final synthetic val$stringRight:Ljava/lang/String;

.field final synthetic val$t:Lcom/htc/fusion/fx/FxTimelineControl;


# direct methods
.method constructor <init>(Lcom/htc/htcmailwidgets/MailPaperWidget;ILjava/lang/String;Ljava/lang/String;Lcom/htc/fusion/fx/FxTimelineControl;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2379
    iput-object p1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$6;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iput p2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$6;->val$index:I

    iput-object p3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$6;->val$stringLeft:Ljava/lang/String;

    iput-object p4, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$6;->val$stringRight:Ljava/lang/String;

    iput-object p5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$6;->val$t:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 2381
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$6;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    #getter for: Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailAdapter:Lcom/htc/htcmailwidgets/FxMailPaperAdapter;
    invoke-static {v2}, Lcom/htc/htcmailwidgets/MailPaperWidget;->access$100(Lcom/htc/htcmailwidgets/MailPaperWidget;)Lcom/htc/htcmailwidgets/FxMailPaperAdapter;

    move-result-object v2

    iget v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$6;->val$index:I

    invoke-virtual {v2, v3}, Lcom/htc/htcmailwidgets/FxMailPaperAdapter;->getItem(I)Lcom/htc/htcmailwidgets/MailData;

    move-result-object v2

    iget-object v1, v2, Lcom/htc/htcmailwidgets/MailData;->mSubject:Ljava/lang/String;

    .line 2382
    .local v1, title:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 2383
    :cond_0
    sget-object v1, Lcom/htc/htcmailwidgets/LocalData;->mNoSubject:Ljava/lang/String;

    .line 2385
    :cond_1
    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$6;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v4, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$6;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    #calls: Lcom/htc/htcmailwidgets/MailPaperWidget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;
    invoke-static {v4}, Lcom/htc/htcmailwidgets/MailPaperWidget;->access$1600(Lcom/htc/htcmailwidgets/MailPaperWidget;)Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v4

    invoke-interface {v4}, Lcom/htc/android/rosie/widget/Widget$Host;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v4, 0x1080027

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    sget-object v4, Lcom/htc/htcmailwidgets/LocalData;->mDeleteNail:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    new-instance v4, Lcom/htc/htcmailwidgets/MailPaperWidget$6$3;

    invoke-direct {v4, p0}, Lcom/htc/htcmailwidgets/MailPaperWidget$6$3;-><init>(Lcom/htc/htcmailwidgets/MailPaperWidget$6;)V

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$6;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iget-boolean v2, v2, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbIsICS:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$6;->val$stringLeft:Ljava/lang/String;

    :goto_0
    new-instance v5, Lcom/htc/htcmailwidgets/MailPaperWidget$6$2;

    invoke-direct {v5, p0}, Lcom/htc/htcmailwidgets/MailPaperWidget$6$2;-><init>(Lcom/htc/htcmailwidgets/MailPaperWidget$6;)V

    invoke-virtual {v4, v2, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$6;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iget-boolean v2, v2, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbIsICS:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$6;->val$stringRight:Ljava/lang/String;

    :goto_1
    new-instance v5, Lcom/htc/htcmailwidgets/MailPaperWidget$6$1;

    invoke-direct {v5, p0}, Lcom/htc/htcmailwidgets/MailPaperWidget$6$1;-><init>(Lcom/htc/htcmailwidgets/MailPaperWidget$6;)V

    invoke-virtual {v4, v2, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    #setter for: Lcom/htc/htcmailwidgets/MailPaperWidget;->mDeleteDlg:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v3, v2}, Lcom/htc/htcmailwidgets/MailPaperWidget;->access$1202(Lcom/htc/htcmailwidgets/MailPaperWidget;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;

    .line 2449
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$6;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$6;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    #getter for: Lcom/htc/htcmailwidgets/MailPaperWidget;->mDeleteDlg:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v3}, Lcom/htc/htcmailwidgets/MailPaperWidget;->access$1200(Lcom/htc/htcmailwidgets/MailPaperWidget;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    #setter for: Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetHwnd:Landroid/view/Window;
    invoke-static {v2, v3}, Lcom/htc/htcmailwidgets/MailPaperWidget;->access$1502(Lcom/htc/htcmailwidgets/MailPaperWidget;Landroid/view/Window;)Landroid/view/Window;

    .line 2451
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$6;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    #getter for: Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetHwnd:Landroid/view/Window;
    invoke-static {v2}, Lcom/htc/htcmailwidgets/MailPaperWidget;->access$1500(Lcom/htc/htcmailwidgets/MailPaperWidget;)Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2455
    :try_start_0
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$6;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    #getter for: Lcom/htc/htcmailwidgets/MailPaperWidget;->mDeleteDlg:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v2}, Lcom/htc/htcmailwidgets/MailPaperWidget;->access$1200(Lcom/htc/htcmailwidgets/MailPaperWidget;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 2456
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$6;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    #getter for: Lcom/htc/htcmailwidgets/MailPaperWidget;->mDeleteDlg:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v2}, Lcom/htc/htcmailwidgets/MailPaperWidget;->access$1200(Lcom/htc/htcmailwidgets/MailPaperWidget;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2464
    :cond_2
    :goto_2
    return-void

    .line 2385
    :cond_3
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$6;->val$stringRight:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$6;->val$stringLeft:Ljava/lang/String;

    goto :goto_1

    .line 2457
    :catch_0
    move-exception v0

    .line 2459
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$6;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    #setter for: Lcom/htc/htcmailwidgets/MailPaperWidget;->mDeleteDlg:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v2, v7}, Lcom/htc/htcmailwidgets/MailPaperWidget;->access$1202(Lcom/htc/htcmailwidgets/MailPaperWidget;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;

    .line 2460
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$6;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    #setter for: Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetHwnd:Landroid/view/Window;
    invoke-static {v2, v7}, Lcom/htc/htcmailwidgets/MailPaperWidget;->access$1502(Lcom/htc/htcmailwidgets/MailPaperWidget;Landroid/view/Window;)Landroid/view/Window;

    goto :goto_2
.end method
