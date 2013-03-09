.class Lcom/htc/csengine/service/CSEngineService$PutDeviceProfileRunnable;
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
    name = "PutDeviceProfileRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/csengine/service/CSEngineService;


# direct methods
.method private constructor <init>(Lcom/htc/csengine/service/CSEngineService;)V
    .locals 0
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/htc/csengine/service/CSEngineService$PutDeviceProfileRunnable;->this$0:Lcom/htc/csengine/service/CSEngineService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/csengine/service/CSEngineService;Lcom/htc/csengine/service/CSEngineService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/htc/csengine/service/CSEngineService$PutDeviceProfileRunnable;-><init>(Lcom/htc/csengine/service/CSEngineService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 203
    const-string v1, "cslib"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "csEngineService running "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const-string v1, "Putting Device Profile"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cslib/util/LogUtil;->Console(Ljava/lang/String;)V

    .line 208
    new-instance v16, Lcom/htc/cslib/payload/MyProfileClass;

    invoke-direct/range {v16 .. v16}, Lcom/htc/cslib/payload/MyProfileClass;-><init>()V

    .line 210
    .local v16, myprofile:Lcom/htc/cslib/payload/MyProfileClass;
    const-string v1, "ro.build.description"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 212
    .local v10, buildNumber:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 215
    .local v9, ROMVersion:Ljava/lang/StringBuffer;
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 216
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v14, v1, :cond_1

    .line 217
    invoke-virtual {v10, v14}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 218
    .local v11, ch:C
    const/16 v1, 0x2e

    if-eq v11, v1, :cond_0

    invoke-static {v11}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 219
    :cond_0
    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 216
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 225
    .end local v11           #ch:C
    :cond_1
    const-string v1, "profiler.csmid"

    const-string v2, "ro.mid"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/htc/cslib/payload/MyProfileClass;->ModelID:Ljava/lang/String;

    .line 227
    const-string v1, "profiler.csandver"

    const-string v2, "ro.build.version.release"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/htc/cslib/payload/MyProfileClass;->AndroidVersion:Ljava/lang/String;

    .line 229
    const-string v1, "profiler.cssenver"

    invoke-static {}, Lcom/htc/cslib/util/CSEngineUtil;->getFloatSenseVersion()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/htc/cslib/payload/MyProfileClass;->SenseVersion:Ljava/lang/String;

    .line 231
    const-string v1, "profiler.csromver"

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/htc/cslib/payload/MyProfileClass;->ROMVersion:Ljava/lang/String;

    .line 232
    const-string v1, "profiler.cscid"

    const-string v2, "ro.cid"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/htc/cslib/payload/MyProfileClass;->CustomerID:Ljava/lang/String;

    .line 233
    const-string v1, "profiler.csandapilvl"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/htc/cslib/payload/MyProfileClass;->AndroidAPILevel:Ljava/lang/String;

    .line 239
    const-string v17, ""

    .line 250
    .local v17, paramObj:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/csengine/service/CSEngineService$PutDeviceProfileRunnable;->this$0:Lcom/htc/csengine/service/CSEngineService;

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/htc/cslib/payload/MyProfileClass;->AndroidAPILevel:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/htc/cslib/payload/MyProfileClass;->AndroidVersion:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/htc/cslib/payload/MyProfileClass;->CustomerID:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/htc/cslib/payload/MyProfileClass;->ModelID:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/htc/cslib/payload/MyProfileClass;->ROMVersion:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/htc/cslib/payload/MyProfileClass;->SenseVersion:Ljava/lang/String;

    const-string v8, "profiler.serialno"

    const-string v20, "ro.serialno"

    const-string v21, ""

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v8, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v1 .. v8}, Lcom/htc/cslib/util/CSEngineUtil;->setSignatureForHTTPPut(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :try_start_0
    invoke-static/range {v16 .. v16}, Lcom/htc/cslib/util/CSRestProxyUtil;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 258
    .local v17, paramObj:Ljava/lang/Object;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 260
    .local v15, jsonSend:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/csengine/service/CSEngineService$PutDeviceProfileRunnable;->this$0:Lcom/htc/csengine/service/CSEngineService;

    invoke-static {v1}, Lcom/htc/cslib/util/CSEngineUtil;->getProvServeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    .line 261
    .local v18, provURL:Ljava/lang/String;
    const/4 v12, 0x0

    .line 262
    .local v12, csrest:Lcom/htc/cslib/restHelper/CSRestProxy;
    if-eqz v18, :cond_2

    const-string v1, ""

    move-object/from16 v0, v18

    if-ne v0, v1, :cond_3

    .line 263
    :cond_2
    new-instance v12, Lcom/htc/cslib/restHelper/CSRestProxy;

    .end local v12           #csrest:Lcom/htc/cslib/restHelper/CSRestProxy;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/csengine/service/CSEngineService$PutDeviceProfileRunnable;->this$0:Lcom/htc/csengine/service/CSEngineService;

    const-string v2, "https://dm.htcsense.com/"

    invoke-direct {v12, v1, v2}, Lcom/htc/cslib/restHelper/CSRestProxy;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 269
    .restart local v12       #csrest:Lcom/htc/cslib/restHelper/CSRestProxy;
    :goto_1
    const-string v1, "devices/%s/profile"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "profiler.csserialnum"

    const-string v5, "ro.serialno"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 271
    .local v19, url:Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v12, v0, v15}, Lcom/htc/cslib/restHelper/CSRestProxy;->httpPut(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 273
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/csengine/service/CSEngineService$PutDeviceProfileRunnable;->this$0:Lcom/htc/csengine/service/CSEngineService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/htc/csengine/util/CSEnginePreference;->setDeviceProfileFlag(Landroid/content/Context;Z)V

    .line 281
    .end local v12           #csrest:Lcom/htc/cslib/restHelper/CSRestProxy;
    .end local v15           #jsonSend:Ljava/lang/String;
    .end local v17           #paramObj:Ljava/lang/Object;
    .end local v18           #provURL:Ljava/lang/String;
    .end local v19           #url:Ljava/lang/String;
    :goto_2
    return-void

    .line 265
    .restart local v12       #csrest:Lcom/htc/cslib/restHelper/CSRestProxy;
    .restart local v15       #jsonSend:Ljava/lang/String;
    .restart local v17       #paramObj:Ljava/lang/Object;
    .restart local v18       #provURL:Ljava/lang/String;
    :cond_3
    const-string v1, "cslib"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "csEngineService provURL =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    new-instance v12, Lcom/htc/cslib/restHelper/CSRestProxy;

    .end local v12           #csrest:Lcom/htc/cslib/restHelper/CSRestProxy;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/csengine/service/CSEngineService$PutDeviceProfileRunnable;->this$0:Lcom/htc/csengine/service/CSEngineService;

    move-object/from16 v0, v18

    invoke-direct {v12, v1, v0}, Lcom/htc/cslib/restHelper/CSRestProxy;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v12       #csrest:Lcom/htc/cslib/restHelper/CSRestProxy;
    goto :goto_1

    .line 276
    .end local v12           #csrest:Lcom/htc/cslib/restHelper/CSRestProxy;
    .end local v15           #jsonSend:Ljava/lang/String;
    .end local v17           #paramObj:Ljava/lang/Object;
    .end local v18           #provURL:Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 278
    .local v13, e:Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method
