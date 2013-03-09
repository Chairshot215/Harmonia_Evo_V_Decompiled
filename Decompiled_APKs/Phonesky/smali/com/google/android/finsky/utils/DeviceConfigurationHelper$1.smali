.class final Lcom/google/android/finsky/utils/DeviceConfigurationHelper$1;
.super Ljava/lang/Object;
.source "DeviceConfigurationHelper.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->uploadDeviceConfig(Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;Ljava/lang/String;Ljava/lang/Runnable;)Lcom/android/volley/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$postRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/android/finsky/utils/DeviceConfigurationHelper$1;->val$postRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigResponse;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 48
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gcm/GCMRegistrar;->setRegisteredOnServer(Landroid/content/Context;Z)V

    .line 49
    iget-object v0, p0, Lcom/google/android/finsky/utils/DeviceConfigurationHelper$1;->val$postRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/google/android/finsky/utils/DeviceConfigurationHelper$1;->val$postRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 52
    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    check-cast p1, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/utils/DeviceConfigurationHelper$1;->onResponse(Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigResponse;)V

    return-void
.end method
