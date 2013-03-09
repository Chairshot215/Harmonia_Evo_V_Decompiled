.class public Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;
.super Lcom/htc/android/rosie/widget/Widget$Base;
.source "WidgetView1.java"

# interfaces
.implements Lcom/htc/rosiewidgets/screenbrightness/Constants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/rosiewidgets/screenbrightness/WidgetView1$SettingsObserver;
    }
.end annotation


# instance fields
.field public Widget_Screen_Brightness:Lcom/htc/rosiewidgets/screenbrightness/WidgetScreenBrightness;

.field private mConfiguration:Landroid/content/res/Configuration;

.field public mContext:Landroid/content/Context;

.field private mGetFxControls:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mHost:Lcom/htc/android/rosie/widget/Widget$Host;

.field public mLinearLayout_bg:Landroid/widget/LinearLayout;

.field private mSecurityContentQueryMap:Landroid/content/ContentQueryMap;

.field private mSettingsObserver:Lcom/htc/rosiewidgets/screenbrightness/WidgetView1$SettingsObserver;

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

    .line 20
    invoke-direct {p0}, Lcom/htc/android/rosie/widget/Widget$Base;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->Widget_Screen_Brightness:Lcom/htc/rosiewidgets/screenbrightness/WidgetScreenBrightness;

    .line 23
    iput-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->mLinearLayout_bg:Landroid/widget/LinearLayout;

    .line 24
    iput-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->mSecurityContentQueryMap:Landroid/content/ContentQueryMap;

    .line 25
    iput-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->mSettingsObserver:Lcom/htc/rosiewidgets/screenbrightness/WidgetView1$SettingsObserver;

    .line 26
    iput-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->mSystemContentQueryMap:Landroid/content/ContentQueryMap;

    .line 28
    iput-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->mContext:Landroid/content/Context;

    .line 29
    iput-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->m_scPort:Lcom/htc/fusion/fx/FxScene;

    .line 30
    iput-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->m_scLand:Lcom/htc/fusion/fx/FxScene;

    .line 31
    iput-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->mConfiguration:Landroid/content/res/Configuration;

    .line 32
    iput-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->mHost:Lcom/htc/android/rosie/widget/Widget$Host;

    .line 33
    iput-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    .line 145
    new-instance v0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1$1;

    invoke-direct {v0, p0}, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1$1;-><init>(Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;)V

    iput-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->mGetFxControls:Ljava/lang/Runnable;

    .line 201
    new-instance v0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1$2;

    invoke-direct {v0, p0}, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1$2;-><init>(Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;)V

    iput-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->mHandler:Landroid/os/Handler;

    .line 242
    return-void
.end method

.method static synthetic access$000(Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->getFxControls()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;)Landroid/content/ContentQueryMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->mSystemContentQueryMap:Landroid/content/ContentQueryMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;)Lcom/htc/rosiewidgets/screenbrightness/WidgetView1$SettingsObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->mSettingsObserver:Lcom/htc/rosiewidgets/screenbrightness/WidgetView1$SettingsObserver;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;)Landroid/content/ContentQueryMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->mSecurityContentQueryMap:Landroid/content/ContentQueryMap;

    return-object v0
.end method

.method private getFxControls()V
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->m_fxScene:Lcom/htc/fusion/fx/FxScene;

    .line 143
    invoke-direct {p0}, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->initBrightnessClass()V

    .line 144
    return-void
.end method

.method private initBrightnessClass()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 160
    iget-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->Widget_Screen_Brightness:Lcom/htc/rosiewidgets/screenbrightness/WidgetScreenBrightness;

    if-eqz v0, :cond_0

    .line 162
    new-array v4, v1, [I

    .line 163
    .local v4, IntParam:[I
    const/4 v0, 0x7

    new-array v5, v0, [Ljava/lang/String;

    const-string v0, "button.settings_section"

    aput-object v0, v5, v1

    const/4 v0, 0x1

    const-string v1, "textlabel.Settings"

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

    .line 171
    .local v5, StrParam:[Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->Widget_Screen_Brightness:Lcom/htc/rosiewidgets/screenbrightness/WidgetScreenBrightness;

    iget-object v1, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->m_fxScene:Lcom/htc/fusion/fx/FxScene;

    iget-object v2, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Lcom/htc/rosiewidgets/screenbrightness/WidgetScreenBrightness;->init(Lcom/htc/fusion/fx/FxScene;Landroid/content/Context;Landroid/os/Handler;[I[Ljava/lang/String;)V

    .line 173
    .end local v4           #IntParam:[I
    .end local v5           #StrParam:[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private initClass()V
    .locals 1

    .prologue
    .line 155
    new-instance v0, Lcom/htc/rosiewidgets/screenbrightness/WidgetScreenBrightness;

    invoke-direct {v0}, Lcom/htc/rosiewidgets/screenbrightness/WidgetScreenBrightness;-><init>()V

    iput-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->Widget_Screen_Brightness:Lcom/htc/rosiewidgets/screenbrightness/WidgetScreenBrightness;

    .line 156
    invoke-direct {p0}, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->initBrightnessClass()V

    .line 157
    return-void
.end method

.method private initObserver()V
    .locals 14

    .prologue
    const/4 v8, 0x0

    const/4 v13, 0x1

    const/4 v4, 0x0

    .line 176
    iget-object v1, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 177
    .local v0, contentResolver:Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 179
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "name"

    aput-object v3, v2, v8

    const-string v3, "(name=?)"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 185
    .local v12, SystemSettingsCursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->mContext:Landroid/content/Context;

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

    .line 191
    .local v11, SecureSettingsCursor:Landroid/database/Cursor;
    new-instance v1, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1$SettingsObserver;

    invoke-direct {v1, p0, v4}, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1$SettingsObserver;-><init>(Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;Lcom/htc/rosiewidgets/screenbrightness/WidgetView1$1;)V

    iput-object v1, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->mSettingsObserver:Lcom/htc/rosiewidgets/screenbrightness/WidgetView1$SettingsObserver;

    .line 192
    new-instance v1, Landroid/content/ContentQueryMap;

    const-string v2, "name"

    invoke-direct {v1, v12, v2, v13, v4}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v1, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->mSystemContentQueryMap:Landroid/content/ContentQueryMap;

    .line 193
    new-instance v1, Landroid/content/ContentQueryMap;

    const-string v2, "name"

    invoke-direct {v1, v11, v2, v13, v4}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v1, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->mSecurityContentQueryMap:Landroid/content/ContentQueryMap;

    .line 199
    .end local v11           #SecureSettingsCursor:Landroid/database/Cursor;
    .end local v12           #SystemSettingsCursor:Landroid/database/Cursor;
    :goto_0
    return-void

    .line 197
    :cond_0
    const-string v1, "HtcScreenBrightnessWidget"

    const-string v2, "initOberver: contentResolver = null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getScene()Lcom/htc/fusion/fx/FxScene;
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->m_scPort:Lcom/htc/fusion/fx/FxScene;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->m_scLand:Lcom/htc/fusion/fx/FxScene;

    goto :goto_0
.end method

.method protected getScene(I)Lcom/htc/fusion/fx/FxScene;
    .locals 1
    .parameter "orientation"

    .prologue
    .line 107
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->m_scPort:Lcom/htc/fusion/fx/FxScene;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->m_scLand:Lcom/htc/fusion/fx/FxScene;

    goto :goto_0
.end method

.method protected onConfigurationChange(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 116
    iget-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    iget-object v1, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->mGetFxControls:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->cancel(Ljava/lang/Runnable;)V

    .line 120
    :cond_0
    iput-object p1, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->mConfiguration:Landroid/content/res/Configuration;

    .line 121
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedState"

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->mHost:Lcom/htc/android/rosie/widget/Widget$Host;

    .line 40
    iget-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->mHost:Lcom/htc/android/rosie/widget/Widget$Host;

    invoke-interface {v0}, Lcom/htc/android/rosie/widget/Widget$Host;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->mConfiguration:Landroid/content/res/Configuration;

    .line 42
    invoke-virtual {p0}, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    const-string v1, "Port/Setting_Screen_Brightness_1x1.m10"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host;->createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->m_scLand:Lcom/htc/fusion/fx/FxScene;

    iput-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->m_scPort:Lcom/htc/fusion/fx/FxScene;

    .line 44
    invoke-virtual {p0}, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->m_fxScene:Lcom/htc/fusion/fx/FxScene;

    .line 45
    iget-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->m_fxScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxScene;->stop()V

    .line 46
    invoke-virtual {p0}, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->mContext:Landroid/content/Context;

    .line 47
    invoke-direct {p0}, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->initClass()V

    .line 48
    invoke-direct {p0}, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->initObserver()V

    .line 49
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 102
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onDestroy()V

    .line 103
    return-void
.end method

.method protected onHostMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 125
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 138
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onHostMessage(Landroid/os/Message;)V

    .line 139
    :goto_0
    return-void

    .line 128
    :pswitch_0
    iget-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    iget-object v1, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->mGetFxControls:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->mGetFxControls:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x1f4

    .line 76
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onPause()V

    .line 78
    const-string v0, "HtcPowerStripWidget"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1fa4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 82
    iget-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1fa5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 84
    iget-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1fa6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 85
    iget-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1fa7

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 86
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x1f4

    const/16 v1, 0x1f48

    .line 59
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onResume()V

    .line 61
    iget-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 68
    iget-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1fa5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 69
    iget-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1fa4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 71
    iget-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1fa7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 72
    iget-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1fa6

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 73
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onStart()V

    .line 55
    invoke-virtual {p0}, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/widget/Widget$Host;->getWorker()Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    .line 56
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->cancelAll()V

    .line 95
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/rosiewidgets/screenbrightness/WidgetView1;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    .line 96
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onStop()V

    .line 97
    return-void
.end method
