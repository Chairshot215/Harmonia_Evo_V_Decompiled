.class public Lcom/google/android/finsky/receivers/ConsumptionAppDataChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConsumptionAppDataChangedReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 24
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    const-string v0, "Consumption app update contained no extras."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    const-string v1, "Play.BackendId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 31
    const-string v0, "Consumption app did not specify backend id, ignoring!"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 35
    :cond_2
    const-string v1, "Play.DataType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 36
    const-string v0, "Consumption app did not specify which list type was updated, ignoring!"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 40
    :cond_3
    const-string v1, "Play.BackendId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 41
    const-string v2, "Play.DataType"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 44
    invoke-static {p1}, Lcom/google/android/finsky/widget/WidgetTypeMap;->get(Landroid/content/Context;)Lcom/google/android/finsky/widget/WidgetTypeMap;

    move-result-object v2

    .line 45
    const-class v3, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;

    invoke-static {v1}, Lcom/google/android/finsky/widget/WidgetUtils;->translate(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/finsky/widget/WidgetTypeMap;->getWidgets(Ljava/lang/Class;Ljava/lang/String;)[I

    move-result-object v2

    .line 47
    array-length v2, v2

    if-nez v2, :cond_4

    .line 48
    sget-boolean v0, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 49
    const-string v0, "Ignoring update because no widgets are listening to [%s]."

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 53
    :cond_4
    invoke-static {v1}, Lcom/google/android/finsky/services/LoadConsumptionDataService;->isBackendSupported(I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v0}, Lcom/google/android/finsky/services/LoadConsumptionDataService;->isSupportedDataType(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 56
    new-array v0, v6, [I

    aput v1, v0, v5

    invoke-static {p1, v0}, Lcom/google/android/finsky/services/LoadConsumptionDataService;->scheduleAlarmForUpdate(Landroid/content/Context;[I)V

    goto :goto_0

    .line 58
    :cond_5
    const-string v2, "Either backendId=[%d] or dataType=[%d] is not supported."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
