.class public Lcom/googlecode/android/wifi/tether/TetherWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "TetherWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/android/wifi/tether/TetherWidget$StateTracker;,
        Lcom/googlecode/android/wifi/tether/TetherWidget$TetherStateTracker;
    }
.end annotation


# static fields
.field private static final BUTTON_TETHER:I = 0x0

.field private static final STATE_DISABLED:I = 0x0

.field private static final STATE_ENABLED:I = 0x1

.field private static final STATE_INTERMEDIATE:I = 0x5

.field private static final STATE_TURNING_OFF:I = 0x3

.field private static final STATE_TURNING_ON:I = 0x2

.field private static final STATE_UNKNOWN:I = 0x4

.field static final TAG:Ljava/lang/String; = "TetherWidget"

.field static final THIS_APPWIDGET:Landroid/content/ComponentName;

.field private static final tetherState:Lcom/googlecode/android/wifi/tether/TetherWidget$StateTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.googlecode.android.wifi.tether"

    const-string v2, "com.googlecode.android.wifi.tether.TetherWidget"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/googlecode/android/wifi/tether/TetherWidget;->THIS_APPWIDGET:Landroid/content/ComponentName;

    .line 33
    new-instance v0, Lcom/googlecode/android/wifi/tether/TetherWidget$TetherStateTracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/googlecode/android/wifi/tether/TetherWidget$TetherStateTracker;-><init>(Lcom/googlecode/android/wifi/tether/TetherWidget$TetherStateTracker;)V

    sput-object v0, Lcom/googlecode/android/wifi/tether/TetherWidget;->tetherState:Lcom/googlecode/android/wifi/tether/TetherWidget$StateTracker;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method static buildUpdate(Landroid/content/Context;I)Landroid/widget/RemoteViews;
    .locals 3
    .parameter "context"
    .parameter "appWidgetId"

    .prologue
    .line 291
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f03000d

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 292
    .local v0, views:Landroid/widget/RemoteViews;
    const v1, 0x7f0a0034

    const/4 v2, 0x0

    invoke-static {p0, p1, v2}, Lcom/googlecode/android/wifi/tether/TetherWidget;->getLaunchPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 293
    invoke-static {v0, p0}, Lcom/googlecode/android/wifi/tether/TetherWidget;->updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    .line 294
    return-object v0
.end method

.method private static getLaunchPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;
    .locals 5
    .parameter "context"
    .parameter "appWidgetId"
    .parameter "buttonId"

    .prologue
    const/4 v4, 0x0

    .line 358
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 359
    .local v0, launchIntent:Landroid/content/Intent;
    const-class v2, Lcom/googlecode/android/wifi/tether/TetherWidget;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 360
    const-string v2, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "custom:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 362
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 364
    .local v1, pi:Landroid/app/PendingIntent;
    return-object v1
.end method

.method private static updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V
    .locals 6
    .parameter "views"
    .parameter "context"

    .prologue
    const v5, 0x7f020015

    const v4, 0x7f020014

    const v3, 0x7f020004

    const v2, 0x7f0a0036

    const v1, 0x7f0a0035

    .line 316
    sget-object v0, Lcom/googlecode/android/wifi/tether/TetherWidget;->tetherState:Lcom/googlecode/android/wifi/tether/TetherWidget$StateTracker;

    invoke-virtual {v0, p1}, Lcom/googlecode/android/wifi/tether/TetherWidget$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 348
    :goto_0
    :pswitch_0
    return-void

    .line 318
    :pswitch_1
    invoke-virtual {p0, v1, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 320
    invoke-virtual {p0, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 324
    :pswitch_2
    invoke-virtual {p0, v1, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 327
    const v0, 0x7f020005

    .line 326
    invoke-virtual {p0, v2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 335
    :pswitch_3
    sget-object v0, Lcom/googlecode/android/wifi/tether/TetherWidget;->tetherState:Lcom/googlecode/android/wifi/tether/TetherWidget$StateTracker;

    invoke-virtual {v0}, Lcom/googlecode/android/wifi/tether/TetherWidget$StateTracker;->isTurningOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {p0, v1, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 339
    const v0, 0x7f020003

    .line 338
    invoke-virtual {p0, v2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 341
    :cond_0
    invoke-virtual {p0, v1, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 343
    invoke-virtual {p0, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 316
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static updateWidget(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 303
    const/4 v2, -0x1

    invoke-static {p0, v2}, Lcom/googlecode/android/wifi/tether/TetherWidget;->buildUpdate(Landroid/content/Context;I)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 305
    .local v1, views:Landroid/widget/RemoteViews;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 306
    .local v0, gm:Landroid/appwidget/AppWidgetManager;
    sget-object v2, Lcom/googlecode/android/wifi/tether/TetherWidget;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 307
    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 280
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 282
    .local v0, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.googlecode.android.wifi.tether"

    const-string v3, ".TetherWidget"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const/4 v2, 0x2

    .line 284
    const/4 v3, 0x1

    .line 281
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 285
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 270
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 272
    .local v0, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.googlecode.android.wifi.tether"

    const-string v3, ".TetherWidget"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-virtual {v0, v1, v4, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 275
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 375
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 376
    const-string v2, "android.intent.category.ALTERNATIVE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 377
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 378
    .local v1, data:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 379
    .local v0, buttonId:I
    if-nez v0, :cond_0

    .line 380
    sget-object v2, Lcom/googlecode/android/wifi/tether/TetherWidget;->tetherState:Lcom/googlecode/android/wifi/tether/TetherWidget$StateTracker;

    invoke-virtual {v2, p1}, Lcom/googlecode/android/wifi/tether/TetherWidget$StateTracker;->toggleState(Landroid/content/Context;)V

    .line 392
    .end local v0           #buttonId:I
    .end local v1           #data:Landroid/net/Uri;
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/googlecode/android/wifi/tether/TetherWidget;->updateWidget(Landroid/content/Context;)V

    .line 393
    :cond_1
    return-void

    .line 382
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.googlecode.android.wifi.tether.intent.STATE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 383
    sget-object v2, Lcom/googlecode/android/wifi/tether/TetherWidget;->tetherState:Lcom/googlecode/android/wifi/tether/TetherWidget$StateTracker;

    invoke-virtual {v2, p1, p2}, Lcom/googlecode/android/wifi/tether/TetherWidget$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 261
    const/4 v2, -0x1

    invoke-static {p1, v2}, Lcom/googlecode/android/wifi/tether/TetherWidget;->buildUpdate(Landroid/content/Context;I)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 263
    .local v1, view:Landroid/widget/RemoteViews;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p3

    if-lt v0, v2, :cond_0

    .line 266
    return-void

    .line 264
    :cond_0
    aget v2, p3, v0

    invoke-virtual {p2, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
