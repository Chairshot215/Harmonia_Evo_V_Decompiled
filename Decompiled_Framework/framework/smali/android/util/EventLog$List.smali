.class public Landroid/util/EventLog$List;
.super Ljava/lang/Object;
.source "EventLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/EventLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "List"
.end annotation


# instance fields
.field private mItems:[Ljava/lang/Object;


# direct methods
.method public varargs constructor <init>([Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    array-length v2, p1

    const/16 v3, 0x7f

    if-le v2, v3, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "A List must have fewer than 127 items in it."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_3

    aget-object v1, p1, v0

    if-nez v1, :cond_2

    const-string v2, ""

    aput-object v2, p1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    instance-of v2, v1, Landroid/util/EventLog$List;

    if-nez v2, :cond_1

    instance-of v2, v1, Ljava/lang/String;

    if-nez v2, :cond_1

    instance-of v2, v1, Ljava/lang/Integer;

    if-nez v2, :cond_1

    instance-of v2, v1, Ljava/lang/Long;

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Attempt to create a List with illegal item type."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    iput-object p1, p0, Landroid/util/EventLog$List;->mItems:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/util/EventLog$List;->mItems:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getNumItems()B
    .locals 1

    iget-object v0, p0, Landroid/util/EventLog$List;->mItems:[Ljava/lang/Object;

    array-length v0, v0

    int-to-byte v0, v0

    return v0
.end method
