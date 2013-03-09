.class Lcom/htc/android/mail/MailAccountUI$18$1;
.super Ljava/lang/Object;
.source "MailAccountUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailAccountUI$18;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/MailAccountUI$18;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailAccountUI$18;)V
    .locals 0
    .parameter

    .prologue
    .line 1460
    iput-object p1, p0, Lcom/htc/android/mail/MailAccountUI$18$1;->this$1:Lcom/htc/android/mail/MailAccountUI$18;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1464
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$18$1;->this$1:Lcom/htc/android/mail/MailAccountUI$18;

    iget-object v0, v0, Lcom/htc/android/mail/MailAccountUI$18;->this$0:Lcom/htc/android/mail/MailAccountUI;

    #getter for: Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/android/mail/MailAccountUI;->access$100(Lcom/htc/android/mail/MailAccountUI;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1467
    :goto_0
    return-void

    .line 1465
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$18$1;->this$1:Lcom/htc/android/mail/MailAccountUI$18;

    iget-object v0, v0, Lcom/htc/android/mail/MailAccountUI$18;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v0, v0, Lcom/htc/android/mail/MailAccountUI;->mOutUsername:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0
.end method
