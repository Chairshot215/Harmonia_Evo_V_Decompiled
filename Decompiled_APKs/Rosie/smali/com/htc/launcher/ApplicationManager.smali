.class public Lcom/htc/launcher/ApplicationManager;
.super Ljava/lang/Object;
.source "ApplicationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;
    }
.end annotation


# static fields
.field public static final ALL_PROGRAM_LIST_DEFAULT_PRIORITY:I = 0xc8

.field public static final ALL_PROGRAM_LIST_HIGHEST_PRIORITY:I = -0x80000000

.field public static final LIST_TYPE_APPLICATION:I = 0x1

.field public static final LIST_TYPE_APP_WIDGET:I = 0x2

.field public static final LIST_TYPE_HTC_FXWIDGET:I = 0x5

.field public static final LIST_TYPE_HTC_WIDGET:I = 0x4

.field public static final LIST_TYPE_SHORTCUT:I = 0x3

.field private static final NULL:Ljava/lang/String; = "null"

.field private static final TAG:Ljava/lang/String; = "ApplicationManager"

.field private static initialized:Z

.field private static final localLOGV:Z

.field private static sInstance:Lcom/htc/launcher/ApplicationManager;


# instance fields
.field hasDefault:Z

.field private mHideAppWidgetList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

.field private mHideApplicationList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

.field private mHideHtcFusionWidgetList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

.field private mHideHtcWidgetList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

.field private mHideShortCutList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

.field private mShowAppWidgetList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

.field private mShowApplicationList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

.field private mShowHtcFusionWidgetList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

.field private mShowHtcWidgetList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

.field private mShowShortCutList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/launcher/ApplicationManager;->initialized:Z

    .line 12
    new-instance v0, Lcom/htc/launcher/ApplicationManager;

    invoke-direct {v0}, Lcom/htc/launcher/ApplicationManager;-><init>()V

    sput-object v0, Lcom/htc/launcher/ApplicationManager;->sInstance:Lcom/htc/launcher/ApplicationManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-array v0, v1, [Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    iput-object v0, p0, Lcom/htc/launcher/ApplicationManager;->mShowApplicationList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 26
    new-array v0, v1, [Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    iput-object v0, p0, Lcom/htc/launcher/ApplicationManager;->mHideApplicationList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 27
    new-array v0, v1, [Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    iput-object v0, p0, Lcom/htc/launcher/ApplicationManager;->mShowAppWidgetList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 28
    new-array v0, v1, [Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    iput-object v0, p0, Lcom/htc/launcher/ApplicationManager;->mHideAppWidgetList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 29
    new-array v0, v1, [Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    iput-object v0, p0, Lcom/htc/launcher/ApplicationManager;->mHideHtcWidgetList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 30
    new-array v0, v1, [Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    iput-object v0, p0, Lcom/htc/launcher/ApplicationManager;->mHideHtcFusionWidgetList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 31
    new-array v0, v1, [Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    iput-object v0, p0, Lcom/htc/launcher/ApplicationManager;->mShowHtcWidgetList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 32
    new-array v0, v1, [Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    iput-object v0, p0, Lcom/htc/launcher/ApplicationManager;->mShowHtcFusionWidgetList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 33
    new-array v0, v1, [Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    iput-object v0, p0, Lcom/htc/launcher/ApplicationManager;->mShowShortCutList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 34
    new-array v0, v1, [Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    iput-object v0, p0, Lcom/htc/launcher/ApplicationManager;->mHideShortCutList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 175
    iput-boolean v1, p0, Lcom/htc/launcher/ApplicationManager;->hasDefault:Z

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 171
    invoke-static {p1}, Lcom/htc/launcher/WidgetPackageManager;->getModuleBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 172
    .local v0, moduleBundle:Landroid/os/Bundle;
    invoke-direct {p0, v0}, Lcom/htc/launcher/ApplicationManager;->initShowHideCustomizationList(Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/htc/launcher/ApplicationManager;->updateHidenAppList(Landroid/content/Context;)V

    .line 173
    return-void
.end method

.method private initList(Landroid/os/Bundle;)[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;
    .locals 8
    .parameter "inputBundle"

    .prologue
    .line 290
    if-nez p1, :cond_1

    .line 292
    const/4 v6, 0x0

    new-array v5, v6, [Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 313
    :cond_0
    return-object v5

    .line 294
    :cond_1
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v4

    .line 296
    .local v4, size:I
    new-array v5, v4, [Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 298
    .local v5, tempShowList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 299
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "plenty_set"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 301
    .local v2, key:Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 302
    .local v0, childBundle:Landroid/os/Bundle;
    new-instance v6, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    invoke-direct {v6}, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;-><init>()V

    aput-object v6, v5, v1

    .line 303
    aget-object v6, v5, v1

    add-int/lit8 v7, v1, 0x1

    iput v7, v6, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->order:I

    .line 304
    aget-object v6, v5, v1

    const-string v7, "package"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->packageName:Ljava/lang/String;

    .line 305
    aget-object v6, v5, v1

    const-string v7, "class"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->className:Ljava/lang/String;

    .line 306
    aget-object v6, v5, v1

    const-string v7, "widget_name"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->widgetName:Ljava/lang/String;

    .line 307
    const-string v6, "priority"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 308
    .local v3, priority:Ljava/lang/String;
    if-nez v3, :cond_2

    .line 309
    aget-object v6, v5, v1

    const/16 v7, 0xc8

    iput v7, v6, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->priority:I

    .line 298
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 311
    :cond_2
    aget-object v6, v5, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->priority:I

    goto :goto_1
.end method

.method private initShowHideCustomizationList(Landroid/os/Bundle;)V
    .locals 11
    .parameter "moduleBundle"

    .prologue
    .line 179
    const-string v10, "applications_show"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    .line 181
    .local v9, showBundle:Landroid/os/Bundle;
    invoke-direct {p0, v9}, Lcom/htc/launcher/ApplicationManager;->initList(Landroid/os/Bundle;)[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/launcher/ApplicationManager;->mShowApplicationList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 182
    iget-object v10, p0, Lcom/htc/launcher/ApplicationManager;->mShowApplicationList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    array-length v10, v10

    if-eqz v10, :cond_0

    .line 183
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/htc/launcher/ApplicationManager;->hasDefault:Z

    .line 193
    :cond_0
    const-string v10, "applications_hide"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 195
    .local v2, hideBundle:Landroid/os/Bundle;
    invoke-direct {p0, v2}, Lcom/htc/launcher/ApplicationManager;->initList(Landroid/os/Bundle;)[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/launcher/ApplicationManager;->mHideApplicationList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 205
    const-string v10, "app_widgets_show"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 207
    .local v1, appWidgetshowBundle:Landroid/os/Bundle;
    invoke-direct {p0, v1}, Lcom/htc/launcher/ApplicationManager;->initList(Landroid/os/Bundle;)[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/launcher/ApplicationManager;->mShowAppWidgetList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 216
    const-string v10, "app_widgets_hide"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 218
    .local v0, appWidgetHideBundle:Landroid/os/Bundle;
    invoke-direct {p0, v0}, Lcom/htc/launcher/ApplicationManager;->initList(Landroid/os/Bundle;)[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/launcher/ApplicationManager;->mHideAppWidgetList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 227
    const-string v10, "htc_widgets_show"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 229
    .local v6, htcWidgetshowBundle:Landroid/os/Bundle;
    invoke-direct {p0, v6}, Lcom/htc/launcher/ApplicationManager;->initList(Landroid/os/Bundle;)[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/launcher/ApplicationManager;->mShowHtcWidgetList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 240
    const-string v10, "htc_fusion_widgets_show"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 242
    .local v4, htcFusionWidgetshowBundle:Landroid/os/Bundle;
    invoke-direct {p0, v4}, Lcom/htc/launcher/ApplicationManager;->initList(Landroid/os/Bundle;)[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/launcher/ApplicationManager;->mShowHtcFusionWidgetList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 245
    const-string v10, "htc_widgets_hide"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 247
    .local v5, htcWidgetHideBundle:Landroid/os/Bundle;
    invoke-direct {p0, v5}, Lcom/htc/launcher/ApplicationManager;->initList(Landroid/os/Bundle;)[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/launcher/ApplicationManager;->mHideHtcWidgetList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 256
    const-string v10, "htc_fusion_widgets_hide"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 258
    .local v3, htcFusionWidgetHideBundle:Landroid/os/Bundle;
    invoke-direct {p0, v3}, Lcom/htc/launcher/ApplicationManager;->initList(Landroid/os/Bundle;)[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/launcher/ApplicationManager;->mHideHtcFusionWidgetList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 266
    const-string v10, "shortcut_hide"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 268
    .local v7, shortCutHideBundle:Landroid/os/Bundle;
    invoke-direct {p0, v7}, Lcom/htc/launcher/ApplicationManager;->initList(Landroid/os/Bundle;)[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/launcher/ApplicationManager;->mHideShortCutList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 277
    const-string v10, "shortcut_show"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 279
    .local v8, shortcutShowBundle:Landroid/os/Bundle;
    invoke-direct {p0, v8}, Lcom/htc/launcher/ApplicationManager;->initList(Landroid/os/Bundle;)[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/launcher/ApplicationManager;->mShowShortCutList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 287
    return-void
.end method

.method public static declared-synchronized instance(Landroid/content/Context;)Lcom/htc/launcher/ApplicationManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 45
    const-class v1, Lcom/htc/launcher/ApplicationManager;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/htc/launcher/ApplicationManager;->initialized:Z

    if-nez v0, :cond_0

    .line 46
    sget-object v0, Lcom/htc/launcher/ApplicationManager;->sInstance:Lcom/htc/launcher/ApplicationManager;

    invoke-direct {v0, p0}, Lcom/htc/launcher/ApplicationManager;->init(Landroid/content/Context;)V

    .line 47
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/launcher/ApplicationManager;->initialized:Z

    .line 49
    :cond_0
    sget-object v0, Lcom/htc/launcher/ApplicationManager;->sInstance:Lcom/htc/launcher/ApplicationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private updateHidenAppList(Landroid/content/Context;)V
    .locals 9
    .parameter "xContext"

    .prologue
    .line 19
    const-string v1, ""

    .line 20
    .local v1, AppList:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 21
    .local v3, Cr:Landroid/content/ContentResolver;
    const-string v6, "tweaks_rosie_hideapp"

    invoke-static {v3, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 22
    if-eqz v1, :cond_0

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 23
    :cond_1
    const-string v6, "#"

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, AppArr:[Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/launcher/ApplicationManager;->mHideApplicationList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    array-length v6, v6

    array-length v7, v0

    add-int/2addr v6, v7

    new-array v5, v6, [Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 25
    .local v5, myList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    iget-object v6, p0, Lcom/htc/launcher/ApplicationManager;->mHideApplicationList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    array-length v6, v6

    if-lt v4, v6, :cond_2

    .line 28
    const/4 v4, 0x0

    :goto_2
    array-length v6, v0

    if-lt v4, v6, :cond_3

    .line 36
    iput-object v5, p0, Lcom/htc/launcher/ApplicationManager;->mHideApplicationList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    goto :goto_0

    .line 26
    :cond_2
    iget-object v6, p0, Lcom/htc/launcher/ApplicationManager;->mHideApplicationList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    aget-object v6, v6, v4

    aput-object v6, v5, v4

    .line 25
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 29
    :cond_3
    aget-object v6, v0, v4

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 30
    .local v2, CompArr:[Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/launcher/ApplicationManager;->mHideApplicationList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    array-length v6, v6

    add-int/2addr v6, v4

    new-instance v7, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    invoke-direct {v7}, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;-><init>()V

    aput-object v7, v5, v6

    .line 31
    iget-object v6, p0, Lcom/htc/launcher/ApplicationManager;->mHideApplicationList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    array-length v6, v6

    add-int/2addr v6, v4

    aget-object v6, v5, v6

    add-int/lit8 v7, v4, 0x64

    iget-object v8, p0, Lcom/htc/launcher/ApplicationManager;->mHideApplicationList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    array-length v8, v8

    add-int/2addr v7, v8

    iput v7, v6, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->priority:I

    .line 32
    iget-object v6, p0, Lcom/htc/launcher/ApplicationManager;->mHideApplicationList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    array-length v6, v6

    add-int/2addr v6, v4

    aget-object v6, v5, v6

    iget-object v7, p0, Lcom/htc/launcher/ApplicationManager;->mHideApplicationList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    array-length v7, v7

    add-int/2addr v7, v4

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->order:I

    .line 33
    iget-object v6, p0, Lcom/htc/launcher/ApplicationManager;->mHideApplicationList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    array-length v6, v6

    add-int/2addr v6, v4

    aget-object v6, v5, v6

    const/4 v7, 0x0

    aget-object v7, v2, v7

    iput-object v7, v6, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->packageName:Ljava/lang/String;

    .line 34
    iget-object v6, p0, Lcom/htc/launcher/ApplicationManager;->mHideApplicationList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    array-length v6, v6

    add-int/2addr v6, v4

    aget-object v6, v5, v6

    const/4 v7, 0x1

    aget-object v7, v2, v7

    iput-object v7, v6, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->className:Ljava/lang/String;

    .line 28
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method


# virtual methods
.method public getCustomizationListPriority(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 8
    .parameter "packageName"
    .parameter "className"
    .parameter "listType"

    .prologue
    .line 123
    const-string v5, "null"

    .line 124
    .local v5, type:Ljava/lang/String;
    const/4 v6, 0x0

    new-array v2, v6, [Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 125
    .local v2, customizeList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;
    packed-switch p3, :pswitch_data_0

    .line 145
    :goto_0
    packed-switch p3, :pswitch_data_1

    .line 157
    move-object v1, v2

    .local v1, arr$:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v0, v1, v3

    .line 158
    .local v0, appInfo:Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;
    iget-object v6, v0, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->className:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, v0, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->className:Ljava/lang/String;

    const-string v7, "null"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, v0, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->className:Ljava/lang/String;

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 162
    :cond_0
    iget v6, v0, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->priority:I

    .line 167
    .end local v0           #appInfo:Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;
    :goto_2
    return v6

    .line 127
    .end local v1           #arr$:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :pswitch_0
    iget-object v2, p0, Lcom/htc/launcher/ApplicationManager;->mShowApplicationList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 128
    const-string v5, "Application"

    .line 129
    goto :goto_0

    .line 131
    :pswitch_1
    iget-object v2, p0, Lcom/htc/launcher/ApplicationManager;->mShowAppWidgetList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 132
    const-string v5, "App widget"

    .line 133
    goto :goto_0

    .line 135
    :pswitch_2
    iget-object v2, p0, Lcom/htc/launcher/ApplicationManager;->mShowShortCutList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 136
    const-string v5, "Shortcut"

    .line 137
    goto :goto_0

    .line 139
    :pswitch_3
    iget-object v2, p0, Lcom/htc/launcher/ApplicationManager;->mShowHtcWidgetList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 140
    const-string v5, "Htc widget"

    .line 142
    :pswitch_4
    iget-object v2, p0, Lcom/htc/launcher/ApplicationManager;->mShowHtcFusionWidgetList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 143
    const-string v5, "Htc widget FUSION"

    goto :goto_0

    .line 147
    :pswitch_5
    move-object v1, v2

    .restart local v1       #arr$:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;
    array-length v4, v1

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_3
    if-ge v3, v4, :cond_4

    aget-object v0, v1, v3

    .line 148
    .restart local v0       #appInfo:Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;
    iget-object v6, v0, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->widgetName:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, v0, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->widgetName:Ljava/lang/String;

    const-string v7, "null"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v0, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->widgetName:Ljava/lang/String;

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 152
    :cond_1
    iget v6, v0, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->priority:I

    goto :goto_2

    .line 147
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 157
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 167
    .end local v0           #appInfo:Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;
    :cond_4
    const/16 v6, 0xc8

    goto :goto_2

    .line 125
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 145
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_5
    .end packed-switch
.end method

.method public inHideCustomizationList(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 10
    .parameter "packageName"
    .parameter "classNameOrWidgetName"
    .parameter "listType"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 63
    const-string v5, "null"

    .line 64
    .local v5, type:Ljava/lang/String;
    new-array v2, v7, [Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 65
    .local v2, customizeList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;
    packed-switch p3, :pswitch_data_0

    .line 87
    :goto_0
    packed-switch p3, :pswitch_data_1

    .line 99
    move-object v1, v2

    .local v1, arr$:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v0, v1, v3

    .line 100
    .local v0, appInfo:Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;
    iget-object v8, v0, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->packageName:Ljava/lang/String;

    if-eqz v8, :cond_2

    iget-object v8, v0, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, v0, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->className:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, v0, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->className:Ljava/lang/String;

    const-string v9, "null"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, v0, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->className:Ljava/lang/String;

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 109
    .end local v0           #appInfo:Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;
    :cond_0
    :goto_2
    return v6

    .line 67
    .end local v1           #arr$:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :pswitch_0
    iget-object v2, p0, Lcom/htc/launcher/ApplicationManager;->mHideApplicationList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 68
    const-string v5, "Application"

    .line 69
    goto :goto_0

    .line 71
    :pswitch_1
    iget-object v2, p0, Lcom/htc/launcher/ApplicationManager;->mHideAppWidgetList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 72
    const-string v5, "App widget"

    .line 73
    goto :goto_0

    .line 75
    :pswitch_2
    iget-object v2, p0, Lcom/htc/launcher/ApplicationManager;->mHideShortCutList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 76
    const-string v5, "Shortcut"

    .line 77
    goto :goto_0

    .line 79
    :pswitch_3
    iget-object v2, p0, Lcom/htc/launcher/ApplicationManager;->mHideHtcWidgetList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 80
    const-string v5, "Htc widget"

    .line 81
    goto :goto_0

    .line 83
    :pswitch_4
    iget-object v2, p0, Lcom/htc/launcher/ApplicationManager;->mHideHtcFusionWidgetList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 84
    const-string v5, "Htc widget FUSION"

    goto :goto_0

    .line 89
    :pswitch_5
    move-object v1, v2

    .restart local v1       #arr$:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;
    array-length v4, v1

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_3
    if-ge v3, v4, :cond_3

    aget-object v0, v1, v3

    .line 90
    .restart local v0       #appInfo:Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;
    iget-object v8, v0, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->packageName:Ljava/lang/String;

    if-eqz v8, :cond_1

    iget-object v8, v0, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, v0, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->widgetName:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, v0, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->widgetName:Ljava/lang/String;

    const-string v9, "null"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, v0, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->widgetName:Ljava/lang/String;

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 89
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 99
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0           #appInfo:Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;
    :cond_3
    move v6, v7

    .line 109
    goto :goto_2

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 87
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_5
    .end packed-switch
.end method
