.class Lcom/htc/dockmode/shortcut/ShortcutDBService$MyBGHandler;
.super Landroid/os/Handler;
.source "ShortcutDBService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dockmode/shortcut/ShortcutDBService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyBGHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dockmode/shortcut/ShortcutDBService;


# direct methods
.method public constructor <init>(Lcom/htc/dockmode/shortcut/ShortcutDBService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/htc/dockmode/shortcut/ShortcutDBService$MyBGHandler;->this$0:Lcom/htc/dockmode/shortcut/ShortcutDBService;

    .line 81
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 82
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 85
    const/4 v1, 0x0

    .line 86
    .local v1, startId:I
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 95
    :goto_0
    iget-object v2, p0, Lcom/htc/dockmode/shortcut/ShortcutDBService$MyBGHandler;->this$0:Lcom/htc/dockmode/shortcut/ShortcutDBService;

    invoke-virtual {v2, v1}, Lcom/htc/dockmode/shortcut/ShortcutDBService;->stopSelfResult(I)Z

    .line 96
    return-void

    .line 88
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 89
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ActivityInfo;>;"
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 90
    invoke-static {}, Lcom/htc/dockmode/shortcut/ShortcutDB;->getInstance()Lcom/htc/dockmode/shortcut/ShortcutDB;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/dockmode/shortcut/ShortcutDBService$MyBGHandler;->this$0:Lcom/htc/dockmode/shortcut/ShortcutDBService;

    invoke-virtual {v2, v3, v0}, Lcom/htc/dockmode/shortcut/ShortcutDB;->updateAppList(Landroid/content/Context;Ljava/util/List;)Z

    .line 92
    iget-object v2, p0, Lcom/htc/dockmode/shortcut/ShortcutDBService$MyBGHandler;->this$0:Lcom/htc/dockmode/shortcut/ShortcutDBService;

    #calls: Lcom/htc/dockmode/shortcut/ShortcutDBService;->broadcastShortcutChanged()V
    invoke-static {v2}, Lcom/htc/dockmode/shortcut/ShortcutDBService;->access$000(Lcom/htc/dockmode/shortcut/ShortcutDBService;)V

    goto :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
