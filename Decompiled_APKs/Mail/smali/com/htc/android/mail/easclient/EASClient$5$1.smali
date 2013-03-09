.class Lcom/htc/android/mail/easclient/EASClient$5$1;
.super Ljava/lang/Object;
.source "EASClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/easclient/EASClient$5;->onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/easclient/EASClient$5;

.field final synthetic val$checked:Z


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/EASClient$5;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 386
    iput-object p1, p0, Lcom/htc/android/mail/easclient/EASClient$5$1;->this$1:Lcom/htc/android/mail/easclient/EASClient$5;

    iput-boolean p2, p0, Lcom/htc/android/mail/easclient/EASClient$5$1;->val$checked:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 388
    const/4 v0, 0x0

    .line 389
    .local v0, easAccount:Lcom/htc/android/mail/Account;
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASClient$5$1;->this$1:Lcom/htc/android/mail/easclient/EASClient$5;

    iget-object v1, v1, Lcom/htc/android/mail/easclient/EASClient$5;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    #getter for: Lcom/htc/android/mail/easclient/EASClient;->AccountId:J
    invoke-static {v1}, Lcom/htc/android/mail/easclient/EASClient;->access$100(Lcom/htc/android/mail/easclient/EASClient;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 390
    if-eqz v0, :cond_0

    .line 391
    iget-boolean v1, p0, Lcom/htc/android/mail/easclient/EASClient$5$1;->val$checked:Z

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/Account;->setRefreshMailOpenFolder(Z)V

    .line 392
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASClient$5$1;->this$1:Lcom/htc/android/mail/easclient/EASClient$5;

    iget-object v1, v1, Lcom/htc/android/mail/easclient/EASClient$5;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    #getter for: Lcom/htc/android/mail/easclient/EASClient;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/android/mail/easclient/EASClient;->access$1100(Lcom/htc/android/mail/easclient/EASClient;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/Account;->commit(Landroid/content/Context;)V

    .line 396
    :goto_0
    return-void

    .line 394
    :cond_0
    const-string v1, "EASClient"

    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient$5$1;->this$1:Lcom/htc/android/mail/easclient/EASClient$5;

    iget-object v2, v2, Lcom/htc/android/mail/easclient/EASClient$5;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    #getter for: Lcom/htc/android/mail/easclient/EASClient;->AccountId:J
    invoke-static {v2}, Lcom/htc/android/mail/easclient/EASClient;->access$100(Lcom/htc/android/mail/easclient/EASClient;)J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not retrieve account: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/easclient/EASClient$5$1;->this$1:Lcom/htc/android/mail/easclient/EASClient$5;

    iget-object v5, v5, Lcom/htc/android/mail/easclient/EASClient$5;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    #getter for: Lcom/htc/android/mail/easclient/EASClient;->AccountId:J
    invoke-static {v5}, Lcom/htc/android/mail/easclient/EASClient;->access$100(Lcom/htc/android/mail/easclient/EASClient;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0
.end method
