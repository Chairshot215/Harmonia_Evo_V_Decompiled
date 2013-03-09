.class Lcom/htc/dockmode/wallpaper/WallpaperChooserDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "WallpaperChooserDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dockmode/wallpaper/WallpaperChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dockmode/wallpaper/WallpaperChooserDialog;


# direct methods
.method constructor <init>(Lcom/htc/dockmode/wallpaper/WallpaperChooserDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/htc/dockmode/wallpaper/WallpaperChooserDialog$1;->this$0:Lcom/htc/dockmode/wallpaper/WallpaperChooserDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 113
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, action:Ljava/lang/String;
    sget-object v1, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/htc/dockmode/wallpaper/WallpaperChooserDialog$1;->this$0:Lcom/htc/dockmode/wallpaper/WallpaperChooserDialog;

    invoke-virtual {v1}, Lcom/htc/dockmode/wallpaper/WallpaperChooserDialog;->releaseReceiver()V

    .line 116
    iget-object v1, p0, Lcom/htc/dockmode/wallpaper/WallpaperChooserDialog$1;->this$0:Lcom/htc/dockmode/wallpaper/WallpaperChooserDialog;

    invoke-virtual {v1}, Lcom/htc/dockmode/wallpaper/WallpaperChooserDialog;->finish()V

    .line 118
    :cond_0
    return-void
.end method
