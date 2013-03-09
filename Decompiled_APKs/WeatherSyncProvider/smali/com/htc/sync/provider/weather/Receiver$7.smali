.class Lcom/htc/sync/provider/weather/Receiver$7;
.super Ljava/lang/Object;
.source "Receiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sync/provider/weather/Receiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sync/provider/weather/Receiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/htc/sync/provider/weather/Receiver;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lcom/htc/sync/provider/weather/Receiver$7;->this$0:Lcom/htc/sync/provider/weather/Receiver;

    iput-object p2, p0, Lcom/htc/sync/provider/weather/Receiver$7;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 263
    const-string v0, "WSP"

    const-string v1, "[Receiver] EVENT - AUTO SYNC FREQUENCY CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v0, p0, Lcom/htc/sync/provider/weather/Receiver$7;->val$context:Landroid/content/Context;

    #calls: Lcom/htc/sync/provider/weather/Receiver;->sendAutoSyncAgentIntent(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/htc/sync/provider/weather/Receiver;->access$000(Landroid/content/Context;)V

    .line 265
    return-void
.end method
