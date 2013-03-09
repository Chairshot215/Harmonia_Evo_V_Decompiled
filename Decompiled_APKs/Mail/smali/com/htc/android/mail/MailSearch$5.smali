.class Lcom/htc/android/mail/MailSearch$5;
.super Ljava/lang/Object;
.source "MailSearch.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailSearch;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailSearch;)V
    .locals 0
    .parameter

    .prologue
    .line 433
    iput-object p1, p0, Lcom/htc/android/mail/MailSearch$5;->this$0:Lcom/htc/android/mail/MailSearch;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 435
    invoke-static {}, Lcom/htc/android/mail/MailSearch;->access$900()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MailSearch"

    const-string v1, "doBatchDelete>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch$5;->this$0:Lcom/htc/android/mail/MailSearch;

    #getter for: Lcom/htc/android/mail/MailSearch;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v0}, Lcom/htc/android/mail/MailSearch;->access$200(Lcom/htc/android/mail/MailSearch;)Lcom/htc/android/mail/Account;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/MailSearch$5;->this$0:Lcom/htc/android/mail/MailSearch;

    invoke-virtual {v1}, Lcom/htc/android/mail/MailSearch;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/Account;->askBeforeDelete(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 437
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch$5;->this$0:Lcom/htc/android/mail/MailSearch;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailSearch;->showDialog(I)V

    .line 440
    :goto_0
    return-void

    .line 439
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch$5;->this$0:Lcom/htc/android/mail/MailSearch;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailSearch;->implDelMarkMail()V

    goto :goto_0
.end method
