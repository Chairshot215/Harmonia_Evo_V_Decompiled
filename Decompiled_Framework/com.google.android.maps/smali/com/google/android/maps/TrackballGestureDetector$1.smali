.class Lcom/google/android/maps/TrackballGestureDetector$1;
.super Ljava/lang/Object;
.source "TrackballGestureDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/maps/TrackballGestureDetector;-><init>(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/maps/TrackballGestureDetector;


# direct methods
.method constructor <init>(Lcom/google/android/maps/TrackballGestureDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/TrackballGestureDetector$1;->this$0:Lcom/google/android/maps/TrackballGestureDetector;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/TrackballGestureDetector$1;->this$0:Lcom/google/android/maps/TrackballGestureDetector;

    #calls: Lcom/google/android/maps/TrackballGestureDetector;->dispatchLongPress()V
    invoke-static {v0}, Lcom/google/android/maps/TrackballGestureDetector;->access$000(Lcom/google/android/maps/TrackballGestureDetector;)V

    return-void
.end method
