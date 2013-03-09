.class Lcom/htc/android/mail/database/ImportantMailStore$1;
.super Landroid/database/ContentObserver;
.source "ImportantMailStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/database/ImportantMailStore;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/database/ImportantMailStore;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/database/ImportantMailStore;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/htc/android/mail/database/ImportantMailStore$1;->this$0:Lcom/htc/android/mail/database/ImportantMailStore;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .parameter "selfChange"

    .prologue
    .line 67
    invoke-static {}, Lcom/htc/android/mail/database/ImportantMailStore;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ImportantMailStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contacts changed, syncing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/database/ImportantMailStore$1;->this$0:Lcom/htc/android/mail/database/ImportantMailStore;

    #getter for: Lcom/htc/android/mail/database/ImportantMailStore;->mSyncing:Z
    invoke-static {v4}, Lcom/htc/android/mail/database/ImportantMailStore;->access$100(Lcom/htc/android/mail/database/ImportantMailStore;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_0
    iget-object v2, p0, Lcom/htc/android/mail/database/ImportantMailStore$1;->this$0:Lcom/htc/android/mail/database/ImportantMailStore;

    #calls: Lcom/htc/android/mail/database/ImportantMailStore;->invalidate()V
    invoke-static {v2}, Lcom/htc/android/mail/database/ImportantMailStore;->access$200(Lcom/htc/android/mail/database/ImportantMailStore;)V

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 70
    .local v0, now:J
    iget-object v2, p0, Lcom/htc/android/mail/database/ImportantMailStore$1;->this$0:Lcom/htc/android/mail/database/ImportantMailStore;

    #getter for: Lcom/htc/android/mail/database/ImportantMailStore;->mSyncing:Z
    invoke-static {v2}, Lcom/htc/android/mail/database/ImportantMailStore;->access$100(Lcom/htc/android/mail/database/ImportantMailStore;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/android/mail/database/ImportantMailStore$1;->this$0:Lcom/htc/android/mail/database/ImportantMailStore;

    #getter for: Lcom/htc/android/mail/database/ImportantMailStore;->mSyncing:Z
    invoke-static {v2}, Lcom/htc/android/mail/database/ImportantMailStore;->access$100(Lcom/htc/android/mail/database/ImportantMailStore;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/android/mail/database/ImportantMailStore$1;->this$0:Lcom/htc/android/mail/database/ImportantMailStore;

    #getter for: Lcom/htc/android/mail/database/ImportantMailStore;->mLastChangeTime:J
    invoke-static {v2}, Lcom/htc/android/mail/database/ImportantMailStore;->access$300(Lcom/htc/android/mail/database/ImportantMailStore;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 71
    :cond_1
    invoke-static {}, Lcom/htc/android/mail/database/ImportantMailStore;->access$000()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "ImportantMailStore"

    const-string v3, "start broadcast changed"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_2
    iget-object v2, p0, Lcom/htc/android/mail/database/ImportantMailStore$1;->this$0:Lcom/htc/android/mail/database/ImportantMailStore;

    #setter for: Lcom/htc/android/mail/database/ImportantMailStore;->mLastChangeTime:J
    invoke-static {v2, v0, v1}, Lcom/htc/android/mail/database/ImportantMailStore;->access$302(Lcom/htc/android/mail/database/ImportantMailStore;J)J

    .line 73
    iget-object v2, p0, Lcom/htc/android/mail/database/ImportantMailStore$1;->this$0:Lcom/htc/android/mail/database/ImportantMailStore;

    #calls: Lcom/htc/android/mail/database/ImportantMailStore;->broadcastChanged()V
    invoke-static {v2}, Lcom/htc/android/mail/database/ImportantMailStore;->access$400(Lcom/htc/android/mail/database/ImportantMailStore;)V

    .line 75
    :cond_3
    return-void
.end method
