.class Lcom/htc/android/mail/ProviderListScreen$1;
.super Landroid/content/BroadcastReceiver;
.source "ProviderListScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ProviderListScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ProviderListScreen;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ProviderListScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 468
    iput-object p1, p0, Lcom/htc/android/mail/ProviderListScreen$1;->this$0:Lcom/htc/android/mail/ProviderListScreen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 471
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, action:Ljava/lang/String;
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ProviderListScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcast received action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    :cond_0
    const-string v1, "com.htc.android.mail.SYNCHUXACCOUNT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 481
    :cond_1
    :goto_0
    return-void

    .line 476
    :cond_2
    invoke-static {}, Lcom/htc/android/mail/Mail;->isHuxEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/android/mail/ProviderListScreen$1;->this$0:Lcom/htc/android/mail/ProviderListScreen;

    #getter for: Lcom/htc/android/mail/ProviderListScreen;->mIsInForeground:Z
    invoke-static {v1}, Lcom/htc/android/mail/ProviderListScreen;->access$000(Lcom/htc/android/mail/ProviderListScreen;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/android/mail/ProviderListScreen$1;->this$0:Lcom/htc/android/mail/ProviderListScreen;

    iget-object v1, v1, Lcom/htc/android/mail/ProviderListScreen;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/android/mail/Account;->getNeedSyncHUXAccount(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/android/mail/ProviderListScreen$1;->this$0:Lcom/htc/android/mail/ProviderListScreen;

    iget-object v1, v1, Lcom/htc/android/mail/ProviderListScreen;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/android/mail/MailCommon;->checkNetwork(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 478
    iget-object v1, p0, Lcom/htc/android/mail/ProviderListScreen$1;->this$0:Lcom/htc/android/mail/ProviderListScreen;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/ProviderListScreen;->showDialog(I)V

    .line 479
    new-instance v1, Lcom/htc/android/mail/huxservice/HuxProvController$synHuxAccountsTask;

    invoke-direct {v1}, Lcom/htc/android/mail/huxservice/HuxProvController$synHuxAccountsTask;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/android/mail/ProviderListScreen$1;->this$0:Lcom/htc/android/mail/ProviderListScreen;

    iget-object v4, v4, Lcom/htc/android/mail/ProviderListScreen;->mContext:Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/htc/android/mail/ProviderListScreen$1;->this$0:Lcom/htc/android/mail/ProviderListScreen;

    #getter for: Lcom/htc/android/mail/ProviderListScreen;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;
    invoke-static {v4}, Lcom/htc/android/mail/ProviderListScreen;->access$100(Lcom/htc/android/mail/ProviderListScreen;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/huxservice/HuxProvController$synHuxAccountsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
