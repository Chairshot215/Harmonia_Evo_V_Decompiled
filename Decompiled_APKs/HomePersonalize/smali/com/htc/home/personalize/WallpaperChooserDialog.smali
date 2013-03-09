.class public Lcom/htc/home/personalize/WallpaperChooserDialog;
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
.field mIsLiveWallPaper:Z

.field mIsPickLockScreenWallpaper:Z

.field mItemAdapter:Lcom/htc/home/personalize/AddWallpaperAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Lcom/htc/app/HtcAlertActivity;-><init>()V

    .line 21
    iput-boolean v0, p0, Lcom/htc/home/personalize/WallpaperChooserDialog;->mIsPickLockScreenWallpaper:Z

    .line 22
    iput-boolean v0, p0, Lcom/htc/home/personalize/WallpaperChooserDialog;->mIsLiveWallPaper:Z

    return-void
.end method

.method private initialDialog()V
    .locals 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperChooserDialog;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 36
    .local v0, p:Lcom/htc/app/HtcAlertController$AlertParams;
    const v1, 0x7f090082

    invoke-virtual {p0, v1}, Lcom/htc/home/personalize/WallpaperChooserDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 38
    new-instance v1, Lcom/htc/home/personalize/AddWallpaperAdapter;

    iget-boolean v2, p0, Lcom/htc/home/personalize/WallpaperChooserDialog;->mIsPickLockScreenWallpaper:Z

    invoke-direct {v1, p0, v2}, Lcom/htc/home/personalize/AddWallpaperAdapter;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/htc/home/personalize/WallpaperChooserDialog;->mItemAdapter:Lcom/htc/home/personalize/AddWallpaperAdapter;

    .line 39
    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperChooserDialog;->mItemAdapter:Lcom/htc/home/personalize/AddWallpaperAdapter;

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 40
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    .line 41
    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 42
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperChooserDialog;->setupAlert()V

    .line 43
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 119
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 120
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 126
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/app/HtcAlertActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 122
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperChooserDialog;->finish()V

    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v6, 0x0

    .line 46
    iget-object v5, p0, Lcom/htc/home/personalize/WallpaperChooserDialog;->mItemAdapter:Lcom/htc/home/personalize/AddWallpaperAdapter;

    invoke-virtual {v5, p2}, Lcom/htc/home/personalize/AddWallpaperAdapter;->GetMatchResolveInfo(I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 47
    .local v2, matchApp:Landroid/content/pm/ResolveInfo;
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 48
    .local v1, filename:Ljava/lang/String;
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 49
    .local v0, activityname:Ljava/lang/String;
    const-string v5, "com.htc.home.personalize"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 50
    const/4 p2, 0x0

    .line 61
    :goto_0
    packed-switch p2, :pswitch_data_0

    .line 106
    :goto_1
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperChooserDialog;->finish()V

    .line 107
    return-void

    .line 51
    :cond_0
    const-string v5, "com.htc.album"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 52
    const/4 p2, 0x1

    goto :goto_0

    .line 53
    :cond_1
    const-string v5, "com.android.wallpaper.livepicker"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 54
    const/4 p2, 0x2

    goto :goto_0

    .line 56
    :cond_2
    const/4 p2, 0x3

    goto :goto_0

    .line 64
    :pswitch_0
    iget-boolean v5, p0, Lcom/htc/home/personalize/WallpaperChooserDialog;->mIsPickLockScreenWallpaper:Z

    if-nez v5, :cond_3

    .line 65
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    .local v3, pickIntent:Landroid/content/Intent;
    const-string v5, "CAN_RESET_DEFAULT"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 67
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.htc.album"

    const-string v7, "com.htc.album.PickWallpaper"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 69
    invoke-virtual {p0, v3}, Lcom/htc/home/personalize/WallpaperChooserDialog;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 71
    .end local v3           #pickIntent:Landroid/content/Intent;
    :cond_3
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.SET_LOCKSCREEN"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .restart local v3       #pickIntent:Landroid/content/Intent;
    const-string v5, "CAN_RESET_DEFAULT"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 73
    invoke-virtual {p0, v3}, Lcom/htc/home/personalize/WallpaperChooserDialog;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 80
    .end local v3           #pickIntent:Landroid/content/Intent;
    :pswitch_1
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .local v4, pickWallpaper:Landroid/content/Intent;
    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 82
    iget-boolean v5, p0, Lcom/htc/home/personalize/WallpaperChooserDialog;->mIsPickLockScreenWallpaper:Z

    if-eqz v5, :cond_4

    .line 83
    const-string v5, "IS_SELECT_LOCKSCREEN"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 85
    :cond_4
    sget-boolean v5, Lcom/htc/home/personalize/config/SettingUtil;->localLOGD:Z

    if-eqz v5, :cond_5

    .line 86
    const-string v5, "Rosie"

    const-string v6, "[ATS][com.htc.launcher][press_gallery][successful]"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_5
    invoke-virtual {p0, v4}, Lcom/htc/home/personalize/WallpaperChooserDialog;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 91
    .end local v4           #pickWallpaper:Landroid/content/Intent;
    :pswitch_2
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    .restart local v4       #pickWallpaper:Landroid/content/Intent;
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.android.wallpaper.livepicker"

    const-string v7, "com.android.wallpaper.livepicker.LiveWallpaperListActivity"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 94
    invoke-virtual {p0, v4}, Lcom/htc/home/personalize/WallpaperChooserDialog;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 98
    .end local v4           #pickWallpaper:Landroid/content/Intent;
    :pswitch_3
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .restart local v4       #pickWallpaper:Landroid/content/Intent;
    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 101
    invoke-virtual {p0, v4}, Lcom/htc/home/personalize/WallpaperChooserDialog;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 27
    invoke-virtual {p0}, Lcom/htc/home/personalize/WallpaperChooserDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 28
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "IS_SELECT_LOCKSCREEN"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/home/personalize/WallpaperChooserDialog;->mIsPickLockScreenWallpaper:Z

    .line 29
    const-string v1, "IS_LIVE_WALLPAPER"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/home/personalize/WallpaperChooserDialog;->mIsLiveWallPaper:Z

    .line 30
    invoke-super {p0, p1}, Lcom/htc/app/HtcAlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-direct {p0}, Lcom/htc/home/personalize/WallpaperChooserDialog;->initialDialog()V

    .line 32
    return-void
.end method
