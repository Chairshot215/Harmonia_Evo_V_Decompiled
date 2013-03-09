.class public Lcom/htc/home/personalize/ApplicationManager;
.super Ljava/lang/Object;
.source "ApplicationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;
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

.field private static sInstance:Lcom/htc/home/personalize/ApplicationManager;


# instance fields
.field private mHideAppWidgetList:[Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

.field private mHideApplicationList:[Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

.field private mHideHtcFusionWidgetList:[Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

.field private mHideHtcWidgetList:[Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

.field private mHideShortCutList:[Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

.field private mShowAppWidgetList:[Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

.field private mShowApplicationList:[Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

.field private mShowHtcFusionWidgetList:[Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

.field private mShowHtcWidgetList:[Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

.field private mShowShortCutList:[Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/home/personalize/ApplicationManager;->initialized:Z

    .line 13
    new-instance v0, Lcom/htc/home/personalize/ApplicationManager;

    invoke-direct {v0}, Lcom/htc/home/personalize/ApplicationManager;-><init>()V

    sput-object v0, Lcom/htc/home/personalize/ApplicationManager;->sInstance:Lcom/htc/home/personalize/ApplicationManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-array v0, v1, [Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

    iput-object v0, p0, Lcom/htc/home/personalize/ApplicationManager;->mShowApplicationList:[Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

    .line 27
    new-array v0, v1, [Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

    iput-object v0, p0, Lcom/htc/home/personalize/ApplicationManager;->mHideApplicationList:[Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

    .line 28
    new-array v0, v1, [Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

    iput-object v0, p0, Lcom/htc/home/personalize/ApplicationManager;->mShowAppWidgetList:[Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

    .line 29
    new-array v0, v1, [Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

    iput-object v0, p0, Lcom/htc/home/personalize/ApplicationManager;->mHideAppWidgetList:[Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

    .line 30
    new-array v0, v1, [Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

    iput-object v0, p0, Lcom/htc/home/personalize/ApplicationManager;->mHideHtcWidgetList:[Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

    .line 31
    new-array v0, v1, [Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

    iput-object v0, p0, Lcom/htc/home/personalize/ApplicationManager;->mHideHtcFusionWidgetList:[Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

    .line 32
    new-array v0, v1, [Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

    iput-object v0, p0, Lcom/htc/home/personalize/ApplicationManager;->mShowHtcWidgetList:[Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

    .line 33
    new-array v0, v1, [Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

    iput-object v0, p0, Lcom/htc/home/personalize/ApplicationManager;->mShowHtcFusionWidgetList:[Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

    .line 34
    new-array v0, v1, [Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

    iput-object v0, p0, Lcom/htc/home/personalize/ApplicationManager;->mShowShortCutList:[Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

    .line 35
    new-array v0, v1, [Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

    iput-object v0, p0, Lcom/htc/home/personalize/ApplicationManager;->mHideShortCutList:[Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

    .line 37
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 171
    invoke-static {p1}, Lcom/htc/home/personalize/util/Utilities;->getModuleBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 172
    .local v0, moduleBundle:Landroid/os/Bundle;
    invoke-direct {p0, v0}, Lcom/htc/home/personalize/ApplicationManager;->initShowHideCustomizationList(Landroid/os/Bundle;)V

    .line 173
    return-void
.end method

.method private initList(Landroid/os/Bundle;)[Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;
    .locals 8
    .parameter "inputBundle"

    .prologue
    .line 226
    if-nez p1, :cond_1

    .line 227
    const/4 v6, 0x0

    new-array v5, v6, [Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

    .line 248
    :cond_0
    return-object v5

    .line 230
    :cond_1
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v4

    .line 232
    .local v4, size:I
    new-array v5, v4, [Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

    .line 234
    .local v5, tempShowList:[Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 235
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

    .line 237
    .local v2, key:Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 238
    .local v0, childBundle:Landroid/os/Bundle;
    new-instance v6, Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

    invoke-direct {v6}, Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;-><init>()V

    aput-object v6, v5, v1

    .line 239
    aget-object v6, v5, v1

    const-string v7, "package"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;->packageName:Ljava/lang/String;

    .line 240
    aget-object v6, v5, v1

    const-string v7, "class"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;->className:Ljava/lang/String;

    .line 241
    aget-object v6, v5, v1

    const-string v7, "widget_name"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;->widgetName:Ljava/lang/String;

    .line 242
    const-string v6, "priority"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 243
    .local v3, priority:Ljava/lang/String;
    if-nez v3, :cond_2

    .line 244
    aget-object v6, v5, v1

    const/16 v7, 0xc8

    iput v7, v6, Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;->priority:I

    .line 234
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 246
    :cond_2
    aget-object v6, v5, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;->priority:I

    goto :goto_1
.end method

.method private initShowHideCustomizationList(Landroid/os/Bundle;)V
    .locals 11
    .parameter "moduleBundle"

    .prologue
    .line 177
    const-string v10, "applications_show"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    .line 179
    .local v9, showBundle:Landroid/os/Bundle;
    invoke-direct {p0, v9}, Lcom/htc/home/personalize/ApplicationManager;->initList(Landroid/os/Bundle;)[Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/home/personalize/ApplicationManager;->mShowApplicationList:[Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

    .line 182
    const-string v10, "applications_hide"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 184
    .local v2, hideBundle:Landroid/os/Bundle;
    invoke-direct {p0, v2}, Lcom/htc/home/personalize/ApplicationManager;->initList(Landroid/os/Bundle;)[Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/home/personalize/ApplicationManager;->mHideApplicationList:[Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

    .line 187
    const-string v10, "app_widgets_show"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 189
    .local v1, appWidgetshowBundle:Landroid/os/Bundle;
    invoke-direct {p0, v1}, Lcom/htc/home/personalize/ApplicationManager;->initList(Landroid/os/Bundle;)[Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/home/personalize/ApplicationManager;->mShowAppWidgetList:[Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

    .line 192
    const-string v10, "app_widgets_hide"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 194
    .local v0, appWidgetHideBundle:Landroid/os/Bundle;
    invoke-direct {p0, v0}, Lcom/htc/home/personalize/ApplicationManager;->initList(Landroid/os/Bundle;)[Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/home/personalize/ApplicationManager;->mHideAppWidgetList:[Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

    .line 197
    const-string v10, "htc_widgets_show"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 199
    .local v6, htcWidgetshowBundle:Landroid/os/Bundle;
    invoke-direct {p0, v6}, Lcom/htc/home/personalize/ApplicationManager;->initList(Landroid/os/Bundle;)[Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/home/personalize/ApplicationManager;->mShowHtcWidgetList:[Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

    .line 202
    const-string v10, "htc_fusion_widgets_show"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 204
    .local v4, htcFusionWidgetshowBundle:Landroid/os/Bundle;
    invoke-direct {p0, v4}, Lcom/htc/home/personalize/ApplicationManager;->initList(Landroid/os/Bundle;)[Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/home/personalize/ApplicationManager;->mShowHtcFusionWidgetList:[Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

    .line 207
    const-string v10, "htc_widgets_hide"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 209
    .local v5, htcWidgetHideBundle:Landroid/os/Bundle;
    invoke-direct {p0, v5}, Lcom/htc/home/personalize/ApplicationManager;->initList(Landroid/os/Bundle;)[Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/home/personalize/ApplicationManager;->mHideHtcWidgetList:[Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

    .line 212
    const-string v10, "htc_fusion_widgets_hide"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 214
    .local v3, htcFusionWidgetHideBundle:Landroid/os/Bundle;
    invoke-direct {p0, v3}, Lcom/htc/home/personalize/ApplicationManager;->initList(Landroid/os/Bundle;)[Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/home/personalize/ApplicationManager;->mHideHtcFusionWidgetList:[Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

    .line 216
    const-string v10, "shortcut_hide"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 218
    .local v7, shortCutHideBundle:Landroid/os/Bundle;
    invoke-direct {p0, v7}, Lcom/htc/home/personalize/ApplicationManager;->initList(Landroid/os/Bundle;)[Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/home/personalize/ApplicationManager;->mHideShortCutList:[Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

    .line 220
    const-string v10, "shortcut_show"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 222
    .local v8, shortcutShowBundle:Landroid/os/Bundle;
    invoke-direct {p0, v8}, Lcom/htc/home/personalize/ApplicationManager;->initList(Landroid/os/Bundle;)[Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/home/personalize/ApplicationManager;->mShowShortCutList:[Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

    .line 223
    return-void
.end method

.method public static declared-synchronized instance(Landroid/content/Context;)Lcom/htc/home/personalize/ApplicationManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 45
    const-class v1, Lcom/htc/home/personalize/ApplicationManager;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/htc/home/personalize/ApplicationManager;->initialized:Z

    if-nez v0, :cond_0

    .line 46
    sget-object v0, Lcom/htc/home/personalize/ApplicationManager;->sInstance:Lcom/htc/home/personalize/ApplicationManager;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/ApplicationManager;->init(Landroid/content/Context;)V

    .line 47
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/home/personalize/ApplicationManager;->initialized:Z

    .line 49
    :cond_0
    sget-object v0, Lcom/htc/home/personalize/ApplicationManager;->sInstance:Lcom/htc/home/personalize/ApplicationManager;
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

    new-array v2, v6, [Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

    .line 125
    .local v2, customizeList:[Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;
    packed-switch p3, :pswitch_data_0

    .line 145
    :goto_0
    packed-switch p3, :pswitch_data_1

    .line 157
    move-object v1, v2

    .local v1, arr$:[Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v0, v1, v3

    .line 158
    .local v0, appInfo:Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;
    iget-object v6, v0, Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;->className:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, v0, Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;->className:Ljava/lang/String;

    const-string v7, "null"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, v0, Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;->className:Ljava/lang/String;

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 162
    :cond_0
    iget v6, v0, Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;->priority:I

    .line 167
    .end local v0           #appInfo:Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;
    :goto_2
    return v6

    .line 127
    .end local v1           #arr$:[Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :pswitch_0
    iget-object v2, p0, Lcom/htc/home/personalize/ApplicationManager;->mShowApplicationList:[Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

    .line 128
    const-string v5, "Application"

    .line 129
    goto :goto_0

    .line 131
    :pswitch_1
    iget-object v2, p0, Lcom/htc/home/personalize/ApplicationManager;->mShowAppWidgetList:[Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

    .line 132
    const-string v5, "App widget"

    .line 133
    goto :goto_0

    .line 135
    :pswitch_2
    iget-object v2, p0, Lcom/htc/home/personalize/ApplicationManager;->mShowShortCutList:[Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

    .line 136
    const-string v5, "Shortcut"

    .line 137
    goto :goto_0

    .line 139
    :pswitch_3
    iget-object v2, p0, Lcom/htc/home/personalize/ApplicationManager;->mShowHtcWidgetList:[Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

    .line 140
    const-string v5, "Htc widget"

    .line 142
    :pswitch_4
    iget-object v2, p0, Lcom/htc/home/personalize/ApplicationManager;->mShowHtcFusionWidgetList:[Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

    .line 143
    const-string v5, "Htc widget FUSION"

    goto :goto_0

    .line 147
    :pswitch_5
    move-object v1, v2

    .restart local v1       #arr$:[Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;
    array-length v4, v1

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_3
    if-ge v3, v4, :cond_4

    aget-object v0, v1, v3

    .line 148
    .restart local v0       #appInfo:Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;
    iget-object v6, v0, Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;->widgetName:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, v0, Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;->widgetName:Ljava/lang/String;

    const-string v7, "null"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v0, Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;->widgetName:Ljava/lang/String;

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 152
    :cond_1
    iget v6, v0, Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;->priority:I

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
    .end local v0           #appInfo:Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;
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
    new-array v2, v7, [Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

    .line 65
    .local v2, customizeList:[Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;
    packed-switch p3, :pswitch_data_0

    .line 87
    :goto_0
    packed-switch p3, :pswitch_data_1

    .line 99
    move-object v1, v2

    .local v1, arr$:[Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v0, v1, v3

    .line 100
    .local v0, appInfo:Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;
    iget-object v8, v0, Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;->packageName:Ljava/lang/String;

    if-eqz v8, :cond_2

    iget-object v8, v0, Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, v0, Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;->className:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, v0, Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;->className:Ljava/lang/String;

    const-string v9, "null"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, v0, Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;->className:Ljava/lang/String;

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 109
    .end local v0           #appInfo:Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;
    :cond_0
    :goto_2
    return v6

    .line 67
    .end local v1           #arr$:[Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :pswitch_0
    iget-object v2, p0, Lcom/htc/home/personalize/ApplicationManager;->mHideApplicationList:[Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

    .line 68
    const-string v5, "Application"

    .line 69
    goto :goto_0

    .line 71
    :pswitch_1
    iget-object v2, p0, Lcom/htc/home/personalize/ApplicationManager;->mHideAppWidgetList:[Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

    .line 72
    const-string v5, "App widget"

    .line 73
    goto :goto_0

    .line 75
    :pswitch_2
    iget-object v2, p0, Lcom/htc/home/personalize/ApplicationManager;->mHideShortCutList:[Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

    .line 76
    const-string v5, "Shortcut"

    .line 77
    goto :goto_0

    .line 79
    :pswitch_3
    iget-object v2, p0, Lcom/htc/home/personalize/ApplicationManager;->mHideHtcWidgetList:[Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

    .line 80
    const-string v5, "Htc widget"

    .line 81
    goto :goto_0

    .line 83
    :pswitch_4
    iget-object v2, p0, Lcom/htc/home/personalize/ApplicationManager;->mHideHtcFusionWidgetList:[Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;

    .line 84
    const-string v5, "Htc widget FUSION"

    goto :goto_0

    .line 89
    :pswitch_5
    move-object v1, v2

    .restart local v1       #arr$:[Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;
    array-length v4, v1

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_3
    if-ge v3, v4, :cond_3

    aget-object v0, v1, v3

    .line 90
    .restart local v0       #appInfo:Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;
    iget-object v8, v0, Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;->packageName:Ljava/lang/String;

    if-eqz v8, :cond_1

    iget-object v8, v0, Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, v0, Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;->widgetName:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, v0, Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;->widgetName:Ljava/lang/String;

    const-string v9, "null"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, v0, Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;->widgetName:Ljava/lang/String;

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

    .end local v0           #appInfo:Lcom/htc/home/personalize/ApplicationManager$CustomizeAppInfo;
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
    .packed-switch 0x5
        :pswitch_5
    .end packed-switch
.end method
