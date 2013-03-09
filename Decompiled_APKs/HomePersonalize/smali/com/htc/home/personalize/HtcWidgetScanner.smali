.class public Lcom/htc/home/personalize/HtcWidgetScanner;
.super Landroid/content/BroadcastReceiver;
.source "HtcWidgetScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/home/personalize/HtcWidgetScanner$WidgetGroupItem;
    }
.end annotation


# static fields
.field public static final ACTION_SCAN_HTC_WIDGET:Ljava/lang/String; = "com.htc.rosie.ACTION_START_SCAN_HTC_WIDGET"

.field public static final ACTION_SCAN_HTC_WIDGET_DONE:Ljava/lang/String; = "com.htc.rosie.ACTION_SCAN_HTC_WIDGET_DONE"

.field public static final ACTION_UPDATE_HTC_WIDGET:Ljava/lang/String; = "com.htc.rosie.ACTION_START_UPDATE_HTC_WIDGET"

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

.field public static final PARENT_ID:Ljava/lang/String; = "parent_id"

.field public static final PLUGIN_CLASSNAME:Ljava/lang/String; = "plugin_classname"

.field public static PROPS_CATEGORY_ID:Ljava/lang/String; = null

.field public static PROPS_MAX_INSTANCES:Ljava/lang/String; = null

.field public static final REFERENCES:Ljava/lang/String; = "WidgetPackageScanner"

.field public static final SPAN_X:Ljava/lang/String; = "span_x"

.field public static final SPAN_Y:Ljava/lang/String; = "span_y"

.field private static final TAG:Ljava/lang/String; = "HtcWidgetScanner"

.field public static final TEXT_RESOURCE:Ljava/lang/String; = "text_resource"

.field public static final WIDGET_NAME:Ljava/lang/String; = "widget_name"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "content://com.htc.launcher.settings/widget_item_types?notify=false"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/home/personalize/HtcWidgetScanner;->CONTENT_URI:Landroid/net/Uri;

    .line 38
    const/4 v0, 0x0

    sput v0, Lcom/htc/home/personalize/HtcWidgetScanner;->ITEM_CAT_NONE:I

    .line 39
    const/4 v0, 0x1

    sput v0, Lcom/htc/home/personalize/HtcWidgetScanner;->ITEM_CAT_GROUP:I

    .line 40
    const/4 v0, 0x2

    sput v0, Lcom/htc/home/personalize/HtcWidgetScanner;->ITEM_CAT_ITEM:I

    .line 42
    const-string v0, "category_id"

    sput-object v0, Lcom/htc/home/personalize/HtcWidgetScanner;->PROPS_CATEGORY_ID:Ljava/lang/String;

    .line 43
    const-string v0, "max_instances"

    sput-object v0, Lcom/htc/home/personalize/HtcWidgetScanner;->PROPS_MAX_INSTANCES:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 51
    return-void
.end method

.method static getContentUri(JZ)Landroid/net/Uri;
    .locals 2
    .parameter "id"
    .parameter "notify"

    .prologue
    .line 57
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
    .line 62
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 65
    :goto_0
    return-object v1

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "HtcWidgetScanner"

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

    .line 65
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getWidgetGroupItem(Landroid/content/Context;I)Lcom/htc/home/personalize/HtcWidgetScanner$WidgetGroupItem;
    .locals 20
    .parameter "context"
    .parameter "widgetType"

    .prologue
    .line 71
    const/16 v17, 0x0

    .line 72
    .local v17, packageName:Ljava/lang/String;
    const/16 v18, 0x0

    .line 73
    .local v18, pluginClassname:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 74
    .local v2, cr:Landroid/content/ContentResolver;
    const/4 v10, 0x0

    .line 76
    .local v10, cursor:Landroid/database/Cursor;
    move/from16 v0, p1

    int-to-long v3, v0

    const/4 v5, 0x0

    :try_start_0
    invoke-static {v3, v4, v5}, Lcom/htc/home/personalize/HtcWidgetScanner;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 77
    const-string v3, "package_name"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 78
    .local v12, idxPackageName:I
    const-string v3, "plugin_classname"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 79
    .local v13, idxPluginClassname:I
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 80
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 81
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 94
    const/4 v3, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v19

    .line 97
    .local v19, pluginContext:Landroid/content/Context;
    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v16

    .line 98
    .local v16, pClassLoader:Ljava/lang/ClassLoader;
    const/4 v3, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-static {v0, v3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    .line 100
    .local v8, clazz:Ljava/lang/Class;
    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v8, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    .line 101
    .local v9, constructor:Ljava/lang/reflect/Constructor;
    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v9, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 102
    .local v15, object:Ljava/lang/Object;
    instance-of v3, v15, Lcom/htc/home/WidgetGroupItemInterface;

    if-eqz v3, :cond_6

    .line 103
    new-instance v14, Lcom/htc/home/personalize/HtcWidgetScanner$WidgetGroupItem;

    invoke-direct {v14}, Lcom/htc/home/personalize/HtcWidgetScanner$WidgetGroupItem;-><init>()V

    .line 104
    .local v14, item:Lcom/htc/home/personalize/HtcWidgetScanner$WidgetGroupItem;
    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/htc/home/personalize/HtcWidgetScanner$WidgetGroupItem;->mPackageName:Ljava/lang/String;

    .line 105
    check-cast v15, Lcom/htc/home/WidgetGroupItemInterface;

    .end local v15           #object:Ljava/lang/Object;
    iput-object v15, v14, Lcom/htc/home/personalize/HtcWidgetScanner$WidgetGroupItem;->mGroupItem:Lcom/htc/home/WidgetGroupItemInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 118
    if-eqz v10, :cond_1

    .line 119
    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 120
    :cond_0
    const/4 v10, 0x0

    .line 123
    .end local v8           #clazz:Ljava/lang/Class;
    .end local v9           #constructor:Ljava/lang/reflect/Constructor;
    .end local v12           #idxPackageName:I
    .end local v13           #idxPluginClassname:I
    .end local v14           #item:Lcom/htc/home/personalize/HtcWidgetScanner$WidgetGroupItem;
    .end local v16           #pClassLoader:Ljava/lang/ClassLoader;
    .end local v19           #pluginContext:Landroid/content/Context;
    :cond_1
    :goto_0
    return-object v14

    .line 109
    :catch_0
    move-exception v11

    .line 110
    .local v11, e:Ljava/lang/ClassNotFoundException;
    :try_start_1
    const-string v3, "HtcWidgetScanner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Widget Plugin Class not found - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    if-eqz v10, :cond_3

    .line 119
    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 120
    .end local v11           #e:Ljava/lang/ClassNotFoundException;
    :cond_2
    :goto_1
    const/4 v10, 0x0

    .line 123
    :cond_3
    const/4 v14, 0x0

    goto :goto_0

    .line 111
    :catch_1
    move-exception v11

    .line 112
    .local v11, e:Ljava/lang/NoSuchMethodException;
    :try_start_2
    const-string v3, "HtcWidgetScanner"

    const-string v4, "Widget Plugin Class doesn\'t have default constructor."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    if-eqz v10, :cond_3

    .line 119
    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 115
    .end local v11           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v11

    .line 116
    .local v11, e:Ljava/lang/Exception;
    :try_start_3
    const-string v3, "HtcWidgetScanner"

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 118
    if-eqz v10, :cond_3

    .line 119
    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 118
    .end local v11           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v10, :cond_5

    .line 119
    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 120
    :cond_4
    const/4 v10, 0x0

    .line 118
    :cond_5
    throw v3

    .restart local v12       #idxPackageName:I
    .restart local v13       #idxPluginClassname:I
    :cond_6
    if-eqz v10, :cond_3

    .line 119
    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 128
    const-string v1, "HtcWidgetScanner"

    const-string v2, "onReceive +"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    if-eqz p2, :cond_0

    .line 130
    const-string v1, "HtcWidgetScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive with action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 133
    .local v0, serviceIntent:Landroid/content/Intent;
    const-class v1, Lcom/htc/home/personalize/HtcWidgetScannerService;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 134
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 136
    const-string v1, "HtcWidgetScanner"

    const-string v2, "onReceive -"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void
.end method
