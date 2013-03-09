.class Lcom/htc/android/mail/ReadScreen$42;
.super Ljava/lang/Object;
.source "ReadScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ReadScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ReadScreen;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ReadScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 5800
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen$42;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 5808
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ReadScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeMeetingFromCalendarListener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/ReadScreen$42;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-wide v4, v4, Lcom/htc/android/mail/ReadScreen;->mMessageID:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5809
    :cond_0
    const/4 v0, 0x0

    .line 5810
    .local v0, mailAddress:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$42;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v2}, Lcom/htc/android/mail/ReadScreen;->access$900(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/Account;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5811
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$42;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v2}, Lcom/htc/android/mail/ReadScreen;->access$900(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    .line 5813
    :cond_1
    move-object v1, v0

    .line 5814
    .local v1, userName:Ljava/lang/String;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/htc/android/mail/ReadScreen$42$1;

    invoke-direct {v3, p0, v1}, Lcom/htc/android/mail/ReadScreen$42$1;-><init>(Lcom/htc/android/mail/ReadScreen$42;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 5840
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$42;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-virtual {v2}, Lcom/htc/android/mail/ReadScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen$42;->this$0:Lcom/htc/android/mail/ReadScreen;

    const v4, 0x7f0b032a

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/ReadScreen;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 5841
    return-void
.end method
