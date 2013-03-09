.class Ljava/util/HugeEnumSet$HugeEnumSetIterator;
.super Ljava/lang/Object;
.source "HugeEnumSet.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/HugeEnumSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HugeEnumSetIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private currentBits:J

.field private index:I

.field private last:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private mask:J

.field final synthetic this$0:Ljava/util/HugeEnumSet;


# direct methods
.method private constructor <init>(Ljava/util/HugeEnumSet;)V
    .locals 2

    iput-object p1, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->this$0:Ljava/util/HugeEnumSet;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->this$0:Ljava/util/HugeEnumSet;

    #getter for: Ljava/util/HugeEnumSet;->bits:[J
    invoke-static {v0}, Ljava/util/HugeEnumSet;->access$000(Ljava/util/HugeEnumSet;)[J

    move-result-object v0

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    iput-wide v0, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->currentBits:J

    invoke-virtual {p0}, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->computeNextElement()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/HugeEnumSet;Ljava/util/HugeEnumSet$1;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/HugeEnumSet$HugeEnumSetIterator;-><init>(Ljava/util/HugeEnumSet;)V

    return-void
.end method


# virtual methods
.method computeNextElement()V
    .locals 4

    const-wide/16 v2, 0x0

    :goto_0
    iget-wide v0, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->currentBits:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->currentBits:J

    iget-wide v2, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->currentBits:J

    neg-long v2, v2

    and-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->mask:J

    :goto_1
    return-void

    :cond_0
    iget v0, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->index:I

    iget-object v1, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->this$0:Ljava/util/HugeEnumSet;

    #getter for: Ljava/util/HugeEnumSet;->bits:[J
    invoke-static {v1}, Ljava/util/HugeEnumSet;->access$000(Ljava/util/HugeEnumSet;)[J

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->this$0:Ljava/util/HugeEnumSet;

    #getter for: Ljava/util/HugeEnumSet;->bits:[J
    invoke-static {v0}, Ljava/util/HugeEnumSet;->access$000(Ljava/util/HugeEnumSet;)[J

    move-result-object v0

    iget v1, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->index:I

    aget-wide v0, v0, v1

    iput-wide v0, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->currentBits:J

    goto :goto_0

    :cond_1
    iput-wide v2, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->mask:J

    goto :goto_1
.end method

.method public hasNext()Z
    .locals 4

    iget-wide v0, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->mask:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Enum;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-wide v1, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->mask:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    :cond_0
    iget-wide v1, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->mask:J

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v1

    iget v2, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->index:I

    mul-int/lit8 v2, v2, 0x40

    add-int v0, v1, v2

    iget-object v1, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->this$0:Ljava/util/HugeEnumSet;

    #getter for: Ljava/util/HugeEnumSet;->enums:[Ljava/lang/Enum;
    invoke-static {v1}, Ljava/util/HugeEnumSet;->access$100(Ljava/util/HugeEnumSet;)[Ljava/lang/Enum;

    move-result-object v1

    aget-object v1, v1, v0

    iput-object v1, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->last:Ljava/lang/Enum;

    iget-wide v1, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->currentBits:J

    iget-wide v3, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->mask:J

    const-wide/16 v5, -0x1

    xor-long/2addr v3, v5

    and-long/2addr v1, v3

    iput-wide v1, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->currentBits:J

    invoke-virtual {p0}, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->computeNextElement()V

    iget-object v1, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->last:Ljava/lang/Enum;

    return-object v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->next()Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->last:Ljava/lang/Enum;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->this$0:Ljava/util/HugeEnumSet;

    iget-object v1, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->last:Ljava/lang/Enum;

    invoke-virtual {v0, v1}, Ljava/util/HugeEnumSet;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->last:Ljava/lang/Enum;

    return-void
.end method
