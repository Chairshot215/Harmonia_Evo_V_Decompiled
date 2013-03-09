.class public Lcom/android/browser/widget/BookmarkThumbnailWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "BookmarkThumbnailWidgetProvider.java"


# static fields
.field public static final ACTION_BOOKMARK_APPWIDGET_UPDATE:Ljava/lang/String; = "com.android.browser.BOOKMARK_APPWIDGET_UPDATE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method static getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 2
    .parameter "context"

    .prologue
    .line 109
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/browser/widget/BookmarkThumbnailWidgetProvider;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private performUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 13
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 83
    const/4 v8, 0x0

    new-instance v9, Landroid/content/Intent;

    const-string v10, "show_browser"

    const/4 v11, 0x0

    const-class v12, Lcom/android/browser/BrowserActivity;

    invoke-direct {v9, v10, v11, p1, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v10, 0x800

    invoke-static {p1, v8, v9, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 87
    .local v4, launchBrowser:Landroid/app/PendingIntent;
    move-object/from16 v1, p3

    .local v1, arr$:[I
    array-length v5, v1

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_0

    aget v0, v1, v2

    .line 88
    .local v0, appWidgetId:I
    new-instance v6, Landroid/content/Intent;

    const-class v8, Lcom/android/browser/widget/BookmarkThumbnailWidgetService;

    invoke-direct {v6, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    .local v6, updateIntent:Landroid/content/Intent;
    const-string v8, "appWidgetId"

    invoke-virtual {v6, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 91
    new-instance v7, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f04000e

    invoke-direct {v7, v8, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 93
    .local v7, views:Landroid/widget/RemoteViews;
    const v8, 0x7f0d0026

    invoke-virtual {v7, v8, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 94
    const v8, 0x7f0d0025

    invoke-virtual {v7, v8, v6}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    .line 95
    const v8, 0x7f0d0025

    invoke-virtual {p2, v0, v8}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 96
    new-instance v3, Landroid/content/Intent;

    const-class v8, Lcom/android/browser/widget/BookmarkWidgetProxy;

    invoke-direct {v3, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    .local v3, ic:Landroid/content/Intent;
    const v8, 0x7f0d0025

    const/4 v9, 0x0

    const/high16 v10, 0x800

    invoke-static {p1, v9, v3, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    .line 100
    invoke-virtual {p2, v0, v7}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 87
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    .end local v0           #appWidgetId:I
    .end local v3           #ic:Landroid/content/Intent;
    .end local v6           #updateIntent:Landroid/content/Intent;
    .end local v7           #views:Landroid/widget/RemoteViews;
    :cond_0
    return-void
.end method

.method public static refreshWidgets(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 113
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.browser.BOOKMARK_APPWIDGET_UPDATE"

    const/4 v2, 0x0

    const-class v3, Lcom/android/browser/widget/BookmarkThumbnailWidgetProvider;

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 116
    return-void
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 4
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    .line 59
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 60
    move-object v0, p2

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, v0, v1

    .line 61
    .local v3, widgetId:I
    invoke-static {p1, v3}, Lcom/android/browser/widget/BookmarkThumbnailWidgetService;->deleteWidgetState(Landroid/content/Context;I)V

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    .end local v3           #widgetId:I
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/browser/widget/BookmarkThumbnailWidgetProvider;->removeOrphanedFiles(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/browser/widget/BookmarkThumbnailWidgetProvider;->removeOrphanedFiles(Landroid/content/Context;)V

    .line 70
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.android.browser.BOOKMARK_APPWIDGET_UPDATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 45
    .local v1, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    invoke-static {p1}, Lcom/android/browser/widget/BookmarkThumbnailWidgetProvider;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/android/browser/widget/BookmarkThumbnailWidgetProvider;->performUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 50
    .end local v1           #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    :goto_0
    return-void

    .line 48
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 0
    .parameter "context"
    .parameter "mngr"
    .parameter "ids"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/android/browser/widget/BookmarkThumbnailWidgetProvider;->performUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 55
    return-void
.end method

.method removeOrphanedFiles(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 76
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 77
    .local v1, wm:Landroid/appwidget/AppWidgetManager;
    invoke-static {p1}, Lcom/android/browser/widget/BookmarkThumbnailWidgetProvider;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 78
    .local v0, ids:[I
    invoke-static {p1, v0}, Lcom/android/browser/widget/BookmarkThumbnailWidgetService;->removeOrphanedStates(Landroid/content/Context;[I)V

    .line 79
    return-void
.end method
