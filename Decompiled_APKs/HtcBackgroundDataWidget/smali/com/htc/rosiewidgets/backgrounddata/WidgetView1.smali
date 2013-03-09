.class public Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;
.super Lcom/htc/android/rosie/widget/Widget$Base;
.source "WidgetView1.java"

# interfaces
.implements Lcom/htc/rosiewidgets/backgrounddata/Constants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/rosiewidgets/backgrounddata/WidgetView1$SettingsObserver;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public Widget_Background_Data:Lcom/htc/rosiewidgets/backgrounddata/WidgetBackgroundData;

.field private mConfiguration:Landroid/content/res/Configuration;

.field private mContentQueryMap:Landroid/content/ContentQueryMap;

.field public mContext:Landroid/content/Context;

.field private mGetFxControls:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private mHost:Lcom/htc/android/rosie/widget/Widget$Host;

.field private mSettingsObserver:Lcom/htc/rosiewidgets/backgrounddata/WidgetView1$SettingsObserver;

.field private mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

.field private m_fxScene:Lcom/htc/fusion/fx/FxScene;

.field private m_scLand:Lcom/htc/fusion/fx/FxScene;

.field private m_scPort:Lcom/htc/fusion/fx/FxScene;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Lcom/htc/android/rosie/widget/Widget$Base;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->Widget_Background_Data:Lcom/htc/rosiewidgets/backgrounddata/WidgetBackgroundData;

    .line 26
    iput-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->mContext:Landroid/content/Context;

    .line 27
    iput-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->mContentQueryMap:Landroid/content/ContentQueryMap;

    .line 28
    iput-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->mSettingsObserver:Lcom/htc/rosiewidgets/backgrounddata/WidgetView1$SettingsObserver;

    .line 30
    iput-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->m_fxScene:Lcom/htc/fusion/fx/FxScene;

    .line 32
    iput-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->m_scPort:Lcom/htc/fusion/fx/FxScene;

    .line 33
    iput-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->m_scLand:Lcom/htc/fusion/fx/FxScene;

    .line 34
    iput-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->mConfiguration:Landroid/content/res/Configuration;

    .line 35
    iput-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->mHost:Lcom/htc/android/rosie/widget/Widget$Host;

    .line 36
    iput-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    .line 161
    new-instance v0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1$1;

    invoke-direct {v0, p0}, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1$1;-><init>(Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;)V

    iput-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->mGetFxControls:Ljava/lang/Runnable;

    .line 247
    new-instance v0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1$2;

    invoke-direct {v0, p0}, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1$2;-><init>(Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;)V

    iput-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->mHandler:Landroid/os/Handler;

    .line 282
    return-void
.end method

.method static synthetic access$000(Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->getFxControls()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;)Landroid/content/ContentQueryMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->mContentQueryMap:Landroid/content/ContentQueryMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;)Lcom/htc/rosiewidgets/backgrounddata/WidgetView1$SettingsObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->mSettingsObserver:Lcom/htc/rosiewidgets/backgrounddata/WidgetView1$SettingsObserver;

    return-object v0
.end method

.method private clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 239
    iget-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->mContentQueryMap:Landroid/content/ContentQueryMap;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->mSettingsObserver:Lcom/htc/rosiewidgets/backgrounddata/WidgetView1$SettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->deleteObserver(Ljava/util/Observer;)V

    .line 243
    :cond_0
    iput-object v2, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->mContentQueryMap:Landroid/content/ContentQueryMap;

    .line 244
    iput-object v2, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->mSettingsObserver:Lcom/htc/rosiewidgets/backgrounddata/WidgetView1$SettingsObserver;

    .line 245
    return-void
.end method

.method private getFxControls()V
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->m_fxScene:Lcom/htc/fusion/fx/FxScene;

    .line 158
    invoke-direct {p0}, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->initAutoSyncClass()V

    .line 159
    return-void
.end method

.method private initAutoSyncClass()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 197
    iget-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->Widget_Background_Data:Lcom/htc/rosiewidgets/backgrounddata/WidgetBackgroundData;

    if-eqz v0, :cond_0

    .line 199
    new-array v4, v1, [I

    .line 200
    .local v4, IntParam:[I
    const/4 v0, 0x5

    new-array v5, v0, [Ljava/lang/String;

    const-string v0, "button.settings_section"

    aput-object v0, v5, v1

    const/4 v0, 0x1

    const-string v1, "textlabel.Settings"

    aput-object v1, v5, v0

    const/4 v0, 0x2

    const/4 v1, 0x0

    aput-object v1, v5, v0

    const/4 v0, 0x3

    const-string v1, "on"

    aput-object v1, v5, v0

    const/4 v0, 0x4

    const-string v1, "off"

    aput-object v1, v5, v0

    .line 207
    .local v5, StrParam:[Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->Widget_Background_Data:Lcom/htc/rosiewidgets/backgrounddata/WidgetBackgroundData;

    iget-object v1, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->m_fxScene:Lcom/htc/fusion/fx/FxScene;

    iget-object v2, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Lcom/htc/rosiewidgets/backgrounddata/WidgetBackgroundData;->init(Lcom/htc/fusion/fx/FxScene;Landroid/content/Context;Landroid/os/Handler;[I[Ljava/lang/String;)V

    .line 214
    .end local v4           #IntParam:[I
    .end local v5           #StrParam:[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private initClass()V
    .locals 1

    .prologue
    .line 190
    new-instance v0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBackgroundData;

    invoke-direct {v0}, Lcom/htc/rosiewidgets/backgrounddata/WidgetBackgroundData;-><init>()V

    iput-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->Widget_Background_Data:Lcom/htc/rosiewidgets/backgrounddata/WidgetBackgroundData;

    .line 191
    invoke-direct {p0}, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->initAutoSyncClass()V

    .line 193
    return-void
.end method

.method private initObserver()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 218
    iget-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 219
    .local v6, contentResolver:Landroid/content/ContentResolver;
    if-eqz v6, :cond_0

    .line 221
    iget-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "name"

    aput-object v5, v2, v3

    const-string v3, "(name=?)"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 227
    .local v7, settingsCursor:Landroid/database/Cursor;
    new-instance v0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1$SettingsObserver;

    invoke-direct {v0, p0, v4}, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1$SettingsObserver;-><init>(Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;Lcom/htc/rosiewidgets/backgrounddata/WidgetView1$1;)V

    iput-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->mSettingsObserver:Lcom/htc/rosiewidgets/backgrounddata/WidgetView1$SettingsObserver;

    .line 228
    new-instance v0, Landroid/content/ContentQueryMap;

    const-string v1, "name"

    invoke-direct {v0, v7, v1, v8, v4}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->mContentQueryMap:Landroid/content/ContentQueryMap;

    .line 235
    .end local v7           #settingsCursor:Landroid/database/Cursor;
    :goto_0
    return-void

    .line 233
    :cond_0
    const-string v0, "HtcBackgroundDataWidget"

    const-string v1, "initObserver: contentResolver = null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private turnOffHandler()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x1f4

    .line 181
    iget-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1fa4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 182
    iget-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1fa5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 184
    iget-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1fa6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 185
    iget-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1fa7

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 186
    return-void
.end method

.method private turnOnHandler()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x1f4

    .line 171
    iget-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1fa5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 172
    iget-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1fa4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 174
    iget-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1fa7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 175
    iget-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1fa6

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 176
    return-void
.end method


# virtual methods
.method public getScene()Lcom/htc/fusion/fx/FxScene;
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->m_scPort:Lcom/htc/fusion/fx/FxScene;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->m_scLand:Lcom/htc/fusion/fx/FxScene;

    goto :goto_0
.end method

.method protected getScene(I)Lcom/htc/fusion/fx/FxScene;
    .locals 1
    .parameter "orientation"

    .prologue
    .line 124
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->m_scPort:Lcom/htc/fusion/fx/FxScene;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->m_scLand:Lcom/htc/fusion/fx/FxScene;

    goto :goto_0
.end method

.method protected onConfigurationChange(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 136
    iget-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    iget-object v1, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->mGetFxControls:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->cancel(Ljava/lang/Runnable;)V

    .line 139
    :cond_0
    iput-object p1, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->mConfiguration:Landroid/content/res/Configuration;

    .line 140
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "saved"

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->mHost:Lcom/htc/android/rosie/widget/Widget$Host;

    .line 45
    iget-object v2, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->mHost:Lcom/htc/android/rosie/widget/Widget$Host;

    invoke-interface {v2}, Lcom/htc/android/rosie/widget/Widget$Host;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->mConfiguration:Landroid/content/res/Configuration;

    .line 47
    invoke-virtual {p0}, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->loadInstanceData()Ljava/util/Properties;

    move-result-object v0

    .line 49
    .local v0, props:Ljava/util/Properties;
    if-eqz v0, :cond_0

    .line 51
    const-string v2, "HtcDataStripWidget"

    invoke-virtual {v0}, Ljava/util/Properties;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.htc.android.rosie.intent.extra.STYLE_SCENE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, s:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 57
    new-instance v2, Lcom/htc/android/rosie/widget/Widget$IllegalWidgetStateException;

    const-string v3, "scene extra should not be set!"

    invoke-direct {v2, v3}, Lcom/htc/android/rosie/widget/Widget$IllegalWidgetStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 60
    :cond_1
    invoke-virtual {p0}, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->mContext:Landroid/content/Context;

    .line 61
    sget-boolean v2, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->mContext:Landroid/content/Context;

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 63
    :cond_2
    invoke-virtual {p0}, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v2

    const-string v3, "Port/Setting_AutoSync_1x1.m10"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/htc/android/rosie/widget/Widget$Host;->createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->m_scLand:Lcom/htc/fusion/fx/FxScene;

    iput-object v2, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->m_scPort:Lcom/htc/fusion/fx/FxScene;

    .line 65
    invoke-virtual {p0}, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->m_fxScene:Lcom/htc/fusion/fx/FxScene;

    .line 66
    iget-object v2, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->m_fxScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/FxScene;->stop()V

    .line 67
    invoke-direct {p0}, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->initClass()V

    .line 68
    invoke-direct {p0}, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->initObserver()V

    .line 69
    iget-object v2, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x1fa6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 70
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 112
    const-string v0, "HtcBackgroundDataWidget"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->Widget_Background_Data:Lcom/htc/rosiewidgets/backgrounddata/WidgetBackgroundData;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->Widget_Background_Data:Lcom/htc/rosiewidgets/backgrounddata/WidgetBackgroundData;

    invoke-virtual {v0}, Lcom/htc/rosiewidgets/backgrounddata/WidgetBackgroundData;->unRegisterReceiver()V

    .line 117
    :cond_0
    invoke-direct {p0}, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->turnOffHandler()V

    .line 118
    invoke-direct {p0}, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->clear()V

    .line 119
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onDestroy()V

    .line 120
    return-void
.end method

.method protected onHostMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 144
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 153
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onHostMessage(Landroid/os/Message;)V

    .line 154
    :goto_0
    return-void

    .line 146
    :pswitch_0
    iget-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    iget-object v1, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->mGetFxControls:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->mGetFxControls:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onPause()V

    .line 97
    const-string v0, "HtcBackgroundDataWidget"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-direct {p0}, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->turnOffHandler()V

    .line 99
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/16 v2, 0x1f42

    .line 81
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onResume()V

    .line 82
    const-string v0, "HtcBackgroundDataWidget"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-direct {p0}, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->turnOnHandler()V

    .line 85
    iget-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 91
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onStart()V

    .line 75
    invoke-virtual {p0}, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/widget/Widget$Host;->getWorker()Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    .line 76
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->cancelAll()V

    .line 105
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetView1;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    .line 106
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onStop()V

    .line 107
    return-void
.end method
