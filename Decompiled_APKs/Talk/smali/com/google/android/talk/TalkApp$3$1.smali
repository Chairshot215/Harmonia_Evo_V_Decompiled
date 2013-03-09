.class Lcom/google/android/talk/TalkApp$3$1;
.super Ljava/lang/Object;
.source "TalkApp.java"

# interfaces
.implements Lcom/google/android/talk/TalkApp$AccountListChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/TalkApp$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/TalkApp$3;


# direct methods
.method constructor <init>(Lcom/google/android/talk/TalkApp$3;)V
    .locals 0
    .parameter

    .prologue
    .line 527
    iput-object p1, p0, Lcom/google/android/talk/TalkApp$3$1;->this$1:Lcom/google/android/talk/TalkApp$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountListChanged()V
    .locals 6

    .prologue
    .line 530
    iget-object v3, p0, Lcom/google/android/talk/TalkApp$3$1;->this$1:Lcom/google/android/talk/TalkApp$3;

    iget-object v3, v3, Lcom/google/android/talk/TalkApp$3;->this$0:Lcom/google/android/talk/TalkApp;

    iget-object v4, p0, Lcom/google/android/talk/TalkApp$3$1;->this$1:Lcom/google/android/talk/TalkApp$3;

    iget-object v4, v4, Lcom/google/android/talk/TalkApp$3;->val$username:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/talk/TalkApp;->getAccountInfo(Ljava/lang/String;)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v2

    .line 531
    .local v2, info:Lcom/google/android/talk/TalkApp$AccountInfo;
    if-nez v2, :cond_1

    .line 532
    invoke-static {}, Lcom/google/android/talk/TalkApp;->debugLoggable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 533
    const-string v3, "talk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setImSessionAvailable couldn\'t find account info for username "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/talk/TalkApp$3$1;->this$1:Lcom/google/android/talk/TalkApp$3;

    iget-object v5, v5, Lcom/google/android/talk/TalkApp$3;->val$username:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :goto_0
    iget-object v3, p0, Lcom/google/android/talk/TalkApp$3$1;->this$1:Lcom/google/android/talk/TalkApp$3;

    iget-object v3, v3, Lcom/google/android/talk/TalkApp$3;->this$0:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v3, p0}, Lcom/google/android/talk/TalkApp;->removeAccountListChangedListener(Lcom/google/android/talk/TalkApp$AccountListChangeListener;)V

    .line 548
    return-void

    .line 537
    :cond_0
    const-string v3, "talk"

    const-string v4, "setImSessionAvailable couldn\'t find account info for username."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 542
    :cond_1
    iget-wide v0, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    .line 543
    .local v0, accountId:J
    iget-object v3, p0, Lcom/google/android/talk/TalkApp$3$1;->this$1:Lcom/google/android/talk/TalkApp$3;

    iget-object v3, v3, Lcom/google/android/talk/TalkApp$3;->this$0:Lcom/google/android/talk/TalkApp;

    #getter for: Lcom/google/android/talk/TalkApp;->mServiceState:Lcom/google/android/talk/TalkServiceState;
    invoke-static {v3}, Lcom/google/android/talk/TalkApp;->access$100(Lcom/google/android/talk/TalkApp;)Lcom/google/android/talk/TalkServiceState;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/talk/TalkApp$3$1;->this$1:Lcom/google/android/talk/TalkApp$3;

    iget-object v4, v4, Lcom/google/android/talk/TalkApp$3;->val$session:Lcom/google/android/gtalkservice/IImSession;

    invoke-virtual {v3, v0, v1, v4}, Lcom/google/android/talk/TalkServiceState;->setImSessionAvailable(JLcom/google/android/gtalkservice/IImSession;)V

    goto :goto_0
.end method
