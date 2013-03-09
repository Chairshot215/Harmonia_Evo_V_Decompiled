.class public Lcom/google/android/finsky/services/DismissRecommendationService;
.super Landroid/app/IntentService;
.source "DismissRecommendationService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/google/android/finsky/services/DismissRecommendationService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public static getDismissPendingIntent(Landroid/content/Context;ILcom/google/android/finsky/api/model/Document;II)Landroid/app/PendingIntent;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 119
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getReasonUniqueId()Ljava/lang/String;

    move-result-object v0

    .line 121
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 122
    const-string v2, "content"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 123
    const-string v2, "dismiss"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 124
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 125
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 126
    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 128
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/google/android/finsky/services/DismissRecommendationService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 130
    const-string v1, "appWidgetId"

    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 131
    const-string v1, "documentId"

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const-string v1, "contentUniqueId"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string v0, "backendId"

    invoke-virtual {v2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 135
    invoke-static {p0, v4, v2, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 13
    .parameter

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 56
    const-string v0, "appWidgetId"

    invoke-virtual {p1, v0, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 59
    const-string v0, "documentId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 60
    const-string v0, "contentUniqueId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 61
    const-string v0, "backendId"

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 62
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v6

    .line 64
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v7

    .line 66
    if-nez v7, :cond_0

    .line 67
    const-class v0, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;

    new-array v1, v11, [I

    aput v2, v1, v10

    invoke-static {p0, v0, v1}, Lcom/google/android/finsky/widget/BaseWidgetProvider;->update(Landroid/content/Context;Ljava/lang/Class;[I)V

    .line 115
    :goto_0
    return-void

    .line 72
    :cond_0
    const/4 v1, 0x0

    .line 74
    :try_start_0
    invoke-static {p0, v7, v5, v6}, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore;->getRecommendations(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;ILcom/google/android/finsky/library/Library;)Lcom/google/android/finsky/widget/recommendation/RecommendationList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 76
    :try_start_1
    invoke-virtual {v0, v3}, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->remove(Ljava/lang/String;)Z

    .line 77
    invoke-virtual {v0, p0}, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->writeToDisk(Landroid/content/Context;)V

    .line 78
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {p0, v1}, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->notifyDataSetChanged(Landroid/content/Context;[I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_6

    move-object v1, v0

    .line 94
    :goto_1
    const-string v0, "Dismissing id=[%s]"

    new-array v3, v11, [Ljava/lang/Object;

    aput-object v4, v3, v10

    invoke-static {v0, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    invoke-static {}, Lcom/android/volley/toolbox/RequestFuture;->newFuture()Lcom/android/volley/toolbox/RequestFuture;

    move-result-object v3

    .line 96
    invoke-interface {v7, v4, v3, v3}, Lcom/google/android/finsky/api/DfeApi;->rateSuggestedContent(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    move-result-object v0

    .line 97
    invoke-virtual {v3, v0}, Lcom/android/volley/toolbox/RequestFuture;->setRequest(Lcom/android/volley/Request;)V

    .line 100
    :try_start_2
    sget-object v0, Lcom/google/android/finsky/config/G;->recommendationsFetchTimeoutMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v8, v9, v0}, Lcom/android/volley/toolbox/RequestFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 102
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->needsBackfill()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    invoke-interface {v7, v5}, Lcom/google/android/finsky/api/DfeApi;->invalidateRecommendationsCache(I)V

    .line 104
    invoke-static {v7, p0, v1, v6, v2}, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore;->performBackFill(Lcom/google/android/finsky/api/DfeApi;Landroid/content/Context;Lcom/google/android/finsky/widget/recommendation/RecommendationList;Lcom/google/android/finsky/library/Library;I)V

    .line 107
    :cond_1
    const-string v0, "Dismissed %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    const-string v0, "Interrupted while dismissing"

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 80
    :catch_1
    move-exception v0

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    .line 81
    :goto_2
    :try_start_3
    const-string v3, "Execution exception while fetching: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    invoke-static {v3, v8}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 88
    const-string v1, "Invalidating cached recs for %d"

    new-array v3, v11, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v10

    invoke-static {v1, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    invoke-interface {v7, v5}, Lcom/google/android/finsky/api/DfeApi;->invalidateRecommendationsCache(I)V

    .line 90
    invoke-static {p0, v5}, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore;->getCacheFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-object v1, v0

    goto :goto_1

    .line 82
    :catch_2
    move-exception v0

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    .line 83
    :goto_3
    :try_start_4
    const-string v3, "Interrupted while fetching: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    invoke-static {v3, v8}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 88
    const-string v1, "Invalidating cached recs for %d"

    new-array v3, v11, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v10

    invoke-static {v1, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    invoke-interface {v7, v5}, Lcom/google/android/finsky/api/DfeApi;->invalidateRecommendationsCache(I)V

    .line 90
    invoke-static {p0, v5}, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore;->getCacheFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-object v1, v0

    goto/16 :goto_1

    .line 84
    :catch_3
    move-exception v0

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    .line 85
    :goto_4
    :try_start_5
    const-string v3, "Timed out while fetching: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    invoke-static {v3, v8}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 88
    const-string v1, "Invalidating cached recs for %d"

    new-array v3, v11, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v10

    invoke-static {v1, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    invoke-interface {v7, v5}, Lcom/google/android/finsky/api/DfeApi;->invalidateRecommendationsCache(I)V

    .line 90
    invoke-static {p0, v5}, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore;->getCacheFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-object v1, v0

    goto/16 :goto_1

    .line 87
    :catchall_0
    move-exception v0

    .line 88
    const-string v1, "Invalidating cached recs for %d"

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    invoke-interface {v7, v5}, Lcom/google/android/finsky/api/DfeApi;->invalidateRecommendationsCache(I)V

    .line 90
    invoke-static {p0, v5}, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore;->getCacheFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    throw v0

    .line 110
    :catch_4
    move-exception v0

    .line 111
    const-string v1, "Exception while dismissing: %s"

    new-array v2, v11, [Ljava/lang/Object;

    aput-object v0, v2, v10

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 112
    :catch_5
    move-exception v0

    .line 113
    const-string v0, "Timed out while dismissing"

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 84
    :catch_6
    move-exception v1

    goto :goto_4

    .line 82
    :catch_7
    move-exception v1

    goto :goto_3

    .line 80
    :catch_8
    move-exception v1

    goto/16 :goto_2
.end method
