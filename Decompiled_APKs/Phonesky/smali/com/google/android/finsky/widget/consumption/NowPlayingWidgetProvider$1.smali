.class Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$1;
.super Ljava/lang/Object;
.source "NowPlayingWidgetProvider.java"

# interfaces
.implements Lcom/google/android/finsky/widget/consumption/BatchedImageLoader$BatchedImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->updateWidgets(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Ljava/util/Map;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;

.field final synthetic val$appWidgetId:I

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$1;->this$0:Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;

    iput-object p2, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$1;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$1;->val$appWidgetId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoaded(Ljava/util/Map;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 170
    .local p1, cachedImages:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;Landroid/graphics/Bitmap;>;"
    iget-object v0, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$1;->this$0:Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;

    iget-object v1, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    iget v5, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$1;->val$appWidgetId:I

    aput v5, v3, v4

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->updateWidgets(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Ljava/util/Map;[I)V

    .line 172
    return-void
.end method
