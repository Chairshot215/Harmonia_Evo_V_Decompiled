.class Lcom/htc/android/mail/MailAccountUI$19$3;
.super Ljava/lang/Object;
.source "MailAccountUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailAccountUI$19;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/MailAccountUI$19;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailAccountUI$19;)V
    .locals 0
    .parameter

    .prologue
    .line 1578
    iput-object p1, p0, Lcom/htc/android/mail/MailAccountUI$19$3;->this$1:Lcom/htc/android/mail/MailAccountUI$19;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1580
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$19$3;->this$1:Lcom/htc/android/mail/MailAccountUI$19;

    iget-object v0, v0, Lcom/htc/android/mail/MailAccountUI$19;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI$19$3;->this$1:Lcom/htc/android/mail/MailAccountUI$19;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI$19;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI;->mEmailAddress:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/android/mail/MailAccountUI;->okAddr:Ljava/lang/String;

    .line 1581
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$19$3;->this$1:Lcom/htc/android/mail/MailAccountUI$19;

    iget-object v0, v0, Lcom/htc/android/mail/MailAccountUI$19;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI$19$3;->this$1:Lcom/htc/android/mail/MailAccountUI$19;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI$19;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/android/mail/MailAccountUI;->okPwd:Ljava/lang/String;

    .line 1582
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$19$3;->this$1:Lcom/htc/android/mail/MailAccountUI$19;

    iget-object v0, v0, Lcom/htc/android/mail/MailAccountUI$19;->this$0:Lcom/htc/android/mail/MailAccountUI;

    #calls: Lcom/htc/android/mail/MailAccountUI;->DismissAuthDialog()V
    invoke-static {v0}, Lcom/htc/android/mail/MailAccountUI;->access$900(Lcom/htc/android/mail/MailAccountUI;)V

    .line 1583
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$19$3;->this$1:Lcom/htc/android/mail/MailAccountUI$19;

    iget-object v0, v0, Lcom/htc/android/mail/MailAccountUI$19;->this$0:Lcom/htc/android/mail/MailAccountUI;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/android/mail/MailAccountUI;->mUserCancelCheck:Z

    .line 1585
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$19$3;->this$1:Lcom/htc/android/mail/MailAccountUI$19;

    iget-object v0, v0, Lcom/htc/android/mail/MailAccountUI$19;->this$0:Lcom/htc/android/mail/MailAccountUI;

    const/4 v1, 0x4

    iput v1, v0, Lcom/htc/android/mail/MailAccountUI;->curNewAccountStep:I

    .line 1586
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$19$3;->this$1:Lcom/htc/android/mail/MailAccountUI$19;

    iget-object v0, v0, Lcom/htc/android/mail/MailAccountUI$19;->this$0:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailAccountUI;->checkScreen4()V

    .line 1587
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$19$3;->this$1:Lcom/htc/android/mail/MailAccountUI$19;

    iget-object v0, v0, Lcom/htc/android/mail/MailAccountUI$19;->this$0:Lcom/htc/android/mail/MailAccountUI;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailAccountUI;->updateScreen()V

    .line 1588
    return-void
.end method
