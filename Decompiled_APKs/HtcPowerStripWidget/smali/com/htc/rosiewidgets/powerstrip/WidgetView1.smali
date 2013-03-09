.class public Lcom/htc/rosiewidgets/powerstrip/WidgetView1;
.super Lcom/htc/android/rosie/widget/Widget$Base;
.source "WidgetView1.java"

# interfaces
.implements Lcom/htc/rosiewidgets/powerstrip/Constants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/rosiewidgets/powerstrip/WidgetView1$SettingsObserver;
    }
.end annotation


# instance fields
.field public Widget_Background_Data:Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;

.field public Widget_Bluetooth:Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;

.field public Widget_ScreenTimeout:Lcom/htc/rosiewidgets/powerstrip/WidgetScreenTimeout;

.field public Widget_Screen_Brightness:Lcom/htc/rosiewidgets/powerstrip/WidgetScreenBrightness;

.field public Widget_Wifi:Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;

.field private mConfiguration:Landroid/content/res/Configuration;

.field public mContext:Landroid/content/Context;

.field private mGetFxControls:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mHost:Lcom/htc/android/rosie/widget/Widget$Host;

.field public mLinearLayout_bg:Landroid/widget/LinearLayout;

.field private mSecurityContentQueryMap:Landroid/content/ContentQueryMap;

.field private mSettingsObserver:Lcom/htc/rosiewidgets/powerstrip/WidgetView1$SettingsObserver;

.field private mSystemContentQueryMap:Landroid/content/ContentQueryMap;

.field private mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

.field private m_fxScene:Lcom/htc/fusion/fx/FxScene;

.field private m_scLand:Lcom/htc/fusion/fx/FxScene;

.field private m_scPort:Lcom/htc/fusion/fx/FxScene;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Lcom/htc/android/rosie/widget/Widget$Base;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->Widget_Screen_Brightness:Lcom/htc/rosiewidgets/powerstrip/WidgetScreenBrightness;

    .line 41
    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->Widget_ScreenTimeout:Lcom/htc/rosiewidgets/powerstrip/WidgetScreenTimeout;

    .line 42
    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->Widget_Wifi:Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;

    .line 43
    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->Widget_Background_Data:Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;

    .line 44
    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->Widget_Bluetooth:Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;

    .line 45
    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mLinearLayout_bg:Landroid/widget/LinearLayout;

    .line 46
    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mSecurityContentQueryMap:Landroid/content/ContentQueryMap;

    .line 47
    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mSettingsObserver:Lcom/htc/rosiewidgets/powerstrip/WidgetView1$SettingsObserver;

    .line 48
    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mSystemContentQueryMap:Landroid/content/ContentQueryMap;

    .line 50
    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mContext:Landroid/content/Context;

    .line 51
    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->m_scPort:Lcom/htc/fusion/fx/FxScene;

    .line 52
    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->m_scLand:Lcom/htc/fusion/fx/FxScene;

    .line 53
    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mConfiguration:Landroid/content/res/Configuration;

    .line 54
    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mHost:Lcom/htc/android/rosie/widget/Widget$Host;

    .line 55
    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    .line 219
    new-instance v0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1$1;

    invoke-direct {v0, p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetView1$1;-><init>(Lcom/htc/rosiewidgets/powerstrip/WidgetView1;)V

    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mGetFxControls:Ljava/lang/Runnable;

    .line 402
    new-instance v0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1$2;

    invoke-direct {v0, p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetView1$2;-><init>(Lcom/htc/rosiewidgets/powerstrip/WidgetView1;)V

    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mHandler:Landroid/os/Handler;

    .line 514
    return-void
.end method

.method static synthetic access$000(Lcom/htc/rosiewidgets/powerstrip/WidgetView1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->getFxControls()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/rosiewidgets/powerstrip/WidgetView1;)Landroid/content/ContentQueryMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mSystemContentQueryMap:Landroid/content/ContentQueryMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/rosiewidgets/powerstrip/WidgetView1;)Lcom/htc/rosiewidgets/powerstrip/WidgetView1$SettingsObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mSettingsObserver:Lcom/htc/rosiewidgets/powerstrip/WidgetView1$SettingsObserver;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/rosiewidgets/powerstrip/WidgetView1;)Landroid/content/ContentQueryMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mSecurityContentQueryMap:Landroid/content/ContentQueryMap;

    return-object v0
.end method

.method private getFxControls()V
    .locals 1

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->m_fxScene:Lcom/htc/fusion/fx/FxScene;

    .line 212
    invoke-direct {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->initBrightnessClass()V

    .line 213
    invoke-direct {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->initTimeoutClass()V

    .line 214
    invoke-direct {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->initWifiClass()V

    .line 215
    invoke-direct {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->initAutoSyncClass()V

    .line 216
    invoke-direct {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->initBTClass()V

    .line 217
    return-void
.end method

.method private initAutoSyncClass()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 324
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->Widget_Background_Data:Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;

    if-eqz v0, :cond_0

    .line 326
    new-array v4, v1, [I

    .line 328
    .local v4, IntParam:[I
    const/4 v0, 0x7

    new-array v5, v0, [Ljava/lang/String;

    const-string v0, "button.strip_panel_center03"

    aput-object v0, v5, v1

    const/4 v0, 0x1

    const-string v1, "textlabel.Settings_04"

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v2, v5, v0

    const/4 v0, 0x4

    aput-object v2, v5, v0

    const/4 v0, 0x5

    const-string v1, "on"

    aput-object v1, v5, v0

    const/4 v0, 0x6

    const-string v1, "off"

    aput-object v1, v5, v0

    .line 338
    .local v5, StrParam:[Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->Widget_Background_Data:Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;

    iget-object v1, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->m_fxScene:Lcom/htc/fusion/fx/FxScene;

    iget-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;->init(Lcom/htc/fusion/fx/FxScene;Landroid/content/Context;Landroid/os/Handler;[I[Ljava/lang/String;)V

    .line 345
    .end local v4           #IntParam:[I
    .end local v5           #StrParam:[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private initBTClass()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 349
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->Widget_Bluetooth:Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;

    if-eqz v0, :cond_0

    .line 351
    new-array v4, v1, [I

    .line 353
    .local v4, IntParam:[I
    const/4 v0, 0x7

    new-array v5, v0, [Ljava/lang/String;

    const-string v0, "button.strip_panel_right"

    aput-object v0, v5, v1

    const/4 v0, 0x1

    const-string v1, "textlabel.Settings_05"

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v2, v5, v0

    const/4 v0, 0x4

    aput-object v2, v5, v0

    const/4 v0, 0x5

    const-string v1, "on"

    aput-object v1, v5, v0

    const/4 v0, 0x6

    const-string v1, "off"

    aput-object v1, v5, v0

    .line 363
    .local v5, StrParam:[Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->Widget_Bluetooth:Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;

    iget-object v1, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->m_fxScene:Lcom/htc/fusion/fx/FxScene;

    iget-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->init(Lcom/htc/fusion/fx/FxScene;Landroid/content/Context;Landroid/os/Handler;[I[Ljava/lang/String;)V

    .line 370
    .end local v4           #IntParam:[I
    .end local v5           #StrParam:[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private initBrightnessClass()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 249
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->Widget_Screen_Brightness:Lcom/htc/rosiewidgets/powerstrip/WidgetScreenBrightness;

    if-eqz v0, :cond_0

    .line 251
    new-array v4, v1, [I

    .line 253
    .local v4, IntParam:[I
    const/4 v0, 0x7

    new-array v5, v0, [Ljava/lang/String;

    const-string v0, "button.strip_panel_left_3section"

    aput-object v0, v5, v1

    const/4 v0, 0x1

    const-string v1, "textlabel.Settings_01"

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    const-string v1, "on_01"

    aput-object v1, v5, v0

    const/4 v0, 0x4

    const-string v1, "on_02"

    aput-object v1, v5, v0

    const/4 v0, 0x5

    const-string v1, "on_03"

    aput-object v1, v5, v0

    const/4 v0, 0x6

    aput-object v2, v5, v0

    .line 263
    .local v5, StrParam:[Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->Widget_Screen_Brightness:Lcom/htc/rosiewidgets/powerstrip/WidgetScreenBrightness;

    iget-object v1, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->m_fxScene:Lcom/htc/fusion/fx/FxScene;

    iget-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenBrightness;->init(Lcom/htc/fusion/fx/FxScene;Landroid/content/Context;Landroid/os/Handler;[I[Ljava/lang/String;)V

    .line 270
    .end local v4           #IntParam:[I
    .end local v5           #StrParam:[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private initClass()V
    .locals 1

    .prologue
    .line 234
    new-instance v0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenBrightness;

    invoke-direct {v0}, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenBrightness;-><init>()V

    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->Widget_Screen_Brightness:Lcom/htc/rosiewidgets/powerstrip/WidgetScreenBrightness;

    .line 235
    new-instance v0, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenTimeout;

    invoke-direct {v0}, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenTimeout;-><init>()V

    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->Widget_ScreenTimeout:Lcom/htc/rosiewidgets/powerstrip/WidgetScreenTimeout;

    .line 236
    new-instance v0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;

    invoke-direct {v0}, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;-><init>()V

    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->Widget_Wifi:Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;

    .line 237
    new-instance v0, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;

    invoke-direct {v0}, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;-><init>()V

    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->Widget_Background_Data:Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;

    .line 238
    new-instance v0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;

    invoke-direct {v0}, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;-><init>()V

    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->Widget_Bluetooth:Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;

    .line 240
    invoke-direct {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->initBrightnessClass()V

    .line 241
    invoke-direct {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->initTimeoutClass()V

    .line 242
    invoke-direct {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->initWifiClass()V

    .line 243
    invoke-direct {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->initAutoSyncClass()V

    .line 244
    invoke-direct {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->initBTClass()V

    .line 245
    return-void
.end method

.method private initObserver()V
    .locals 14

    .prologue
    const/4 v8, 0x0

    const/4 v13, 0x1

    const/4 v4, 0x0

    .line 374
    iget-object v1, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 376
    .local v0, contentResolver:Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 378
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "name"

    aput-object v3, v2, v8

    const-string v3, "(name=?)"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 385
    .local v12, SystemSettingsCursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    new-array v7, v13, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v7, v8

    const-string v8, "(name=?)"

    move-object v9, v4

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 392
    .local v11, SecureSettingsCursor:Landroid/database/Cursor;
    new-instance v1, Lcom/htc/rosiewidgets/powerstrip/WidgetView1$SettingsObserver;

    invoke-direct {v1, p0, v4}, Lcom/htc/rosiewidgets/powerstrip/WidgetView1$SettingsObserver;-><init>(Lcom/htc/rosiewidgets/powerstrip/WidgetView1;Lcom/htc/rosiewidgets/powerstrip/WidgetView1$1;)V

    iput-object v1, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mSettingsObserver:Lcom/htc/rosiewidgets/powerstrip/WidgetView1$SettingsObserver;

    .line 393
    new-instance v1, Landroid/content/ContentQueryMap;

    const-string v2, "name"

    invoke-direct {v1, v12, v2, v13, v4}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v1, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mSystemContentQueryMap:Landroid/content/ContentQueryMap;

    .line 394
    new-instance v1, Landroid/content/ContentQueryMap;

    const-string v2, "name"

    invoke-direct {v1, v11, v2, v13, v4}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v1, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mSecurityContentQueryMap:Landroid/content/ContentQueryMap;

    .line 400
    .end local v11           #SecureSettingsCursor:Landroid/database/Cursor;
    .end local v12           #SystemSettingsCursor:Landroid/database/Cursor;
    :goto_0
    return-void

    .line 398
    :cond_0
    const-string v1, "HtcPowerStripWidget"

    const-string v2, "initOberver: contentResolver = null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initTimeoutClass()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 274
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->Widget_ScreenTimeout:Lcom/htc/rosiewidgets/powerstrip/WidgetScreenTimeout;

    if-eqz v0, :cond_0

    .line 276
    new-array v4, v1, [I

    .line 278
    .local v4, IntParam:[I
    const/4 v0, 0x7

    new-array v5, v0, [Ljava/lang/String;

    const-string v0, "button.strip_panel_center01"

    aput-object v0, v5, v1

    const/4 v0, 0x1

    const-string v1, "textlabel.Settings_02"

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    const-string v1, "on_01"

    aput-object v1, v5, v0

    const/4 v0, 0x4

    const-string v1, "on_02"

    aput-object v1, v5, v0

    const/4 v0, 0x5

    const-string v1, "on_03"

    aput-object v1, v5, v0

    const/4 v0, 0x6

    aput-object v2, v5, v0

    .line 288
    .local v5, StrParam:[Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->Widget_ScreenTimeout:Lcom/htc/rosiewidgets/powerstrip/WidgetScreenTimeout;

    iget-object v1, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->m_fxScene:Lcom/htc/fusion/fx/FxScene;

    iget-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenTimeout;->init(Lcom/htc/fusion/fx/FxScene;Landroid/content/Context;Landroid/os/Handler;[I[Ljava/lang/String;)V

    .line 295
    .end local v4           #IntParam:[I
    .end local v5           #StrParam:[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private initWifiClass()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 299
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->Widget_Wifi:Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;

    if-eqz v0, :cond_0

    .line 301
    new-array v4, v1, [I

    .line 303
    .local v4, IntParam:[I
    const/4 v0, 0x7

    new-array v5, v0, [Ljava/lang/String;

    const-string v0, "button.strip_panel_center02"

    aput-object v0, v5, v1

    const/4 v0, 0x1

    const-string v1, "textlabel.Settings_03"

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v2, v5, v0

    const/4 v0, 0x4

    aput-object v2, v5, v0

    const/4 v0, 0x5

    const-string v1, "on"

    aput-object v1, v5, v0

    const/4 v0, 0x6

    const-string v1, "off"

    aput-object v1, v5, v0

    .line 313
    .local v5, StrParam:[Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->Widget_Wifi:Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;

    iget-object v1, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->m_fxScene:Lcom/htc/fusion/fx/FxScene;

    iget-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->init(Lcom/htc/fusion/fx/FxScene;Landroid/content/Context;Landroid/os/Handler;[I[Ljava/lang/String;)V

    .line 320
    .end local v4           #IntParam:[I
    .end local v5           #StrParam:[Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public getScene()Lcom/htc/fusion/fx/FxScene;
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->m_scPort:Lcom/htc/fusion/fx/FxScene;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->m_scLand:Lcom/htc/fusion/fx/FxScene;

    goto :goto_0
.end method

.method protected getScene(I)Lcom/htc/fusion/fx/FxScene;
    .locals 1
    .parameter "orientation"

    .prologue
    .line 170
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->m_scPort:Lcom/htc/fusion/fx/FxScene;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->m_scLand:Lcom/htc/fusion/fx/FxScene;

    goto :goto_0
.end method

.method protected onConfigurationChange(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 180
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 182
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    iget-object v1, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mGetFxControls:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->cancel(Ljava/lang/Runnable;)V

    .line 186
    :cond_0
    iput-object p1, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mConfiguration:Landroid/content/res/Configuration;

    .line 187
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedState"

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mHost:Lcom/htc/android/rosie/widget/Widget$Host;

    .line 65
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mHost:Lcom/htc/android/rosie/widget/Widget$Host;

    invoke-interface {v0}, Lcom/htc/android/rosie/widget/Widget$Host;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mConfiguration:Landroid/content/res/Configuration;

    .line 67
    invoke-virtual {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    const-string v1, "Port/Setting_PowerDashboard_4x1.m10"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host;->createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->m_scLand:Lcom/htc/fusion/fx/FxScene;

    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->m_scPort:Lcom/htc/fusion/fx/FxScene;

    .line 69
    invoke-virtual {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->m_fxScene:Lcom/htc/fusion/fx/FxScene;

    .line 70
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->m_fxScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxScene;->stop()V

    .line 72
    invoke-virtual {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mContext:Landroid/content/Context;

    .line 74
    invoke-direct {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->initClass()V

    .line 75
    invoke-direct {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->initObserver()V

    .line 76
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 165
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onDestroy()V

    .line 166
    return-void
.end method

.method protected onHostMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 192
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 205
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onHostMessage(Landroid/os/Message;)V

    .line 206
    :goto_0
    return-void

    .line 195
    :pswitch_0
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    iget-object v1, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mGetFxControls:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mGetFxControls:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x32

    .line 139
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onPause()V

    .line 141
    const-string v0, "HtcPowerStripWidget"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1fa4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 144
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1fa5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 147
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1fa6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 148
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1fa7

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 149
    return-void
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/16 v6, 0x1f48

    const/16 v5, 0x1f47

    const/16 v4, 0x1f46

    const/16 v3, 0x1f45

    const/16 v2, 0x1f42

    .line 88
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onResume()V

    .line 90
    const-string v0, "HtcPowerStripWidget"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 99
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 106
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 113
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 115
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 118
    :cond_3
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 120
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 122
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 125
    :cond_4
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 128
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1fa5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 129
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1fa4

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 132
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1fa7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 133
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1fa6

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 134
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onStart()V

    .line 82
    invoke-virtual {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/widget/Widget$Host;->getWorker()Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    .line 83
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->cancelAll()V

    .line 158
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    .line 159
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onStop()V

    .line 160
    return-void
.end method
