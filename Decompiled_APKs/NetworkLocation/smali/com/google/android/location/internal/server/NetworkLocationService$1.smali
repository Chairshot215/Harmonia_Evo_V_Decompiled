.class Lcom/google/android/location/internal/server/NetworkLocationService$1;
.super Ljava/lang/Object;
.source "NetworkLocationService.java"

# interfaces
.implements Lcom/google/android/location/os/EventLog$Timestamper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/location/internal/server/NetworkLocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/location/internal/server/NetworkLocationService;


# direct methods
.method constructor <init>(Lcom/google/android/location/internal/server/NetworkLocationService;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/android/location/internal/server/NetworkLocationService$1;->this$0:Lcom/google/android/location/internal/server/NetworkLocationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNow()J
    .locals 2

    .prologue
    .line 62
    invoke-static {}, Lcom/google/android/location/os/real/RealOs;->sinceBootMillis()J

    move-result-wide v0

    return-wide v0
.end method
