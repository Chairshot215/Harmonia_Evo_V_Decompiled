.class Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$4;
.super Landroid/content/BroadcastReceiver;
.source "PasswordUnlockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->registerIME()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;


# direct methods
.method constructor <init>(Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;)V
    .locals 0
    .parameter

    .prologue
    .line 488
    iput-object p1, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$4;->this$0:Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    .line 492
    const-string v1, "SIP_HEIGHT"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 493
    .local v0, sipHeight:I
    if-nez v0, :cond_0

    .line 495
    iget-object v1, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$4;->this$0:Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;

    iput-boolean v2, v1, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mIsSipExist:Z

    .line 496
    iget-object v1, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$4;->this$0:Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;

    #getter for: Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->access$100(Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 497
    iget-object v1, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$4;->this$0:Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;

    #getter for: Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->access$100(Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 501
    :goto_0
    return-void

    .line 499
    :cond_0
    iget-object v1, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$4;->this$0:Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mIsSipExist:Z

    goto :goto_0
.end method
