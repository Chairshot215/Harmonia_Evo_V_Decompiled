.class final Ljava/util/concurrent/Exchanger$Node;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "Exchanger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/Exchanger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final item:Ljava/lang/Object;

.field public volatile waiter:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    return-void
.end method
