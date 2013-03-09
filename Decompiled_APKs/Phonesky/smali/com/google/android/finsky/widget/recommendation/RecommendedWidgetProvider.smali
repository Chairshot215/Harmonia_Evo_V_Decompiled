.class public Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;
.super Lcom/google/android/finsky/widget/BaseWidgetProvider;
.source "RecommendedWidgetProvider.java"


# static fields
.field private static final VIEW_IDS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;->VIEW_IDS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xa3t 0x1t 0x8t 0x7ft
        0xd0t 0x1t 0x8t 0x7ft
        0x91t 0x1t 0x8t 0x7ft
        0xd2t 0x1t 0x8t 0x7ft
        0xd1t 0x1t 0x8t 0x7ft
        0xd4t 0x1t 0x8t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/android/finsky/widget/BaseWidgetProvider;-><init>()V

    return-void
.end method

.method private static varargs getBaseWithVisibleViews(Landroid/content/Context;[I)Landroid/widget/RemoteViews;
    .locals 7
    .parameter "context"
    .parameter "visibleIds"

    .prologue
    .line 132
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0400e6

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 133
    .local v4, views:Landroid/widget/RemoteViews;
    const v5, 0x7f080194

    const v6, 0x7f0200a9

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 135
    const v5, 0x7f080195

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 137
    sget-object v0, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;->VIEW_IDS:[I

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, v0, v1

    .line 138
    .local v3, viewId:I
    const/16 v5, 0x8

    invoke-virtual {v4, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    .end local v3           #viewId:I
    :cond_0
    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 142
    .restart local v3       #viewId:I
    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 145
    .end local v3           #viewId:I
    :cond_1
    return-object v4
.end method

.method private static getWidgetWithTitle(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/RemoteViews;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v8, 0x7f080018

    const/4 v5, 0x1

    const v3, 0x7f0801d0

    const/4 v7, 0x0

    .line 109
    new-array v0, v5, [I

    aput v3, v0, v7

    invoke-static {p0, v0}, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;->getBaseWithVisibleViews(Landroid/content/Context;[I)Landroid/widget/RemoteViews;

    move-result-object v6

    .line 110
    const v0, 0x7f0801d1

    invoke-virtual {v6, v3, v0}, Landroid/widget/RemoteViews;->setEmptyView(II)V

    .line 112
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://market/factory/for/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 114
    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 115
    invoke-virtual {v6, v3, v0}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    .line 117
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    const v0, 0x7f080195

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 120
    invoke-static {p3}, Lcom/google/android/finsky/api/DfeApiImpl;->getRecommendationsBrowseUrl(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "widget"

    move-object v0, p0

    move-object v2, p1

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/finsky/utils/IntentUtils;->createBrowseIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 123
    invoke-static {p0, v7, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 124
    invoke-virtual {v6, v8, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 125
    invoke-virtual {v6, v8, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 128
    :cond_0
    return-object v6
.end method

.method private static showAccountsNeeded(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "appWidgetId"

    .prologue
    .line 94
    invoke-static {p0}, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;->getAddAccountIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 95
    .local v0, operation:Landroid/app/PendingIntent;
    const v1, 0x7f070103

    invoke-static {p0, p1, v1, v0}, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;->showInteractiveError(Landroid/content/Context;IILandroid/app/PendingIntent;)V

    .line 96
    return-void
.end method

.method private static showConfigurationNeeded(Landroid/content/Context;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 88
    const-class v0, Lcom/google/android/finsky/widget/recommendation/RecommendedTrampoline;

    invoke-static {p0, v0, p1}, Lcom/google/android/finsky/widget/TrampolineActivity;->getLaunchIntent(Landroid/content/Context;Ljava/lang/Class;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 90
    const v1, 0x7f07024c

    invoke-static {p0, p1, v1, v0}, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;->showInteractiveError(Landroid/content/Context;IILandroid/app/PendingIntent;)V

    .line 91
    return-void
.end method

.method public static showData(Landroid/content/Context;ILjava/lang/String;I)V
    .locals 2
    .parameter "context"
    .parameter "appWidgetId"
    .parameter "title"
    .parameter "backendId"

    .prologue
    .line 77
    invoke-static {p0, p2, p1, p3}, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;->getWidgetWithTitle(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 78
    .local v0, views:Landroid/widget/RemoteViews;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 79
    return-void
.end method

.method public static showError(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "appWidgetId"
    .parameter "errorMessage"

    .prologue
    .line 82
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x7f0801a3

    aput v3, v1, v2

    invoke-static {p0, v1}, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;->getBaseWithVisibleViews(Landroid/content/Context;[I)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 83
    .local v0, views:Landroid/widget/RemoteViews;
    const v1, 0x7f080044

    invoke-virtual {v0, v1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 84
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 85
    return-void
.end method

.method private static showInteractiveError(Landroid/content/Context;IILandroid/app/PendingIntent;)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetId"
    .parameter "errorMsgResId"
    .parameter "operation"

    .prologue
    .line 100
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {p0, v1}, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;->getBaseWithVisibleViews(Landroid/content/Context;[I)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 102
    .local v0, views:Landroid/widget/RemoteViews;
    const v1, 0x7f0801d3

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 103
    const v1, 0x7f080191

    invoke-virtual {v0, v1, p3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 104
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 105
    return-void

    .line 100
    :array_0
    .array-data 0x4
        0xd2t 0x1t 0x8t 0x7ft
        0x91t 0x1t 0x8t 0x7ft
    .end array-data
.end method


# virtual methods
.method public onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .locals 2
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetId"
    .parameter "newOptions"

    .prologue
    .line 47
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p3, v0, v1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;->updateWidgets(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 48
    const v0, 0x7f0801d0

    invoke-virtual {p2, p3, v0}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 49
    return-void
.end method

.method protected varargs updateWidgets(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v2

    .line 55
    array-length v3, p3

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_2

    aget v4, p3, v0

    .line 56
    if-nez v2, :cond_0

    .line 57
    invoke-static {p1, v4}, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;->showAccountsNeeded(Landroid/content/Context;I)V

    .line 55
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_0
    invoke-static {p1}, Lcom/google/android/finsky/widget/WidgetTypeMap;->get(Landroid/content/Context;)Lcom/google/android/finsky/widget/WidgetTypeMap;

    move-result-object v5

    const-class v6, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;

    invoke-virtual {v5, v6, v4}, Lcom/google/android/finsky/widget/WidgetTypeMap;->get(Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v5

    .line 63
    if-nez v5, :cond_1

    .line 64
    invoke-static {p1, v4}, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;->showConfigurationNeeded(Landroid/content/Context;I)V

    goto :goto_1

    .line 67
    :cond_1
    invoke-static {v5}, Lcom/google/android/finsky/widget/WidgetUtils;->translate(Ljava/lang/String;)I

    move-result v5

    .line 69
    const/4 v6, 0x1

    new-array v6, v6, [I

    const v7, 0x7f0801d4

    aput v7, v6, v1

    invoke-static {p1, v6}, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;->getBaseWithVisibleViews(Landroid/content/Context;[I)Landroid/widget/RemoteViews;

    move-result-object v6

    .line 70
    invoke-virtual {p2, v4, v6}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 72
    invoke-static {p1, v4, v5}, Lcom/google/android/finsky/services/LoadRecommendationsService;->load(Landroid/content/Context;II)V

    goto :goto_1

    .line 74
    :cond_2
    return-void
.end method
