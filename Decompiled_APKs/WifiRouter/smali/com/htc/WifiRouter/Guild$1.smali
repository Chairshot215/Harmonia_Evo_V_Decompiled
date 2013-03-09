.class Lcom/htc/WifiRouter/Guild$1;
.super Landroid/content/BroadcastReceiver;
.source "Guild.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/WifiRouter/Guild;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/WifiRouter/Guild;


# direct methods
.method constructor <init>(Lcom/htc/WifiRouter/Guild;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/htc/WifiRouter/Guild$1;->this$0:Lcom/htc/WifiRouter/Guild;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 34
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.net.hotspot.ASSOCLIST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    iget-object v1, p0, Lcom/htc/WifiRouter/Guild$1;->this$0:Lcom/htc/WifiRouter/Guild;

    invoke-virtual {v1}, Lcom/htc/WifiRouter/Guild;->finish()V

    .line 38
    :cond_0
    return-void
.end method
