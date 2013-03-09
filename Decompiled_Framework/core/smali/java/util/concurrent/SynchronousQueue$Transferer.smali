.class abstract Ljava/util/concurrent/SynchronousQueue$Transferer;
.super Ljava/lang/Object;
.source "SynchronousQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/SynchronousQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Transferer"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract transfer(Ljava/lang/Object;ZJ)Ljava/lang/Object;
.end method
