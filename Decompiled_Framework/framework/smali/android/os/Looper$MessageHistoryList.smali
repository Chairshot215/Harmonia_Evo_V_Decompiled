.class Landroid/os/Looper$MessageHistoryList;
.super Ljava/lang/Object;
.source "Looper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Looper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageHistoryList"
.end annotation


# static fields
.field private static final MAX_NUM_OF_MESSAGE:I = 0x14


# instance fields
.field private final array:[Landroid/os/Looper$MessageHistory;

.field private head:I

.field private size:I

.field private tail:I


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    new-array v0, v0, [Landroid/os/Looper$MessageHistory;

    iput-object v0, p0, Landroid/os/Looper$MessageHistoryList;->array:[Landroid/os/Looper$MessageHistory;

    iput v1, p0, Landroid/os/Looper$MessageHistoryList;->tail:I

    iput v1, p0, Landroid/os/Looper$MessageHistoryList;->head:I

    iput v1, p0, Landroid/os/Looper$MessageHistoryList;->size:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper$1;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Looper$MessageHistoryList;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Landroid/os/Message;J)Landroid/os/Looper$MessageHistory;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/os/Looper$MessageHistoryList;->array:[Landroid/os/Looper$MessageHistory;

    iget v2, p0, Landroid/os/Looper$MessageHistoryList;->tail:I

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    new-instance v0, Landroid/os/Looper$MessageHistory;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Looper$MessageHistory;-><init>(Landroid/os/Message;J)V

    iget-object v1, p0, Landroid/os/Looper$MessageHistoryList;->array:[Landroid/os/Looper$MessageHistory;

    iget v2, p0, Landroid/os/Looper$MessageHistoryList;->tail:I

    aput-object v0, v1, v2

    :goto_0
    iget v1, p0, Landroid/os/Looper$MessageHistoryList;->tail:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x14

    iput v1, p0, Landroid/os/Looper$MessageHistoryList;->tail:I

    iget v1, p0, Landroid/os/Looper$MessageHistoryList;->size:I

    const/16 v2, 0x14

    if-ge v1, v2, :cond_1

    iget v1, p0, Landroid/os/Looper$MessageHistoryList;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/os/Looper$MessageHistoryList;->size:I

    :goto_1
    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/os/Looper$MessageHistoryList;->array:[Landroid/os/Looper$MessageHistory;

    iget v2, p0, Landroid/os/Looper$MessageHistoryList;->tail:I

    aget-object v0, v1, v2

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Looper$MessageHistory;->setValue(Landroid/os/Message;J)V

    goto :goto_0

    :cond_1
    iget v1, p0, Landroid/os/Looper$MessageHistoryList;->tail:I

    iput v1, p0, Landroid/os/Looper$MessageHistoryList;->head:I

    goto :goto_1
.end method

.method public get(I)Landroid/os/Looper$MessageHistory;
    .locals 3

    iget v0, p0, Landroid/os/Looper$MessageHistoryList;->size:I

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget v0, p0, Landroid/os/Looper$MessageHistoryList;->size:I

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/os/Looper$MessageHistoryList;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/os/Looper$MessageHistoryList;->array:[Landroid/os/Looper$MessageHistory;

    iget v1, p0, Landroid/os/Looper$MessageHistoryList;->head:I

    add-int/2addr v1, p1

    rem-int/lit8 v1, v1, 0x14

    aget-object v0, v0, v1

    return-object v0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Landroid/os/Looper$MessageHistoryList;->size:I

    return v0
.end method
