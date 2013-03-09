.class Lcom/htc/android/mail/database/GroupMailStore$1;
.super Landroid/database/ContentObserver;
.source "GroupMailStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/database/GroupMailStore;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/database/GroupMailStore;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/database/GroupMailStore;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/htc/android/mail/database/GroupMailStore$1;->this$0:Lcom/htc/android/mail/database/GroupMailStore;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .parameter "selfChange"

    .prologue
    .line 66
    invoke-static {}, Lcom/htc/android/mail/database/GroupMailStore;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "GroupMailStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contacts changed, syncing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/database/GroupMailStore$1;->this$0:Lcom/htc/android/mail/database/GroupMailStore;

    #getter for: Lcom/htc/android/mail/database/GroupMailStore;->mSyncing:Z
    invoke-static {v4}, Lcom/htc/android/mail/database/GroupMailStore;->access$100(Lcom/htc/android/mail/database/GroupMailStore;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_0
    iget-object v2, p0, Lcom/htc/android/mail/database/GroupMailStore$1;->this$0:Lcom/htc/android/mail/database/GroupMailStore;

    iget v3, v2, Lcom/htc/android/mail/database/GroupMailStore;->mNowTokenId:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/htc/android/mail/database/GroupMailStore;->mNowTokenId:I

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 69
    .local v0, now:J
    iget-object v2, p0, Lcom/htc/android/mail/database/GroupMailStore$1;->this$0:Lcom/htc/android/mail/database/GroupMailStore;

    #getter for: Lcom/htc/android/mail/database/GroupMailStore;->mSyncing:Z
    invoke-static {v2}, Lcom/htc/android/mail/database/GroupMailStore;->access$100(Lcom/htc/android/mail/database/GroupMailStore;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/android/mail/database/GroupMailStore$1;->this$0:Lcom/htc/android/mail/database/GroupMailStore;

    #getter for: Lcom/htc/android/mail/database/GroupMailStore;->mSyncing:Z
    invoke-static {v2}, Lcom/htc/android/mail/database/GroupMailStore;->access$100(Lcom/htc/android/mail/database/GroupMailStore;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/android/mail/database/GroupMailStore$1;->this$0:Lcom/htc/android/mail/database/GroupMailStore;

    #getter for: Lcom/htc/android/mail/database/GroupMailStore;->mLastChangeTime:J
    invoke-static {v2}, Lcom/htc/android/mail/database/GroupMailStore;->access$200(Lcom/htc/android/mail/database/GroupMailStore;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 70
    :cond_1
    invoke-static {}, Lcom/htc/android/mail/database/GroupMailStore;->access$000()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "GroupMailStore"

    const-string v3, "start broadcast changed"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_2
    iget-object v2, p0, Lcom/htc/android/mail/database/GroupMailStore$1;->this$0:Lcom/htc/android/mail/database/GroupMailStore;

    #setter for: Lcom/htc/android/mail/database/GroupMailStore;->mLastChangeTime:J
    invoke-static {v2, v0, v1}, Lcom/htc/android/mail/database/GroupMailStore;->access$202(Lcom/htc/android/mail/database/GroupMailStore;J)J

    .line 72
    iget-object v2, p0, Lcom/htc/android/mail/database/GroupMailStore$1;->this$0:Lcom/htc/android/mail/database/GroupMailStore;

    #calls: Lcom/htc/android/mail/database/GroupMailStore;->broadcastChanged()V
    invoke-static {v2}, Lcom/htc/android/mail/database/GroupMailStore;->access$300(Lcom/htc/android/mail/database/GroupMailStore;)V

    .line 74
    :cond_3
    return-void
.end method
