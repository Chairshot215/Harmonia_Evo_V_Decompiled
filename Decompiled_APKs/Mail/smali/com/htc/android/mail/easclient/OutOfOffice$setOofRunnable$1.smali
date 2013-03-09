.class Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable$1;
.super Ljava/lang/Object;
.source "OutOfOffice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable;

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 693
    iput-object p1, p0, Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable$1;->this$1:Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable;

    iput p2, p0, Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable$1;->val$result:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 698
    iget-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable$1;->this$1:Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable;

    iget-object v2, v2, Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    invoke-virtual {v2}, Lcom/htc/android/mail/easclient/OutOfOffice;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 699
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable$1;->this$1:Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable;

    iget-object v2, v2, Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mEtOofMessage:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$800(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/widget/EditText;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 700
    iget-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable$1;->this$1:Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable;

    iget-object v2, v2, Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mEtOofMessage:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$800(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 703
    :cond_0
    iget v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable$1;->val$result:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 704
    iget-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable$1;->this$1:Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable;

    iget-object v2, v2, Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mDestroy:Z
    invoke-static {v2}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$600(Lcom/htc/android/mail/easclient/OutOfOffice;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 705
    iget-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable$1;->this$1:Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable;

    iget-object v2, v2, Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    const/16 v3, 0x69

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/easclient/OutOfOffice;->showDialog(I)V

    .line 719
    :cond_1
    :goto_0
    return-void

    .line 708
    :cond_2
    iget-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable$1;->this$1:Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable;

    iget-object v2, v2, Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    const v3, 0x7f0b02c0

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/easclient/OutOfOffice;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 709
    .local v1, strSuccess:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable$1;->this$1:Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable;

    iget-object v2, v2, Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1400(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 714
    iget-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable$1;->this$1:Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable;

    iget-object v2, v2, Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    iget-object v3, p0, Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable$1;->this$1:Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable;

    iget-object v3, v3, Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnSave:Lcom/htc/android/mail/widget/MailFooterBarButton;
    invoke-static {v3}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1900(Lcom/htc/android/mail/easclient/OutOfOffice;)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v3

    #calls: Lcom/htc/android/mail/easclient/OutOfOffice;->setButtonEnable(Lcom/htc/android/mail/widget/MailFooterBarButton;Z)V
    invoke-static {v2, v3, v4}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$2000(Lcom/htc/android/mail/easclient/OutOfOffice;Lcom/htc/android/mail/widget/MailFooterBarButton;Z)V

    .line 715
    iget-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable$1;->this$1:Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable;

    iget-object v2, v2, Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    iget-object v3, p0, Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable$1;->this$1:Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable;

    iget-object v3, v3, Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnDiscard:Lcom/htc/android/mail/widget/MailFooterBarButton;
    invoke-static {v3}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$2100(Lcom/htc/android/mail/easclient/OutOfOffice;)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v3

    const/4 v4, 0x1

    #calls: Lcom/htc/android/mail/easclient/OutOfOffice;->setButtonEnable(Lcom/htc/android/mail/widget/MailFooterBarButton;Z)V
    invoke-static {v2, v3, v4}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$2000(Lcom/htc/android/mail/easclient/OutOfOffice;Lcom/htc/android/mail/widget/MailFooterBarButton;Z)V

    .line 717
    iget-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable$1;->this$1:Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable;

    iget-object v2, v2, Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    invoke-virtual {v2}, Lcom/htc/android/mail/easclient/OutOfOffice;->finish()V

    goto :goto_0
.end method
