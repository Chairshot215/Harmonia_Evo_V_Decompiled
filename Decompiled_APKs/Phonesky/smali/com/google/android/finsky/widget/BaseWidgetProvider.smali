.class public abstract Lcom/google/android/finsky/widget/BaseWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "BaseWidgetProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method protected static getAddAccountIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 10
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v9, 0x0

    const/4 v0, 0x0

    .line 207
    new-array v2, v3, [Ljava/lang/String;

    const-string v1, "com.google"

    aput-object v1, v2, v9

    const-string v5, "androidmarket"

    invoke-static {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->createAddAccountOptions(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v7

    move-object v1, v0

    move-object v4, v0

    move-object v6, v0

    invoke-static/range {v0 .. v7}, Landroid/accounts/AccountManager;->newChooseAccountIntent(Landroid/accounts/Account;Ljava/util/ArrayList;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v8

    .line 216
    .local v8, intent:Landroid/content/Intent;
    invoke-static {p0, v9, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method protected static getBoundingBoxes(Landroid/content/Context;I)[I
    .locals 8
    .parameter "context"
    .parameter "appWidgetId"

    .prologue
    const v3, 0x7f0b008e

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 60
    const/4 v2, 0x4

    new-array v1, v2, [I

    invoke-static {p0, v3}, Lcom/google/android/finsky/widget/WidgetUtils;->getDips(Landroid/content/Context;I)I

    move-result v2

    aput v2, v1, v4

    const v2, 0x7f0b008f

    invoke-static {p0, v2}, Lcom/google/android/finsky/widget/WidgetUtils;->getDips(Landroid/content/Context;I)I

    move-result v2

    aput v2, v1, v5

    invoke-static {p0, v3}, Lcom/google/android/finsky/widget/WidgetUtils;->getDips(Landroid/content/Context;I)I

    move-result v2

    aput v2, v1, v6

    const v2, 0x7f0b008f

    invoke-static {p0, v2}, Lcom/google/android/finsky/widget/WidgetUtils;->getDips(Landroid/content/Context;I)I

    move-result v2

    aput v2, v1, v7

    .line 67
    .local v1, results:[I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    .line 77
    :goto_0
    return-object v1

    .line 72
    :cond_0
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v0

    .line 73
    .local v0, result:Landroid/os/Bundle;
    const-string v2, "appWidgetMinWidth"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v4

    .line 74
    const-string v2, "appWidgetMinHeight"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v5

    .line 75
    const-string v2, "appWidgetMaxWidth"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v6

    .line 76
    const-string v2, "appWidgetMaxHeight"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v7

    goto :goto_0
.end method

.method private sendAnalytics(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 159
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 160
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/widget/BaseWidgetProvider;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    array-length v0, v0

    .line 162
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "widget"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "class"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "action"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "num"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 168
    const-string v2, "android.appwidget.action.APPWIDGET_UPDATE_OPTIONS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    const-string v2, "appWidgetId"

    invoke-virtual {p2, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 171
    invoke-static {p1, v2}, Lcom/google/android/finsky/widget/BaseWidgetProvider;->getBoundingBoxes(Landroid/content/Context;I)[I

    move-result-object v3

    .line 172
    invoke-static {p1}, Lcom/google/android/finsky/widget/WidgetTypeMap;->get(Landroid/content/Context;)Lcom/google/android/finsky/widget/WidgetTypeMap;

    move-result-object v4

    const-class v5, Lcom/google/android/finsky/widget/BaseWidgetProvider;

    invoke-virtual {v4, v5, v2}, Lcom/google/android/finsky/widget/WidgetTypeMap;->get(Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v2

    .line 175
    const-string v4, "widgetType"

    invoke-virtual {v1, v4, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 176
    const-string v2, "appWidgetMinWidth"

    aget v4, v3, v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 178
    const-string v2, "appWidgetMinHeight"

    aget v4, v3, v8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 180
    const-string v2, "appWidgetMaxWidth"

    aget v4, v3, v9

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 182
    const-string v2, "appWidgetMaxHeight"

    aget v4, v3, v10

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 184
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v2

    const-string v4, "widgetUpdate"

    const/16 v5, 0xe

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "widgetClass"

    aput-object v6, v5, v7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const-string v6, "widgetAction"

    aput-object v6, v5, v9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    const-string v6, "widgetNum"

    aput-object v6, v5, v11

    const/4 v6, 0x5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x6

    const-string v6, "widgetMinWidth"

    aput-object v6, v5, v0

    const/4 v0, 0x7

    aget v6, v3, v7

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/16 v0, 0x8

    const-string v6, "widgetMinHeight"

    aput-object v6, v5, v0

    const/16 v0, 0x9

    aget v6, v3, v8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/16 v0, 0xa

    const-string v6, "widgetMaxWidth"

    aput-object v6, v5, v0

    const/16 v0, 0xb

    aget v6, v3, v9

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/16 v0, 0xc

    const-string v6, "widgetMaxHeight"

    aput-object v6, v5, v0

    const/16 v0, 0xd

    aget v3, v3, v10

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v0

    invoke-virtual {v2, v4, v5}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    :goto_0
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-void

    .line 193
    :cond_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v2

    const-string v3, "widgetUpdate"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "widgetClass"

    aput-object v5, v4, v7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const-string v5, "widgetAction"

    aput-object v5, v4, v9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const-string v5, "widgetNum"

    aput-object v5, v4, v11

    const/4 v5, 0x5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static varargs update(Landroid/content/Context;Ljava/lang/Class;[I)V
    .locals 2
    .parameter "context"
    .parameter
    .parameter "appWidgetIds"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;[I)V"
        }
    .end annotation

    .prologue
    .line 220
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 221
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    const-string v1, "appWidgetIds"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 223
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 224
    return-void
.end method


# virtual methods
.method protected getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 2
    .parameter "context"

    .prologue
    .line 48
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected onDefaultConfiguration(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Landroid/content/Intent;I)V
    .locals 4
    .parameter "context"
    .parameter "manager"
    .parameter "intent"
    .parameter "appWidgetId"

    .prologue
    .line 146
    invoke-static {p1}, Lcom/google/android/finsky/widget/WidgetTypeMap;->get(Landroid/content/Context;)Lcom/google/android/finsky/widget/WidgetTypeMap;

    move-result-object v1

    .line 147
    .local v1, typeMap:Lcom/google/android/finsky/widget/WidgetTypeMap;
    const-string v2, "type"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, backend:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2, p4, v0}, Lcom/google/android/finsky/widget/WidgetTypeMap;->put(Ljava/lang/Class;ILjava/lang/String;)V

    .line 149
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p4, v2, v3

    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/finsky/widget/BaseWidgetProvider;->updateWidgets(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 150
    return-void
.end method

.method public onDeleted(Landroid/content/Context;[I)V
    .locals 6
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    .line 130
    invoke-static {p1}, Lcom/google/android/finsky/widget/WidgetTypeMap;->get(Landroid/content/Context;)Lcom/google/android/finsky/widget/WidgetTypeMap;

    move-result-object v4

    .line 131
    .local v4, typeMap:Lcom/google/android/finsky/widget/WidgetTypeMap;
    move-object v1, p2

    .local v1, arr$:[I
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v0, v1, v2

    .line 132
    .local v0, appWidgetId:I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/google/android/finsky/widget/WidgetTypeMap;->delete(Ljava/lang/Class;I)V

    .line 131
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 134
    .end local v0           #appWidgetId:I
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x0

    .line 82
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 84
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 85
    .local v2, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, action:Ljava/lang/String;
    const-string v7, "android.appwidget.action.APPWIDGET_DELETED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "android.appwidget.action.APPWIDGET_UPDATE_OPTIONS"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 90
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/widget/BaseWidgetProvider;->sendAnalytics(Landroid/content/Context;Landroid/content/Intent;)V

    .line 93
    :cond_1
    const-string v7, "com.android.launcher.action.APPWIDGET_DEFAULT_WORKSPACE_CONFIGURE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 94
    const-string v7, "appWidgetId"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 96
    .local v1, appWidgetId:I
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v7

    invoke-virtual {p0, p1, v7, p2, v1}, Lcom/google/android/finsky/widget/BaseWidgetProvider;->onDefaultConfiguration(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Landroid/content/Intent;I)V

    .line 100
    .end local v1           #appWidgetId:I
    :cond_2
    const-string v7, "com.android.vending.action.APPWIDGET_UPDATE_CONSUMPTION_DATA"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 101
    const-string v7, "backendId"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 103
    invoke-static {p1}, Lcom/google/android/finsky/widget/WidgetTypeMap;->get(Landroid/content/Context;)Lcom/google/android/finsky/widget/WidgetTypeMap;

    move-result-object v6

    .line 104
    .local v6, typeMap:Lcom/google/android/finsky/widget/WidgetTypeMap;
    const-string v7, "backendId"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 105
    .local v3, backendId:I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v3}, Lcom/google/android/finsky/widget/WidgetUtils;->translate(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/android/finsky/widget/WidgetTypeMap;->getWidgetsOfExactType(Ljava/lang/Class;Ljava/lang/String;)[I

    move-result-object v4

    .line 107
    .local v4, backendWidgetIds:[I
    invoke-virtual {p0, p1, v2, v4}, Lcom/google/android/finsky/widget/BaseWidgetProvider;->updateWidgets(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "all"

    invoke-virtual {v6, v7, v8}, Lcom/google/android/finsky/widget/WidgetTypeMap;->getWidgetsOfExactType(Ljava/lang/Class;Ljava/lang/String;)[I

    move-result-object v5

    .line 110
    .local v5, multiCorpusWidgetIds:[I
    invoke-virtual {p0, p1, v2, v5}, Lcom/google/android/finsky/widget/BaseWidgetProvider;->updateWidgets(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 116
    .end local v3           #backendId:I
    .end local v4           #backendWidgetIds:[I
    .end local v5           #multiCorpusWidgetIds:[I
    .end local v6           #typeMap:Lcom/google/android/finsky/widget/WidgetTypeMap;
    :cond_3
    :goto_0
    const-string v7, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "appWidgetIds"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 119
    sget-object v7, Lcom/google/android/finsky/config/G;->debugOptionsEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v7}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 120
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/widget/BaseWidgetProvider;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v7

    invoke-virtual {p0, p1, v2, v7}, Lcom/google/android/finsky/widget/BaseWidgetProvider;->updateWidgets(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 126
    :cond_4
    :goto_1
    return-void

    .line 112
    :cond_5
    const-string v7, "No backend specified for update!"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 123
    :cond_6
    const-string v7, "Refusing to update all widgets; need to narrow scope"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 0
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 138
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/finsky/widget/BaseWidgetProvider;->updateWidgets(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 139
    return-void
.end method

.method protected varargs abstract updateWidgets(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
.end method
