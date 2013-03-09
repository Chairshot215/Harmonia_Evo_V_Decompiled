.class Lcom/htc/android/mail/MailAccountUI$8;
.super Ljava/lang/Object;
.source "MailAccountUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailAccountUI;->checkScreen2()V
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
    .line 579
    iput-object p1, p0, Lcom/htc/android/mail/MailAccountUI$8;->this$0:Lcom/htc/android/mail/MailAccountUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 580
    iget-object v4, p0, Lcom/htc/android/mail/MailAccountUI$8;->this$0:Lcom/htc/android/mail/MailAccountUI;

    #getter for: Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/htc/android/mail/MailAccountUI;->access$100(Lcom/htc/android/mail/MailAccountUI;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 599
    :goto_0
    return-void

    .line 581
    :cond_0
    iget-object v4, p0, Lcom/htc/android/mail/MailAccountUI$8;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v4, v4, Lcom/htc/android/mail/MailAccountUI;->mServer:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 582
    .local v1, pop3server:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/android/mail/MailAccountUI$8;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v4, v4, Lcom/htc/android/mail/MailAccountUI;->mInUsername:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 583
    .local v3, username:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/android/mail/MailAccountUI$8;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v4, v4, Lcom/htc/android/mail/MailAccountUI;->mInPassword:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 584
    .local v0, password:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/android/mail/MailAccountUI$8;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v4, v4, Lcom/htc/android/mail/MailAccountUI;->mPort:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 585
    .local v2, port:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_2

    .line 589
    :cond_1
    iget-object v4, p0, Lcom/htc/android/mail/MailAccountUI$8;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v4, v4, Lcom/htc/android/mail/MailAccountUI;->btnR:Lcom/htc/android/mail/widget/MailFooterBarButton;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/android/mail/widget/MailFooterBarButton;->enableButton(Z)V

    goto :goto_0

    .line 598
    :cond_2
    iget-object v4, p0, Lcom/htc/android/mail/MailAccountUI$8;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v4, v4, Lcom/htc/android/mail/MailAccountUI;->btnR:Lcom/htc/android/mail/widget/MailFooterBarButton;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/android/mail/widget/MailFooterBarButton;->enableButton(Z)V

    goto :goto_0
.end method
