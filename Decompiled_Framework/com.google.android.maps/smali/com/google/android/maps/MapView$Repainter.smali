.class Lcom/google/android/maps/MapView$Repainter;
.super Ljava/lang/Object;
.source "MapView.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/maps/MapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Repainter"
.end annotation


# instance fields
.field private mThread:Ljava/lang/Thread;

.field final synthetic this$0:Lcom/google/android/maps/MapView;


# direct methods
.method constructor <init>(Lcom/google/android/maps/MapView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/MapView$Repainter;->this$0:Lcom/google/android/maps/MapView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;)V
    .locals 1

    invoke-interface {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->isImmediate()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/MapView$Repainter;->repaint()V

    :cond_0
    return-void
.end method

.method public onNetworkError(IZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method repaint()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/MapView$Repainter;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/MapView$Repainter;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/google/android/maps/MapView$Repainter$1;

    invoke-direct {v0, p0}, Lcom/google/android/maps/MapView$Repainter$1;-><init>(Lcom/google/android/maps/MapView$Repainter;)V

    iput-object v0, p0, Lcom/google/android/maps/MapView$Repainter;->mThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/google/android/maps/MapView$Repainter;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method
