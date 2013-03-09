.class Lcom/htc/csengine/service/CSEngineService$GetDeviceConfigRunnable$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "CSEngineService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/csengine/service/CSEngineService$GetDeviceConfigRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken",
        "<",
        "Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/csengine/service/CSEngineService$GetDeviceConfigRunnable;


# direct methods
.method constructor <init>(Lcom/htc/csengine/service/CSEngineService$GetDeviceConfigRunnable;)V
    .locals 0
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Lcom/htc/csengine/service/CSEngineService$GetDeviceConfigRunnable$1;->this$1:Lcom/htc/csengine/service/CSEngineService$GetDeviceConfigRunnable;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
