.class Lcom/futuredial/ObexReadThread$1;
.super Ljava/lang/Object;
.source "ObexReadThread.java"

# interfaces
.implements Lcom/futuredial/bluetooth/ICommCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/futuredial/ObexReadThread;->SetIsCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/futuredial/ObexReadThread;


# direct methods
.method constructor <init>(Lcom/futuredial/ObexReadThread;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/futuredial/ObexReadThread$1;->this$0:Lcom/futuredial/ObexReadThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkDataOver([B)Z
    .locals 4
    .parameter "buf"

    .prologue
    const/4 v1, 0x1

    .line 32
    array-length v2, p1

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    .line 34
    aget-byte v2, p1, v1

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    const/4 v3, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 35
    .local v0, len:I
    array-length v2, p1

    if-ne v0, v2, :cond_0

    .line 41
    .end local v0           #len:I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
