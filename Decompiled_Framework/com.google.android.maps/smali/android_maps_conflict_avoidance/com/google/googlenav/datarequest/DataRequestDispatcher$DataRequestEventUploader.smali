.class public final Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DataRequestEventUploader;
.super Ljava/lang/Object;
.source "DataRequestDispatcher.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/common/Log$LogSaver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DataRequestEventUploader"
.end annotation


# instance fields
.field private final drd:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;


# direct methods
.method private constructor <init>(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DataRequestEventUploader;->drd:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    return-void
.end method

.method synthetic constructor <init>(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DataRequestEventUploader;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)V

    return-void
.end method


# virtual methods
.method public uploadEventLog(ZLjava/lang/Object;[B)Ljava/lang/Object;
    .locals 8

    const/4 v7, 0x0

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    array-length v1, p3

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;

    const/16 v1, 0xa

    const/4 v4, 0x0

    move-object v2, p3

    move v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;-><init>(I[BZZLjava/lang/Object;)V

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->getInstance()Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->addDataRequest(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;)V

    :cond_0
    return-object v7
.end method
