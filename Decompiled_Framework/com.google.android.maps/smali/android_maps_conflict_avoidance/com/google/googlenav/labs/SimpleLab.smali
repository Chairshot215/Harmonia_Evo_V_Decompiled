.class public abstract Landroid_maps_conflict_avoidance/com/google/googlenav/labs/SimpleLab;
.super Ljava/lang/Object;
.source "SimpleLab.java"


# instance fields
.field private active:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/labs/SimpleLab;->active:Z

    return-void
.end method


# virtual methods
.method public isActive()Z
    .locals 1

    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/labs/SimpleLab;->active:Z

    return v0
.end method
