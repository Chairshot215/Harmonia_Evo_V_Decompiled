.class Lcom/htc/android/mail/database/ImportantMailStore$2;
.super Landroid/content/BroadcastReceiver;
.source "ImportantMailStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/database/ImportantMailStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/database/ImportantMailStore;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/database/ImportantMailStore;)V
    .locals 0
    .parameter

    .prologue
    .line 315
    iput-object p1, p0, Lcom/htc/android/mail/database/ImportantMailStore$2;->this$0:Lcom/htc/android/mail/database/ImportantMailStore;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 318
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.SYNC_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 320
    const-string v3, "authority"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 321
    .local v2, authority:Ljava/lang/String;
    const-string v3, "active"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 322
    .local v1, active:Z
    invoke-static {}, Lcom/htc/android/mail/database/ImportantMailStore;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "ImportantMailStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Authority: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ACTION_SYNC_STATE_CHANGED: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Validated: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/database/ImportantMailStore$2;->this$0:Lcom/htc/android/mail/database/ImportantMailStore;

    #calls: Lcom/htc/android/mail/database/ImportantMailStore;->isValidated()Z
    invoke-static {v5}, Lcom/htc/android/mail/database/ImportantMailStore;->access$600(Lcom/htc/android/mail/database/ImportantMailStore;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :cond_0
    iget-object v3, p0, Lcom/htc/android/mail/database/ImportantMailStore$2;->this$0:Lcom/htc/android/mail/database/ImportantMailStore;

    #setter for: Lcom/htc/android/mail/database/ImportantMailStore;->mSyncing:Z
    invoke-static {v3, v1}, Lcom/htc/android/mail/database/ImportantMailStore;->access$102(Lcom/htc/android/mail/database/ImportantMailStore;Z)Z

    .line 326
    iget-object v3, p0, Lcom/htc/android/mail/database/ImportantMailStore$2;->this$0:Lcom/htc/android/mail/database/ImportantMailStore;

    #getter for: Lcom/htc/android/mail/database/ImportantMailStore;->mSyncing:Z
    invoke-static {v3}, Lcom/htc/android/mail/database/ImportantMailStore;->access$100(Lcom/htc/android/mail/database/ImportantMailStore;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/htc/android/mail/database/ImportantMailStore$2;->this$0:Lcom/htc/android/mail/database/ImportantMailStore;

    #calls: Lcom/htc/android/mail/database/ImportantMailStore;->isValidated()Z
    invoke-static {v3}, Lcom/htc/android/mail/database/ImportantMailStore;->access$600(Lcom/htc/android/mail/database/ImportantMailStore;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 327
    iget-object v3, p0, Lcom/htc/android/mail/database/ImportantMailStore$2;->this$0:Lcom/htc/android/mail/database/ImportantMailStore;

    #calls: Lcom/htc/android/mail/database/ImportantMailStore;->broadcastChanged()V
    invoke-static {v3}, Lcom/htc/android/mail/database/ImportantMailStore;->access$400(Lcom/htc/android/mail/database/ImportantMailStore;)V

    .line 331
    .end local v1           #active:Z
    .end local v2           #authority:Ljava/lang/String;
    :cond_1
    return-void
.end method
