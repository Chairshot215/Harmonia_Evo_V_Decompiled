.class public abstract Lcom/google/android/videochat/Stats;
.super Ljava/lang/Object;
.source "Stats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/videochat/Stats$ConnectionInfoStats;,
        Lcom/google/android/videochat/Stats$VideoMediaEngineStats;,
        Lcom/google/android/videochat/Stats$RendererStats;
    }
.end annotation


# instance fields
.field public type:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/google/android/videochat/Stats;->type:I

    .line 14
    return-void
.end method
