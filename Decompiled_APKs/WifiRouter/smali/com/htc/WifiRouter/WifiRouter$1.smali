.class Lcom/htc/WifiRouter/WifiRouter$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/WifiRouter/WifiRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/WifiRouter/WifiRouter;


# direct methods
.method constructor <init>(Lcom/htc/WifiRouter/WifiRouter;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/htc/WifiRouter/WifiRouter$1;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 127
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.net.conn.HTC_PERMITTED_TETHER_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    const-string v1, "WifiRouter"

    const-string v2, "receive mhs status change"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter$1;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #calls: Lcom/htc/WifiRouter/WifiRouter;->checkMHSStatus()V
    invoke-static {v1}, Lcom/htc/WifiRouter/WifiRouter;->access$000(Lcom/htc/WifiRouter/WifiRouter;)V

    .line 132
    :cond_0
    return-void
.end method
