.class Lcom/htc/android/mail/MailList$20;
.super Ljava/lang/Object;
.source "MailList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailList;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailList;)V
    .locals 0
    .parameter

    .prologue
    .line 2048
    iput-object p1, p0, Lcom/htc/android/mail/MailList$20;->this$0:Lcom/htc/android/mail/MailList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 2050
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MailList"

    const-string v1, "doBatchDelete>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2051
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailList$20;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    iget-object v1, p0, Lcom/htc/android/mail/MailList$20;->this$0:Lcom/htc/android/mail/MailList;

    invoke-virtual {v1}, Lcom/htc/android/mail/MailList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/Account;->askBeforeDelete(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2052
    iget-object v0, p0, Lcom/htc/android/mail/MailList$20;->this$0:Lcom/htc/android/mail/MailList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailList;->showDialog(I)V

    .line 2055
    :goto_0
    return-void

    .line 2054
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/MailList$20;->this$0:Lcom/htc/android/mail/MailList;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailList;->implDelMarkMail()V

    goto :goto_0
.end method
