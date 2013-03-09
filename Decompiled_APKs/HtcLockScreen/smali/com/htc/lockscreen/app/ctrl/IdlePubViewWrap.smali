.class public Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;
.super Ljava/lang/Object;
.source "IdlePubViewWrap.java"


# static fields
.field private static final LOG_PREFIX:Ljava/lang/String; = "IdlePubViewWrap"


# instance fields
.field mId:I

.field mPackageName:Ljava/lang/String;

.field mView:Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/htc/lockscreen/idlescreen/pub/IdlePubView;)V
    .locals 0
    .parameter "packageName"
    .parameter "id"
    .parameter "view"

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;->mPackageName:Ljava/lang/String;

    .line 20
    iput p2, p0, Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;->mId:I

    .line 21
    iput-object p3, p0, Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;->mView:Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;

    .line 22
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;->mId:I

    return v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getView()Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;->mView:Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;

    return-object v0
.end method

.method public onRemove(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "result"

    .prologue
    .line 62
    monitor-enter p0

    .line 63
    :try_start_0
    const-string v1, "IdlePubViewWrap"

    const-string v2, "onRemove~"

    invoke-static {v1, v2}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance v0, Landroid/content/Intent;

    const-string v1, "HtcLockScreen_DISMISS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, p1, v0}, Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;->sendIntentToCategory(Landroid/content/Context;Landroid/content/Intent;)V

    .line 67
    monitor-exit p0

    .line 68
    return-void

    .line 67
    .end local v0           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onUpdate(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "result"

    .prologue
    .line 25
    monitor-enter p0

    .line 26
    :try_start_0
    const-string v1, "IdlePubViewWrap"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpdate~ result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    new-instance v0, Landroid/content/Intent;

    const-string v1, "HtcLockScreen_ADD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 28
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "HtcLockScreen_RESULT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 29
    invoke-virtual {p0, p1, v0}, Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;->sendIntentToCategory(Landroid/content/Context;Landroid/content/Intent;)V

    .line 30
    monitor-exit p0

    .line 31
    return-void

    .line 30
    .end local v0           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendIntentToCategory(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, category:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 36
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 39
    :cond_0
    return-void
.end method
