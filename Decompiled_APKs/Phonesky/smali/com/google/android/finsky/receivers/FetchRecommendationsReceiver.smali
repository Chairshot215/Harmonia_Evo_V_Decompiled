.class public Lcom/google/android/finsky/receivers/FetchRecommendationsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FetchRecommendationsReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 28
    const-string v5, "backendId"

    const/4 v6, -0x1

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 29
    .local v1, backendId:I
    const-string v5, "appWidgetId"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 32
    .local v0, appWidgetId:I
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v2

    .line 33
    .local v2, dfeApi:Lcom/google/android/finsky/api/DfeApi;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v3

    .line 35
    .local v3, library:Lcom/google/android/finsky/library/Library;
    new-instance v4, Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    const-string v5, ""

    invoke-direct {v4, v5, v1}, Lcom/google/android/finsky/widget/recommendation/RecommendationList;-><init>(Ljava/lang/String;I)V

    .line 36
    .local v4, recList:Lcom/google/android/finsky/widget/recommendation/RecommendationList;
    invoke-static {v2, p1, v4, v3, v0}, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore;->performBackFill(Lcom/google/android/finsky/api/DfeApi;Landroid/content/Context;Lcom/google/android/finsky/widget/recommendation/RecommendationList;Lcom/google/android/finsky/library/Library;I)V

    .line 37
    return-void
.end method
