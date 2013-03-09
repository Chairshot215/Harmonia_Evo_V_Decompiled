.class Lcom/htc/sync/provider/weather/Receiver$9;
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

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/htc/sync/provider/weather/Receiver;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/htc/sync/provider/weather/Receiver$9;->this$0:Lcom/htc/sync/provider/weather/Receiver;

    iput-object p2, p0, Lcom/htc/sync/provider/weather/Receiver$9;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/htc/sync/provider/weather/Receiver$9;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 279
    iget-object v3, p0, Lcom/htc/sync/provider/weather/Receiver$9;->val$intent:Landroid/content/Intent;

    const-string v4, "intent_extra"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 280
    .local v1, extraBundle:Landroid/os/Bundle;
    const-string v3, "type"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, type:Ljava/lang/String;
    const-string v3, "authority"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, authority:Ljava/lang/String;
    const-string v3, "WSP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Receiver] EVENT - AUTO SYNC FLAG CHANGED (Account Manager), type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", authority: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const-string v3, "com.htc.sync.provider.weather"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "com.htc.sync.provider.weather"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 286
    iget-object v3, p0, Lcom/htc/sync/provider/weather/Receiver$9;->val$context:Landroid/content/Context;

    #calls: Lcom/htc/sync/provider/weather/Receiver;->sendAutoSyncAgentIntent(Landroid/content/Context;)V
    invoke-static {v3}, Lcom/htc/sync/provider/weather/Receiver;->access$000(Landroid/content/Context;)V

    .line 288
    :cond_0
    return-void
.end method
