.class Lcom/futuredial/RIMReadThread$1;
.super Ljava/lang/Object;
.source "RIMReadThread.java"

# interfaces
.implements Lcom/futuredial/bluetooth/ICommCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/futuredial/RIMReadThread;->SetIsCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/futuredial/RIMReadThread;


# direct methods
.method constructor <init>(Lcom/futuredial/RIMReadThread;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/futuredial/RIMReadThread$1;->this$0:Lcom/futuredial/RIMReadThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkDataOver([B)Z
    .locals 7
    .parameter "buf"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 46
    array-length v5, p1

    const/4 v6, 0x3

    if-le v5, v6, :cond_3

    .line 48
    const/4 v1, 0x0

    .line 49
    .local v1, nPos:I
    aget-byte v5, p1, v4

    const/4 v6, 0x6

    if-ne v5, v6, :cond_0

    const/4 v1, 0x1

    .line 50
    :cond_0
    add-int/lit8 v2, v1, 0x1

    .end local v1           #nPos:I
    .local v2, nPos:I
    aget-byte v5, p1, v1

    const/16 v6, -0x27

    if-ne v5, v6, :cond_3

    add-int/lit8 v1, v2, 0x1

    .end local v2           #nPos:I
    .restart local v1       #nPos:I
    aget-byte v5, p1, v2

    const/16 v6, -0x52

    if-ne v5, v6, :cond_3

    add-int/lit8 v2, v1, 0x1

    .end local v1           #nPos:I
    .restart local v2       #nPos:I
    aget-byte v5, p1, v1

    const/4 v6, -0x5

    if-ne v5, v6, :cond_3

    array-length v5, p1

    if-le v5, v2, :cond_3

    .line 52
    aget-byte v5, p1, v2

    const/16 v6, -0x3f

    if-ne v5, v6, :cond_2

    .line 54
    array-length v5, p1

    add-int/lit8 v6, v2, 0x4

    if-le v5, v6, :cond_3

    add-int/lit8 v5, v2, 0x4

    aget-byte v5, p1, v5

    const/16 v6, -0x32

    if-ne v5, v6, :cond_3

    .line 80
    .end local v2           #nPos:I
    :cond_1
    :goto_0
    return v3

    .line 59
    .restart local v2       #nPos:I
    :cond_2
    aget-byte v5, p1, v2

    const/16 v6, 0x41

    if-ne v5, v6, :cond_4

    .line 61
    array-length v5, p1

    add-int/lit8 v6, v2, 0x2

    if-le v5, v6, :cond_3

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, p1, v5

    if-nez v5, :cond_3

    add-int/lit8 v5, v2, 0x2

    aget-byte v5, p1, v5

    if-eqz v5, :cond_1

    .end local v2           #nPos:I
    :cond_3
    move v3, v4

    .line 80
    goto :goto_0

    .line 66
    .restart local v2       #nPos:I
    :cond_4
    aget-byte v5, p1, v2

    const/16 v6, 0x40

    if-eq v5, v6, :cond_5

    aget-byte v5, p1, v2

    const/16 v6, 0x60

    if-ne v5, v6, :cond_3

    .line 68
    :cond_5
    array-length v5, p1

    add-int/lit8 v6, v2, 0x3

    if-le v5, v6, :cond_3

    .line 70
    add-int/lit8 v5, v2, 0x2

    aget-byte v5, p1, v5

    shl-int/lit8 v5, v5, 0x8

    const v6, 0xff00

    and-int/2addr v5, v6

    add-int/lit8 v6, v2, 0x3

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    or-int v0, v5, v6

    .line 71
    .local v0, nLen:I
    array-length v5, p1

    add-int/lit8 v6, v2, 0x5

    add-int/2addr v6, v0

    if-le v5, v6, :cond_3

    goto :goto_0
.end method
