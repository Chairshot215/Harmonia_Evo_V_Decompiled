.class Lcom/htc/lockscreen/app/ctrl/MusicCtrl$SDCardReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MusicCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/app/ctrl/MusicCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SDCardReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/app/ctrl/MusicCtrl;


# direct methods
.method private constructor <init>(Lcom/htc/lockscreen/app/ctrl/MusicCtrl;)V
    .locals 0
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl$SDCardReceiver;->this$0:Lcom/htc/lockscreen/app/ctrl/MusicCtrl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/lockscreen/app/ctrl/MusicCtrl;Lcom/htc/lockscreen/app/ctrl/MusicCtrl$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 230
    invoke-direct {p0, p1}, Lcom/htc/lockscreen/app/ctrl/MusicCtrl$SDCardReceiver;-><init>(Lcom/htc/lockscreen/app/ctrl/MusicCtrl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v5, 0x3ea

    .line 233
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, action:Ljava/lang/String;
    const/4 v1, -0x1

    .line 235
    .local v1, flag:I
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    const-string v2, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 240
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    iget-object v2, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl$SDCardReceiver;->this$0:Lcom/htc/lockscreen/app/ctrl/MusicCtrl;

    iget-object v2, v2, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    invoke-static {v2, v5}, Lcom/htc/lockscreen/app/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 244
    iget-object v2, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl$SDCardReceiver;->this$0:Lcom/htc/lockscreen/app/ctrl/MusicCtrl;

    iget-object v2, v2, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x12c

    invoke-static {v2, v5, v3, v4}, Lcom/htc/lockscreen/app/util/MyUtil;->sendMessage(Landroid/os/Handler;IJ)V

    goto :goto_0
.end method
