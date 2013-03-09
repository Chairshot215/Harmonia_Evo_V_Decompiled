.class public Lcom/google/android/finsky/widget/FinskyWidgetProvider;
.super Lcom/google/android/finsky/widget/BaseWidgetProvider;
.source "FinskyWidgetProvider.java"


# static fields
.field private static final DOCUMENT_TYPES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field

.field private static final mImageSelector:Lcom/google/android/finsky/widget/WidgetModel$ImageSelector;


# instance fields
.field private final mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private final mUrls:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$1;

    invoke-direct {v0}, Lcom/google/android/finsky/widget/FinskyWidgetProvider$1;-><init>()V

    sput-object v0, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->mImageSelector:Lcom/google/android/finsky/widget/WidgetModel$ImageSelector;

    .line 50
    new-instance v0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$2;

    invoke-direct {v0}, Lcom/google/android/finsky/widget/FinskyWidgetProvider$2;-><init>()V

    sput-object v0, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->DOCUMENT_TYPES:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/google/android/finsky/widget/BaseWidgetProvider;-><init>()V

    .line 72
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->mUrls:Ljava/util/HashMap;

    .line 79
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 81
    iget-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->mUrls:Ljava/util/HashMap;

    const-string v1, "apps"

    sget-object v2, Lcom/google/android/finsky/config/G;->appsWidgetUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->mUrls:Ljava/util/HashMap;

    const-string v1, "books"

    sget-object v2, Lcom/google/android/finsky/config/G;->booksWidgetUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->mUrls:Ljava/util/HashMap;

    const-string v1, "movies"

    sget-object v2, Lcom/google/android/finsky/config/G;->moviesWidgetUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->mUrls:Ljava/util/HashMap;

    const-string v1, "music"

    sget-object v2, Lcom/google/android/finsky/config/G;->musicWidgetUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/widget/FinskyWidgetProvider;Landroid/content/Context;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->showError(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/widget/FinskyWidgetProvider;Landroid/content/Context;ILcom/google/android/finsky/widget/WidgetTypeMap;Lcom/google/android/finsky/widget/WidgetModel;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->rebindWidget(Landroid/content/Context;ILcom/google/android/finsky/widget/WidgetTypeMap;Lcom/google/android/finsky/widget/WidgetModel;)V

    return-void
.end method

.method private buildView(Landroid/content/Context;Lcom/google/android/finsky/widget/WidgetModel$PromotionalItem;)Landroid/widget/RemoteViews;
    .locals 3
    .parameter "context"
    .parameter "promo"

    .prologue
    .line 175
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040116

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 176
    .local v0, remoteViews:Landroid/widget/RemoteViews;
    const v1, 0x7f080195

    iget-object v2, p2, Lcom/google/android/finsky/widget/WidgetModel$PromotionalItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 177
    const v1, 0x7f0801d9

    iget-object v2, p2, Lcom/google/android/finsky/widget/WidgetModel$PromotionalItem;->developer:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 178
    const v1, 0x7f0801d7

    iget-object v2, p2, Lcom/google/android/finsky/widget/WidgetModel$PromotionalItem;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 179
    return-object v0
.end method

.method private buildViewIntent(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;)Landroid/app/PendingIntent;
    .locals 3
    .parameter "context"
    .parameter "doc"

    .prologue
    .line 183
    invoke-static {p1, p2}, Lcom/google/android/finsky/utils/IntentUtils;->createViewDocumentIntent(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;

    move-result-object v0

    .line 184
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 185
    const/4 v1, 0x0

    const/high16 v2, 0x800

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private clearList(Landroid/content/Context;ILcom/google/android/finsky/widget/WidgetTypeMap;Lcom/google/android/finsky/widget/WidgetModel;)V
    .locals 0
    .parameter "context"
    .parameter "appWidgetId"
    .parameter "typeMap"
    .parameter "widgetInfo"

    .prologue
    .line 122
    invoke-virtual {p4}, Lcom/google/android/finsky/widget/WidgetModel;->reset()V

    .line 123
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->rebindWidget(Landroid/content/Context;ILcom/google/android/finsky/widget/WidgetTypeMap;Lcom/google/android/finsky/widget/WidgetModel;)V

    .line 124
    return-void
.end method

.method private getBackend(Lcom/google/android/finsky/widget/WidgetTypeMap;I)Ljava/lang/String;
    .locals 1
    .parameter "typeMap"
    .parameter "appWidgetId"

    .prologue
    .line 205
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/google/android/finsky/widget/WidgetTypeMap;->get(Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDfeUrl(Lcom/google/android/finsky/widget/WidgetTypeMap;I)Ljava/lang/String;
    .locals 2
    .parameter "typeMap"
    .parameter "appWidgetId"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->mUrls:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/google/android/finsky/widget/WidgetTypeMap;->get(Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected static getLaunchMarketIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3
    .parameter

    .prologue
    .line 216
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/finsky/activities/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 217
    const/4 v1, 0x0

    const/high16 v2, 0x800

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private getValidDocumentTypes(Lcom/google/android/finsky/widget/WidgetTypeMap;I)[I
    .locals 2
    .parameter "typeMap"
    .parameter "appWidgetId"

    .prologue
    .line 209
    sget-object v0, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->DOCUMENT_TYPES:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->getBackend(Lcom/google/android/finsky/widget/WidgetTypeMap;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method private rebindWidget(Landroid/content/Context;ILcom/google/android/finsky/widget/WidgetTypeMap;Lcom/google/android/finsky/widget/WidgetModel;)V
    .locals 7
    .parameter "context"
    .parameter "appWidgetId"
    .parameter "typeMap"
    .parameter "widgetInfo"

    .prologue
    const v6, 0x7f0801d0

    .line 155
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f040117

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 156
    .local v3, widget:Landroid/widget/RemoteViews;
    invoke-virtual {p4}, Lcom/google/android/finsky/widget/WidgetModel;->getItems()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 157
    invoke-direct {p0, p1, v3}, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->showEmptyState(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 171
    :cond_0
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    invoke-virtual {v4, p2, v3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 172
    return-void

    .line 159
    :cond_1
    invoke-virtual {v3, v6}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 160
    const v4, 0x7f080231

    const/16 v5, 0x8

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 161
    const/4 v4, 0x0

    invoke-virtual {v3, v6, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 162
    invoke-virtual {p4}, Lcom/google/android/finsky/widget/WidgetModel;->getItems()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/widget/WidgetModel$PromotionalItem;

    .line 163
    .local v1, promo:Lcom/google/android/finsky/widget/WidgetModel$PromotionalItem;
    invoke-direct {p0, p1, v1}, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->buildView(Landroid/content/Context;Lcom/google/android/finsky/widget/WidgetModel$PromotionalItem;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 164
    .local v2, promoView:Landroid/widget/RemoteViews;
    const v4, 0x7f08022f

    iget-object v5, v1, Lcom/google/android/finsky/widget/WidgetModel$PromotionalItem;->doc:Lcom/google/android/finsky/api/model/Document;

    invoke-direct {p0, p1, v5}, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->buildViewIntent(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 166
    const v4, 0x7f080230

    const v5, 0x7f030004

    invoke-virtual {v2, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 168
    invoke-virtual {v3, v6, v2}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    goto :goto_0
.end method

.method private refreshList(Landroid/content/Context;ILcom/google/android/finsky/widget/WidgetTypeMap;Lcom/google/android/finsky/widget/WidgetModel;)V
    .locals 8
    .parameter "context"
    .parameter "appWidgetId"
    .parameter "typeMap"
    .parameter "widgetInfo"

    .prologue
    .line 132
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v6

    .line 133
    .local v6, dfeApi:Lcom/google/android/finsky/api/DfeApi;
    invoke-direct {p0, p3, p2}, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->getDfeUrl(Lcom/google/android/finsky/widget/WidgetTypeMap;I)Ljava/lang/String;

    move-result-object v7

    .line 134
    .local v7, dfeUrl:Ljava/lang/String;
    if-nez v7, :cond_0

    .line 135
    const-string v0, "%d has null URL"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->showError(Landroid/content/Context;I)V

    .line 151
    :goto_0
    return-void

    .line 139
    :cond_0
    new-instance v0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$3;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/widget/FinskyWidgetProvider$3;-><init>(Lcom/google/android/finsky/widget/FinskyWidgetProvider;Landroid/content/Context;ILcom/google/android/finsky/widget/WidgetTypeMap;Lcom/google/android/finsky/widget/WidgetModel;)V

    invoke-virtual {p4, p1, v6, v7, v0}, Lcom/google/android/finsky/widget/WidgetModel;->refresh(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Lcom/google/android/finsky/widget/WidgetModel$RefreshListener;)V

    goto :goto_0
.end method

.method private showEmptyState(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 4
    .parameter "context"
    .parameter "remoteViews"

    .prologue
    const v3, 0x7f080231

    const v2, 0x7f0801d0

    .line 189
    const v0, 0x7f080232

    const v1, 0x7f030004

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 190
    invoke-virtual {p2, v2}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 191
    const/4 v0, 0x0

    invoke-virtual {p2, v3, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 192
    const/16 v0, 0x8

    invoke-virtual {p2, v2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 193
    invoke-static {p1}, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->getLaunchMarketIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p2, v3, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 195
    return-void
.end method

.method private showError(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetId"

    .prologue
    .line 198
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040117

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 200
    .local v0, remoteViews:Landroid/widget/RemoteViews;
    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->showEmptyState(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 201
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 202
    return-void
.end method


# virtual methods
.method protected varargs updateWidgets(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 13
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 90
    if-nez p3, :cond_1

    .line 118
    :cond_0
    return-void

    .line 94
    :cond_1
    invoke-static {p1}, Lcom/google/android/finsky/widget/WidgetTypeMap;->get(Landroid/content/Context;)Lcom/google/android/finsky/widget/WidgetTypeMap;

    move-result-object v12

    .line 95
    .local v12, typeMap:Lcom/google/android/finsky/widget/WidgetTypeMap;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v9

    .line 96
    .local v9, dfeApi:Lcom/google/android/finsky/api/DfeApi;
    move-object/from16 v7, p3

    .local v7, arr$:[I
    array-length v11, v7

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_0
    if-ge v10, v11, :cond_0

    aget v6, v7, v10

    .line 97
    .local v6, appWidgetId:I
    invoke-direct {p0, v12, v6}, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->getBackend(Lcom/google/android/finsky/widget/WidgetTypeMap;I)Ljava/lang/String;

    move-result-object v8

    .line 98
    .local v8, backend:Ljava/lang/String;
    if-nez v8, :cond_2

    .line 100
    const-string v8, "apps"

    .line 101
    const-string v1, "Defaulting %d to %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v8, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v12, v1, v6, v8}, Lcom/google/android/finsky/widget/WidgetTypeMap;->put(Ljava/lang/Class;ILjava/lang/String;)V

    .line 105
    :cond_2
    new-instance v0, Lcom/google/android/finsky/widget/WidgetModel;

    iget-object v1, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-direct {p0, v12, v6}, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->getValidDocumentTypes(Lcom/google/android/finsky/widget/WidgetTypeMap;I)[I

    move-result-object v2

    sget-object v3, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->mImageSelector:Lcom/google/android/finsky/widget/WidgetModel$ImageSelector;

    const v4, 0x7f0b0039

    const/16 v5, 0xa

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/widget/WidgetModel;-><init>(Lcom/google/android/finsky/utils/BitmapLoader;[ILcom/google/android/finsky/widget/WidgetModel$ImageSelector;II)V

    .line 108
    .local v0, widgetModel:Lcom/google/android/finsky/widget/WidgetModel;
    invoke-direct {p0, p1, v6, v12, v0}, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->clearList(Landroid/content/Context;ILcom/google/android/finsky/widget/WidgetTypeMap;Lcom/google/android/finsky/widget/WidgetModel;)V

    .line 110
    if-nez v9, :cond_3

    .line 111
    invoke-direct {p0, p1, v6}, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->showError(Landroid/content/Context;I)V

    .line 96
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 115
    :cond_3
    invoke-direct {p0, p1, v6, v12, v0}, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->rebindWidget(Landroid/content/Context;ILcom/google/android/finsky/widget/WidgetTypeMap;Lcom/google/android/finsky/widget/WidgetModel;)V

    .line 116
    invoke-direct {p0, p1, v6, v12, v0}, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->refreshList(Landroid/content/Context;ILcom/google/android/finsky/widget/WidgetTypeMap;Lcom/google/android/finsky/widget/WidgetModel;)V

    goto :goto_1
.end method
