.class Lcom/htc/sync/provider/weather/Receiver$11;
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
    .line 319
    iput-object p1, p0, Lcom/htc/sync/provider/weather/Receiver$11;->this$0:Lcom/htc/sync/provider/weather/Receiver;

    iput-object p2, p0, Lcom/htc/sync/provider/weather/Receiver$11;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 321
    const-string v1, "WSP"

    const-string v2, "[Receiver] EVENT - CANCEL_ALL_REQUEST"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/sync/provider/weather/Receiver$11;->val$context:Landroid/content/Context;

    const-class v2, Lcom/htc/sync/provider/weather/SyncService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 323
    .local v0, i:Landroid/content/Intent;
    const-string v1, "categoryName"

    const-string v2, "cancel_all_request"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    iget-object v1, p0, Lcom/htc/sync/provider/weather/Receiver$11;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 325
    return-void
.end method
