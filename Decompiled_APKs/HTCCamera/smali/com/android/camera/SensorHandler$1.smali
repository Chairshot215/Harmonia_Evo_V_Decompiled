.class Lcom/android/camera/SensorHandler$1;
.super Landroid/os/FileObserver;
.source "SensorHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/SensorHandler;->setupFileObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SensorHandler;


# direct methods
.method constructor <init>(Lcom/android/camera/SensorHandler;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/SensorHandler$1;->this$0:Lcom/android/camera/SensorHandler;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 1

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/SensorHandler$1;->this$0:Lcom/android/camera/SensorHandler;

    invoke-virtual {v0}, Lcom/android/camera/SensorHandler;->checkSceneChange()V

    :cond_0
    return-void
.end method
