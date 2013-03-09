.class public Lcom/htc/dockmode/DeskDock;
.super Lcom/htc/dockmode/utils/MultiInit;
.source "DeskDock.java"


# static fields
.field public static final BLUETOOTH_CONTROL_INDEX:I = 0x4

.field public static final BUTTON_CONTROL_INDEX:I = 0x3

.field public static final CLOCK_CONTROL_INDEX:I = 0x1

.field public static final HTC_WALLPAPER_REQUEST_CODE:I = 0x3e9

.field private static final MENU_SETTING_ID:I = 0x2711

.field private static final MENU_SHORTCUT_ID:I = 0x2713

.field private static final MENU_WALLPAPER_ID:I = 0x2712

.field public static final MUSIC_CONTROL_INDEX:I = 0x5

.field public static final SAVER_CONTROL_INDEX:I = 0x2

.field private static final TAG:Ljava/lang/String; = null

.field public static final WALLPAPER_CONTROL_INDEX:I = 0x6

.field public static final WEATHER_CONTROL_INDEX:I

.field public static isGalleryChooser:Z

.field private static final localLOGV:Z


# instance fields
.field private mControlList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/dockmode/utils/ControlInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/htc/dockmode/DeskDock;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/dockmode/DeskDock;->TAG:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/dockmode/DeskDock;->isGalleryChooser:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/htc/dockmode/utils/MultiInit;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/dockmode/DeskDock;->mControlList:Ljava/util/ArrayList;

    return-void
.end method

.method private startGalleryCrop()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 126
    new-instance v1, Ljava/io/File;

    const-string v4, "/mnt/sdcard/.data/dockmode"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    .local v1, folder:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 128
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 130
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    .local v0, callPicker:Landroid/content/Intent;
    const-string v4, "image/*"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const-string v4, "crop"

    const-string v5, "true"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    new-instance v2, Ljava/io/File;

    const-string v4, "/mnt/sdcard/.data/dockmode/wallpaper.png"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    .local v2, output:Ljava/io/File;
    const-string v4, "output"

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 137
    const-string v4, "outputFormat"

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 139
    invoke-virtual {p0}, Lcom/htc/dockmode/DeskDock;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 140
    .local v3, res:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v6, :cond_2

    .line 141
    const-string v4, "aspectX"

    invoke-virtual {p0}, Lcom/htc/dockmode/DeskDock;->getWallpaperDesiredMinimumWidth()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 142
    const-string v4, "aspectY"

    invoke-virtual {p0}, Lcom/htc/dockmode/DeskDock;->getWallpaperDesiredMinimumHeight()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 143
    const-string v4, "outputX"

    invoke-virtual {p0}, Lcom/htc/dockmode/DeskDock;->getWallpaperDesiredMinimumWidth()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 144
    const-string v4, "outputY"

    invoke-virtual {p0}, Lcom/htc/dockmode/DeskDock;->getWallpaperDesiredMinimumHeight()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 152
    :cond_1
    :goto_0
    const-string v4, "scale"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 153
    const-string v4, "scaleUpIfNeeded"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 155
    const-string v4, "noFaceDetection"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 156
    const/16 v4, 0x3e9

    invoke-static {p0, v0, v4}, Lcom/htc/dockmode/utils/ActivityUtil;->startActivityForResultSafely(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 158
    return-void

    .line 145
    :cond_2
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 146
    const-string v4, "aspectY"

    invoke-virtual {p0}, Lcom/htc/dockmode/DeskDock;->getWallpaperDesiredMinimumWidth()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 147
    const-string v4, "aspectX"

    invoke-virtual {p0}, Lcom/htc/dockmode/DeskDock;->getWallpaperDesiredMinimumHeight()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 148
    const-string v4, "outputY"

    invoke-virtual {p0}, Lcom/htc/dockmode/DeskDock;->getWallpaperDesiredMinimumWidth()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 149
    const-string v4, "outputX"

    invoke-virtual {p0}, Lcom/htc/dockmode/DeskDock;->getWallpaperDesiredMinimumHeight()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 211
    iget-object v2, p0, Lcom/htc/dockmode/DeskDock;->mControlList:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/dockmode/utils/ControlInterface;

    .line 212
    .local v0, c:Lcom/htc/dockmode/utils/ControlInterface;
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/htc/dockmode/saver/SaverControl;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 213
    check-cast v1, Lcom/htc/dockmode/saver/SaverControl;

    .line 214
    .local v1, saverControl:Lcom/htc/dockmode/saver/SaverControl;
    invoke-virtual {v1}, Lcom/htc/dockmode/saver/SaverControl;->checkExitDimScreen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 215
    invoke-virtual {v1}, Lcom/htc/dockmode/saver/SaverControl;->resetDimTimer()V

    .line 218
    .end local v1           #saverControl:Lcom/htc/dockmode/saver/SaverControl;
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 222
    invoke-super {p0, p1}, Lcom/htc/dockmode/utils/MultiInit;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    :goto_0
    return v2

    .line 220
    :pswitch_0
    const/4 v2, 0x1

    goto :goto_0

    .line 218
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v7, -0x1

    .line 294
    const/16 v5, 0x3e9

    if-ne p1, v5, :cond_0

    if-ne p2, v7, :cond_0

    .line 296
    const-string v5, "data"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 297
    .local v3, cropBmp:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/htc/dockmode/DeskDock;->mControlList:Ljava/util/ArrayList;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/dockmode/utils/ControlInterface;

    .line 298
    .local v2, c:Lcom/htc/dockmode/utils/ControlInterface;
    if-eqz v2, :cond_0

    instance-of v5, v2, Lcom/htc/dockmode/wallpaper/WallpaperControl;

    if-eqz v5, :cond_0

    move-object v4, v2

    .line 299
    check-cast v4, Lcom/htc/dockmode/wallpaper/WallpaperControl;

    .line 300
    .local v4, wallpaperControl:Lcom/htc/dockmode/wallpaper/WallpaperControl;
    invoke-virtual {v4}, Lcom/htc/dockmode/wallpaper/WallpaperControl;->copyGalleryWallPaper()V

    .line 301
    invoke-virtual {v4}, Lcom/htc/dockmode/wallpaper/WallpaperControl;->setGalleryWallPaper()V

    .line 306
    .end local v2           #c:Lcom/htc/dockmode/utils/ControlInterface;
    .end local v3           #cropBmp:Landroid/graphics/Bitmap;
    .end local v4           #wallpaperControl:Lcom/htc/dockmode/wallpaper/WallpaperControl;
    :cond_0
    const/4 v5, 0x1

    if-ne p1, v5, :cond_1

    if-ne p2, v7, :cond_1

    .line 308
    const-string v5, "appinfo"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    .line 310
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    iget-object v5, p0, Lcom/htc/dockmode/DeskDock;->mControlList:Ljava/util/ArrayList;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/dockmode/utils/ControlInterface;

    .line 311
    .restart local v2       #c:Lcom/htc/dockmode/utils/ControlInterface;
    if-eqz v2, :cond_1

    instance-of v5, v2, Lcom/htc/dockmode/button/ButtonControl;

    if-eqz v5, :cond_1

    move-object v1, v2

    .line 312
    check-cast v1, Lcom/htc/dockmode/button/ButtonControl;

    .line 313
    .local v1, buttonControl:Lcom/htc/dockmode/button/ButtonControl;
    invoke-virtual {v1, v0}, Lcom/htc/dockmode/button/ButtonControl;->setShortcutbyLongClick(Landroid/content/pm/ActivityInfo;)V

    .line 317
    .end local v0           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v1           #buttonControl:Lcom/htc/dockmode/button/ButtonControl;
    .end local v2           #c:Lcom/htc/dockmode/utils/ControlInterface;
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "newConfig"

    .prologue
    .line 248
    invoke-super {p0, p1}, Lcom/htc/dockmode/utils/MultiInit;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 249
    iget-object v4, p0, Lcom/htc/dockmode/DeskDock;->mControlList:Ljava/util/ArrayList;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/dockmode/utils/ControlInterface;

    .line 250
    .local v0, c:Lcom/htc/dockmode/utils/ControlInterface;
    if-eqz v0, :cond_0

    instance-of v4, v0, Lcom/htc/dockmode/saver/SaverControl;

    if-eqz v4, :cond_0

    move-object v3, v0

    .line 251
    check-cast v3, Lcom/htc/dockmode/saver/SaverControl;

    .line 252
    .local v3, saverControl:Lcom/htc/dockmode/saver/SaverControl;
    invoke-virtual {v3}, Lcom/htc/dockmode/saver/SaverControl;->checkExitDimScreen()Z

    move-result v4

    if-nez v4, :cond_0

    .line 253
    invoke-virtual {v3}, Lcom/htc/dockmode/saver/SaverControl;->resetDimTimer()V

    .line 256
    .end local v3           #saverControl:Lcom/htc/dockmode/saver/SaverControl;
    :cond_0
    iget-object v4, p0, Lcom/htc/dockmode/DeskDock;->mControlList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/dockmode/utils/ControlInterface;

    .line 257
    .local v2, list:Lcom/htc/dockmode/utils/ControlInterface;
    invoke-interface {v2}, Lcom/htc/dockmode/utils/ControlInterface;->resetLayout()V

    goto :goto_0

    .line 259
    .end local v2           #list:Lcom/htc/dockmode/utils/ControlInterface;
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    .line 200
    const/16 v0, 0x2712

    const v1, 0x7f080016

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {}, Lcom/htc/dockmode/Constants;->drawable_icon_wallpaper()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 202
    const/16 v0, 0x2713

    const/4 v1, 0x1

    const v2, 0x7f080017

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {}, Lcom/htc/dockmode/Constants;->drawable_icon_shortcut()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 204
    const/16 v0, 0x2711

    const/4 v1, 0x2

    const v2, 0x7f080015

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {}, Lcom/htc/dockmode/Constants;->drawable_icon_menu()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 206
    invoke-super {p0, p1}, Lcom/htc/dockmode/utils/MultiInit;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDoCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const v6, 0x7f0a0054

    .line 64
    iget-object v0, p0, Lcom/htc/dockmode/DeskDock;->mControlList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-instance v2, Lcom/htc/dockmode/weather/WeatherControl;

    invoke-virtual {p0}, Lcom/htc/dockmode/DeskDock;->getUIHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/dockmode/DeskDock;->getNonUIHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4, v6}, Lcom/htc/dockmode/weather/WeatherControl;-><init>(Landroid/app/Activity;Landroid/os/Handler;Landroid/os/Handler;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/htc/dockmode/DeskDock;->mControlList:Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-instance v2, Lcom/htc/dockmode/clock/ClockControl;

    invoke-virtual {p0}, Lcom/htc/dockmode/DeskDock;->getUIHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/dockmode/DeskDock;->getNonUIHandler()Landroid/os/Handler;

    move-result-object v4

    const v5, 0x7f0a0007

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/htc/dockmode/clock/ClockControl;-><init>(Landroid/app/Activity;Landroid/os/Handler;Landroid/os/Handler;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lcom/htc/dockmode/DeskDock;->mControlList:Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-instance v2, Lcom/htc/dockmode/saver/SaverControl;

    invoke-virtual {p0}, Lcom/htc/dockmode/DeskDock;->getUIHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/dockmode/DeskDock;->getNonUIHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4, v6}, Lcom/htc/dockmode/saver/SaverControl;-><init>(Landroid/app/Activity;Landroid/os/Handler;Landroid/os/Handler;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/htc/dockmode/DeskDock;->mControlList:Ljava/util/ArrayList;

    const/4 v1, 0x3

    new-instance v2, Lcom/htc/dockmode/button/ButtonControl;

    invoke-virtual {p0}, Lcom/htc/dockmode/DeskDock;->getUIHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/dockmode/DeskDock;->getNonUIHandler()Landroid/os/Handler;

    move-result-object v4

    const/high16 v5, 0x7f0a

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/htc/dockmode/button/ButtonControl;-><init>(Landroid/app/Activity;Landroid/os/Handler;Landroid/os/Handler;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lcom/htc/dockmode/DeskDock;->mControlList:Ljava/util/ArrayList;

    const/4 v1, 0x4

    new-instance v2, Lcom/htc/dockmode/bluetooth/BluetoothControl;

    invoke-virtual {p0}, Lcom/htc/dockmode/DeskDock;->getUIHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/dockmode/DeskDock;->getNonUIHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/dockmode/bluetooth/BluetoothControl;-><init>(Landroid/app/Activity;Landroid/os/Handler;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/htc/dockmode/DeskDock;->mControlList:Ljava/util/ArrayList;

    const/4 v1, 0x5

    new-instance v2, Lcom/htc/dockmode/music/MusicControl;

    invoke-virtual {p0}, Lcom/htc/dockmode/DeskDock;->getUIHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/dockmode/DeskDock;->getNonUIHandler()Landroid/os/Handler;

    move-result-object v4

    const v5, 0x7f0a000b

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/htc/dockmode/music/MusicControl;-><init>(Landroid/app/Activity;Landroid/os/Handler;Landroid/os/Handler;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lcom/htc/dockmode/DeskDock;->mControlList:Ljava/util/ArrayList;

    const/4 v1, 0x6

    new-instance v2, Lcom/htc/dockmode/wallpaper/WallpaperControl;

    invoke-virtual {p0}, Lcom/htc/dockmode/DeskDock;->getUIHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/dockmode/DeskDock;->getNonUIHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4, v6}, Lcom/htc/dockmode/wallpaper/WallpaperControl;-><init>(Landroid/app/Activity;Landroid/os/Handler;Landroid/os/Handler;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 78
    return-void
.end method

.method public onDoDestroy()V
    .locals 3

    .prologue
    .line 191
    iget-object v2, p0, Lcom/htc/dockmode/DeskDock;->mControlList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dockmode/utils/ControlInterface;

    .line 192
    .local v1, list:Lcom/htc/dockmode/utils/ControlInterface;
    invoke-interface {v1}, Lcom/htc/dockmode/utils/ControlInterface;->onDoDestroy()V

    goto :goto_0

    .line 195
    .end local v1           #list:Lcom/htc/dockmode/utils/ControlInterface;
    :cond_0
    iget-object v2, p0, Lcom/htc/dockmode/DeskDock;->mControlList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 196
    return-void
.end method

.method public onDoInit1()V
    .locals 3

    .prologue
    .line 84
    iget-object v2, p0, Lcom/htc/dockmode/DeskDock;->mControlList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dockmode/utils/ControlInterface;

    .line 85
    .local v1, list:Lcom/htc/dockmode/utils/ControlInterface;
    invoke-interface {v1}, Lcom/htc/dockmode/utils/ControlInterface;->onDoInit1()V

    goto :goto_0

    .line 87
    .end local v1           #list:Lcom/htc/dockmode/utils/ControlInterface;
    :cond_0
    return-void
.end method

.method public onDoInit2()V
    .locals 3

    .prologue
    .line 105
    iget-object v2, p0, Lcom/htc/dockmode/DeskDock;->mControlList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dockmode/utils/ControlInterface;

    .line 106
    .local v1, list:Lcom/htc/dockmode/utils/ControlInterface;
    invoke-interface {v1}, Lcom/htc/dockmode/utils/ControlInterface;->onDoInit2()V

    goto :goto_0

    .line 108
    .end local v1           #list:Lcom/htc/dockmode/utils/ControlInterface;
    :cond_0
    return-void
.end method

.method public onDoPause()V
    .locals 3

    .prologue
    .line 164
    iget-object v2, p0, Lcom/htc/dockmode/DeskDock;->mControlList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dockmode/utils/ControlInterface;

    .line 165
    .local v1, list:Lcom/htc/dockmode/utils/ControlInterface;
    invoke-interface {v1}, Lcom/htc/dockmode/utils/ControlInterface;->onDoPause()V

    goto :goto_0

    .line 167
    .end local v1           #list:Lcom/htc/dockmode/utils/ControlInterface;
    :cond_0
    return-void
.end method

.method public onDoRefresh1()V
    .locals 3

    .prologue
    .line 93
    const v2, 0x7f030009

    invoke-virtual {p0, v2}, Lcom/htc/dockmode/DeskDock;->setContentView(I)V

    .line 94
    iget-object v2, p0, Lcom/htc/dockmode/DeskDock;->mControlList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dockmode/utils/ControlInterface;

    .line 95
    .local v1, list:Lcom/htc/dockmode/utils/ControlInterface;
    invoke-interface {v1}, Lcom/htc/dockmode/utils/ControlInterface;->onDoRefresh1()V

    goto :goto_0

    .line 97
    .end local v1           #list:Lcom/htc/dockmode/utils/ControlInterface;
    :cond_0
    const v2, 0x7f0a0054

    invoke-virtual {p0, v2}, Lcom/htc/dockmode/DeskDock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/dockmode/widget/InterceptTouchView;

    invoke-virtual {v2, p0}, Lcom/htc/dockmode/widget/InterceptTouchView;->setDeskDock(Lcom/htc/dockmode/DeskDock;)V

    .line 99
    return-void
.end method

.method public onDoRemoveMessages()V
    .locals 3

    .prologue
    .line 182
    iget-object v2, p0, Lcom/htc/dockmode/DeskDock;->mControlList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dockmode/utils/ControlInterface;

    .line 183
    .local v1, list:Lcom/htc/dockmode/utils/ControlInterface;
    invoke-interface {v1}, Lcom/htc/dockmode/utils/ControlInterface;->onDoRemoveMessages()V

    goto :goto_0

    .line 185
    .end local v1           #list:Lcom/htc/dockmode/utils/ControlInterface;
    :cond_0
    return-void
.end method

.method public onDoResume()V
    .locals 3

    .prologue
    .line 114
    sget-boolean v2, Lcom/htc/dockmode/DeskDock;->isGalleryChooser:Z

    if-eqz v2, :cond_0

    .line 115
    const/4 v2, 0x0

    sput-boolean v2, Lcom/htc/dockmode/DeskDock;->isGalleryChooser:Z

    .line 116
    invoke-direct {p0}, Lcom/htc/dockmode/DeskDock;->startGalleryCrop()V

    .line 118
    :cond_0
    iget-object v2, p0, Lcom/htc/dockmode/DeskDock;->mControlList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dockmode/utils/ControlInterface;

    .line 119
    .local v1, list:Lcom/htc/dockmode/utils/ControlInterface;
    invoke-interface {v1}, Lcom/htc/dockmode/utils/ControlInterface;->onDoResume()V

    goto :goto_0

    .line 121
    .end local v1           #list:Lcom/htc/dockmode/utils/ControlInterface;
    :cond_1
    return-void
.end method

.method public onDoStop()V
    .locals 3

    .prologue
    .line 173
    iget-object v2, p0, Lcom/htc/dockmode/DeskDock;->mControlList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dockmode/utils/ControlInterface;

    .line 174
    .local v1, list:Lcom/htc/dockmode/utils/ControlInterface;
    invoke-interface {v1}, Lcom/htc/dockmode/utils/ControlInterface;->onDoStop()V

    goto :goto_0

    .line 176
    .end local v1           #list:Lcom/htc/dockmode/utils/ControlInterface;
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 227
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 243
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/dockmode/utils/MultiInit;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3

    .line 229
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/htc/dockmode/DeskDockSettings;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 230
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/htc/dockmode/utils/ActivityUtil;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 234
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/htc/dockmode/wallpaper/WallpaperChooserDialog;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 235
    .local v1, pickIntent:Landroid/content/Intent;
    invoke-static {p0, v1}, Lcom/htc/dockmode/utils/ActivityUtil;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 238
    .end local v1           #pickIntent:Landroid/content/Intent;
    :pswitch_2
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/htc/dockmode/shortcut/ShortcutSetting;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 239
    .local v2, shortIntent:Landroid/content/Intent;
    invoke-static {p0, v2}, Lcom/htc/dockmode/utils/ActivityUtil;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
