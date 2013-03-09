.class public Lcom/htc/home/personalize/HtcWidgetScannerService;
.super Landroid/app/IntentService;
.source "HtcWidgetScannerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/home/personalize/HtcWidgetScannerService$WidgetGroupItem;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final EXTRA_PROPERTIES:Ljava/lang/String; = "extra_properties"

.field public static final ICON_RESOURCE:Ljava/lang/String; = "icon_resource"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final ITEM_CATEGORY:Ljava/lang/String; = "item_category"

.field public static ITEM_CAT_GROUP:I = 0x0

.field public static ITEM_CAT_ITEM:I = 0x0

.field public static ITEM_CAT_NONE:I = 0x0

.field public static final ITEM_TYPE_OFFSET:I = 0x44c

.field public static final LAYOUT_RESOURCE:Ljava/lang/String; = "layout_resource"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final PARAM_PACKAGE:Ljava/lang/String; = "package"

.field public static final PARENT_ID:Ljava/lang/String; = "parent_id"

.field public static final PLUGIN_CLASSNAME:Ljava/lang/String; = "plugin_classname"

.field private static final PREF_KEY_INIT:Ljava/lang/String; = "Initialized"

.field public static PROPS_CATEGORY_ID:Ljava/lang/String; = null

.field public static PROPS_MAX_INSTANCES:Ljava/lang/String; = null

.field public static final REFERENCES:Ljava/lang/String; = "WidgetPackageScanner"

.field private static final ROSIE_PACKAGE_NAME:Ljava/lang/String; = "com.htc.launcher"

.field public static final SPAN_X:Ljava/lang/String; = "span_x"

.field public static final SPAN_Y:Ljava/lang/String; = "span_y"

.field private static final TAG:Ljava/lang/String; = "HtcWidgetScannerService"

.field public static final TEXT_RESOURCE:Ljava/lang/String; = "text_resource"

.field public static final WIDGET_NAME:Ljava/lang/String; = "widget_name"

.field private static final localLOGV:Z

.field private static sRosieUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "content://com.htc.launcher.settings/widget_item_types?notify=false"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/home/personalize/HtcWidgetScannerService;->CONTENT_URI:Landroid/net/Uri;

    .line 47
    const/4 v0, 0x0

    sput v0, Lcom/htc/home/personalize/HtcWidgetScannerService;->ITEM_CAT_NONE:I

    .line 48
    const/4 v0, 0x1

    sput v0, Lcom/htc/home/personalize/HtcWidgetScannerService;->ITEM_CAT_GROUP:I

    .line 49
    const/4 v0, 0x2

    sput v0, Lcom/htc/home/personalize/HtcWidgetScannerService;->ITEM_CAT_ITEM:I

    .line 51
    const-string v0, "category_id"

    sput-object v0, Lcom/htc/home/personalize/HtcWidgetScannerService;->PROPS_CATEGORY_ID:Ljava/lang/String;

    .line 52
    const-string v0, "max_instances"

    sput-object v0, Lcom/htc/home/personalize/HtcWidgetScannerService;->PROPS_MAX_INSTANCES:Ljava/lang/String;

    .line 61
    const/4 v0, -0x1

    sput v0, Lcom/htc/home/personalize/HtcWidgetScannerService;->sRosieUid:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    const-string v0, "HtcWidgetScannerService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method private broadcastScanHtcWidgetDone(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 329
    const-string v1, "HtcWidgetScannerService"

    const-string v2, "broadcast for com.htc.rosie.ACTION_SCAN_HTC_WIDGET_DONE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.rosie.ACTION_SCAN_HTC_WIDGET_DONE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 332
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 333
    return-void
.end method

.method private createHtcWidgetTable_2D(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 312
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 313
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v2, Lcom/htc/home/personalize/HtcWidgetScannerService;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 316
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 317
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "_id"

    const/16 v3, 0x44c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 318
    const-string v2, "package_name"

    const-string v3, "package name"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v2, "widget_name"

    const-string v3, "widget name"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v2, "plugin_classname"

    const-string v3, "plugin classname"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v2, "item_category"

    sget v3, Lcom/htc/home/personalize/HtcWidgetScannerService;->ITEM_CAT_NONE:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 323
    sget-object v2, Lcom/htc/home/personalize/HtcWidgetScannerService;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 325
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/HtcWidgetScannerService;->scanPackages(Landroid/content/Context;)V

    .line 326
    return-void
.end method

.method private createHtcWidgetTable_3D()V
    .locals 2

    .prologue
    .line 308
    const-string v0, "rediscover"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/home/personalize/HtcWidgetScannerService;->fxWidgetTrigger(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method private fxWidgetTrigger(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "cmd"
    .parameter "packageName"

    .prologue
    .line 143
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 144
    .local v1, intentWidgetService:Landroid/content/Intent;
    const-string v2, "com.htc.home.personalize.fusionwidget.fxwidgetservice"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const-string v2, "hostAction"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const-string v2, "package"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    invoke-static {p0}, Lcom/htc/home/personalize/fusionwidget/FxWidgetScanner;->create(Landroid/content/Context;)Lcom/htc/home/personalize/fusionwidget/FxWidgetScanner;

    move-result-object v0

    .line 148
    .local v0, fxWidgetScanner:Lcom/htc/home/personalize/fusionwidget/FxWidgetScanner;
    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/fusionwidget/FxWidgetScanner;->handleIntent(Landroid/content/Intent;)V

    .line 149
    return-void
.end method

.method static getContentUri(JZ)Landroid/net/Uri;
    .locals 2
    .parameter "id"
    .parameter "notify"

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.htc.launcher.settings/widget_item_types/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?notify="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 4
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 74
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 77
    :goto_0
    return-object v1

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "HtcWidgetScannerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "widget package not found - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getRosieUid(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 522
    sget v0, Lcom/htc/home/personalize/HtcWidgetScannerService;->sRosieUid:I

    if-gez v0, :cond_0

    .line 523
    const-string v0, "com.htc.launcher"

    invoke-direct {p0, p1, v0}, Lcom/htc/home/personalize/HtcWidgetScannerService;->getUid(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/htc/home/personalize/HtcWidgetScannerService;->sRosieUid:I

    .line 525
    :cond_0
    sget v0, Lcom/htc/home/personalize/HtcWidgetScannerService;->sRosieUid:I

    return v0
.end method

.method private getUid(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 530
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 532
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 534
    .local v1, pi:Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 535
    .end local v1           #pi:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 537
    .local v0, ex:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private initScanPackages(Landroid/content/Context;Z)V
    .locals 13
    .parameter "context"
    .parameter "boot"

    .prologue
    const/4 v12, 0x0

    .line 260
    const-string v1, "WidgetPackageScanner"

    invoke-virtual {p1, v1, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 262
    .local v11, preferences:Landroid/content/SharedPreferences;
    const-string v1, "Initialized"

    invoke-interface {v11, v1, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 263
    .local v10, initialized:Z
    const-string v1, "HtcWidgetScannerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialized(SharedPreference) ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    if-eqz v10, :cond_9

    .line 265
    const/4 v7, 0x0

    .line 267
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 268
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/htc/home/personalize/HtcWidgetScannerService;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 269
    const/4 v6, 0x0

    .line 270
    .local v6, count:I
    if-eqz v7, :cond_0

    .line 271
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 273
    :cond_0
    const-string v1, "HtcWidgetScannerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "count - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    if-lez v6, :cond_7

    .line 275
    if-nez p2, :cond_1

    .line 276
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/HtcWidgetScannerService;->broadcastScanHtcWidgetDone(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :cond_1
    if-eqz v7, :cond_3

    .line 288
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 289
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v6           #count:I
    :cond_2
    :goto_0
    const/4 v7, 0x0

    .line 305
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_3
    :goto_1
    return-void

    .line 280
    .restart local v7       #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 281
    .local v9, ex:Ljava/lang/RuntimeException;
    if-nez p2, :cond_4

    .line 282
    :try_start_1
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/HtcWidgetScannerService;->broadcastScanHtcWidgetDone(Landroid/content/Context;)V

    .line 284
    :cond_4
    invoke-virtual {v9}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    if-eqz v7, :cond_3

    .line 288
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 287
    .end local v9           #ex:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_6

    .line 288
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 289
    :cond_5
    const/4 v7, 0x0

    .line 287
    :cond_6
    throw v1

    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v6       #count:I
    :cond_7
    if-eqz v7, :cond_9

    .line 288
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 289
    :cond_8
    const/4 v7, 0x0

    .line 294
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v6           #count:I
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_9
    invoke-direct {p0}, Lcom/htc/home/personalize/HtcWidgetScannerService;->createHtcWidgetTable_3D()V

    .line 295
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/HtcWidgetScannerService;->createHtcWidgetTable_2D(Landroid/content/Context;)V

    .line 298
    const-string v1, "WidgetPackageScanner"

    invoke-virtual {p1, v1, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 300
    .local v8, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "Initialized"

    const/4 v2, 0x1

    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 301
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 304
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/HtcWidgetScannerService;->broadcastScanHtcWidgetDone(Landroid/content/Context;)V

    goto :goto_1
.end method

.method private onPackageRemoved(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 154
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 155
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "item_category"

    sget v3, Lcom/htc/home/personalize/HtcWidgetScannerService;->ITEM_CAT_NONE:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 156
    sget-object v2, Lcom/htc/home/personalize/HtcWidgetScannerService;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "package_name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 157
    return-void
.end method

.method private onPackageUpdated(Ljava/lang/String;Landroid/content/Context;)V
    .locals 10
    .parameter "packageName"
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 160
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 161
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/htc/home/personalize/HtcWidgetScannerService;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 162
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 163
    .local v6, count:I
    if-eqz v7, :cond_1

    .line 164
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 165
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 166
    :cond_0
    const/4 v7, 0x0

    .line 168
    :cond_1
    const-string v1, "HtcWidgetScannerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "count(onPackageUpdated) - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    if-nez v6, :cond_2

    .line 171
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 172
    .local v9, values:Landroid/content/ContentValues;
    const-string v1, "_id"

    const/16 v2, 0x44c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 173
    const-string v1, "package_name"

    const-string v2, "package name"

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v1, "widget_name"

    const-string v2, "widget name"

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v1, "plugin_classname"

    const-string v2, "plugin classname"

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v1, "item_category"

    sget v2, Lcom/htc/home/personalize/HtcWidgetScannerService;->ITEM_CAT_NONE:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 179
    .end local v9           #values:Landroid/content/ContentValues;
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/htc/home/personalize/HtcWidgetScannerService;->scanPackage(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 181
    new-instance v8, Landroid/content/Intent;

    const-string v1, "com.htc.launcher.action.htcWidgetUpdate"

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 182
    .local v8, intent:Landroid/content/Intent;
    const-string v1, "package"

    invoke-virtual {v8, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    invoke-virtual {p2, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 184
    return-void
.end method

.method private saveWidgetItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/htc/home/WidgetItemInterface;IIZ)I
    .locals 22
    .parameter "context"
    .parameter "packageName"
    .parameter "pluginClassname"
    .parameter "item"
    .parameter "itemCategory"
    .parameter "parentId"
    .parameter "insertOnly"

    .prologue
    .line 448
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 450
    .local v2, cr:Landroid/content/ContentResolver;
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 451
    .local v19, values:Landroid/content/ContentValues;
    const-string v3, "package_name"

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const-string v3, "widget_name"

    invoke-interface/range {p4 .. p4}, Lcom/htc/home/WidgetItemInterface;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string v3, "plugin_classname"

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const-string v3, "item_category"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 455
    const-string v3, "parent_id"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 456
    const-string v3, "text_resource"

    invoke-interface/range {p4 .. p4}, Lcom/htc/home/WidgetItemInterface;->getTextResource()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 457
    const-string v3, "icon_resource"

    invoke-interface/range {p4 .. p4}, Lcom/htc/home/WidgetItemInterface;->getIconResource()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 460
    :try_start_0
    new-instance v15, Ljava/util/Properties;

    invoke-direct {v15}, Ljava/util/Properties;-><init>()V

    .line 462
    .local v15, props:Ljava/util/Properties;
    invoke-interface/range {p4 .. p4}, Lcom/htc/home/WidgetItemInterface;->getExtraProperties()Lcom/htc/home/WidgetItemProperties;

    move-result-object v12

    .line 463
    .local v12, itemProps:Lcom/htc/home/WidgetItemProperties;
    sget-object v3, Lcom/htc/home/personalize/HtcWidgetScannerService;->PROPS_CATEGORY_ID:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Lcom/htc/home/WidgetItemProperties;->getCategoryId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 464
    sget-object v3, Lcom/htc/home/personalize/HtcWidgetScannerService;->PROPS_MAX_INSTANCES:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Lcom/htc/home/WidgetItemProperties;->getMaxInstances()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 466
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 467
    .local v13, out:Ljava/io/ByteArrayOutputStream;
    new-instance v14, Ljava/io/ObjectOutputStream;

    invoke-direct {v14, v13}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 468
    .local v14, out2:Ljava/io/ObjectOutputStream;
    invoke-virtual {v14, v15}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 469
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v16

    .line 470
    .local v16, propsBytes:[B
    const-string v3, "extra_properties"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    .end local v12           #itemProps:Lcom/htc/home/WidgetItemProperties;
    .end local v13           #out:Ljava/io/ByteArrayOutputStream;
    .end local v14           #out2:Ljava/io/ObjectOutputStream;
    .end local v15           #props:Ljava/util/Properties;
    .end local v16           #propsBytes:[B
    :goto_0
    sget v3, Lcom/htc/home/personalize/HtcWidgetScannerService;->ITEM_CAT_ITEM:I

    move/from16 v0, p5

    if-ne v0, v3, :cond_0

    .line 477
    :try_start_1
    invoke-interface/range {p4 .. p4}, Lcom/htc/home/WidgetItemInterface;->createWidgetView()Lcom/htc/home/WidgetViewInterface;

    move-result-object v20

    .line 478
    .local v20, view:Lcom/htc/home/WidgetViewInterface;
    const-string v3, "span_x"

    invoke-interface/range {v20 .. v20}, Lcom/htc/home/WidgetViewInterface;->getSpanX()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 479
    const-string v3, "span_y"

    invoke-interface/range {v20 .. v20}, Lcom/htc/home/WidgetViewInterface;->getSpanY()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 480
    const-string v3, "layout_resource"

    invoke-interface/range {v20 .. v20}, Lcom/htc/home/WidgetViewInterface;->getLayoutResource()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 486
    .end local v20           #view:Lcom/htc/home/WidgetViewInterface;
    :cond_0
    const/16 v18, -0x1

    .line 487
    .local v18, updateId:I
    const/4 v8, 0x0

    .line 489
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_2
    sget-object v3, Lcom/htc/home/personalize/HtcWidgetScannerService;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const-string v5, "package_name=? AND widget_name=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    const/4 v7, 0x1

    invoke-interface/range {p4 .. p4}, Lcom/htc/home/WidgetItemInterface;->getName()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 492
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 493
    const-string v3, "_id"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 494
    .local v11, idxId:I
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v18

    .line 497
    .end local v11           #idxId:I
    :cond_1
    if-eqz v8, :cond_3

    .line 498
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 499
    :cond_2
    const/4 v8, 0x0

    .line 503
    :cond_3
    if-nez p7, :cond_6

    if-ltz v18, :cond_6

    .line 505
    move/from16 v0, v18

    int-to-long v3, v0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/htc/home/personalize/HtcWidgetScannerService;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 516
    .end local v18           #updateId:I
    :goto_1
    return v18

    .line 471
    .end local v8           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 472
    .local v9, e:Ljava/lang/Exception;
    const-string v3, "HtcWidgetScannerService"

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 481
    .end local v9           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v9

    .line 482
    .restart local v9       #e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Widget Plugin Class failed to createWidgetView"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 497
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v18       #updateId:I
    :catchall_0
    move-exception v3

    if-eqz v8, :cond_5

    .line 498
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 499
    :cond_4
    const/4 v8, 0x0

    .line 497
    :cond_5
    throw v3

    .line 509
    :cond_6
    sget-object v3, Lcom/htc/home/personalize/HtcWidgetScannerService;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v17

    .line 512
    .local v17, result:Landroid/net/Uri;
    if-eqz v17, :cond_7

    .line 513
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .local v10, id:I
    move/from16 v18, v10

    .line 514
    goto :goto_1

    .line 516
    .end local v10           #id:I
    :cond_7
    const/16 v18, -0x1

    goto :goto_1
.end method

.method private saveWidgetItem(Ljava/lang/String;Landroid/content/Context;Ljava/lang/ClassLoader;Ljava/lang/String;Z)V
    .locals 25
    .parameter "packageName"
    .parameter "context"
    .parameter "classloader"
    .parameter "pluginClassname"
    .parameter "insertOnly"

    .prologue
    .line 414
    const/4 v2, 0x1

    :try_start_0
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v18

    .line 415
    .local v18, clazz:Ljava/lang/Class;
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Class;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v19

    .line 416
    .local v19, constructor:Ljava/lang/reflect/Constructor;
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    .line 417
    .local v24, object:Ljava/lang/Object;
    move-object/from16 v0, v24

    instance-of v2, v0, Lcom/htc/home/WidgetItemInterface;

    if-nez v2, :cond_1

    .line 418
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Widget Plugin Class doesn\'t implement WidgetItemInterface"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 436
    .end local v18           #clazz:Ljava/lang/Class;
    .end local v19           #constructor:Ljava/lang/reflect/Constructor;
    .end local v24           #object:Ljava/lang/Object;
    :catch_0
    move-exception v20

    .line 437
    .local v20, e:Ljava/lang/ClassNotFoundException;
    const-string v2, "HtcWidgetScannerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Widget Plugin Class not found - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    .end local v20           #e:Ljava/lang/ClassNotFoundException;
    :cond_0
    :goto_0
    return-void

    .line 421
    .restart local v18       #clazz:Ljava/lang/Class;
    .restart local v19       #constructor:Ljava/lang/reflect/Constructor;
    .restart local v24       #object:Ljava/lang/Object;
    :cond_1
    :try_start_1
    move-object/from16 v0, v24

    instance-of v2, v0, Lcom/htc/home/WidgetGroupItemInterface;

    if-eqz v2, :cond_2

    .line 422
    move-object/from16 v0, v24

    check-cast v0, Lcom/htc/home/WidgetItemInterface;

    move-object v6, v0

    sget v7, Lcom/htc/home/personalize/HtcWidgetScannerService;->ITEM_CAT_GROUP:I

    const/4 v8, -0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move-object/from16 v5, p4

    move/from16 v9, p5

    invoke-direct/range {v2 .. v9}, Lcom/htc/home/personalize/HtcWidgetScannerService;->saveWidgetItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/htc/home/WidgetItemInterface;IIZ)I

    move-result v8

    .line 425
    .local v8, itemId:I
    move-object/from16 v0, v24

    check-cast v0, Lcom/htc/home/WidgetGroupItemInterface;

    move-object/from16 v21, v0

    .line 426
    .local v21, groupItem:Lcom/htc/home/WidgetGroupItemInterface;
    invoke-interface/range {v21 .. v21}, Lcom/htc/home/WidgetGroupItemInterface;->listSubItems()[Lcom/htc/home/WidgetItemInterface;

    move-result-object v17

    .local v17, arr$:[Lcom/htc/home/WidgetItemInterface;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v23, v0

    .local v23, len$:I
    const/16 v22, 0x0

    .local v22, i$:I
    :goto_1
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_0

    aget-object v6, v17, v22

    .line 427
    .local v6, item:Lcom/htc/home/WidgetItemInterface;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    sget v7, Lcom/htc/home/personalize/HtcWidgetScannerService;->ITEM_CAT_ITEM:I

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move/from16 v9, p5

    invoke-direct/range {v2 .. v9}, Lcom/htc/home/personalize/HtcWidgetScannerService;->saveWidgetItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/htc/home/WidgetItemInterface;IIZ)I

    .line 426
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 432
    .end local v6           #item:Lcom/htc/home/WidgetItemInterface;
    .end local v8           #itemId:I
    .end local v17           #arr$:[Lcom/htc/home/WidgetItemInterface;
    .end local v21           #groupItem:Lcom/htc/home/WidgetGroupItemInterface;
    .end local v22           #i$:I
    .end local v23           #len$:I
    :cond_2
    move-object/from16 v0, v24

    check-cast v0, Lcom/htc/home/WidgetItemInterface;

    move-object v13, v0

    sget v14, Lcom/htc/home/personalize/HtcWidgetScannerService;->ITEM_CAT_ITEM:I

    const/4 v15, -0x1

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p1

    move-object/from16 v12, p4

    move/from16 v16, p5

    invoke-direct/range {v9 .. v16}, Lcom/htc/home/personalize/HtcWidgetScannerService;->saveWidgetItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/htc/home/WidgetItemInterface;IIZ)I
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 438
    .end local v18           #clazz:Ljava/lang/Class;
    .end local v19           #constructor:Ljava/lang/reflect/Constructor;
    .end local v24           #object:Ljava/lang/Object;
    :catch_1
    move-exception v20

    .line 439
    .local v20, e:Ljava/lang/NoSuchMethodException;
    const-string v2, "HtcWidgetScannerService"

    const-string v3, "Widget Plugin Class doesn\'t have default constructor."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 440
    .end local v20           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v20

    .line 441
    .local v20, e:Ljava/lang/Exception;
    const-string v2, "HtcWidgetScannerService"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private scanAllPackages(Landroid/content/Context;Z)V
    .locals 0
    .parameter "context"
    .parameter "boot"

    .prologue
    .line 253
    invoke-direct {p0, p1, p2}, Lcom/htc/home/personalize/HtcWidgetScannerService;->initScanPackages(Landroid/content/Context;Z)V

    .line 257
    return-void
.end method

.method private scanPackage(Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 19
    .parameter "packageName"
    .parameter "context"
    .parameter "insertOnly"

    .prologue
    .line 368
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 369
    .local v15, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v17

    .line 370
    .local v17, resources:Landroid/content/res/Resources;
    const-string v2, "home_widget_plugins"

    const-string v3, "string"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    .line 371
    .local v16, resourceId:I
    if-nez v16, :cond_1

    .line 407
    .end local v15           #pm:Landroid/content/pm/PackageManager;
    .end local v16           #resourceId:I
    .end local v17           #resources:Landroid/content/res/Resources;
    :cond_0
    :goto_0
    return-void

    .line 375
    .restart local v15       #pm:Landroid/content/pm/PackageManager;
    .restart local v16       #resourceId:I
    .restart local v17       #resources:Landroid/content/res/Resources;
    :cond_1
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 377
    .local v18, widgetPlugins:Ljava/lang/String;
    const-string v2, ","

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 379
    .local v13, pluginClassnames:[Ljava/lang/String;
    if-eqz v13, :cond_0

    array-length v2, v13

    if-eqz v2, :cond_0

    .line 395
    const/4 v2, 0x3

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v14

    .line 397
    .local v14, pluginContext:Landroid/content/Context;
    invoke-virtual {v14}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 398
    .local v5, classloader:Ljava/lang/ClassLoader;
    move-object v8, v13

    .local v8, arr$:[Ljava/lang/String;
    array-length v12, v8

    .local v12, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_1
    if-ge v11, v12, :cond_0

    aget-object v6, v8, v11

    .line 399
    .local v6, pluginClassname:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v7, p3

    .line 400
    invoke-direct/range {v2 .. v7}, Lcom/htc/home/personalize/HtcWidgetScannerService;->saveWidgetItem(Ljava/lang/String;Landroid/content/Context;Ljava/lang/ClassLoader;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 398
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 402
    .end local v5           #classloader:Ljava/lang/ClassLoader;
    .end local v6           #pluginClassname:Ljava/lang/String;
    .end local v8           #arr$:[Ljava/lang/String;
    .end local v11           #i$:I
    .end local v12           #len$:I
    .end local v13           #pluginClassnames:[Ljava/lang/String;
    .end local v14           #pluginContext:Landroid/content/Context;
    .end local v15           #pm:Landroid/content/pm/PackageManager;
    .end local v16           #resourceId:I
    .end local v17           #resources:Landroid/content/res/Resources;
    .end local v18           #widgetPlugins:Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 403
    .local v10, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "HtcWidgetScannerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package not found : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 404
    .end local v10           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v9

    .line 405
    .local v9, e:Ljava/lang/Exception;
    const-string v2, "HtcWidgetScannerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveWidgetItem fail -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private scanPackages(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x1

    .line 339
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/HtcWidgetScannerService;->getRosieUid(Landroid/content/Context;)I

    move-result v6

    .line 340
    .local v6, uid:I
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 341
    .local v5, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 342
    .local v4, packageNames:[Ljava/lang/String;
    if-nez v4, :cond_1

    .line 358
    :cond_0
    return-void

    .line 345
    :cond_1
    array-length v7, v4

    if-le v7, v8, :cond_0

    .line 346
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 347
    .local v3, packageName:Ljava/lang/String;
    const-string v7, "com.htc.launcher"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 346
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 352
    :cond_2
    invoke-direct {p0, v3, p1, v8}, Lcom/htc/home/personalize/HtcWidgetScannerService;->scanPackage(Ljava/lang/String;Landroid/content/Context;Z)V

    goto :goto_1
.end method

.method private updateAllPackages(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/HtcWidgetScannerService;->updateAllPackagesInternal(Landroid/content/Context;)V

    .line 194
    return-void
.end method

.method private updateAllPackagesInternal(Landroid/content/Context;)V
    .locals 18
    .parameter "context"

    .prologue
    .line 199
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 200
    .local v2, cr:Landroid/content/ContentResolver;
    sget-object v3, Lcom/htc/home/personalize/HtcWidgetScannerService;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 201
    .local v10, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 202
    .local v9, count:I
    if-eqz v10, :cond_1

    .line 203
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 204
    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 205
    :cond_0
    const/4 v10, 0x0

    .line 207
    :cond_1
    const-string v3, "HtcWidgetScannerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "count(updateAllPackages) - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    if-nez v9, :cond_2

    .line 210
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 211
    .local v17, values:Landroid/content/ContentValues;
    const-string v3, "_id"

    const/16 v4, 0x44c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 212
    const-string v3, "package_name"

    const-string v4, "package name"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v3, "widget_name"

    const-string v4, "widget name"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v3, "plugin_classname"

    const-string v4, "plugin classname"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v3, "item_category"

    sget v4, Lcom/htc/home/personalize/HtcWidgetScannerService;->ITEM_CAT_NONE:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 220
    .end local v17           #values:Landroid/content/ContentValues;
    :cond_2
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 221
    .restart local v17       #values:Landroid/content/ContentValues;
    const-string v3, "item_category"

    sget v4, Lcom/htc/home/personalize/HtcWidgetScannerService;->ITEM_CAT_NONE:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 222
    sget-object v3, Lcom/htc/home/personalize/HtcWidgetScannerService;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 225
    invoke-direct/range {p0 .. p1}, Lcom/htc/home/personalize/HtcWidgetScannerService;->getRosieUid(Landroid/content/Context;)I

    move-result v16

    .line 226
    .local v16, uid:I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 227
    .local v15, pm:Landroid/content/pm/PackageManager;
    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v14

    .line 228
    .local v14, packageNames:[Ljava/lang/String;
    if-nez v14, :cond_4

    .line 244
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/htc/home/personalize/HtcWidgetScannerService;->broadcastScanHtcWidgetDone(Landroid/content/Context;)V

    .line 247
    return-void

    .line 231
    :cond_4
    array-length v3, v14

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    .line 232
    move-object v8, v14

    .local v8, arr$:[Ljava/lang/String;
    array-length v12, v8

    .local v12, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_0
    if-ge v11, v12, :cond_3

    aget-object v13, v8, v11

    .line 233
    .local v13, packageName:Ljava/lang/String;
    const-string v3, "com.htc.launcher"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 232
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 238
    :cond_5
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v13, v1, v3}, Lcom/htc/home/personalize/HtcWidgetScannerService;->scanPackage(Ljava/lang/String;Landroid/content/Context;Z)V

    goto :goto_1
.end method


# virtual methods
.method public onHandleIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 87
    const-string v3, "HtcWidgetScannerService"

    const-string v4, "onHandleIntent +"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 91
    .local v0, begin:J
    invoke-virtual {p0}, Lcom/htc/home/personalize/HtcWidgetScannerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Lcom/htc/home/personalize/HtcWidgetScannerService;->onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v0           #begin:J
    :goto_0
    const-string v3, "HtcWidgetScannerService"

    const-string v4, "onHandleIntent -"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-void

    .line 94
    :catch_0
    move-exception v2

    .line 95
    .local v2, ex:Ljava/lang/Exception;
    const-string v3, "HtcWidgetScannerService"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 102
    const-string v9, "HtcWidgetScannerService"

    const-string v10, "onReceiveInternal +"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, action:Ljava/lang/String;
    const-string v9, "android.intent.extra.UID"

    const/4 v10, -0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 107
    .local v5, packageUid:I
    const-string v9, "HtcWidgetScannerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "packageUid - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const-string v9, "HtcWidgetScannerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "action - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const-string v9, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 111
    const/4 v9, 0x1

    invoke-direct {p0, p1, v9}, Lcom/htc/home/personalize/HtcWidgetScannerService;->scanAllPackages(Landroid/content/Context;Z)V

    .line 139
    :cond_0
    :goto_0
    const-string v9, "HtcWidgetScannerService"

    const-string v10, "onReceiveInternal -"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void

    .line 112
    :cond_1
    const-string v9, "com.htc.rosie.ACTION_START_SCAN_HTC_WIDGET"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 114
    const/4 v9, 0x0

    invoke-direct {p0, p1, v9}, Lcom/htc/home/personalize/HtcWidgetScannerService;->scanAllPackages(Landroid/content/Context;Z)V

    goto :goto_0

    .line 115
    :cond_2
    const-string v9, "com.htc.rosie.ACTION_START_UPDATE_HTC_WIDGET"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 116
    const-string v9, "rediscover"

    const/4 v10, 0x0

    invoke-direct {p0, v9, v10}, Lcom/htc/home/personalize/HtcWidgetScannerService;->fxWidgetTrigger(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/HtcWidgetScannerService;->updateAllPackages(Landroid/content/Context;)V

    goto :goto_0

    .line 118
    :cond_3
    const-string v9, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 120
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 121
    .local v4, packageName:Ljava/lang/String;
    const-string v9, "update"

    invoke-direct {p0, v9, v4}, Lcom/htc/home/personalize/HtcWidgetScannerService;->fxWidgetTrigger(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/HtcWidgetScannerService;->getRosieUid(Landroid/content/Context;)I

    move-result v8

    .line 123
    .local v8, rosieUid:I
    if-ne v8, v5, :cond_0

    .line 125
    invoke-direct {p0, v4, p1}, Lcom/htc/home/personalize/HtcWidgetScannerService;->onPackageUpdated(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 129
    .end local v4           #packageName:Ljava/lang/String;
    .end local v8           #rosieUid:I
    :cond_5
    const-string v9, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 130
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 132
    .restart local v4       #packageName:Ljava/lang/String;
    const/4 v9, 0x1

    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v4, v7, v9

    .line 133
    .local v7, pkgList:[Ljava/lang/String;
    move-object v1, v7

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_6

    aget-object v6, v1, v2

    .line 134
    .local v6, pkg:Ljava/lang/String;
    const-string v9, "remove"

    invoke-direct {p0, v9, v6}, Lcom/htc/home/personalize/HtcWidgetScannerService;->fxWidgetTrigger(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 136
    .end local v6           #pkg:Ljava/lang/String;
    :cond_6
    invoke-direct {p0, p1, v4}, Lcom/htc/home/personalize/HtcWidgetScannerService;->onPackageRemoved(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
