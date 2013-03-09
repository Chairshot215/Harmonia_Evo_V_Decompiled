.class public Lcom/coremobility/app/vnotes/CM_VnoteHomeScreenWidget;
.super Landroid/appwidget/AppWidgetProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 6

    const v5, 0x7f0b006f

    const/4 v3, 0x5

    const/4 v4, 0x0

    const v0, 0x7f03001b

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coremobility/integration/a/a;->c()I

    move-result v1

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->V()Z

    move-result v2

    if-eqz v2, :cond_7

    const v0, 0x7f03001d

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v3, 0xa0

    if-le v2, v3, :cond_1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_0

    const/16 v0, 0xe

    if-ne v1, v0, :cond_3

    :cond_0
    const v0, 0x7f030020

    :cond_1
    :goto_0
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "voicemail://"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const v2, 0x7f0b006d

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-static {v4}, Lcom/coremobility/app/vnotes/cq;->a(Z)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    if-lez v2, :cond_f

    const/16 v3, 0x63

    if-le v2, v3, :cond_2

    const-string v0, "99+"

    :cond_2
    invoke-virtual {v1, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v2, 0x7f0b0071

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_1
    return-object v1

    :cond_3
    const/16 v0, 0x10

    if-eq v1, v0, :cond_4

    const/16 v0, 0x11

    if-ne v1, v0, :cond_5

    :cond_4
    const v0, 0x7f030022

    goto :goto_0

    :cond_5
    const/16 v0, 0xf

    if-ne v1, v0, :cond_6

    const v0, 0x7f030021

    goto :goto_0

    :cond_6
    const v0, 0x7f03001f

    goto :goto_0

    :cond_7
    const/4 v2, 0x3

    if-ne v1, v2, :cond_8

    const v0, 0x7f030025

    goto :goto_0

    :cond_8
    if-ne v1, v3, :cond_9

    const v0, 0x7f030027

    goto :goto_0

    :cond_9
    const/16 v2, 0x9

    if-ne v1, v2, :cond_a

    const v0, 0x7f030028

    goto :goto_0

    :cond_a
    const/4 v2, 0x6

    if-eq v1, v2, :cond_b

    const/16 v2, 0xd

    if-ne v1, v2, :cond_c

    :cond_b
    const v0, 0x7f030026

    goto :goto_0

    :cond_c
    const/16 v2, 0x8

    if-ne v1, v2, :cond_d

    const v0, 0x7f030023

    goto :goto_0

    :cond_d
    const/16 v2, 0xc

    if-ne v1, v2, :cond_e

    const v0, 0x7f030024

    goto/16 :goto_0

    :cond_e
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v1, v3, :cond_1

    const v0, 0x7f03001c

    goto/16 :goto_0

    :cond_f
    const/4 v0, 0x4

    invoke-virtual {v1, v5, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1
.end method

.method private static b(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lcom/coremobility/app/vnotes/CM_VnoteHomeScreenWidget;->a(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/coremobility/app/vnotes/CM_VnoteHomeScreenWidget;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    return-void
.end method


# virtual methods
.method public onEnabled(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x6

    const-string v1, "onEnabled"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/coremobility/app/vnotes/CM_VnoteHomeScreenWidget;->b(Landroid/content/Context;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x6

    const-string v1, "onReceive"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.coremobility.app.vnotes.intent.action.MESSAGE_COUNT_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/coremobility/app/vnotes/CM_VnoteHomeScreenWidget;->b(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/coremobility/app/vnotes/CM_VnoteHomeScreenWidget;->onEnabled(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "appWidgetIds"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0}, Lcom/coremobility/app/vnotes/CM_VnoteHomeScreenWidget;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 7

    const/4 v6, 0x6

    const/4 v1, 0x0

    const-string v0, "onUpdate"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v6, v0, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    if-nez p3, :cond_1

    :cond_0
    return-void

    :cond_1
    array-length v2, p3

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, p3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAppWidget appWidgetId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v6, v4, v5}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/coremobility/app/vnotes/CM_VnoteHomeScreenWidget;->a(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
