.class Lcom/google/android/maps/MapView$Repainter$1;
.super Ljava/lang/Thread;
.source "MapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/maps/MapView$Repainter;->repaint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/maps/MapView$Repainter;


# direct methods
.method constructor <init>(Lcom/google/android/maps/MapView$Repainter;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/MapView$Repainter$1;->this$1:Lcom/google/android/maps/MapView$Repainter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Lcom/google/android/maps/MapView$Repainter$1;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/MapView$Repainter$1;->this$1:Lcom/google/android/maps/MapView$Repainter;

    iget-object v0, v0, Lcom/google/android/maps/MapView$Repainter;->this$0:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->postInvalidate()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
