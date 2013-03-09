.class Lcom/htc/WeatherWallpaper/WeatherWallpaperService$UIHandler;
.super Landroid/os/Handler;
.source "WeatherWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/WeatherWallpaper/WeatherWallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/WeatherWallpaper/WeatherWallpaperService;


# direct methods
.method private constructor <init>(Lcom/htc/WeatherWallpaper/WeatherWallpaperService;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService$UIHandler;->this$0:Lcom/htc/WeatherWallpaper/WeatherWallpaperService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/WeatherWallpaper/WeatherWallpaperService;Lcom/htc/WeatherWallpaper/WeatherWallpaperService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/htc/WeatherWallpaper/WeatherWallpaperService$UIHandler;-><init>(Lcom/htc/WeatherWallpaper/WeatherWallpaperService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 146
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 159
    const-string v1, "[WeatherOverlay]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 148
    :pswitch_0
    const-string v1, "[WeatherOverlay]"

    const-string v2, "time\'s up to kill process"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v1, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService$UIHandler;->this$0:Lcom/htc/WeatherWallpaper/WeatherWallpaperService;

    invoke-virtual {v1}, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->stopSelf()V

    goto :goto_0

    .line 153
    :pswitch_1
    const-string v1, "[WeatherOverlay]"

    const-string v2, "MSG_KILL_PROCESS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 155
    .local v0, pid:I
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 156
    sget-boolean v1, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->logFlag:Z

    if-eqz v1, :cond_0

    const-string v1, "[WeatherOverlay]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch -0xffffff8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
