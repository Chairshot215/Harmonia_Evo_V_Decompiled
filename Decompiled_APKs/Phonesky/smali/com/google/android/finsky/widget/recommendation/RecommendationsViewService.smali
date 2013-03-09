.class public Lcom/google/android/finsky/widget/recommendation/RecommendationsViewService;
.super Landroid/widget/RemoteViewsService;
.source "RecommendationsViewService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/widget/RemoteViewsService;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .locals 3
    .parameter "intent"

    .prologue
    .line 20
    const-string v1, "appWidgetId"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 22
    .local v0, appWidgetId:I
    new-instance v1, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;

    invoke-direct {v1, p0, v0}, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;-><init>(Landroid/content/Context;I)V

    return-object v1
.end method
