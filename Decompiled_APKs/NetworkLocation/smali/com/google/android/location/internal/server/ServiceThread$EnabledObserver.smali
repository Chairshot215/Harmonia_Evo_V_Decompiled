.class final Lcom/google/android/location/internal/server/ServiceThread$EnabledObserver;
.super Ljava/lang/Object;
.source "ServiceThread.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/location/internal/server/ServiceThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EnabledObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/location/internal/server/ServiceThread;


# direct methods
.method private constructor <init>(Lcom/google/android/location/internal/server/ServiceThread;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/google/android/location/internal/server/ServiceThread$EnabledObserver;->this$0:Lcom/google/android/location/internal/server/ServiceThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/internal/server/ServiceThread;Lcom/google/android/location/internal/server/ServiceThread$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/google/android/location/internal/server/ServiceThread$EnabledObserver;-><init>(Lcom/google/android/location/internal/server/ServiceThread;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1
    .parameter "o"
    .parameter "arg"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/location/internal/server/ServiceThread$EnabledObserver;->this$0:Lcom/google/android/location/internal/server/ServiceThread;

    #calls: Lcom/google/android/location/internal/server/ServiceThread;->updateState()V
    invoke-static {v0}, Lcom/google/android/location/internal/server/ServiceThread;->access$000(Lcom/google/android/location/internal/server/ServiceThread;)V

    .line 191
    return-void
.end method
