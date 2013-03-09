.class final Lcom/google/android/finsky/utils/DeviceConfigurationHelper$2;
.super Ljava/lang/Object;
.source "DeviceConfigurationHelper.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->uploadDeviceConfig(Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;Ljava/lang/String;Ljava/lang/Runnable;)Lcom/android/volley/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$postRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/android/finsky/utils/DeviceConfigurationHelper$2;->val$postRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 57
    const-string v0, "Couldn\'t upload device config"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/google/android/finsky/utils/DeviceConfigurationHelper$2;->val$postRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/google/android/finsky/utils/DeviceConfigurationHelper$2;->val$postRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 61
    :cond_0
    return-void
.end method
