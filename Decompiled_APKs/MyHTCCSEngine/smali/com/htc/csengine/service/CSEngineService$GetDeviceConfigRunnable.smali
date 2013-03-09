.class Lcom/htc/csengine/service/CSEngineService$GetDeviceConfigRunnable;
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
    name = "GetDeviceConfigRunnable"
.end annotation


# instance fields
.field csrest:Lcom/htc/cslib/restHelper/CSRestProxy;

.field final synthetic this$0:Lcom/htc/csengine/service/CSEngineService;


# direct methods
.method private constructor <init>(Lcom/htc/csengine/service/CSEngineService;)V
    .locals 1
    .parameter

    .prologue
    .line 324
    iput-object p1, p0, Lcom/htc/csengine/service/CSEngineService$GetDeviceConfigRunnable;->this$0:Lcom/htc/csengine/service/CSEngineService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/csengine/service/CSEngineService$GetDeviceConfigRunnable;->csrest:Lcom/htc/cslib/restHelper/CSRestProxy;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/csengine/service/CSEngineService;Lcom/htc/csengine/service/CSEngineService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 324
    invoke-direct {p0, p1}, Lcom/htc/csengine/service/CSEngineService$GetDeviceConfigRunnable;-><init>(Lcom/htc/csengine/service/CSEngineService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 327
    const-string v9, "cslib"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "csEngineServicerunning "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const-string v9, "Getting Device Configuration"

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/htc/cslib/util/LogUtil;->Console(Ljava/lang/String;)V

    .line 330
    :try_start_0
    iget-object v9, p0, Lcom/htc/csengine/service/CSEngineService$GetDeviceConfigRunnable;->this$0:Lcom/htc/csengine/service/CSEngineService;

    invoke-static {v9}, Lcom/htc/cslib/util/CSEngineUtil;->getProvServeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 331
    .local v5, provURL:Ljava/lang/String;
    if-eqz v5, :cond_0

    const-string v9, ""

    if-ne v5, v9, :cond_2

    .line 332
    :cond_0
    new-instance v9, Lcom/htc/cslib/restHelper/CSRestProxy;

    iget-object v10, p0, Lcom/htc/csengine/service/CSEngineService$GetDeviceConfigRunnable;->this$0:Lcom/htc/csengine/service/CSEngineService;

    const-string v11, "https://dm.htcsense.com/"

    invoke-direct {v9, v10, v11}, Lcom/htc/cslib/restHelper/CSRestProxy;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v9, p0, Lcom/htc/csengine/service/CSEngineService$GetDeviceConfigRunnable;->csrest:Lcom/htc/cslib/restHelper/CSRestProxy;

    .line 338
    :goto_0
    const-string v9, "profiler.csserialnum"

    const-string v10, "ro.serialno"

    const-string v11, ""

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 339
    .local v7, serialNum:Ljava/lang/String;
    const-string v9, "devices/%s/config?names=cs-core,stores,personalize"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 341
    .local v8, url:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/csengine/service/CSEngineService$GetDeviceConfigRunnable;->csrest:Lcom/htc/cslib/restHelper/CSRestProxy;

    const-string v10, ""

    invoke-virtual {v9, v8, v10}, Lcom/htc/cslib/restHelper/CSRestProxy;->httpGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 342
    .local v4, output:Ljava/lang/String;
    const-string v9, "cslib"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "csEngineServiceoutput = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    new-instance v6, Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;

    invoke-direct {v6}, Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;-><init>()V

    .line 344
    .local v6, retObj:Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;
    new-instance v9, Lcom/htc/csengine/service/CSEngineService$GetDeviceConfigRunnable$1;

    invoke-direct {v9, p0}, Lcom/htc/csengine/service/CSEngineService$GetDeviceConfigRunnable$1;-><init>(Lcom/htc/csengine/service/CSEngineService$GetDeviceConfigRunnable;)V

    invoke-virtual {v9}, Lcom/htc/csengine/service/CSEngineService$GetDeviceConfigRunnable$1;->getType()Ljava/lang/reflect/Type;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 346
    .local v2, genericType:Ljava/lang/reflect/Type;
    :try_start_1
    const-class v9, Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;

    invoke-static {v6, v4, v9, v2}, Lcom/htc/cslib/util/CSRestProxyUtil;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;

    move-object v6, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 357
    :goto_1
    :try_start_2
    iget-object v9, p0, Lcom/htc/csengine/service/CSEngineService$GetDeviceConfigRunnable;->this$0:Lcom/htc/csengine/service/CSEngineService;

    invoke-static {v9, v6}, Lcom/htc/csengine/util/CSDBUtil;->WriteRecord(Landroid/content/Context;Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;)V

    .line 358
    iget-object v9, p0, Lcom/htc/csengine/service/CSEngineService$GetDeviceConfigRunnable;->this$0:Lcom/htc/csengine/service/CSEngineService;

    #calls: Lcom/htc/csengine/service/CSEngineService;->setTTLAlarm()V
    invoke-static {v9}, Lcom/htc/csengine/service/CSEngineService;->access$400(Lcom/htc/csengine/service/CSEngineService;)V

    .line 359
    iget-object v9, p0, Lcom/htc/csengine/service/CSEngineService$GetDeviceConfigRunnable;->this$0:Lcom/htc/csengine/service/CSEngineService;

    #getter for: Lcom/htc/csengine/service/CSEngineService;->getDeviceConfigOnly:Z
    invoke-static {v9}, Lcom/htc/csengine/service/CSEngineService;->access$500(Lcom/htc/csengine/service/CSEngineService;)Z

    move-result v9

    if-ne v9, v13, :cond_1

    .line 360
    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.htc.cs.connectedservice.updateURL"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 361
    .local v3, intentURL:Landroid/content/Intent;
    iget-object v9, p0, Lcom/htc/csengine/service/CSEngineService$GetDeviceConfigRunnable;->this$0:Lcom/htc/csengine/service/CSEngineService;

    invoke-virtual {v9, v3}, Lcom/htc/csengine/service/CSEngineService;->sendBroadcast(Landroid/content/Intent;)V

    .line 370
    .end local v2           #genericType:Ljava/lang/reflect/Type;
    .end local v3           #intentURL:Landroid/content/Intent;
    .end local v4           #output:Ljava/lang/String;
    .end local v5           #provURL:Ljava/lang/String;
    .end local v6           #retObj:Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;
    .end local v7           #serialNum:Ljava/lang/String;
    .end local v8           #url:Ljava/lang/String;
    :cond_1
    :goto_2
    return-void

    .line 334
    .restart local v5       #provURL:Ljava/lang/String;
    :cond_2
    const-string v9, "cslib"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "csEngineService provURL =  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    new-instance v9, Lcom/htc/cslib/restHelper/CSRestProxy;

    iget-object v10, p0, Lcom/htc/csengine/service/CSEngineService$GetDeviceConfigRunnable;->this$0:Lcom/htc/csengine/service/CSEngineService;

    invoke-direct {v9, v10, v5}, Lcom/htc/cslib/restHelper/CSRestProxy;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v9, p0, Lcom/htc/csengine/service/CSEngineService$GetDeviceConfigRunnable;->csrest:Lcom/htc/cslib/restHelper/CSRestProxy;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 366
    .end local v5           #provURL:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 368
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 350
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #genericType:Ljava/lang/reflect/Type;
    .restart local v4       #output:Ljava/lang/String;
    .restart local v5       #provURL:Ljava/lang/String;
    .restart local v6       #retObj:Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;
    .restart local v7       #serialNum:Ljava/lang/String;
    .restart local v8       #url:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 352
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_3
    const-string v9, "cslib"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "csEngineServiceHTTP Get e = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method
