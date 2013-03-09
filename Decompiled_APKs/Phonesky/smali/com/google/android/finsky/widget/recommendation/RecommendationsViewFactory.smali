.class public Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;
.super Ljava/lang/Object;
.source "RecommendationsViewFactory.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# instance fields
.field private final mAppWidgetId:I

.field private final mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private final mContext:Landroid/content/Context;

.field private final mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private mItems:Lcom/google/android/finsky/widget/recommendation/RecommendationList;

.field private final mLibrary:Lcom/google/android/finsky/library/Library;

.field private final mMaxImageHeight:I

.field private final mTypeMap:Lcom/google/android/finsky/widget/WidgetTypeMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "appWidgetId"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mContext:Landroid/content/Context;

    .line 65
    iput p2, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mAppWidgetId:I

    .line 66
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 67
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mLibrary:Lcom/google/android/finsky/library/Library;

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mMaxImageHeight:I

    .line 70
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 71
    invoke-static {p1}, Lcom/google/android/finsky/widget/WidgetTypeMap;->get(Landroid/content/Context;)Lcom/google/android/finsky/widget/WidgetTypeMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mTypeMap:Lcom/google/android/finsky/widget/WidgetTypeMap;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mAppWidgetId:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;)Lcom/google/android/finsky/widget/WidgetTypeMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mTypeMap:Lcom/google/android/finsky/widget/WidgetTypeMap;

    return-object v0
.end method

.method private getLastMeasuredWidth()I
    .locals 3

    .prologue
    .line 161
    iget-object v1, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    iget v2, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mAppWidgetId:I

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v0

    .line 162
    .local v0, result:Landroid/os/Bundle;
    const-string v1, "appWidgetMinWidth"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private static getLayoutRes(Landroid/content/Context;IIII)I
    .locals 6
    .parameter "context"
    .parameter "imageType"
    .parameter "widgetBackend"
    .parameter "itemBackend"
    .parameter "widthInDips"

    .prologue
    const v2, 0x7f0400f1

    const v4, 0x7f0400f0

    const v1, 0x7f0400ec

    const v3, 0x7f0400f2

    .line 236
    const v5, 0x7f0b009c

    invoke-static {p0, v5}, Lcom/google/android/finsky/widget/WidgetUtils;->getDips(Landroid/content/Context;I)I

    move-result v0

    .line 238
    .local v0, promoBreakpointDips:I
    packed-switch p2, :pswitch_data_0

    .line 280
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid backend: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 240
    :pswitch_1
    const/4 v4, 0x2

    if-ne p1, v4, :cond_2

    .line 241
    if-ge p4, v0, :cond_1

    .line 278
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 244
    goto :goto_0

    :cond_2
    move v1, v3

    .line 247
    goto :goto_0

    .line 251
    :pswitch_2
    packed-switch p3, :pswitch_data_1

    .line 259
    :pswitch_3
    packed-switch p1, :pswitch_data_2

    move v1, v3

    .line 267
    goto :goto_0

    :pswitch_4
    move v1, v3

    .line 253
    goto :goto_0

    :pswitch_5
    move v1, v4

    .line 257
    goto :goto_0

    .line 261
    :pswitch_6
    if-lt p4, v0, :cond_0

    move v1, v2

    .line 264
    goto :goto_0

    :pswitch_7
    move v1, v3

    .line 273
    goto :goto_0

    :pswitch_8
    move v1, v4

    .line 278
    goto :goto_0

    .line 238
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_8
        :pswitch_7
        :pswitch_1
        :pswitch_8
        :pswitch_0
        :pswitch_8
    .end packed-switch

    .line 251
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_3
        :pswitch_5
    .end packed-switch

    .line 259
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_6
    .end packed-switch
.end method

.method private getRecommendationItems()Lcom/google/android/finsky/widget/recommendation/RecommendationList;
    .locals 5

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-direct {p0}, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->getWidgetBackend()I

    move-result v2

    iget v3, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mAppWidgetId:I

    iget-object v4, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mLibrary:Lcom/google/android/finsky/library/Library;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore;->getRecommendationsOrShowError(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;IILcom/google/android/finsky/library/Library;)Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    move-result-object v0

    return-object v0
.end method

.method private static getStripRes(I)I
    .locals 2
    .parameter "backend"

    .prologue
    .line 218
    packed-switch p0, :pswitch_data_0

    .line 231
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid backend"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :pswitch_1
    const v0, 0x7f0200e2

    .line 229
    :goto_0
    return v0

    .line 222
    :pswitch_2
    const v0, 0x7f0200e6

    goto :goto_0

    .line 224
    :pswitch_3
    const v0, 0x7f0200e5

    goto :goto_0

    .line 226
    :pswitch_4
    const v0, 0x7f0200e4

    goto :goto_0

    .line 229
    :pswitch_5
    const v0, 0x7f0200e1

    goto :goto_0

    .line 218
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private getWidgetBackend()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 166
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v5}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 168
    .local v1, lock:Ljava/util/concurrent/Semaphore;
    const/4 v3, 0x1

    new-array v0, v3, [I

    .line 169
    .local v0, backend:[I
    new-instance v2, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory$1;-><init>(Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;[ILjava/util/concurrent/Semaphore;)V

    .line 182
    .local v2, runnable:Ljava/lang/Runnable;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    if-eq v3, v4, :cond_0

    .line 185
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 186
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 189
    :cond_0
    aget v3, v0, v5

    return v3
.end method

.method public static varargs notifyDataSetChanged(Landroid/content/Context;[I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 287
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 289
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 290
    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object p1

    .line 294
    :cond_1
    const v1, 0x7f0801d0

    invoke-virtual {v0, p1, v1}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    .line 295
    return-void
.end method

.method private static populateItem(Landroid/widget/RemoteViews;Lcom/google/android/finsky/widget/recommendation/Recommendation;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "views"
    .parameter "item"
    .parameter "bitmap"

    .prologue
    .line 193
    invoke-virtual {p1}, Lcom/google/android/finsky/widget/recommendation/Recommendation;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    .line 195
    .local v0, document:Lcom/google/android/finsky/api/model/Document;
    const v1, 0x7f080195

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 196
    const v1, 0x7f0801d9

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 197
    const v1, 0x7f0801da

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getRecommendationReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 198
    const v1, 0x7f0801d7

    invoke-virtual {p0, v1, p2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 199
    const v1, 0x7f0801d5

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->getStripRes(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 200
    return-void
.end method

.method private static setIntents(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/google/android/finsky/widget/recommendation/Recommendation;III)V
    .locals 4
    .parameter "context"
    .parameter "views"
    .parameter "item"
    .parameter "itemIndex"
    .parameter "appWidgetId"
    .parameter "widgetBackendId"

    .prologue
    .line 204
    invoke-virtual {p2}, Lcom/google/android/finsky/widget/recommendation/Recommendation;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v3

    invoke-static {p0, v3, p5, p4}, Lcom/google/android/finsky/widget/recommendation/OpenRecommendationReceiver;->getIntent(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;II)Landroid/app/PendingIntent;

    move-result-object v2

    .line 206
    .local v2, pendingView:Landroid/app/PendingIntent;
    const v3, 0x7f0801de

    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 208
    invoke-static {p0, p4}, Lcom/google/android/finsky/widget/AdvanceFlipperReceiver;->getIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 209
    .local v0, advance:Landroid/app/PendingIntent;
    const v3, 0x7f0801df

    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 211
    invoke-virtual {p2}, Lcom/google/android/finsky/widget/recommendation/Recommendation;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v3

    invoke-static {p0, p4, v3, p5, p3}, Lcom/google/android/finsky/services/DismissRecommendationService;->getDismissPendingIntent(Landroid/content/Context;ILcom/google/android/finsky/api/model/Document;II)Landroid/app/PendingIntent;

    move-result-object v1

    .line 214
    .local v1, pendingDismiss:Landroid/app/PendingIntent;
    const v3, 0x7f0801d8

    invoke-virtual {p1, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 215
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mItems:Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mItems:Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    invoke-virtual {v0}, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 147
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 3

    .prologue
    .line 137
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0400ed

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->getWidgetBackend()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 100
    iget-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mContext:Landroid/content/Context;

    const-class v2, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;

    new-array v3, v4, [I

    iget v4, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mAppWidgetId:I

    aput v4, v3, v5

    invoke-static {v0, v2, v3}, Lcom/google/android/finsky/widget/BaseWidgetProvider;->update(Landroid/content/Context;Ljava/lang/Class;[I)V

    .line 132
    :cond_0
    :goto_0
    return-object v1

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mItems:Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    if-nez v0, :cond_2

    .line 105
    invoke-direct {p0}, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->getRecommendationItems()Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mItems:Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    .line 107
    iget-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mItems:Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    if-eqz v0, :cond_0

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mItems:Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    invoke-virtual {v0}, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->size()I

    move-result v0

    if-lt p1, v0, :cond_3

    .line 115
    const-string v0, "Item out of bounds (pos = %d, size = %d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mItems:Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    invoke-virtual {v3}, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 119
    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mItems:Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->get(I)Lcom/google/android/finsky/widget/recommendation/Recommendation;

    move-result-object v2

    .line 120
    iget-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget v1, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mMaxImageHeight:I

    invoke-static {v0, v2, v1}, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore;->getBitmap(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/widget/recommendation/Recommendation;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 122
    invoke-virtual {v2}, Lcom/google/android/finsky/widget/recommendation/Recommendation;->getImageType()I

    move-result v1

    .line 123
    invoke-direct {p0}, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->getLastMeasuredWidth()I

    move-result v3

    .line 125
    iget-object v4, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->getWidgetBackend()I

    move-result v5

    invoke-virtual {v2}, Lcom/google/android/finsky/widget/recommendation/Recommendation;->getBackend()I

    move-result v6

    invoke-static {v4, v1, v5, v6, v3}, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->getLayoutRes(Landroid/content/Context;IIII)I

    move-result v3

    .line 128
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v4, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 130
    invoke-static {v1, v2, v0}, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->populateItem(Landroid/widget/RemoteViews;Lcom/google/android/finsky/widget/recommendation/Recommendation;Landroid/graphics/Bitmap;)V

    .line 131
    iget-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mAppWidgetId:I

    invoke-direct {p0}, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->getWidgetBackend()I

    move-result v5

    move v3, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->setIntents(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/google/android/finsky/widget/recommendation/Recommendation;III)V

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x4

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public onDataSetChanged()V
    .locals 5

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->getWidgetBackend()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mContext:Landroid/content/Context;

    const-class v1, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mAppWidgetId:I

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/widget/BaseWidgetProvider;->update(Landroid/content/Context;Ljava/lang/Class;[I)V

    .line 86
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->getRecommendationItems()Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mItems:Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method
