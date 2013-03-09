.class final Lcom/android/server/location/GpsLocationProvider$GpsNetworkThread;
.super Ljava/lang/Thread;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GpsNetworkThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$GpsNetworkThread;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const-string v0, "GpsNetwork"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsNetworkThread;->this$0:Lcom/android/server/location/GpsLocationProvider;

    new-instance v1, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$GpsNetworkThread;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;-><init>(Lcom/android/server/location/GpsLocationProvider;Lcom/android/server/location/GpsLocationProvider$1;)V

    #setter for: Lcom/android/server/location/GpsLocationProvider;->mNetworkHandler:Landroid/os/Handler;
    invoke-static {v0, v1}, Lcom/android/server/location/GpsLocationProvider;->access$4102(Lcom/android/server/location/GpsLocationProvider;Landroid/os/Handler;)Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
