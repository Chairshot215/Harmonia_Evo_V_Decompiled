.class Lcom/futuredial/FBusReadThread$1;
.super Ljava/lang/Object;
.source "FBusReadThread.java"

# interfaces
.implements Lcom/futuredial/bluetooth/ICommCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/futuredial/FBusReadThread;->SetIsCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/futuredial/FBusReadThread;


# direct methods
.method constructor <init>(Lcom/futuredial/FBusReadThread;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/futuredial/FBusReadThread$1;->this$0:Lcom/futuredial/FBusReadThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkDataOver([B)Z
    .locals 4
    .parameter "buf"

    .prologue
    .line 36
    array-length v2, p1

    const/4 v3, 0x6

    if-lt v2, v3, :cond_0

    .line 38
    const/4 v2, 0x4

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    const/4 v3, 0x5

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x6

    int-to-long v0, v2

    .line 39
    .local v0, len:J
    array-length v2, p1

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 41
    const/4 v2, 0x1

    .line 44
    .end local v0           #len:J
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
