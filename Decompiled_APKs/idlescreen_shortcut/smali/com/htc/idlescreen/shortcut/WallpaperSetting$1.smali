.class Lcom/htc/idlescreen/shortcut/WallpaperSetting$1;
.super Landroid/os/Handler;
.source "WallpaperSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/idlescreen/shortcut/WallpaperSetting;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/idlescreen/shortcut/WallpaperSetting;


# direct methods
.method constructor <init>(Lcom/htc/idlescreen/shortcut/WallpaperSetting;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/htc/idlescreen/shortcut/WallpaperSetting$1;->this$0:Lcom/htc/idlescreen/shortcut/WallpaperSetting;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 73
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 78
    :goto_0
    return-void

    .line 75
    :pswitch_0
    iget-object v0, p0, Lcom/htc/idlescreen/shortcut/WallpaperSetting$1;->this$0:Lcom/htc/idlescreen/shortcut/WallpaperSetting;

    #calls: Lcom/htc/idlescreen/shortcut/WallpaperSetting;->updateWallpaper()V
    invoke-static {v0}, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->access$000(Lcom/htc/idlescreen/shortcut/WallpaperSetting;)V

    goto :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x10001
        :pswitch_0
    .end packed-switch
.end method
