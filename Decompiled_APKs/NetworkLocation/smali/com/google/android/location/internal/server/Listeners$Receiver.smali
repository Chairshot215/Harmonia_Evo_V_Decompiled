.class Lcom/google/android/location/internal/server/Listeners$Receiver;
.super Ljava/lang/Object;
.source "Listeners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/location/internal/server/Listeners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Receiver"
.end annotation


# instance fields
.field final listener:Lcom/google/android/location/internal/ILocationListener;

.field final periodSecs:I

.field final synthetic this$0:Lcom/google/android/location/internal/server/Listeners;


# direct methods
.method constructor <init>(Lcom/google/android/location/internal/server/Listeners;Lcom/google/android/location/internal/ILocationListener;I)V
    .locals 0
    .parameter
    .parameter "listener"
    .parameter "periodSecs"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/google/android/location/internal/server/Listeners$Receiver;->this$0:Lcom/google/android/location/internal/server/Listeners;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p2, p0, Lcom/google/android/location/internal/server/Listeners$Receiver;->listener:Lcom/google/android/location/internal/ILocationListener;

    .line 33
    iput p3, p0, Lcom/google/android/location/internal/server/Listeners$Receiver;->periodSecs:I

    .line 34
    return-void
.end method
