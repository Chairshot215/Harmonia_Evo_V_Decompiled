.class public Lcom/htc/dockmode/wallpaper/WallpaperChooserDialog;
.super Lcom/htc/app/HtcAlertActivity;
.source "WallpaperChooserDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final WALLPAPER_ALBUMS:I = 0x1

.field private static final WALLPAPER_GALLERY:I = 0x0

.field private static final WALLPAPER_LIVEWALLPAPER:I = 0x2

.field private static final WALLPAPER_OTHER:I = 0x3


# instance fields
.field private final mDockReceiver:Landroid/content/BroadcastReceiver;

.field mItemAdapter:Lcom/htc/dockmode/wallpaper/AddWallpaperAdapter;

.field private mReceiverRegistered:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/htc/app/HtcAlertActivity;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperChooserDialog;->mReceiverRegistered:Z

    .line 110
    new-instance v0, Lcom/htc/dockmode/wallpaper/WallpaperChooserDialog$1;

    invoke-direct {v0, p0}, Lcom/htc/dockmode/wallpaper/WallpaperChooserDialog$1;-><init>(Lcom/htc/dockmode/wallpaper/WallpaperChooserDialog;)V

    iput-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperChooserDialog;->mDockReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private initReceiver()V
    .locals 2

    .prologue
    .line 98
    monitor-enter p0

    .line 99
    :try_start_0
    iget-boolean v1, p0, Lcom/htc/dockmode/wallpaper/WallpaperChooserDialog;->mReceiverRegistered:Z

    if-nez v1, :cond_0

    .line 101
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 102
    .local v0, dockfilter:Landroid/content/IntentFilter;
    sget-object v1, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/htc/dockmode/wallpaper/WallpaperChooserDialog;->mDockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/dockmode/wallpaper/WallpaperChooserDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 105
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/dockmode/wallpaper/WallpaperChooserDialog;->mReceiverRegistered:Z

    .line 107
    .end local v0           #dockfilter:Landroid/content/IntentFilter;
    :cond_0
    monitor-exit p0

    .line 108
    return-void

    .line 107
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private initialDialog()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperChooserDialog;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 39
    .local v0, p:Lcom/htc/app/HtcAlertController$AlertParams;
    const v1, 0x7f080018

    invoke-virtual {p0, v1}, Lcom/htc/dockmode/wallpaper/WallpaperChooserDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 42
    new-instance v1, Lcom/htc/dockmode/wallpaper/AddWallpaperAdapter;

    invoke-direct {v1, p0}, Lcom/htc/dockmode/wallpaper/AddWallpaperAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/dockmode/wallpaper/WallpaperChooserDialog;->mItemAdapter:Lcom/htc/dockmode/wallpaper/AddWallpaperAdapter;

    .line 43
    iget-object v1, p0, Lcom/htc/dockmode/wallpaper/WallpaperChooserDialog;->mItemAdapter:Lcom/htc/dockmode/wallpaper/AddWallpaperAdapter;

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 44
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    .line 45
    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 46
    invoke-virtual {p0}, Lcom/htc/dockmode/wallpaper/WallpaperChooserDialog;->setupAlert()V

    .line 47
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 140
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 141
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 147
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/app/HtcAlertActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 143
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/dockmode/wallpaper/WallpaperChooserDialog;->finish()V

    goto :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 51
    iget-object v5, p0, Lcom/htc/dockmode/wallpaper/WallpaperChooserDialog;->mItemAdapter:Lcom/htc/dockmode/wallpaper/AddWallpaperAdapter;

    invoke-virtual {v5, p2}, Lcom/htc/dockmode/wallpaper/AddWallpaperAdapter;->GetMatchResolveInfo(I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 52
    .local v2, matchApp:Landroid/content/pm/ResolveInfo;
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 53
    .local v1, filename:Ljava/lang/String;
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 54
    .local v0, activityname:Ljava/lang/String;
    const-string v5, "com.htc.home.personalize"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "com.htc.home.personalize.WallpaperPicker"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 55
    const/4 p2, 0x0

    .line 64
    :goto_0
    packed-switch p2, :pswitch_data_0

    .line 92
    :goto_1
    invoke-virtual {p0}, Lcom/htc/dockmode/wallpaper/WallpaperChooserDialog;->finish()V

    .line 93
    return-void

    .line 56
    :cond_0
    const-string v5, "com.htc.album"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 57
    const/4 p2, 0x1

    goto :goto_0

    .line 58
    :cond_1
    const-string v5, "com.htc.home.personalize"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "com.htc.home.personalize.WallpaperLivePicker"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 59
    const/4 p2, 0x2

    goto :goto_0

    .line 61
    :cond_2
    const/4 p2, 0x3

    goto :goto_0

    .line 66
    :pswitch_0
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.htc.intent.ACTION_PERSONALIZE_WALLPAPER"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    .local v4, pickWallpaper:Landroid/content/Intent;
    const-string v5, "EXTRA_CALL_FROM"

    const-string v6, "dock_mode"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    invoke-static {p0, v4}, Lcom/htc/dockmode/utils/ActivityUtil;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 73
    .end local v4           #pickWallpaper:Landroid/content/Intent;
    :pswitch_1
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.htc.intent.ACTION_PERSONALIZE_LIVEWALLPAPER"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    .local v3, pickLiveWallpaper:Landroid/content/Intent;
    const-string v5, "EXTRA_CALL_FROM"

    const-string v6, "dock_mode"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    invoke-static {p0, v3}, Lcom/htc/dockmode/utils/ActivityUtil;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 80
    .end local v3           #pickLiveWallpaper:Landroid/content/Intent;
    :pswitch_2
    const/4 v5, 0x1

    sput-boolean v5, Lcom/htc/dockmode/DeskDock;->isGalleryChooser:Z

    goto :goto_1

    .line 85
    :pswitch_3
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.htc.intent.ACTION_PERSONALIZE_WALLPAPER"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    .restart local v4       #pickWallpaper:Landroid/content/Intent;
    const-string v5, "EXTRA_CALL_FROM"

    const-string v6, "dock_mode"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    invoke-static {p0, v4}, Lcom/htc/dockmode/utils/ActivityUtil;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 64
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/htc/dockmode/wallpaper/WallpaperChooserDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 32
    .local v0, intent:Landroid/content/Intent;
    invoke-super {p0, p1}, Lcom/htc/app/HtcAlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-direct {p0}, Lcom/htc/dockmode/wallpaper/WallpaperChooserDialog;->initialDialog()V

    .line 34
    invoke-direct {p0}, Lcom/htc/dockmode/wallpaper/WallpaperChooserDialog;->initReceiver()V

    .line 35
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/htc/dockmode/wallpaper/WallpaperChooserDialog;->releaseReceiver()V

    .line 134
    invoke-super {p0}, Lcom/htc/app/HtcAlertActivity;->onDestroy()V

    .line 135
    return-void
.end method

.method protected releaseReceiver()V
    .locals 1

    .prologue
    .line 122
    monitor-enter p0

    .line 123
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperChooserDialog;->mReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperChooserDialog;->mDockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/dockmode/wallpaper/WallpaperChooserDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperChooserDialog;->mReceiverRegistered:Z

    .line 127
    :cond_0
    monitor-exit p0

    .line 128
    return-void

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
