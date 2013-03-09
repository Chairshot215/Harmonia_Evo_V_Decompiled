.class Lcom/htc/csengine/service/CSEngineService$GetDeviceModelRunnable;
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
    name = "GetDeviceModelRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/csengine/service/CSEngineService;


# direct methods
.method private constructor <init>(Lcom/htc/csengine/service/CSEngineService;)V
    .locals 0
    .parameter

    .prologue
    .line 378
    iput-object p1, p0, Lcom/htc/csengine/service/CSEngineService$GetDeviceModelRunnable;->this$0:Lcom/htc/csengine/service/CSEngineService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/csengine/service/CSEngineService;Lcom/htc/csengine/service/CSEngineService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 378
    invoke-direct {p0, p1}, Lcom/htc/csengine/service/CSEngineService$GetDeviceModelRunnable;-><init>(Lcom/htc/csengine/service/CSEngineService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 381
    const-string v0, "cslib"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "csEngineServicerunning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    return-void
.end method
