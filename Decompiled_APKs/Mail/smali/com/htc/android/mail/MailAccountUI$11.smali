.class Lcom/htc/android/mail/MailAccountUI$11;
.super Ljava/lang/Object;
.source "MailAccountUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailAccountUI;->setScreen3()V
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
    .line 811
    iput-object p1, p0, Lcom/htc/android/mail/MailAccountUI$11;->this$0:Lcom/htc/android/mail/MailAccountUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 812
    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI$11;->this$0:Lcom/htc/android/mail/MailAccountUI;

    #getter for: Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/htc/android/mail/MailAccountUI;->access$100(Lcom/htc/android/mail/MailAccountUI;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 824
    :cond_0
    :goto_0
    return-void

    .line 813
    :cond_1
    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI$11;->this$0:Lcom/htc/android/mail/MailAccountUI;

    const v3, 0x7f0b0071

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/MailAccountUI;->setTitleText(I)V

    .line 814
    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI$11;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v2, v2, Lcom/htc/android/mail/MailAccountUI;->mEmailAddress:Landroid/widget/AutoCompleteTextView;

    iget-object v3, p0, Lcom/htc/android/mail/MailAccountUI$11;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v3, v3, Lcom/htc/android/mail/MailAccountUI;->mInEmailAddress:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 816
    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI$11;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v2, v2, Lcom/htc/android/mail/MailAccountUI;->mDesc:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 817
    .local v1, str:Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_3

    .line 818
    :cond_2
    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI$11;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v3, p0, Lcom/htc/android/mail/MailAccountUI$11;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v3, v3, Lcom/htc/android/mail/MailAccountUI;->mInEmailAddress:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/MailAccountUI;->setDesc(Ljava/lang/String;)V

    .line 820
    :cond_3
    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI$11;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v2, v2, Lcom/htc/android/mail/MailAccountUI;->mOutServer:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 821
    .local v0, server:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 822
    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI$11;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v2, v2, Lcom/htc/android/mail/MailAccountUI;->mOutServer:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
