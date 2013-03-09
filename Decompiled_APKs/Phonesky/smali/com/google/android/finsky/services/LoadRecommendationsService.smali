.class public Lcom/google/android/finsky/services/LoadRecommendationsService;
.super Landroid/app/IntentService;
.source "LoadRecommendationsService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/google/android/finsky/services/LoadRecommendationsService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public static load(Landroid/content/Context;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/finsky/services/LoadRecommendationsService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://market/load/for/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 58
    const-string v1, "backendId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 59
    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 60
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 61
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 33
    const-string v0, "backendId"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 34
    const-string v1, "appWidgetId"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 37
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v2

    .line 38
    if-nez v2, :cond_1

    .line 39
    const-class v0, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;

    const/4 v2, 0x1

    new-array v2, v2, [I

    aput v1, v2, v3

    invoke-static {p0, v0, v2}, Lcom/google/android/finsky/widget/BaseWidgetProvider;->update(Landroid/content/Context;Ljava/lang/Class;[I)V

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v3

    .line 45
    invoke-static {p0, v2, v0, v1, v3}, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore;->getRecommendationsOrShowError(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;IILcom/google/android/finsky/library/Library;)Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    move-result-object v2

    .line 47
    if-eqz v2, :cond_0

    .line 48
    invoke-virtual {v2}, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2, v0}, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;->showData(Landroid/content/Context;ILjava/lang/String;I)V

    goto :goto_0
.end method
