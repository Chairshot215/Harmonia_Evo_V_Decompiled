.class Lcom/htc/idlescreen/base/IdleState$MyEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IdleState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/IdleState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/idlescreen/base/IdleState;


# direct methods
.method private constructor <init>(Lcom/htc/idlescreen/base/IdleState;)V
    .locals 0
    .parameter

    .prologue
    .line 393
    iput-object p1, p0, Lcom/htc/idlescreen/base/IdleState$MyEventReceiver;->this$0:Lcom/htc/idlescreen/base/IdleState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/idlescreen/base/IdleState;Lcom/htc/idlescreen/base/IdleState$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 393
    invoke-direct {p0, p1}, Lcom/htc/idlescreen/base/IdleState$MyEventReceiver;-><init>(Lcom/htc/idlescreen/base/IdleState;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const-wide/16 v7, 0x12c

    const/4 v6, 0x2

    const/4 v4, 0x0

    .line 397
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 398
    .local v1, action:Ljava/lang/String;
    const-string v5, "android.intent.action.TIME_SET"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "android.intent.action.TIME_TICK"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 401
    :cond_0
    iget-object v4, p0, Lcom/htc/idlescreen/base/IdleState$MyEventReceiver;->this$0:Lcom/htc/idlescreen/base/IdleState;

    #getter for: Lcom/htc/idlescreen/base/IdleState;->mUIHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/idlescreen/base/IdleState;->access$400(Lcom/htc/idlescreen/base/IdleState;)Landroid/os/Handler;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 402
    iget-object v4, p0, Lcom/htc/idlescreen/base/IdleState$MyEventReceiver;->this$0:Lcom/htc/idlescreen/base/IdleState;

    #getter for: Lcom/htc/idlescreen/base/IdleState;->mUIHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/idlescreen/base/IdleState;->access$400(Lcom/htc/idlescreen/base/IdleState;)Landroid/os/Handler;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;I)V

    .line 430
    :cond_1
    :goto_0
    return-void

    .line 404
    :cond_2
    const-string v5, "com.htc.idlescreen.shortcut.changed"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 405
    const-string v4, "IdleState"

    const-string v5, "SHORTCUT_CHANGED_ACTION"

    invoke-static {v4, v5}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-object v4, p0, Lcom/htc/idlescreen/base/IdleState$MyEventReceiver;->this$0:Lcom/htc/idlescreen/base/IdleState;

    invoke-virtual {v4}, Lcom/htc/idlescreen/base/IdleState;->updateShortCut()V

    goto :goto_0

    .line 408
    :cond_3
    const-string v5, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 409
    const-string v4, "IdleState"

    const-string v5, "ACTION_RADIO_TECHNOLOGY_CHANGED"

    invoke-static {v4, v5}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string v4, "phoneName"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 411
    .local v3, phoneName:Ljava/lang/String;
    const/4 v2, 0x1

    .line 412
    .local v2, isCDMA:Z
    const-string v4, "GSM"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 413
    const-string v4, "IdleState"

    const-string v5, "ACTION_RADIO_TECHNOLOGY_CHANGED GSM"

    invoke-static {v4, v5}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const/4 v2, 0x0

    .line 417
    :cond_4
    iget-object v4, p0, Lcom/htc/idlescreen/base/IdleState$MyEventReceiver;->this$0:Lcom/htc/idlescreen/base/IdleState;

    #calls: Lcom/htc/idlescreen/base/IdleState;->updateShowSimFlag(Z)V
    invoke-static {v4, v2}, Lcom/htc/idlescreen/base/IdleState;->access$500(Lcom/htc/idlescreen/base/IdleState;Z)V

    .line 418
    iget-object v4, p0, Lcom/htc/idlescreen/base/IdleState$MyEventReceiver;->this$0:Lcom/htc/idlescreen/base/IdleState;

    invoke-virtual {v4, v7, v8}, Lcom/htc/idlescreen/base/IdleState;->updateViewMode(J)V

    goto :goto_0

    .line 420
    .end local v2           #isCDMA:Z
    .end local v3           #phoneName:Ljava/lang/String;
    :cond_5
    const-string v5, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 421
    const-string v5, "IdleState"

    const-string v6, "SPN_STRINGS_UPDATED_ACTION"

    invoke-static {v5, v6}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const-string v0, "unregistered_icc"

    .line 424
    .local v0, EXTRA_UNREGISTERED:Ljava/lang/String;
    const-string v5, "unregistered_icc"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 425
    iget-object v5, p0, Lcom/htc/idlescreen/base/IdleState$MyEventReceiver;->this$0:Lcom/htc/idlescreen/base/IdleState;

    const-string v6, "unregistered_icc"

    invoke-virtual {p2, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_6

    const/4 v4, 0x1

    :cond_6
    #setter for: Lcom/htc/idlescreen/base/IdleState;->mUICCRegistered:Z
    invoke-static {v5, v4}, Lcom/htc/idlescreen/base/IdleState;->access$602(Lcom/htc/idlescreen/base/IdleState;Z)Z

    .line 426
    const-string v4, "IdleState"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SPN_STRINGS_UPDATED_ACTION mUICCRegistered:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/idlescreen/base/IdleState$MyEventReceiver;->this$0:Lcom/htc/idlescreen/base/IdleState;

    #getter for: Lcom/htc/idlescreen/base/IdleState;->mUICCRegistered:Z
    invoke-static {v6}, Lcom/htc/idlescreen/base/IdleState;->access$600(Lcom/htc/idlescreen/base/IdleState;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    :cond_7
    iget-object v4, p0, Lcom/htc/idlescreen/base/IdleState$MyEventReceiver;->this$0:Lcom/htc/idlescreen/base/IdleState;

    invoke-virtual {v4, v7, v8}, Lcom/htc/idlescreen/base/IdleState;->updateViewMode(J)V

    goto/16 :goto_0
.end method
