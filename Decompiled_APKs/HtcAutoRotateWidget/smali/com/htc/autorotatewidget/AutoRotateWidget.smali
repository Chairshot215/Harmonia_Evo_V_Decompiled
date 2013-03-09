.class public Lcom/htc/autorotatewidget/AutoRotateWidget;
.super Lcom/htc/android/rosie/widget/Widget$Base;
.source "AutoRotateWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/autorotatewidget/AutoRotateWidget$1;,
        Lcom/htc/autorotatewidget/AutoRotateWidget$workerCallback;,
        Lcom/htc/autorotatewidget/AutoRotateWidget$SettingsObserver;,
        Lcom/htc/autorotatewidget/AutoRotateWidget$SettingButtonClickListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final SCENE_PATH_LAND:Ljava/lang/String; = "Land/Setting_1x1_Autorotate.m10"

.field private static final SCENE_PATH_PORT:Ljava/lang/String; = "Port/Setting_1x1_Autorotate.m10"

.field public static final STATUS_DESTROYED:I = 0x3

.field public static final STATUS_NONE:I = 0x0

.field public static final STATUS_PAUSE:I = 0x2

.field public static final STATUS_RESUME:I = 0x1

.field private static final localLOGV:Z


# instance fields
.field public final ADD_OBSERVER:I

.field public final AFTER_ROTATE:I

.field public final DELETE_OBSERVER:I

.field public final UPDATE_ICON:I

.field private bSupportLandscapeMode:Z

.field private bUpdatingUI:Z

.field private host:Lcom/htc/android/rosie/widget/Widget$Host;

.field private mConfiguration:Landroid/content/res/Configuration;

.field private mContentQueryMap:Landroid/content/ContentQueryMap;

.field private mLandscapeScene:Lcom/htc/fusion/fx/FxScene;

.field private mPortraitScene:Lcom/htc/fusion/fx/FxScene;

.field private mResContext:Landroid/content/Context;

.field private mSettingsObserver:Lcom/htc/autorotatewidget/AutoRotateWidget$SettingsObserver;

.field protected mStatus:I

.field private mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

.field private m_buttonL:Lcom/htc/fusion/fx/controls/FxSettingButton;

.field private m_buttonP:Lcom/htc/fusion/fx/controls/FxSettingButton;

.field private m_labelL:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private m_labelP:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private m_settingButtonClickListener:Lcom/htc/autorotatewidget/AutoRotateWidget$SettingButtonClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/htc/autorotatewidget/AutoRotateWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/autorotatewidget/AutoRotateWidget;->$assertionsDisabled:Z

    .line 30
    const-class v0, Lcom/htc/autorotatewidget/AutoRotateWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/autorotatewidget/AutoRotateWidget;->LOG_TAG:Ljava/lang/String;

    return-void

    .line 27
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Lcom/htc/android/rosie/widget/Widget$Base;-><init>()V

    .line 32
    const/16 v0, 0x1fa6

    iput v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->ADD_OBSERVER:I

    .line 33
    const/16 v0, 0x1fa7

    iput v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->DELETE_OBSERVER:I

    .line 34
    const/16 v0, 0x1fa8

    iput v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->UPDATE_ICON:I

    .line 35
    const/16 v0, 0x1fa9

    iput v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->AFTER_ROTATE:I

    .line 37
    iput-object v2, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->mContentQueryMap:Landroid/content/ContentQueryMap;

    .line 38
    iput-object v2, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->mSettingsObserver:Lcom/htc/autorotatewidget/AutoRotateWidget$SettingsObserver;

    .line 62
    iput v1, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->mStatus:I

    .line 67
    iput-boolean v1, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->bUpdatingUI:Z

    .line 68
    iput-boolean v1, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->bSupportLandscapeMode:Z

    .line 352
    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/htc/autorotatewidget/AutoRotateWidget;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/autorotatewidget/AutoRotateWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->bUpdatingUI:Z

    return v0
.end method

.method static synthetic access$500(Lcom/htc/autorotatewidget/AutoRotateWidget;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/autorotatewidget/AutoRotateWidget;)Landroid/content/ContentQueryMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->mContentQueryMap:Landroid/content/ContentQueryMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/autorotatewidget/AutoRotateWidget;)Lcom/htc/autorotatewidget/AutoRotateWidget$SettingsObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->mSettingsObserver:Lcom/htc/autorotatewidget/AutoRotateWidget$SettingsObserver;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/autorotatewidget/AutoRotateWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/htc/autorotatewidget/AutoRotateWidget;->unbindListener()V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/autorotatewidget/AutoRotateWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/htc/autorotatewidget/AutoRotateWidget;->bindListener()V

    return-void
.end method

.method private bindListener()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 144
    sget-object v0, Lcom/htc/autorotatewidget/AutoRotateWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "bindListeners(): ORIENTATION_PORTRAIT, bind P"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->m_buttonP:Lcom/htc/fusion/fx/controls/FxSettingButton;

    iget-object v1, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->m_settingButtonClickListener:Lcom/htc/autorotatewidget/AutoRotateWidget$SettingButtonClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->bindClick(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 153
    :goto_0
    return-void

    .line 149
    :cond_0
    sget-object v0, Lcom/htc/autorotatewidget/AutoRotateWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "bindListeners(): ORIENTATION_PORTRAIT, bind L"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->m_buttonL:Lcom/htc/fusion/fx/controls/FxSettingButton;

    iget-object v1, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->m_settingButtonClickListener:Lcom/htc/autorotatewidget/AutoRotateWidget$SettingButtonClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->bindClick(Lcom/htc/fusion/fx/IMessageListener;)V

    goto :goto_0
.end method

.method private findControls()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 230
    const/4 v3, 0x1

    .line 232
    .local v3, m_isAllControlFound:Z
    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/String;

    const-string v4, "textlabel.Settings"

    aput-object v4, v2, v5

    const-string v4, "button.settings_section"

    aput-object v4, v2, v6

    .line 238
    .local v2, m_aryControlName:[Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->mPortraitScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v4, v2}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v1

    .line 241
    .local v1, controlsP:[Lcom/htc/fusion/fx/FxObject;
    aget-object v4, v1, v5

    check-cast v4, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v4, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->m_labelP:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 242
    sget-boolean v4, Lcom/htc/autorotatewidget/AutoRotateWidget;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->m_labelP:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 243
    :cond_0
    iget-object v4, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->m_labelP:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v4, :cond_1

    const/4 v3, 0x0

    .line 246
    :cond_1
    aget-object v4, v1, v6

    check-cast v4, Lcom/htc/fusion/fx/controls/FxSettingButton;

    iput-object v4, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->m_buttonP:Lcom/htc/fusion/fx/controls/FxSettingButton;

    .line 247
    sget-boolean v4, Lcom/htc/autorotatewidget/AutoRotateWidget;->$assertionsDisabled:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->m_buttonP:Lcom/htc/fusion/fx/controls/FxSettingButton;

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 248
    :cond_2
    iget-object v4, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->m_buttonP:Lcom/htc/fusion/fx/controls/FxSettingButton;

    if-nez v4, :cond_3

    const/4 v3, 0x0

    .line 251
    :cond_3
    iget-boolean v4, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->bSupportLandscapeMode:Z

    if-eqz v4, :cond_7

    .line 252
    iget-object v4, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->mLandscapeScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v4, v2}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    .line 254
    .local v0, controlsL:[Lcom/htc/fusion/fx/FxObject;
    aget-object v4, v0, v5

    check-cast v4, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v4, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->m_labelL:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 255
    sget-boolean v4, Lcom/htc/autorotatewidget/AutoRotateWidget;->$assertionsDisabled:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->m_labelL:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v4, :cond_4

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 256
    :cond_4
    iget-object v4, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->m_labelL:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v4, :cond_5

    const/4 v3, 0x0

    .line 259
    :cond_5
    aget-object v4, v0, v6

    check-cast v4, Lcom/htc/fusion/fx/controls/FxSettingButton;

    iput-object v4, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->m_buttonL:Lcom/htc/fusion/fx/controls/FxSettingButton;

    .line 260
    sget-boolean v4, Lcom/htc/autorotatewidget/AutoRotateWidget;->$assertionsDisabled:Z

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->m_buttonL:Lcom/htc/fusion/fx/controls/FxSettingButton;

    if-nez v4, :cond_6

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 261
    :cond_6
    iget-object v4, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->m_buttonL:Lcom/htc/fusion/fx/controls/FxSettingButton;

    if-nez v4, :cond_7

    const/4 v3, 0x0

    .line 264
    .end local v0           #controlsL:[Lcom/htc/fusion/fx/FxObject;
    :cond_7
    return v3
.end method

.method private initObserver()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 274
    iget-object v1, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->mResContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 275
    .local v0, contentResolver:Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 277
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v7, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "name"

    aput-object v5, v2, v3

    const-string v3, "(name=?)"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 283
    .local v6, SystemSettingsCursor:Landroid/database/Cursor;
    new-instance v1, Lcom/htc/autorotatewidget/AutoRotateWidget$SettingsObserver;

    invoke-direct {v1, p0, v4}, Lcom/htc/autorotatewidget/AutoRotateWidget$SettingsObserver;-><init>(Lcom/htc/autorotatewidget/AutoRotateWidget;Lcom/htc/autorotatewidget/AutoRotateWidget$1;)V

    iput-object v1, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->mSettingsObserver:Lcom/htc/autorotatewidget/AutoRotateWidget$SettingsObserver;

    .line 284
    new-instance v1, Landroid/content/ContentQueryMap;

    const-string v2, "name"

    invoke-direct {v1, v6, v2, v7, v4}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v1, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->mContentQueryMap:Landroid/content/ContentQueryMap;

    .line 290
    .end local v6           #SystemSettingsCursor:Landroid/database/Cursor;
    :cond_0
    return-void
.end method

.method private initialControls()V
    .locals 3

    .prologue
    const v2, 0x7f050006

    .line 268
    iget-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->m_labelP:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v1, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->mResContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 269
    iget-boolean v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->bSupportLandscapeMode:Z

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->m_labelL:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v1, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->mResContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 271
    :cond_0
    return-void
.end method

.method private preloadScenes()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 196
    iget-object v2, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->mPortraitScene:Lcom/htc/fusion/fx/FxScene;

    if-nez v2, :cond_0

    .line 197
    iget-object v2, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->host:Lcom/htc/android/rosie/widget/Widget$Host;

    const-string v3, "Port/Setting_1x1_Autorotate.m10"

    invoke-interface {v2, v3, v0}, Lcom/htc/android/rosie/widget/Widget$Host;->createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->mPortraitScene:Lcom/htc/fusion/fx/FxScene;

    .line 200
    :cond_0
    iget-boolean v2, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->bSupportLandscapeMode:Z

    if-eqz v2, :cond_4

    .line 201
    iget-object v2, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->mLandscapeScene:Lcom/htc/fusion/fx/FxScene;

    if-nez v2, :cond_1

    .line 202
    iget-object v2, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->host:Lcom/htc/android/rosie/widget/Widget$Host;

    const-string v3, "Land/Setting_1x1_Autorotate.m10"

    invoke-interface {v2, v3, v0}, Lcom/htc/android/rosie/widget/Widget$Host;->createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->mLandscapeScene:Lcom/htc/fusion/fx/FxScene;

    .line 203
    :cond_1
    iget-object v2, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->mPortraitScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->mLandscapeScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v2, :cond_3

    .line 206
    :cond_2
    :goto_0
    return v0

    :cond_3
    move v0, v1

    .line 203
    goto :goto_0

    .line 206
    :cond_4
    iget-object v2, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->mPortraitScene:Lcom/htc/fusion/fx/FxScene;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0
.end method

.method private unbindListener()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->m_buttonL:Lcom/htc/fusion/fx/controls/FxSettingButton;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->m_buttonL:Lcom/htc/fusion/fx/controls/FxSettingButton;

    iget-object v1, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->m_settingButtonClickListener:Lcom/htc/autorotatewidget/AutoRotateWidget$SettingButtonClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->unbindClick(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->m_buttonP:Lcom/htc/fusion/fx/controls/FxSettingButton;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->m_buttonP:Lcom/htc/fusion/fx/controls/FxSettingButton;

    iget-object v1, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->m_settingButtonClickListener:Lcom/htc/autorotatewidget/AutoRotateWidget$SettingButtonClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->unbindClick(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 160
    :cond_1
    return-void
.end method


# virtual methods
.method public SwitchSetting()V
    .locals 4

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/htc/autorotatewidget/AutoRotateWidget;->isAutoRotateOn()I

    move-result v1

    .line 312
    .local v1, nSetting:I
    iget-object v2, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->mResContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 313
    .local v0, contentResolver:Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->bUpdatingUI:Z

    if-nez v2, :cond_0

    .line 315
    add-int/lit8 v2, v1, 0x1

    rem-int/lit8 v1, v2, 0x2

    .line 316
    const-string v2, "accelerometer_rotation"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 318
    iget-object v2, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v3, 0x1fa8

    invoke-interface {v2, v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 320
    :cond_0
    return-void
.end method

.method public UpdateIcon(I)V
    .locals 3
    .parameter "nSetting"

    .prologue
    const/4 v2, 0x1

    .line 323
    iput-boolean v2, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->bUpdatingUI:Z

    .line 324
    sget-object v0, Lcom/htc/autorotatewidget/AutoRotateWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "UpdateIcon()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->m_buttonP:Lcom/htc/fusion/fx/controls/FxSettingButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->m_buttonP:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxSettingButton;->currentState()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 326
    iget-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->m_buttonP:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxSettingButton;->changeToNextState(Z)V

    .line 328
    :cond_0
    iget-boolean v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->bSupportLandscapeMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->m_buttonL:Lcom/htc/fusion/fx/controls/FxSettingButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->m_buttonL:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxSettingButton;->currentState()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 329
    iget-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->m_buttonL:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxSettingButton;->changeToNextState(Z)V

    .line 331
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->bUpdatingUI:Z

    .line 332
    return-void
.end method

.method public getScene()Lcom/htc/fusion/fx/FxScene;
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->mPortraitScene:Lcom/htc/fusion/fx/FxScene;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->mLandscapeScene:Lcom/htc/fusion/fx/FxScene;

    goto :goto_0
.end method

.method protected getScene(I)Lcom/htc/fusion/fx/FxScene;
    .locals 1
    .parameter "orientation"

    .prologue
    .line 220
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->mPortraitScene:Lcom/htc/fusion/fx/FxScene;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->mLandscapeScene:Lcom/htc/fusion/fx/FxScene;

    goto :goto_0
.end method

.method public isAutoRotateOn()I
    .locals 4

    .prologue
    .line 293
    const/4 v2, 0x0

    .line 294
    .local v2, nRet:I
    iget-object v3, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->mResContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 296
    .local v0, contentResolver:Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 299
    :try_start_0
    const-string v3, "accelerometer_rotation"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 305
    :cond_0
    :goto_0
    return v2

    .line 300
    :catch_0
    move-exception v1

    .line 301
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    const/16 v1, 0x1fa9

    .line 165
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 168
    iget-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 171
    :cond_0
    iput-object p1, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->mConfiguration:Landroid/content/res/Configuration;

    .line 172
    sget-object v1, Lcom/htc/autorotatewidget/AutoRotateWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged(): mConfiguration.orientation = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    const-string v0, "portrait"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return-void

    .line 172
    :cond_1
    const-string v0, "landscape"

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "saved"

    .prologue
    const/4 v4, 0x0

    .line 72
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/htc/autorotatewidget/AutoRotateWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->mResContext:Landroid/content/Context;

    .line 76
    invoke-virtual {p0}, Lcom/htc/autorotatewidget/AutoRotateWidget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->host:Lcom/htc/android/rosie/widget/Widget$Host;

    .line 77
    iget-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->host:Lcom/htc/android/rosie/widget/Widget$Host;

    new-instance v1, Lcom/htc/autorotatewidget/AutoRotateWidget$workerCallback;

    invoke-direct {v1, p0, v4}, Lcom/htc/autorotatewidget/AutoRotateWidget$workerCallback;-><init>(Lcom/htc/autorotatewidget/AutoRotateWidget;Lcom/htc/autorotatewidget/AutoRotateWidget$1;)V

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host;->getWorker(Landroid/os/Handler$Callback;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    .line 78
    iget-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->host:Lcom/htc/android/rosie/widget/Widget$Host;

    invoke-interface {v0}, Lcom/htc/android/rosie/widget/Widget$Host;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->mConfiguration:Landroid/content/res/Configuration;

    .line 79
    sget-object v1, Lcom/htc/autorotatewidget/AutoRotateWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mConfiguration.orientation = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    const-string v0, "portrait"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {p0}, Lcom/htc/autorotatewidget/AutoRotateWidget;->supportsLandscapeMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->bSupportLandscapeMode:Z

    .line 84
    invoke-direct {p0}, Lcom/htc/autorotatewidget/AutoRotateWidget;->preloadScenes()Z

    move-result v0

    if-nez v0, :cond_1

    .line 85
    sget-object v0, Lcom/htc/autorotatewidget/AutoRotateWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Load scenes unsuccessfully"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :goto_1
    return-void

    .line 79
    :cond_0
    const-string v0, "landscape"

    goto :goto_0

    .line 90
    :cond_1
    invoke-direct {p0}, Lcom/htc/autorotatewidget/AutoRotateWidget;->findControls()Z

    move-result v0

    if-nez v0, :cond_2

    .line 91
    sget-object v0, Lcom/htc/autorotatewidget/AutoRotateWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Not all controls were found"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 96
    :cond_2
    new-instance v0, Lcom/htc/autorotatewidget/AutoRotateWidget$SettingButtonClickListener;

    invoke-direct {v0, p0, v4}, Lcom/htc/autorotatewidget/AutoRotateWidget$SettingButtonClickListener;-><init>(Lcom/htc/autorotatewidget/AutoRotateWidget;Lcom/htc/autorotatewidget/AutoRotateWidget$1;)V

    iput-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->m_settingButtonClickListener:Lcom/htc/autorotatewidget/AutoRotateWidget$SettingButtonClickListener;

    .line 97
    iget-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->m_buttonP:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {p0}, Lcom/htc/autorotatewidget/AutoRotateWidget;->isAutoRotateOn()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->initialize(I)V

    .line 98
    iget-boolean v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->bSupportLandscapeMode:Z

    if-eqz v0, :cond_3

    .line 99
    iget-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->m_buttonL:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {p0}, Lcom/htc/autorotatewidget/AutoRotateWidget;->isAutoRotateOn()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->initialize(I)V

    .line 101
    :cond_3
    invoke-direct {p0}, Lcom/htc/autorotatewidget/AutoRotateWidget;->initialControls()V

    .line 102
    invoke-direct {p0}, Lcom/htc/autorotatewidget/AutoRotateWidget;->initObserver()V

    .line 103
    invoke-direct {p0}, Lcom/htc/autorotatewidget/AutoRotateWidget;->bindListener()V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 127
    iget-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->m_buttonP:Lcom/htc/fusion/fx/controls/FxSettingButton;

    iget-object v1, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->m_settingButtonClickListener:Lcom/htc/autorotatewidget/AutoRotateWidget$SettingButtonClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->unbindClick(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 128
    iget-boolean v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->bSupportLandscapeMode:Z

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->m_buttonL:Lcom/htc/fusion/fx/controls/FxSettingButton;

    iget-object v1, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->m_settingButtonClickListener:Lcom/htc/autorotatewidget/AutoRotateWidget$SettingButtonClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->unbindClick(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 130
    :cond_0
    iput-object v2, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->m_settingButtonClickListener:Lcom/htc/autorotatewidget/AutoRotateWidget$SettingButtonClickListener;

    .line 132
    iget-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->mContentQueryMap:Landroid/content/ContentQueryMap;

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->mSettingsObserver:Lcom/htc/autorotatewidget/AutoRotateWidget$SettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->deleteObserver(Ljava/util/Observer;)V

    .line 135
    :cond_1
    iput-object v2, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->mContentQueryMap:Landroid/content/ContentQueryMap;

    .line 136
    iput-object v2, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->mSettingsObserver:Lcom/htc/autorotatewidget/AutoRotateWidget$SettingsObserver;

    .line 138
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->mStatus:I

    .line 139
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onDestroy()V

    .line 140
    return-void
.end method

.method protected onHostMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/16 v2, 0x1fa9

    .line 177
    sget-object v0, Lcom/htc/autorotatewidget/AutoRotateWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onHostMessage()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 191
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onHostMessage(Landroid/os/Message;)V

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 180
    :pswitch_0
    sget-object v0, Lcom/htc/autorotatewidget/AutoRotateWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "HOST_ORIENTATION_CHANGE_COMPLETE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 184
    :cond_1
    sget-object v0, Lcom/htc/autorotatewidget/AutoRotateWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mWorker.send(sMESSAGE_NON_UI_RENEW_AFTER_ROTATE);"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto :goto_0

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 119
    iget-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x1fa6

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 120
    iget-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x1fa7

    const-wide/16 v2, 0x1f4

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->sendDelayed(IJ)V

    .line 121
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->mStatus:I

    .line 122
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onPause()V

    .line 124
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x1fa7

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 110
    iget-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x1fa6

    const-wide/16 v2, 0x1f4

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->sendDelayed(IJ)V

    .line 111
    iget-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x1fa8

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 112
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget;->mStatus:I

    .line 113
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onResume()V

    .line 115
    return-void
.end method

.method public supportsLandscapeMode()Z
    .locals 2

    .prologue
    .line 211
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-nez v0, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7c

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
