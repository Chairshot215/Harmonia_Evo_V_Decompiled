.class Lcom/google/android/finsky/services/AppsUsageService$2;
.super Lcom/google/android/finsky/services/AppsUsageService$StatsBinder;
.source "AppsUsageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/services/AppsUsageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/services/AppsUsageService;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/services/AppsUsageService;)V
    .locals 1
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/android/finsky/services/AppsUsageService$2;->this$0:Lcom/google/android/finsky/services/AppsUsageService;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/services/AppsUsageService$StatsBinder;-><init>(Lcom/google/android/finsky/services/AppsUsageService;Lcom/google/android/finsky/services/AppsUsageService$1;)V

    return-void
.end method


# virtual methods
.method public getDocuments(II)Ljava/util/List;
    .locals 31
    .parameter "dataTypeToFetch"
    .parameter "numItemsToReturn"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/services/AppsUsageService$2;->getData()[Lcom/android/internal/os/PkgUsageStats;

    move-result-object v11

    .line 54
    .local v11, data:[Lcom/android/internal/os/PkgUsageStats;
    array-length v0, v11

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/google/android/finsky/utils/Lists;->newArrayList(I)Ljava/util/ArrayList;

    move-result-object v24

    .line 56
    .local v24, output:Ljava/util/List;,"Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v12

    .line 58
    .local v12, docIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v27

    .line 59
    .local v27, stuff:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/internal/os/PkgUsageStats;>;"
    move-object v5, v11

    .local v5, arr$:[Lcom/android/internal/os/PkgUsageStats;
    array-length v0, v5

    move/from16 v22, v0

    .local v22, len$:I
    const/4 v15, 0x0

    .local v15, i$:I
    :goto_0
    move/from16 v0, v22

    if-ge v15, v0, :cond_0

    aget-object v18, v5, v15

    .line 60
    .local v18, item:Lcom/android/internal/os/PkgUsageStats;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/os/PkgUsageStats;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/os/PkgUsageStats;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 64
    .end local v18           #item:Lcom/android/internal/os/PkgUsageStats;
    :cond_0
    new-instance v23, Ljava/util/concurrent/Semaphore;

    const/16 v28, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 66
    .local v23, networkSemaphore:Ljava/util/concurrent/Semaphore;
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 68
    .local v6, bulkDetailsList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;>;"
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v28

    new-instance v29, Lcom/google/android/finsky/services/AppsUsageService$2$1;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v6, v2}, Lcom/google/android/finsky/services/AppsUsageService$2$1;-><init>(Lcom/google/android/finsky/services/AppsUsageService$2;Ljava/util/List;Ljava/util/concurrent/Semaphore;)V

    new-instance v30, Lcom/google/android/finsky/services/AppsUsageService$2$2;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/services/AppsUsageService$2$2;-><init>(Lcom/google/android/finsky/services/AppsUsageService$2;Ljava/util/concurrent/Semaphore;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v12, v1, v2}, Lcom/google/android/finsky/api/DfeApi;->getDetails(Ljava/util/Collection;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 81
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 83
    invoke-interface/range {v27 .. v27}, Ljava/util/Map;->size()I

    move-result v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/finsky/utils/Lists;->newArrayList(I)Ljava/util/ArrayList;

    move-result-object v10

    .line 85
    .local v10, containers:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/services/AppsUsageService$PkgUsageContainer;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .end local v15           #i$:I
    :cond_1
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;

    .line 86
    .local v14, entry:Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;
    invoke-virtual {v14}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;->getDoc()Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    move-result-object v28

    if-eqz v28, :cond_1

    .line 90
    new-instance v13, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v14}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;->getDoc()Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-direct {v13, v0, v1}, Lcom/google/android/finsky/api/model/Document;-><init>(Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;Ljava/lang/String;)V

    .line 91
    .local v13, document:Lcom/google/android/finsky/api/model/Document;
    invoke-virtual {v13}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v28

    invoke-interface/range {v27 .. v28}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/os/PkgUsageStats;

    .line 93
    .restart local v18       #item:Lcom/android/internal/os/PkgUsageStats;
    const-wide/16 v19, 0x0

    .line 94
    .local v19, lastUsedTime:J
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/os/PkgUsageStats;->componentResumeTimes:Ljava/util/Map;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 95
    .local v8, component:Ljava/lang/String;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/os/PkgUsageStats;->componentResumeTimes:Ljava/util/Map;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Long;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    move-wide/from16 v0, v19

    move-wide/from16 v2, v28

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v19

    goto :goto_2

    .line 98
    .end local v8           #component:Ljava/lang/String;
    :cond_2
    new-instance v28, Lcom/google/android/finsky/services/AppsUsageService$PkgUsageContainer;

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-direct {v0, v1, v2, v3, v13}, Lcom/google/android/finsky/services/AppsUsageService$PkgUsageContainer;-><init>(Lcom/android/internal/os/PkgUsageStats;JLcom/google/android/finsky/api/model/Document;)V

    move-object/from16 v0, v28

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 101
    .end local v13           #document:Lcom/google/android/finsky/api/model/Document;
    .end local v14           #entry:Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v18           #item:Lcom/android/internal/os/PkgUsageStats;
    .end local v19           #lastUsedTime:J
    :cond_3
    invoke-static {}, Lcom/google/android/finsky/services/AppsUsageService;->access$100()Ljava/util/Comparator;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v10, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 103
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/finsky/services/AppsUsageService$PkgUsageContainer;

    .line 104
    .local v9, container:Lcom/google/android/finsky/services/AppsUsageService$PkgUsageContainer;
    iget-object v13, v9, Lcom/google/android/finsky/services/AppsUsageService$PkgUsageContainer;->document:Lcom/google/android/finsky/api/model/Document;

    .line 105
    .restart local v13       #document:Lcom/google/android/finsky/api/model/Document;
    iget-object v0, v9, Lcom/google/android/finsky/services/AppsUsageService$PkgUsageContainer;->stats:Lcom/android/internal/os/PkgUsageStats;

    move-object/from16 v18, v0

    .line 106
    .restart local v18       #item:Lcom/android/internal/os/PkgUsageStats;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/os/PkgUsageStats;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 108
    .local v25, packageName:Ljava/lang/String;
    invoke-virtual {v13}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v28

    if-eqz v28, :cond_4

    .line 112
    invoke-virtual {v13}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getAppType()Ljava/lang/String;

    move-result-object v4

    .line 113
    .local v4, appType:Ljava/lang/String;
    if-eqz v4, :cond_4

    const-string v28, "game"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_4

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/services/AppsUsageService$2;->this$0:Lcom/google/android/finsky/services/AppsUsageService;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/finsky/services/AppsUsageService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v26

    .line 119
    .local v26, pm:Landroid/content/pm/PackageManager;
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 120
    .local v7, bundle:Landroid/os/Bundle;
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v21

    .line 121
    .local v21, launchIntent:Landroid/content/Intent;
    if-nez v21, :cond_5

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/services/AppsUsageService$2;->this$0:Lcom/google/android/finsky/services/AppsUsageService;

    move-object/from16 v28, v0

    invoke-virtual {v13}, Lcom/google/android/finsky/api/model/Document;->getDetailsUrl()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/google/android/finsky/utils/IntentUtils;->createViewDocumentUrlIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v21

    .line 125
    :cond_5
    const-string v28, "Play.ViewIntent"

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 126
    const-string v28, "Play.LastUpdateTimeMillis"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v29

    move-object/from16 v0, v28

    move-wide/from16 v1, v29

    invoke-virtual {v7, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 128
    const/16 v28, 0x4

    move/from16 v0, v28

    invoke-virtual {v13, v0}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v17

    .line 129
    .local v17, images:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Doc$Image;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v28

    if-nez v28, :cond_6

    .line 130
    const-string v29, "Play.ImageUri"

    const/16 v28, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getImageUrl()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 134
    :cond_6
    move-object/from16 v0, v24

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 137
    .end local v4           #appType:Ljava/lang/String;
    .end local v7           #bundle:Landroid/os/Bundle;
    .end local v9           #container:Lcom/google/android/finsky/services/AppsUsageService$PkgUsageContainer;
    .end local v13           #document:Lcom/google/android/finsky/api/model/Document;
    .end local v17           #images:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Doc$Image;>;"
    .end local v18           #item:Lcom/android/internal/os/PkgUsageStats;
    .end local v21           #launchIntent:Landroid/content/Intent;
    .end local v25           #packageName:Ljava/lang/String;
    .end local v26           #pm:Landroid/content/pm/PackageManager;
    :cond_7
    return-object v24
.end method
