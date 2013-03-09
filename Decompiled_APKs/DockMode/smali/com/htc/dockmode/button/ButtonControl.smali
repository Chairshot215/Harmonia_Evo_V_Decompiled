.class public Lcom/htc/dockmode/button/ButtonControl;
.super Ljava/lang/Object;
.source "ButtonControl.java"

# interfaces
.implements Lcom/htc/dockmode/utils/ControlInterface;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field public static final APP_SELECT:I = 0x1

.field private static final DESKDOCK_AUTO_RESUME:Ljava/lang/String; = "deskdock_auto_resume"

.field public static final KEY_APP_INFO:Ljava/lang/String; = "appinfo"

.field private static final TAG:Ljava/lang/String;

.field private static final localLOGV:Z


# instance fields
.field appList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/dockmode/shortcut/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private isOnDock:Z

.field private mActivity:Landroid/app/Activity;

.field private mAutoResume:Lcom/htc/dockmode/utils/AutoResume;

.field private mButton:[Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;

.field private mButtonEnabled:Z

.field private mButtonExit:Landroid/widget/Button;

.field public mButtonIndex:I

.field private mConnectMediaClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private final mDockReceiver:Landroid/content/BroadcastReceiver;

.field private mLayoutId:I

.field private mMediaChanged:Z

.field private mMediaIndex:I

.field private mMediaReceiver:Landroid/content/BroadcastReceiver;

.field private mMediaReceiverRegistered:Z

.field private mNonUIHandler:Landroid/os/Handler;

.field private mOnRecentApp:Ljava/lang/Runnable;

.field private mPhotoFrameClickListener:Landroid/view/View$OnClickListener;

.field private mReceiverRegistered:Z

.field private mResId:Lcom/htc/dockmode/button/ButtonRes;

.field private mShortcutReceiver:Landroid/content/BroadcastReceiver;

.field private mShortcutReceiverRegistered:Z

.field private mStopped:Z

.field private mStorageState:Ljava/lang/String;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/htc/dockmode/button/ButtonControl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/dockmode/button/ButtonControl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;Landroid/os/Handler;I)V
    .locals 2
    .parameter "activity"
    .parameter "uiHander"
    .parameter "nonUIHandler"
    .parameter "layoutId"

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;

    iput-object v0, p0, Lcom/htc/dockmode/button/ButtonControl;->mButton:[Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;

    .line 55
    iput-boolean v1, p0, Lcom/htc/dockmode/button/ButtonControl;->mReceiverRegistered:Z

    .line 56
    iput-boolean v1, p0, Lcom/htc/dockmode/button/ButtonControl;->mShortcutReceiverRegistered:Z

    .line 57
    iput-boolean v1, p0, Lcom/htc/dockmode/button/ButtonControl;->mMediaReceiverRegistered:Z

    .line 59
    iput-boolean v1, p0, Lcom/htc/dockmode/button/ButtonControl;->mStopped:Z

    .line 60
    iput-boolean v1, p0, Lcom/htc/dockmode/button/ButtonControl;->mMediaChanged:Z

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/dockmode/button/ButtonControl;->mButtonEnabled:Z

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/dockmode/button/ButtonControl;->mMediaIndex:I

    .line 69
    iput v1, p0, Lcom/htc/dockmode/button/ButtonControl;->mButtonIndex:I

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/dockmode/button/ButtonControl;->appList:Ljava/util/List;

    .line 74
    iput-boolean v1, p0, Lcom/htc/dockmode/button/ButtonControl;->isOnDock:Z

    .line 164
    new-instance v0, Lcom/htc/dockmode/button/ButtonControl$1;

    invoke-direct {v0, p0}, Lcom/htc/dockmode/button/ButtonControl$1;-><init>(Lcom/htc/dockmode/button/ButtonControl;)V

    iput-object v0, p0, Lcom/htc/dockmode/button/ButtonControl;->mOnRecentApp:Ljava/lang/Runnable;

    .line 321
    new-instance v0, Lcom/htc/dockmode/button/ButtonControl$2;

    invoke-direct {v0, p0}, Lcom/htc/dockmode/button/ButtonControl$2;-><init>(Lcom/htc/dockmode/button/ButtonControl;)V

    iput-object v0, p0, Lcom/htc/dockmode/button/ButtonControl;->mDockReceiver:Landroid/content/BroadcastReceiver;

    .line 339
    new-instance v0, Lcom/htc/dockmode/button/ButtonControl$3;

    invoke-direct {v0, p0}, Lcom/htc/dockmode/button/ButtonControl$3;-><init>(Lcom/htc/dockmode/button/ButtonControl;)V

    iput-object v0, p0, Lcom/htc/dockmode/button/ButtonControl;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    .line 389
    new-instance v0, Lcom/htc/dockmode/button/ButtonControl$4;

    invoke-direct {v0, p0}, Lcom/htc/dockmode/button/ButtonControl$4;-><init>(Lcom/htc/dockmode/button/ButtonControl;)V

    iput-object v0, p0, Lcom/htc/dockmode/button/ButtonControl;->mShortcutReceiver:Landroid/content/BroadcastReceiver;

    .line 417
    new-instance v0, Lcom/htc/dockmode/button/ButtonControl$5;

    invoke-direct {v0, p0}, Lcom/htc/dockmode/button/ButtonControl$5;-><init>(Lcom/htc/dockmode/button/ButtonControl;)V

    iput-object v0, p0, Lcom/htc/dockmode/button/ButtonControl;->mPhotoFrameClickListener:Landroid/view/View$OnClickListener;

    .line 423
    new-instance v0, Lcom/htc/dockmode/button/ButtonControl$6;

    invoke-direct {v0, p0}, Lcom/htc/dockmode/button/ButtonControl$6;-><init>(Lcom/htc/dockmode/button/ButtonControl;)V

    iput-object v0, p0, Lcom/htc/dockmode/button/ButtonControl;->mConnectMediaClickListener:Landroid/view/View$OnClickListener;

    .line 78
    iput-object p1, p0, Lcom/htc/dockmode/button/ButtonControl;->mActivity:Landroid/app/Activity;

    iput-object p1, p0, Lcom/htc/dockmode/button/ButtonControl;->mContext:Landroid/content/Context;

    .line 79
    iput-object p3, p0, Lcom/htc/dockmode/button/ButtonControl;->mNonUIHandler:Landroid/os/Handler;

    .line 80
    iput p4, p0, Lcom/htc/dockmode/button/ButtonControl;->mLayoutId:I

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/htc/dockmode/button/ButtonControl;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/dockmode/button/ButtonControl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/dockmode/button/ButtonControl;)Lcom/htc/dockmode/utils/AutoResume;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/dockmode/button/ButtonControl;->mAutoResume:Lcom/htc/dockmode/utils/AutoResume;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/dockmode/button/ButtonControl;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/dockmode/button/ButtonControl;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/dockmode/button/ButtonControl;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/htc/dockmode/button/ButtonControl;->mButtonEnabled:Z

    return p1
.end method

.method static synthetic access$400(Lcom/htc/dockmode/button/ButtonControl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/htc/dockmode/button/ButtonControl;->mStopped:Z

    return v0
.end method

.method static synthetic access$502(Lcom/htc/dockmode/button/ButtonControl;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/htc/dockmode/button/ButtonControl;->mMediaChanged:Z

    return p1
.end method

.method static synthetic access$600(Lcom/htc/dockmode/button/ButtonControl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/htc/dockmode/button/ButtonControl;->initView()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/dockmode/button/ButtonControl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/htc/dockmode/button/ButtonControl;->gotoPhotoFrame()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/dockmode/button/ButtonControl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/htc/dockmode/button/ButtonControl;->gotoConnectMedia()V

    return-void
.end method

.method private exitDeskMode()V
    .locals 3

    .prologue
    .line 316
    iget-object v1, p0, Lcom/htc/dockmode/button/ButtonControl;->mContext:Landroid/content/Context;

    const-string v2, "uimode"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 318
    .local v0, uiModeManager:Landroid/app/UiModeManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/UiModeManager;->disableDeskMode(I)V

    .line 319
    return-void
.end method

.method private getApplicationInfoList()V
    .locals 2

    .prologue
    .line 225
    invoke-static {}, Lcom/htc/dockmode/shortcut/ShortcutDB;->getInstance()Lcom/htc/dockmode/shortcut/ShortcutDB;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/dockmode/button/ButtonControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/htc/dockmode/shortcut/ShortcutDB;->getApplicationInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dockmode/button/ButtonControl;->appList:Ljava/util/List;

    .line 226
    return-void
.end method

.method private goToWeather()V
    .locals 4

    .prologue
    .line 270
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.Weather.intent.action.LOCATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 271
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 272
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 273
    const-string v2, "com.htc.Weather"

    const-string v3, "com.htc.Weather.WeatherActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    iget-object v2, p0, Lcom/htc/dockmode/button/ButtonControl;->mActivity:Landroid/app/Activity;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 277
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 293
    :goto_0
    :pswitch_0
    iget-object v2, p0, Lcom/htc/dockmode/button/ButtonControl;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/htc/dockmode/utils/ActivityUtil;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    .line 294
    return-void

    .line 279
    :pswitch_1
    const-string v2, "orientation_"

    const-string v3, "Portrait"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    sget-object v2, Lcom/htc/dockmode/button/ButtonControl;->TAG:Ljava/lang/String;

    const-string v3, "Portrait"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 284
    :pswitch_2
    const-string v2, "orientation_"

    const-string v3, "Landscape"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    sget-object v2, Lcom/htc/dockmode/button/ButtonControl;->TAG:Ljava/lang/String;

    const-string v3, "Landscape"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 289
    :pswitch_3
    const-string v2, "orientation_"

    const-string v3, "Landscape_Reverse"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    sget-object v2, Lcom/htc/dockmode/button/ButtonControl;->TAG:Ljava/lang/String;

    const-string v3, "Landscape_Reverse"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 277
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private gotoConnectMedia()V
    .locals 2

    .prologue
    .line 297
    const-string v0, "com.htc.connectedMedia"

    const-string v1, "com.htc.connectedMedia.ConnectedMedia"

    invoke-direct {p0, v0, v1}, Lcom/htc/dockmode/button/ButtonControl;->launchApp(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method private gotoPhotoFrame()V
    .locals 3

    .prologue
    .line 303
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 304
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.HTCAlbum.action.LAUNCH_SLIDESHOW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    const-string v1, "slideshow_setting_mode"

    const-string v2, "dock_mode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    iget-object v1, p0, Lcom/htc/dockmode/button/ButtonControl;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/htc/dockmode/utils/ActivityUtil;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    .line 307
    return-void
.end method

.method private initButtonExitOnDock()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 118
    iget-object v0, p0, Lcom/htc/dockmode/button/ButtonControl;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/dockmode/button/ButtonControl;->mResId:Lcom/htc/dockmode/button/ButtonRes;

    iget v1, v1, Lcom/htc/dockmode/button/ButtonRes;->buttonExit:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/dockmode/button/ButtonControl;->mButtonExit:Landroid/widget/Button;

    .line 119
    iget-object v0, p0, Lcom/htc/dockmode/button/ButtonControl;->mButtonExit:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/htc/dockmode/button/ButtonControl;->mButtonExit:Landroid/widget/Button;

    iget-object v1, p0, Lcom/htc/dockmode/button/ButtonControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 121
    return-void
.end method

.method private initButtonView()V
    .locals 6

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/htc/dockmode/button/ButtonControl;->getApplicationInfoList()V

    .line 198
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    .line 199
    iget-object v3, p0, Lcom/htc/dockmode/button/ButtonControl;->mContext:Landroid/content/Context;

    const-string v4, "dockmode_button_selector"

    iget-object v5, p0, Lcom/htc/dockmode/button/ButtonControl;->mResId:Lcom/htc/dockmode/button/ButtonRes;

    iget v5, v5, Lcom/htc/dockmode/button/ButtonRes;->button_selector:I

    invoke-static {v3, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 202
    .local v1, button_selector:I
    iget-object v4, p0, Lcom/htc/dockmode/button/ButtonControl;->mButton:[Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;

    iget-object v3, p0, Lcom/htc/dockmode/button/ButtonControl;->mView:Landroid/view/View;

    iget-object v5, p0, Lcom/htc/dockmode/button/ButtonControl;->mResId:Lcom/htc/dockmode/button/ButtonRes;

    iget-object v5, v5, Lcom/htc/dockmode/button/ButtonRes;->button:[I

    aget v5, v5, v2

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;

    aput-object v3, v4, v2

    .line 204
    iget-object v3, p0, Lcom/htc/dockmode/button/ButtonControl;->appList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/dockmode/shortcut/ApplicationInfo;

    .line 205
    .local v0, apinfo:Lcom/htc/dockmode/shortcut/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0}, Lcom/htc/dockmode/shortcut/ApplicationInfo;->getClassName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/htc/dockmode/shortcut/DefaultShortcut;->APP_CLASSs:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 207
    iget-object v3, p0, Lcom/htc/dockmode/button/ButtonControl;->mButton:[Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0}, Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;->setApInfo(Lcom/htc/dockmode/shortcut/ApplicationInfo;)V

    .line 208
    iget-object v3, p0, Lcom/htc/dockmode/button/ButtonControl;->mButton:[Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;

    aget-object v3, v3, v2

    invoke-virtual {v3, p0}, Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v3, p0, Lcom/htc/dockmode/button/ButtonControl;->mButton:[Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;

    aget-object v3, v3, v2

    invoke-virtual {v3, p0}, Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 198
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 215
    :cond_1
    iget-object v3, p0, Lcom/htc/dockmode/button/ButtonControl;->mButton:[Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0}, Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;->setApInfo(Lcom/htc/dockmode/shortcut/ApplicationInfo;)V

    .line 216
    iget-object v3, p0, Lcom/htc/dockmode/button/ButtonControl;->mButton:[Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;

    aget-object v3, v3, v2

    invoke-virtual {v3, p0}, Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iget-object v3, p0, Lcom/htc/dockmode/button/ButtonControl;->mButton:[Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;

    aget-object v3, v3, v2

    invoke-virtual {v3, p0}, Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_1

    .line 222
    .end local v0           #apinfo:Lcom/htc/dockmode/shortcut/ApplicationInfo;
    .end local v1           #button_selector:I
    :cond_2
    return-void
.end method

.method private initView()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 171
    sget-object v1, Lcom/htc/dockmode/button/ButtonControl;->TAG:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/dockmode/button/ButtonControl;->mActivity:Landroid/app/Activity;

    const-string v2, "uimode"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getDockState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/htc/dockmode/button/ButtonControl;->mActivity:Landroid/app/Activity;

    const-string v1, "uimode"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getDockState()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 175
    iget-object v0, p0, Lcom/htc/dockmode/button/ButtonControl;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/dockmode/button/ButtonControl;->mResId:Lcom/htc/dockmode/button/ButtonRes;

    iget v1, v1, Lcom/htc/dockmode/button/ButtonRes;->buttonExit:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/dockmode/button/ButtonControl;->mButtonExit:Landroid/widget/Button;

    .line 176
    iget-object v0, p0, Lcom/htc/dockmode/button/ButtonControl;->mButtonExit:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/htc/dockmode/button/ButtonControl;->mButtonExit:Landroid/widget/Button;

    iget-object v1, p0, Lcom/htc/dockmode/button/ButtonControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 178
    iput-boolean v5, p0, Lcom/htc/dockmode/button/ButtonControl;->isOnDock:Z

    .line 188
    :goto_0
    invoke-direct {p0}, Lcom/htc/dockmode/button/ButtonControl;->initButtonView()V

    .line 189
    iget-object v0, p0, Lcom/htc/dockmode/button/ButtonControl;->mButtonExit:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v0, p0, Lcom/htc/dockmode/button/ButtonControl;->mButtonExit:Landroid/widget/Button;

    iget-object v1, p0, Lcom/htc/dockmode/button/ButtonControl;->mContext:Landroid/content/Context;

    const-string v2, "dock_mode_btn_left"

    iget-object v3, p0, Lcom/htc/dockmode/button/ButtonControl;->mResId:Lcom/htc/dockmode/button/ButtonRes;

    iget v3, v3, Lcom/htc/dockmode/button/ButtonRes;->base_left:I

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 193
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/htc/dockmode/button/ButtonControl;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/dockmode/button/ButtonControl;->mResId:Lcom/htc/dockmode/button/ButtonRes;

    iget v1, v1, Lcom/htc/dockmode/button/ButtonRes;->buttonExit:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/dockmode/button/ButtonControl;->mButtonExit:Landroid/widget/Button;

    .line 182
    iget-object v0, p0, Lcom/htc/dockmode/button/ButtonControl;->mButtonExit:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/htc/dockmode/button/ButtonControl;->mButtonExit:Landroid/widget/Button;

    iget-object v1, p0, Lcom/htc/dockmode/button/ButtonControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02003b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 184
    iput-boolean v4, p0, Lcom/htc/dockmode/button/ButtonControl;->isOnDock:Z

    goto :goto_0
.end method

.method private launchApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 310
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 311
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    iget-object v1, p0, Lcom/htc/dockmode/button/ButtonControl;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/htc/dockmode/utils/ActivityUtil;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    .line 313
    return-void
.end method

.method private loadPreference()V
    .locals 5

    .prologue
    .line 148
    iget-object v2, p0, Lcom/htc/dockmode/button/ButtonControl;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/htc/dockmode/button/ButtonPref;->TAG:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 150
    .local v1, settings:Landroid/content/SharedPreferences;
    const-string v2, "last_pressed"

    invoke-static {v1, v2}, Lcom/htc/dockmode/utils/Preference;->getSettingInt(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v0

    .line 152
    .local v0, lastPressed:I
    iget-object v2, p0, Lcom/htc/dockmode/button/ButtonControl;->mAutoResume:Lcom/htc/dockmode/utils/AutoResume;

    invoke-virtual {v2, v0}, Lcom/htc/dockmode/utils/AutoResume;->setLastPressed(I)V

    .line 153
    return-void
.end method

.method private refreshMedia()V
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/htc/dockmode/button/ButtonControl;->mMediaChanged:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/dockmode/button/ButtonControl;->mMediaIndex:I

    if-ltz v0, :cond_0

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dockmode/button/ButtonControl;->mMediaChanged:Z

    .line 128
    :cond_0
    return-void
.end method

.method private savePreference()V
    .locals 4

    .prologue
    .line 156
    iget-object v1, p0, Lcom/htc/dockmode/button/ButtonControl;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/htc/dockmode/button/ButtonPref;->TAG:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 158
    .local v0, settings:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/htc/dockmode/button/ButtonControl;->mAutoResume:Lcom/htc/dockmode/utils/AutoResume;

    if-eqz v1, :cond_0

    .line 159
    const-string v1, "last_pressed"

    iget-object v2, p0, Lcom/htc/dockmode/button/ButtonControl;->mAutoResume:Lcom/htc/dockmode/utils/AutoResume;

    invoke-virtual {v2}, Lcom/htc/dockmode/utils/AutoResume;->getLastPressed()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/htc/dockmode/utils/Preference;->setSettingInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)Z

    .line 162
    :cond_0
    return-void
.end method

.method private startAppListActivity()V
    .locals 3

    .prologue
    .line 463
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.dockmode.selectapp"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 464
    .local v0, applIntent:Landroid/content/Intent;
    const-string v1, "com.htc.dockmode"

    const-string v2, "com.htc.dockmode.shortcut.SelectAppActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 466
    iget-object v1, p0, Lcom/htc/dockmode/button/ButtonControl;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/htc/dockmode/utils/ActivityUtil;->startActivityForResultSafely(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 468
    return-void
.end method

.method private startAppListActivityLauncher()V
    .locals 3

    .prologue
    .line 455
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.dockmode.selectapp"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 456
    .local v0, appIntent:Landroid/content/Intent;
    const-string v1, "LAUNCH_APP"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 457
    const-string v1, "com.htc.dockmode"

    const-string v2, "com.htc.dockmode.shortcut.SelectAppActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 459
    iget-object v1, p0, Lcom/htc/dockmode/button/ButtonControl;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/htc/dockmode/utils/ActivityUtil;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    .line 460
    return-void
.end method


# virtual methods
.method protected initReceiver()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 357
    monitor-enter p0

    .line 358
    :try_start_0
    iget-boolean v3, p0, Lcom/htc/dockmode/button/ButtonControl;->mShortcutReceiverRegistered:Z

    if-nez v3, :cond_0

    .line 360
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 361
    .local v2, srFilter:Landroid/content/IntentFilter;
    const-string v3, "com.htc.dockmode.shortcut.changed"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 362
    iget-object v3, p0, Lcom/htc/dockmode/button/ButtonControl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/dockmode/button/ButtonControl;->mShortcutReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 363
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/dockmode/button/ButtonControl;->mShortcutReceiverRegistered:Z

    .line 365
    .end local v2           #srFilter:Landroid/content/IntentFilter;
    :cond_0
    iget-object v3, p0, Lcom/htc/dockmode/button/ButtonControl;->mActivity:Landroid/app/Activity;

    const-string v4, "uimode"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/UiModeManager;

    invoke-virtual {v3}, Landroid/app/UiModeManager;->getDockState()I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 367
    iget-boolean v3, p0, Lcom/htc/dockmode/button/ButtonControl;->mReceiverRegistered:Z

    if-nez v3, :cond_1

    .line 369
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 370
    .local v0, dockfilter:Landroid/content/IntentFilter;
    sget-object v3, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 371
    const-string v3, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 372
    iget-object v3, p0, Lcom/htc/dockmode/button/ButtonControl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/dockmode/button/ButtonControl;->mDockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 373
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/dockmode/button/ButtonControl;->mReceiverRegistered:Z

    .line 377
    .end local v0           #dockfilter:Landroid/content/IntentFilter;
    :cond_1
    iget-boolean v3, p0, Lcom/htc/dockmode/button/ButtonControl;->mMediaReceiverRegistered:Z

    if-nez v3, :cond_2

    iget v3, p0, Lcom/htc/dockmode/button/ButtonControl;->mMediaIndex:I

    if-ltz v3, :cond_2

    .line 379
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 380
    .local v1, sdFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 381
    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 382
    const-string v3, "file"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 383
    iget-object v3, p0, Lcom/htc/dockmode/button/ButtonControl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/dockmode/button/ButtonControl;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 384
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/dockmode/button/ButtonControl;->mMediaReceiverRegistered:Z

    .line 386
    .end local v1           #sdFilter:Landroid/content/IntentFilter;
    :cond_2
    monitor-exit p0

    .line 387
    return-void

    .line 386
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 229
    iget-object v1, p0, Lcom/htc/dockmode/button/ButtonControl;->mButtonExit:Landroid/widget/Button;

    if-ne p1, v1, :cond_2

    .line 230
    iget-object v1, p0, Lcom/htc/dockmode/button/ButtonControl;->mActivity:Landroid/app/Activity;

    const-string v2, "uimode"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/UiModeManager;

    invoke-virtual {v1}, Landroid/app/UiModeManager;->getDockState()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 232
    invoke-direct {p0}, Lcom/htc/dockmode/button/ButtonControl;->startAppListActivityLauncher()V

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    invoke-direct {p0}, Lcom/htc/dockmode/button/ButtonControl;->exitDeskMode()V

    goto :goto_0

    .line 237
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/htc/dockmode/button/ButtonControl;->mButton:[Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_6

    .line 239
    iget-object v1, p0, Lcom/htc/dockmode/button/ButtonControl;->mNonUIHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/dockmode/button/ButtonControl;->mOnRecentApp:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 240
    iget-object v1, p0, Lcom/htc/dockmode/button/ButtonControl;->appList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dockmode/shortcut/ApplicationInfo;

    invoke-virtual {v1}, Lcom/htc/dockmode/shortcut/ApplicationInfo;->getClassName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/htc/dockmode/shortcut/DefaultShortcut;->APP_CLASSs:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 242
    invoke-direct {p0}, Lcom/htc/dockmode/button/ButtonControl;->gotoPhotoFrame()V

    .line 243
    iget-object v1, p0, Lcom/htc/dockmode/button/ButtonControl;->mAutoResume:Lcom/htc/dockmode/utils/AutoResume;

    invoke-virtual {v1, v3}, Lcom/htc/dockmode/utils/AutoResume;->setLastPressed(I)V

    goto :goto_0

    .line 246
    :cond_3
    iget-object v1, p0, Lcom/htc/dockmode/button/ButtonControl;->appList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dockmode/shortcut/ApplicationInfo;

    invoke-virtual {v1}, Lcom/htc/dockmode/shortcut/ApplicationInfo;->getClassName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/htc/dockmode/shortcut/DefaultShortcut;->APP_CLASSs:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 248
    iget-object v1, p0, Lcom/htc/dockmode/button/ButtonControl;->appList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dockmode/shortcut/ApplicationInfo;

    iget-object v2, p0, Lcom/htc/dockmode/button/ButtonControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/htc/dockmode/shortcut/ApplicationInfo;->startApplication(Landroid/content/Context;)V

    .line 249
    iget-object v1, p0, Lcom/htc/dockmode/button/ButtonControl;->mAutoResume:Lcom/htc/dockmode/utils/AutoResume;

    invoke-virtual {v1, v3}, Lcom/htc/dockmode/utils/AutoResume;->setLastPressed(I)V

    goto :goto_0

    .line 252
    :cond_4
    iget-object v1, p0, Lcom/htc/dockmode/button/ButtonControl;->appList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dockmode/shortcut/ApplicationInfo;

    invoke-virtual {v1}, Lcom/htc/dockmode/shortcut/ApplicationInfo;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.htc.Weather.WeatherActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 254
    invoke-direct {p0}, Lcom/htc/dockmode/button/ButtonControl;->goToWeather()V

    goto :goto_0

    .line 258
    :cond_5
    iget-object v1, p0, Lcom/htc/dockmode/button/ButtonControl;->appList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dockmode/shortcut/ApplicationInfo;

    iget-object v2, p0, Lcom/htc/dockmode/button/ButtonControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/htc/dockmode/shortcut/ApplicationInfo;->startApplication(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 237
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method

.method public onDoDestroy()V
    .locals 0

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/htc/dockmode/button/ButtonControl;->releaseReceiver()V

    .line 144
    invoke-direct {p0}, Lcom/htc/dockmode/button/ButtonControl;->savePreference()V

    .line 145
    return-void
.end method

.method public onDoInit1()V
    .locals 2

    .prologue
    .line 84
    new-instance v0, Lcom/htc/dockmode/button/ButtonRes;

    iget-object v1, p0, Lcom/htc/dockmode/button/ButtonControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/dockmode/button/ButtonRes;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/htc/dockmode/button/ButtonControl;->mResId:Lcom/htc/dockmode/button/ButtonRes;

    .line 85
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dockmode/button/ButtonControl;->mStorageState:Ljava/lang/String;

    .line 86
    invoke-static {}, Lcom/htc/dockmode/utils/AutoResume;->getInstance()Lcom/htc/dockmode/utils/AutoResume;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dockmode/button/ButtonControl;->mAutoResume:Lcom/htc/dockmode/utils/AutoResume;

    .line 87
    iget-object v0, p0, Lcom/htc/dockmode/button/ButtonControl;->mAutoResume:Lcom/htc/dockmode/utils/AutoResume;

    iget-object v1, p0, Lcom/htc/dockmode/button/ButtonControl;->mPhotoFrameClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/dockmode/utils/AutoResume;->setOnPhotoFrameClick(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/htc/dockmode/button/ButtonControl;->mAutoResume:Lcom/htc/dockmode/utils/AutoResume;

    iget-object v1, p0, Lcom/htc/dockmode/button/ButtonControl;->mConnectMediaClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/dockmode/utils/AutoResume;->setOnConnectMediaClick(Landroid/view/View$OnClickListener;)V

    .line 89
    invoke-direct {p0}, Lcom/htc/dockmode/button/ButtonControl;->loadPreference()V

    .line 90
    return-void
.end method

.method public onDoInit2()V
    .locals 5

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/htc/dockmode/button/ButtonControl;->initReceiver()V

    .line 99
    iget-object v1, p0, Lcom/htc/dockmode/button/ButtonControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "deskdock_auto_resume"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 101
    .local v0, autoResume:Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/dockmode/button/ButtonControl;->mAutoResume:Lcom/htc/dockmode/utils/AutoResume;

    invoke-virtual {v1}, Lcom/htc/dockmode/utils/AutoResume;->hasLastPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/htc/dockmode/button/ButtonControl;->mNonUIHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/dockmode/button/ButtonControl;->mOnRecentApp:Ljava/lang/Runnable;

    sget v3, Lcom/htc/dockmode/Constants;->AUTO_RESUME_TIME:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 104
    :cond_0
    return-void
.end method

.method public onDoPause()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/dockmode/button/ButtonControl;->mStopped:Z

    .line 132
    return-void
.end method

.method public onDoRefresh1()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/dockmode/button/ButtonControl;->mActivity:Landroid/app/Activity;

    iget v1, p0, Lcom/htc/dockmode/button/ButtonControl;->mLayoutId:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dockmode/button/ButtonControl;->mView:Landroid/view/View;

    .line 94
    invoke-direct {p0}, Lcom/htc/dockmode/button/ButtonControl;->initView()V

    .line 95
    return-void
.end method

.method public onDoRemoveMessages()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/dockmode/button/ButtonControl;->mNonUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/dockmode/button/ButtonControl;->mOnRecentApp:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 136
    return-void
.end method

.method public onDoResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dockmode/button/ButtonControl;->mStopped:Z

    .line 108
    iget-boolean v0, p0, Lcom/htc/dockmode/button/ButtonControl;->isOnDock:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/dockmode/button/ButtonControl;->mActivity:Landroid/app/Activity;

    const-string v1, "uimode"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getDockState()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/htc/dockmode/button/ButtonControl;->initReceiver()V

    .line 112
    invoke-direct {p0}, Lcom/htc/dockmode/button/ButtonControl;->initButtonExitOnDock()V

    .line 113
    iput-boolean v2, p0, Lcom/htc/dockmode/button/ButtonControl;->isOnDock:Z

    .line 115
    :cond_0
    invoke-direct {p0}, Lcom/htc/dockmode/button/ButtonControl;->refreshMedia()V

    .line 116
    return-void
.end method

.method public onDoStop()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/htc/dockmode/button/ButtonControl;->mNonUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/dockmode/button/ButtonControl;->mOnRecentApp:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 140
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 444
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 445
    iget-object v1, p0, Lcom/htc/dockmode/button/ButtonControl;->mButton:[Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_0

    .line 446
    iput v0, p0, Lcom/htc/dockmode/button/ButtonControl;->mButtonIndex:I

    .line 444
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 450
    :cond_1
    invoke-direct {p0}, Lcom/htc/dockmode/button/ButtonControl;->startAppListActivity()V

    .line 451
    const/4 v1, 0x0

    return v1
.end method

.method protected releaseReceiver()V
    .locals 2

    .prologue
    .line 400
    monitor-enter p0

    .line 401
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/dockmode/button/ButtonControl;->mShortcutReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/htc/dockmode/button/ButtonControl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/dockmode/button/ButtonControl;->mShortcutReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 403
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dockmode/button/ButtonControl;->mShortcutReceiverRegistered:Z

    .line 405
    :cond_0
    iget-boolean v0, p0, Lcom/htc/dockmode/button/ButtonControl;->mReceiverRegistered:Z

    if-eqz v0, :cond_1

    .line 406
    iget-object v0, p0, Lcom/htc/dockmode/button/ButtonControl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/dockmode/button/ButtonControl;->mDockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 407
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dockmode/button/ButtonControl;->mReceiverRegistered:Z

    .line 409
    :cond_1
    iget-boolean v0, p0, Lcom/htc/dockmode/button/ButtonControl;->mMediaReceiverRegistered:Z

    if-eqz v0, :cond_2

    .line 410
    iget-object v0, p0, Lcom/htc/dockmode/button/ButtonControl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/dockmode/button/ButtonControl;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 411
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dockmode/button/ButtonControl;->mMediaReceiverRegistered:Z

    .line 412
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/dockmode/button/ButtonControl;->mMediaIndex:I

    .line 414
    :cond_2
    monitor-exit p0

    .line 415
    return-void

    .line 414
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resetLayout()V
    .locals 11

    .prologue
    const v10, 0x7f0a0004

    const v9, 0x7f0a0003

    const v8, 0x7f070090

    const v7, 0x7f07007e

    const/4 v4, 0x0

    .line 431
    iget-object v1, p0, Lcom/htc/dockmode/button/ButtonControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 432
    .local v0, res:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/htc/dockmode/button/ButtonControl;->mView:Landroid/view/View;

    const v2, 0x7f0a0001

    const v3, 0x7f070007

    move v5, v4

    move v6, v4

    invoke-static/range {v0 .. v6}, Lcom/htc/dockmode/utils/ResetLayoutUtil;->ResetLinearLayoutPadding(Landroid/content/res/Resources;Landroid/view/View;IIIII)V

    .line 434
    iget-object v1, p0, Lcom/htc/dockmode/button/ButtonControl;->mView:Landroid/view/View;

    const v2, 0x7f0a0002

    invoke-static {v0, v1, v2, v7, v4}, Lcom/htc/dockmode/utils/ResetLayoutUtil;->ResetLinearLayoutWidthHeight(Landroid/content/res/Resources;Landroid/view/View;III)V

    .line 435
    iget-object v1, p0, Lcom/htc/dockmode/button/ButtonControl;->mView:Landroid/view/View;

    invoke-static {v0, v1, v9, v7, v4}, Lcom/htc/dockmode/utils/ResetLayoutUtil;->ResetLinearLayoutWidthHeight(Landroid/content/res/Resources;Landroid/view/View;III)V

    .line 436
    iget-object v1, p0, Lcom/htc/dockmode/button/ButtonControl;->mView:Landroid/view/View;

    move v2, v9

    move v3, v8

    move v5, v4

    move v6, v4

    invoke-static/range {v0 .. v6}, Lcom/htc/dockmode/utils/ResetLayoutUtil;->ResetLinearLayoutMargin(Landroid/content/res/Resources;Landroid/view/View;IIIII)V

    .line 437
    iget-object v1, p0, Lcom/htc/dockmode/button/ButtonControl;->mView:Landroid/view/View;

    invoke-static {v0, v1, v10, v7, v4}, Lcom/htc/dockmode/utils/ResetLayoutUtil;->ResetLinearLayoutWidthHeight(Landroid/content/res/Resources;Landroid/view/View;III)V

    .line 438
    iget-object v1, p0, Lcom/htc/dockmode/button/ButtonControl;->mView:Landroid/view/View;

    move v2, v10

    move v3, v8

    move v5, v4

    move v6, v4

    invoke-static/range {v0 .. v6}, Lcom/htc/dockmode/utils/ResetLayoutUtil;->ResetLinearLayoutMargin(Landroid/content/res/Resources;Landroid/view/View;IIIII)V

    .line 439
    return-void
.end method

.method public setShortcutbyLongClick(Landroid/content/pm/ActivityInfo;)V
    .locals 5
    .parameter "info"

    .prologue
    const/4 v4, 0x3

    .line 472
    new-array v0, v4, [Landroid/content/pm/ActivityInfo;

    .line 473
    .local v0, appArray:[Landroid/content/pm/ActivityInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 474
    iget v3, p0, Lcom/htc/dockmode/button/ButtonControl;->mButtonIndex:I

    if-ne v1, v3, :cond_1

    .line 475
    aput-object p1, v0, v1

    .line 473
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 477
    :cond_1
    iget-object v3, p0, Lcom/htc/dockmode/button/ButtonControl;->appList:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/dockmode/button/ButtonControl;->appList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 478
    iget-object v3, p0, Lcom/htc/dockmode/button/ButtonControl;->appList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/dockmode/shortcut/ApplicationInfo;

    invoke-virtual {v3}, Lcom/htc/dockmode/shortcut/ApplicationInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v3

    aput-object v3, v0, v1

    goto :goto_1

    .line 481
    :cond_2
    if-eqz v0, :cond_3

    .line 482
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 483
    .local v2, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/htc/dockmode/button/ButtonControl;->mContext:Landroid/content/Context;

    const-class v4, Lcom/htc/dockmode/shortcut/ShortcutDBService;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 485
    const-string v3, "extra_update"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 487
    const-string v3, "applist"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 488
    iget-object v3, p0, Lcom/htc/dockmode/button/ButtonControl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 490
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    return-void
.end method
