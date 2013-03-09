.class Lcom/htc/idlescreen/base/setting/SettingService$MyBGHandler;
.super Landroid/os/Handler;
.source "SettingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/setting/SettingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyBGHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/idlescreen/base/setting/SettingService;


# direct methods
.method public constructor <init>(Lcom/htc/idlescreen/base/setting/SettingService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/htc/idlescreen/base/setting/SettingService$MyBGHandler;->this$0:Lcom/htc/idlescreen/base/setting/SettingService;

    .line 96
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 97
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 100
    const/4 v1, 0x0

    .line 101
    .local v1, startId:I
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 102
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 118
    :goto_0
    iget-object v3, p0, Lcom/htc/idlescreen/base/setting/SettingService$MyBGHandler;->this$0:Lcom/htc/idlescreen/base/setting/SettingService;

    invoke-virtual {v3, v1}, Lcom/htc/idlescreen/base/setting/SettingService;->stopSelfResult(I)Z

    .line 119
    return-void

    .line 104
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 105
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ActivityInfo;>;"
    invoke-static {}, Lcom/htc/idlescreen/base/setting/SettingDB;->getInstance()Lcom/htc/idlescreen/base/setting/SettingDB;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/idlescreen/base/setting/SettingService$MyBGHandler;->this$0:Lcom/htc/idlescreen/base/setting/SettingService;

    invoke-virtual {v3, v4, v0}, Lcom/htc/idlescreen/base/setting/SettingDB;->saveShortcutList(Landroid/content/Context;Ljava/util/List;)Z

    .line 106
    iget-object v3, p0, Lcom/htc/idlescreen/base/setting/SettingService$MyBGHandler;->this$0:Lcom/htc/idlescreen/base/setting/SettingService;

    #calls: Lcom/htc/idlescreen/base/setting/SettingService;->broadcastShortcutChanged()V
    invoke-static {v3}, Lcom/htc/idlescreen/base/setting/SettingService;->access$000(Lcom/htc/idlescreen/base/setting/SettingService;)V

    goto :goto_0

    .line 109
    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ActivityInfo;>;"
    :pswitch_1
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 110
    .local v2, visibility:I
    invoke-static {}, Lcom/htc/idlescreen/base/setting/SettingDB;->getInstance()Lcom/htc/idlescreen/base/setting/SettingDB;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/idlescreen/base/setting/SettingService$MyBGHandler;->this$0:Lcom/htc/idlescreen/base/setting/SettingService;

    invoke-virtual {v3, v4, v2}, Lcom/htc/idlescreen/base/setting/SettingDB;->saveShortcutVisibility(Landroid/content/Context;I)Z

    .line 111
    iget-object v3, p0, Lcom/htc/idlescreen/base/setting/SettingService$MyBGHandler;->this$0:Lcom/htc/idlescreen/base/setting/SettingService;

    #calls: Lcom/htc/idlescreen/base/setting/SettingService;->broadcastShortcutChanged()V
    invoke-static {v3}, Lcom/htc/idlescreen/base/setting/SettingService;->access$000(Lcom/htc/idlescreen/base/setting/SettingService;)V

    goto :goto_0

    .line 114
    .end local v2           #visibility:I
    :pswitch_2
    iget-object v3, p0, Lcom/htc/idlescreen/base/setting/SettingService$MyBGHandler;->this$0:Lcom/htc/idlescreen/base/setting/SettingService;

    #calls: Lcom/htc/idlescreen/base/setting/SettingService;->customizeSetting()V
    invoke-static {v3}, Lcom/htc/idlescreen/base/setting/SettingService;->access$100(Lcom/htc/idlescreen/base/setting/SettingService;)V

    goto :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
