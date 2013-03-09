.class Lcom/htc/lockscreen/app/LSState$SDCardReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LSState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/app/LSState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SDCardReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/app/LSState;


# direct methods
.method private constructor <init>(Lcom/htc/lockscreen/app/LSState;)V
    .locals 0
    .parameter

    .prologue
    .line 395
    iput-object p1, p0, Lcom/htc/lockscreen/app/LSState$SDCardReceiver;->this$0:Lcom/htc/lockscreen/app/LSState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/lockscreen/app/LSState;Lcom/htc/lockscreen/app/LSState$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-direct {p0, p1}, Lcom/htc/lockscreen/app/LSState$SDCardReceiver;-><init>(Lcom/htc/lockscreen/app/LSState;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 398
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 401
    iget-object v1, p0, Lcom/htc/lockscreen/app/LSState$SDCardReceiver;->this$0:Lcom/htc/lockscreen/app/LSState;

    invoke-virtual {v1}, Lcom/htc/lockscreen/app/LSState;->isShow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 402
    iget-object v1, p0, Lcom/htc/lockscreen/app/LSState$SDCardReceiver;->this$0:Lcom/htc/lockscreen/app/LSState;

    invoke-virtual {v1}, Lcom/htc/lockscreen/app/LSState;->pokeWakeLock()V

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    iget-object v1, p0, Lcom/htc/lockscreen/app/LSState$SDCardReceiver;->this$0:Lcom/htc/lockscreen/app/LSState;

    invoke-virtual {v1}, Lcom/htc/lockscreen/app/LSState;->isShow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 407
    iget-object v1, p0, Lcom/htc/lockscreen/app/LSState$SDCardReceiver;->this$0:Lcom/htc/lockscreen/app/LSState;

    invoke-virtual {v1}, Lcom/htc/lockscreen/app/LSState;->pokeWakeLock()V

    goto :goto_0
.end method
