.class public abstract Lcom/htc/opensense/plugin/key/Time;
.super Ljava/lang/Object;
.source "Time.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/htc/opensense/plugin/key/Time;",
        ">;"
    }
.end annotation


# instance fields
.field public mTime:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/htc/opensense/plugin/key/Time;->mTime:J

    return-void
.end method
