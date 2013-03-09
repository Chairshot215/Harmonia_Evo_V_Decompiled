.class Lcom/htc/android/mail/ComposeActivity$30;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ComposeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ComposeActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ComposeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 4538
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$30;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 4540
    const-string v0, "editdraft"

    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$30;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->cmd:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/android/mail/ComposeActivity;->access$5100(Lcom/htc/android/mail/ComposeActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4541
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$30;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$5200(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->askBeforeDelete()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4542
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$30;->this$0:Lcom/htc/android/mail/ComposeActivity;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ComposeActivity;->showDialog(I)V

    .line 4549
    :goto_0
    return-void

    .line 4544
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$30;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #calls: Lcom/htc/android/mail/ComposeActivity;->deleteMail()V
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$5300(Lcom/htc/android/mail/ComposeActivity;)V

    goto :goto_0

    .line 4547
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$30;->this$0:Lcom/htc/android/mail/ComposeActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ComposeActivity;->showDialog(I)V

    goto :goto_0
.end method
