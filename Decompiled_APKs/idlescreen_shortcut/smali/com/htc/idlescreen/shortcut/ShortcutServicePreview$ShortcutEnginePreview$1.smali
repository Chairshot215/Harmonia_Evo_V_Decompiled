.class Lcom/htc/idlescreen/shortcut/ShortcutServicePreview$ShortcutEnginePreview$1;
.super Landroid/content/BroadcastReceiver;
.source "ShortcutServicePreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/idlescreen/shortcut/ShortcutServicePreview$ShortcutEnginePreview;->onCreate(Landroid/view/SurfaceHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/idlescreen/shortcut/ShortcutServicePreview$ShortcutEnginePreview;


# direct methods
.method constructor <init>(Lcom/htc/idlescreen/shortcut/ShortcutServicePreview$ShortcutEnginePreview;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/htc/idlescreen/shortcut/ShortcutServicePreview$ShortcutEnginePreview$1;->this$1:Lcom/htc/idlescreen/shortcut/ShortcutServicePreview$ShortcutEnginePreview;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 36
    const-string v1, "ShortcutEnginePreview"

    const-string v2, "preview update"

    invoke-static {v1, v2}, Lcom/htc/idlescreen/shortcut/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v1, "idlescreen_extra_wallpaper_type"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 38
    .local v0, type:I
    invoke-static {}, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->getInstance()Lcom/htc/idlescreen/shortcut/WallpaperSetting;

    move-result-object v1

    invoke-virtual {v1, p1, v0, v3}, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->saveWallpaperType(Landroid/content/Context;IZ)V

    .line 39
    return-void
.end method
