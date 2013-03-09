.class Lcom/htc/android/mail/MailAccountUI$24;
.super Ljava/lang/Object;
.source "MailAccountUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailAccountUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailAccountUI;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailAccountUI;)V
    .locals 0
    .parameter

    .prologue
    .line 2336
    iput-object p1, p0, Lcom/htc/android/mail/MailAccountUI$24;->this$0:Lcom/htc/android/mail/MailAccountUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 2338
    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI$24;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI;->mPassword:Landroid/widget/EditText;

    if-nez v1, :cond_1

    .line 2354
    :cond_0
    :goto_0
    return-void

    .line 2342
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI$24;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 2343
    .local v0, cursor:I
    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI$24;->this$0:Lcom/htc/android/mail/MailAccountUI;

    #getter for: Lcom/htc/android/mail/MailAccountUI;->mShowPassword:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/htc/android/mail/MailAccountUI;->access$1600(Lcom/htc/android/mail/MailAccountUI;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2344
    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI$24;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI;->mPassword:Landroid/widget/EditText;

    const/16 v2, 0x91

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 2351
    :goto_1
    if-ltz v0, :cond_0

    .line 2352
    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI$24;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 2347
    :cond_2
    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI$24;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI;->mPassword:Landroid/widget/EditText;

    const/16 v2, 0x81

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_1
.end method
