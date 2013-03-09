.class Lcom/htc/android/mail/MailAccountUI$13;
.super Ljava/lang/Object;
.source "MailAccountUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailAccountUI;->setDesc(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailAccountUI;

.field final synthetic val$providerStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailAccountUI;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 934
    iput-object p1, p0, Lcom/htc/android/mail/MailAccountUI$13;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iput-object p2, p0, Lcom/htc/android/mail/MailAccountUI$13;->val$providerStr:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 935
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$13;->this$0:Lcom/htc/android/mail/MailAccountUI;

    #getter for: Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/android/mail/MailAccountUI;->access$100(Lcom/htc/android/mail/MailAccountUI;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 937
    :goto_0
    return-void

    .line 936
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$13;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v0, v0, Lcom/htc/android/mail/MailAccountUI;->mDesc:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI$13;->val$providerStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
