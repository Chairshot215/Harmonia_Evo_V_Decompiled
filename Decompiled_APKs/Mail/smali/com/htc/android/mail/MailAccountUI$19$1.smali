.class Lcom/htc/android/mail/MailAccountUI$19$1;
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
    .line 1523
    iput-object p1, p0, Lcom/htc/android/mail/MailAccountUI$19$1;->this$1:Lcom/htc/android/mail/MailAccountUI$19;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1526
    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI$19$1;->this$1:Lcom/htc/android/mail/MailAccountUI$19;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI$19;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-boolean v1, v1, Lcom/htc/android/mail/MailAccountUI;->mUserCancelCheck:Z

    if-eqz v1, :cond_1

    .line 1527
    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI$19$1;->this$1:Lcom/htc/android/mail/MailAccountUI$19;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI$19;->this$0:Lcom/htc/android/mail/MailAccountUI;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/htc/android/mail/MailAccountUI;->mUserCancelCheck:Z

    .line 1528
    invoke-static {}, Lcom/htc/android/mail/MailAccountUI;->access$300()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "JerryDebug"

    const-string v2, "cancelCheck is false3"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1542
    :cond_0
    :goto_0
    return-void

    .line 1531
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI$19$1;->this$1:Lcom/htc/android/mail/MailAccountUI$19;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI$19;->this$0:Lcom/htc/android/mail/MailAccountUI;

    #calls: Lcom/htc/android/mail/MailAccountUI;->DismissAuthDialog()V
    invoke-static {v1}, Lcom/htc/android/mail/MailAccountUI;->access$900(Lcom/htc/android/mail/MailAccountUI;)V

    .line 1534
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI$19$1;->this$1:Lcom/htc/android/mail/MailAccountUI$19;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI$19;->this$0:Lcom/htc/android/mail/MailAccountUI;

    #getter for: Lcom/htc/android/mail/MailAccountUI;->smart_fail:I
    invoke-static {v1}, Lcom/htc/android/mail/MailAccountUI;->access$1300(Lcom/htc/android/mail/MailAccountUI;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1535
    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI$19$1;->this$1:Lcom/htc/android/mail/MailAccountUI$19;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI$19;->this$0:Lcom/htc/android/mail/MailAccountUI;

    #getter for: Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/htc/android/mail/MailAccountUI;->access$100(Lcom/htc/android/mail/MailAccountUI;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/app/Activity;->showDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1538
    :catch_0
    move-exception v0

    .line 1539
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1537
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI$19$1;->this$1:Lcom/htc/android/mail/MailAccountUI$19;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI$19;->this$0:Lcom/htc/android/mail/MailAccountUI;

    #getter for: Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/htc/android/mail/MailAccountUI;->access$100(Lcom/htc/android/mail/MailAccountUI;)Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/app/Activity;->showDialog(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
