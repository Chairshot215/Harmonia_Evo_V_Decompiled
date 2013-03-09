.class Lcom/htc/csengine/service/CSEngineService$GetDeviceRegionRunnable;
.super Ljava/lang/Object;
.source "CSEngineService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/csengine/service/CSEngineService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetDeviceRegionRunnable"
.end annotation


# instance fields
.field csrest:Lcom/htc/cslib/restHelper/CSRestProxy;

.field final synthetic this$0:Lcom/htc/csengine/service/CSEngineService;


# direct methods
.method private constructor <init>(Lcom/htc/csengine/service/CSEngineService;)V
    .locals 1
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/htc/csengine/service/CSEngineService$GetDeviceRegionRunnable;->this$0:Lcom/htc/csengine/service/CSEngineService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 291
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/csengine/service/CSEngineService$GetDeviceRegionRunnable;->csrest:Lcom/htc/cslib/restHelper/CSRestProxy;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/csengine/service/CSEngineService;Lcom/htc/csengine/service/CSEngineService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lcom/htc/csengine/service/CSEngineService$GetDeviceRegionRunnable;-><init>(Lcom/htc/csengine/service/CSEngineService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 293
    const-string v5, "cslib"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "csEngineServicerunning "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const-string v5, "Getting Device Configuration"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/cslib/util/LogUtil;->Console(Ljava/lang/String;)V

    .line 296
    :try_start_0
    iget-object v5, p0, Lcom/htc/csengine/service/CSEngineService$GetDeviceRegionRunnable;->this$0:Lcom/htc/csengine/service/CSEngineService;

    invoke-static {v5}, Lcom/htc/cslib/util/CSEngineUtil;->getProvServeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 297
    .local v2, provURL:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v5, ""

    if-ne v2, v5, :cond_1

    .line 298
    :cond_0
    new-instance v5, Lcom/htc/cslib/restHelper/CSRestProxy;

    iget-object v6, p0, Lcom/htc/csengine/service/CSEngineService$GetDeviceRegionRunnable;->this$0:Lcom/htc/csengine/service/CSEngineService;

    const-string v7, "https://dm.htcsense.com/"

    invoke-direct {v5, v6, v7}, Lcom/htc/cslib/restHelper/CSRestProxy;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/htc/csengine/service/CSEngineService$GetDeviceRegionRunnable;->csrest:Lcom/htc/cslib/restHelper/CSRestProxy;

    .line 304
    :goto_0
    const-string v5, "profiler.csserialnum"

    const-string v6, "ro.serialno"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 305
    .local v3, serialNum:Ljava/lang/String;
    const-string v5, "devices/%s/config?names=region-names"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 307
    .local v4, url:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/csengine/service/CSEngineService$GetDeviceRegionRunnable;->csrest:Lcom/htc/cslib/restHelper/CSRestProxy;

    const-string v6, ""

    invoke-virtual {v5, v4, v6}, Lcom/htc/cslib/restHelper/CSRestProxy;->httpGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 308
    .local v1, output:Ljava/lang/String;
    const-string v5, "cslib"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "csEngineServiceoutput = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v5, p0, Lcom/htc/csengine/service/CSEngineService$GetDeviceRegionRunnable;->this$0:Lcom/htc/csengine/service/CSEngineService;

    invoke-static {v5, v1}, Lcom/htc/csengine/util/CSRegionSharedPref;->writeRegions(Landroid/content/Context;Ljava/lang/String;)V

    .line 316
    .end local v1           #output:Ljava/lang/String;
    .end local v2           #provURL:Ljava/lang/String;
    .end local v3           #serialNum:Ljava/lang/String;
    .end local v4           #url:Ljava/lang/String;
    :goto_1
    return-void

    .line 300
    .restart local v2       #provURL:Ljava/lang/String;
    :cond_1
    const-string v5, "cslib"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "csEngineService provURL =  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    new-instance v5, Lcom/htc/cslib/restHelper/CSRestProxy;

    iget-object v6, p0, Lcom/htc/csengine/service/CSEngineService$GetDeviceRegionRunnable;->this$0:Lcom/htc/csengine/service/CSEngineService;

    invoke-direct {v5, v6, v2}, Lcom/htc/cslib/restHelper/CSRestProxy;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/htc/csengine/service/CSEngineService$GetDeviceRegionRunnable;->csrest:Lcom/htc/cslib/restHelper/CSRestProxy;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 312
    .end local v2           #provURL:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 314
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
