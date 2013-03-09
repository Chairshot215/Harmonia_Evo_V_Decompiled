.class Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$1;
.super Ljava/lang/Object;
.source "MapService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;-><init>(IIIILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;


# direct methods
.method constructor <init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;)V
    .locals 0

    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$1;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$1;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    #calls: Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->startWorkThread()V
    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->access$000(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;)V

    return-void
.end method
