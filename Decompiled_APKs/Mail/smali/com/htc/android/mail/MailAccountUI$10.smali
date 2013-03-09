.class Lcom/htc/android/mail/MailAccountUI$10;
.super Ljava/lang/Object;
.source "MailAccountUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailAccountUI;->checkScreen4()V
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
    .line 633
    iput-object p1, p0, Lcom/htc/android/mail/MailAccountUI$10;->this$0:Lcom/htc/android/mail/MailAccountUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 634
    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI$10;->this$0:Lcom/htc/android/mail/MailAccountUI;

    #getter for: Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/htc/android/mail/MailAccountUI;->access$100(Lcom/htc/android/mail/MailAccountUI;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 654
    :goto_0
    return-void

    .line 635
    :cond_0
    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI$10;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v2, v2, Lcom/htc/android/mail/MailAccountUI;->mName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 636
    .local v1, name:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI$10;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v2, v2, Lcom/htc/android/mail/MailAccountUI;->mDesc:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 637
    .local v0, desc:Ljava/lang/String;
    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    .line 638
    :cond_1
    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI$10;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v2, v2, Lcom/htc/android/mail/MailAccountUI;->btnR:Lcom/htc/android/mail/widget/MailFooterBarButton;

    invoke-virtual {v2, v4}, Lcom/htc/android/mail/widget/MailFooterBarButton;->enableButton(Z)V

    goto :goto_0

    .line 641
    :cond_2
    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI$10;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v2, v2, Lcom/htc/android/mail/MailAccountUI;->mDesc:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 642
    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI$10;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v2, v2, Lcom/htc/android/mail/MailAccountUI;->mDesc:Landroid/widget/EditText;

    new-instance v3, Lcom/htc/android/mail/MailAccountUI$10$1;

    invoke-direct {v3, p0}, Lcom/htc/android/mail/MailAccountUI$10$1;-><init>(Lcom/htc/android/mail/MailAccountUI$10;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 650
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 651
    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI$10;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v2, v2, Lcom/htc/android/mail/MailAccountUI;->btnR:Lcom/htc/android/mail/widget/MailFooterBarButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/widget/MailFooterBarButton;->enableButton(Z)V

    goto :goto_0

    .line 653
    :cond_4
    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI$10;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v2, v2, Lcom/htc/android/mail/MailAccountUI;->btnR:Lcom/htc/android/mail/widget/MailFooterBarButton;

    invoke-virtual {v2, v4}, Lcom/htc/android/mail/widget/MailFooterBarButton;->enableButton(Z)V

    goto :goto_0
.end method
