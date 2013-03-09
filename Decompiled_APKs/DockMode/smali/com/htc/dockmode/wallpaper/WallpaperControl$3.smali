.class Lcom/htc/dockmode/wallpaper/WallpaperControl$3;
.super Ljava/lang/Object;
.source "WallpaperControl.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dockmode/wallpaper/WallpaperControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dockmode/wallpaper/WallpaperControl;


# direct methods
.method constructor <init>(Lcom/htc/dockmode/wallpaper/WallpaperControl;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl$3;->this$0:Lcom/htc/dockmode/wallpaper/WallpaperControl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    .line 152
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl$3;->this$0:Lcom/htc/dockmode/wallpaper/WallpaperControl;

    #getter for: Lcom/htc/dockmode/wallpaper/WallpaperControl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/dockmode/wallpaper/WallpaperControl;->access$500(Lcom/htc/dockmode/wallpaper/WallpaperControl;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/htc/dockmode/wallpaper/WallpaperChooserDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    .local v0, pickIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl$3;->this$0:Lcom/htc/dockmode/wallpaper/WallpaperControl;

    #getter for: Lcom/htc/dockmode/wallpaper/WallpaperControl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/dockmode/wallpaper/WallpaperControl;->access$500(Lcom/htc/dockmode/wallpaper/WallpaperControl;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/htc/dockmode/utils/ActivityUtil;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    .line 154
    const/4 v1, 0x1

    return v1
.end method
