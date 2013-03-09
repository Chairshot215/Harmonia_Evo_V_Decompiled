.class Lcom/htc/idlescreen/shortcut/ShortcutServicePreview$ShortcutEnginePreview;
.super Lcom/htc/idlescreen/shortcut/ShortcutService$ShortcutEngine;
.source "ShortcutServicePreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/shortcut/ShortcutServicePreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShortcutEnginePreview"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShortcutEnginePreview"


# instance fields
.field mReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Lcom/htc/idlescreen/shortcut/ShortcutServicePreview;


# direct methods
.method public constructor <init>(Lcom/htc/idlescreen/shortcut/ShortcutServicePreview;Lcom/htc/lockscreen/idlescreen/IdleScreenService;)V
    .locals 0
    .parameter
    .parameter "service"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/htc/idlescreen/shortcut/ShortcutServicePreview$ShortcutEnginePreview;->this$0:Lcom/htc/idlescreen/shortcut/ShortcutServicePreview;

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/htc/idlescreen/shortcut/ShortcutService$ShortcutEngine;-><init>(Lcom/htc/idlescreen/shortcut/ShortcutService;Lcom/htc/lockscreen/idlescreen/IdleScreenService;)V

    .line 26
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "surfaceHolderer"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/htc/idlescreen/shortcut/ShortcutService$ShortcutEngine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 30
    iget-object v1, p0, Lcom/htc/idlescreen/shortcut/ShortcutServicePreview$ShortcutEnginePreview;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 31
    new-instance v1, Lcom/htc/idlescreen/shortcut/ShortcutServicePreview$ShortcutEnginePreview$1;

    invoke-direct {v1, p0}, Lcom/htc/idlescreen/shortcut/ShortcutServicePreview$ShortcutEnginePreview$1;-><init>(Lcom/htc/idlescreen/shortcut/ShortcutServicePreview$ShortcutEnginePreview;)V

    iput-object v1, p0, Lcom/htc/idlescreen/shortcut/ShortcutServicePreview$ShortcutEnginePreview;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 42
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "idlescreen_wallpaper_update"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/htc/idlescreen/shortcut/ShortcutServicePreview$ShortcutEnginePreview;->mService:Lcom/htc/lockscreen/idlescreen/IdleScreenService;

    iget-object v2, p0, Lcom/htc/idlescreen/shortcut/ShortcutServicePreview$ShortcutEnginePreview;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 45
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/idlescreen/shortcut/ShortcutServicePreview$ShortcutEnginePreview;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/htc/idlescreen/shortcut/ShortcutServicePreview$ShortcutEnginePreview;->mService:Lcom/htc/lockscreen/idlescreen/IdleScreenService;

    iget-object v1, p0, Lcom/htc/idlescreen/shortcut/ShortcutServicePreview$ShortcutEnginePreview;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/idlescreen/shortcut/ShortcutServicePreview$ShortcutEnginePreview;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 52
    :cond_0
    invoke-super {p0}, Lcom/htc/idlescreen/shortcut/ShortcutService$ShortcutEngine;->onDestroy()V

    .line 53
    return-void
.end method
