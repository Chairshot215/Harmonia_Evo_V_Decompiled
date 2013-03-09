.class Lcom/htc/lockscreen/app/LSState$ImsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LSState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/app/LSState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/app/LSState;


# direct methods
.method private constructor <init>(Lcom/htc/lockscreen/app/LSState;)V
    .locals 0
    .parameter

    .prologue
    .line 413
    iput-object p1, p0, Lcom/htc/lockscreen/app/LSState$ImsBroadcastReceiver;->this$0:Lcom/htc/lockscreen/app/LSState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/lockscreen/app/LSState;Lcom/htc/lockscreen/app/LSState$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 413
    invoke-direct {p0, p1}, Lcom/htc/lockscreen/app/LSState$ImsBroadcastReceiver;-><init>(Lcom/htc/lockscreen/app/LSState;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v3, 0x8

    .line 416
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState$ImsBroadcastReceiver;->this$0:Lcom/htc/lockscreen/app/LSState;

    const-string v1, "IMS_REG_STATUS"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    #setter for: Lcom/htc/lockscreen/app/LSState;->mImsRegistered:Z
    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/LSState;->access$1002(Lcom/htc/lockscreen/app/LSState;Z)Z

    .line 417
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState$ImsBroadcastReceiver;->this$0:Lcom/htc/lockscreen/app/LSState;

    #getter for: Lcom/htc/lockscreen/app/LSState;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/lockscreen/app/LSState;->access$500(Lcom/htc/lockscreen/app/LSState;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/htc/lockscreen/app/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 418
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState$ImsBroadcastReceiver;->this$0:Lcom/htc/lockscreen/app/LSState;

    #getter for: Lcom/htc/lockscreen/app/LSState;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/lockscreen/app/LSState;->access$500(Lcom/htc/lockscreen/app/LSState;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/htc/lockscreen/app/util/MyUtil;->sendMessage(Landroid/os/Handler;I)V

    .line 419
    return-void
.end method
