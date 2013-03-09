.class Ljava/lang/ThreadLocal$Values;
.super Ljava/lang/Object;
.source "ThreadLocal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ThreadLocal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Values"
.end annotation


# static fields
.field private static final INITIAL_SIZE:I = 0x10

.field private static final TOMBSTONE:Ljava/lang/Object;


# instance fields
.field private clean:I

.field private mask:I

.field private maximumLoad:I

.field private size:I

.field private table:[Ljava/lang/Object;

.field private tombstones:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/lang/ThreadLocal$Values;->TOMBSTONE:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Ljava/lang/ThreadLocal$Values;->initializeTable(I)V

    iput v1, p0, Ljava/lang/ThreadLocal$Values;->size:I

    iput v1, p0, Ljava/lang/ThreadLocal$Values;->tombstones:I

    return-void
.end method

.method constructor <init>(Ljava/lang/ThreadLocal$Values;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    iget v0, p1, Ljava/lang/ThreadLocal$Values;->mask:I

    iput v0, p0, Ljava/lang/ThreadLocal$Values;->mask:I

    iget v0, p1, Ljava/lang/ThreadLocal$Values;->size:I

    iput v0, p0, Ljava/lang/ThreadLocal$Values;->size:I

    iget v0, p1, Ljava/lang/ThreadLocal$Values;->tombstones:I

    iput v0, p0, Ljava/lang/ThreadLocal$Values;->tombstones:I

    iget v0, p1, Ljava/lang/ThreadLocal$Values;->maximumLoad:I

    iput v0, p0, Ljava/lang/ThreadLocal$Values;->maximumLoad:I

    iget v0, p1, Ljava/lang/ThreadLocal$Values;->clean:I

    iput v0, p0, Ljava/lang/ThreadLocal$Values;->clean:I

    invoke-direct {p0, p1}, Ljava/lang/ThreadLocal$Values;->inheritValues(Ljava/lang/ThreadLocal$Values;)V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/ThreadLocal$Values;)[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/ThreadLocal$Values;)I
    .locals 1

    iget v0, p0, Ljava/lang/ThreadLocal$Values;->mask:I

    return v0
.end method

.method private cleanUp()V
    .locals 7

    invoke-direct {p0}, Ljava/lang/ThreadLocal$Values;->rehash()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v5, p0, Ljava/lang/ThreadLocal$Values;->size:I

    if-eqz v5, :cond_0

    iget v1, p0, Ljava/lang/ThreadLocal$Values;->clean:I

    iget-object v4, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    array-length v0, v4

    :goto_1
    if-lez v0, :cond_4

    aget-object v2, v4, v1

    sget-object v5, Ljava/lang/ThreadLocal$Values;->TOMBSTONE:Ljava/lang/Object;

    if-eq v2, v5, :cond_2

    if-nez v2, :cond_3

    :cond_2
    :goto_2
    shr-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v1}, Ljava/lang/ThreadLocal$Values;->next(I)I

    move-result v1

    goto :goto_1

    :cond_3
    move-object v3, v2

    check-cast v3, Ljava/lang/ref/Reference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    sget-object v5, Ljava/lang/ThreadLocal$Values;->TOMBSTONE:Ljava/lang/Object;

    aput-object v5, v4, v1

    add-int/lit8 v5, v1, 0x1

    const/4 v6, 0x0

    aput-object v6, v4, v5

    iget v5, p0, Ljava/lang/ThreadLocal$Values;->tombstones:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/lang/ThreadLocal$Values;->tombstones:I

    iget v5, p0, Ljava/lang/ThreadLocal$Values;->size:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljava/lang/ThreadLocal$Values;->size:I

    goto :goto_2

    :cond_4
    iput v1, p0, Ljava/lang/ThreadLocal$Values;->clean:I

    goto :goto_0
.end method

.method private inheritValues(Ljava/lang/ThreadLocal$Values;)V
    .locals 9

    const/4 v8, 0x0

    iget-object v4, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    array-length v5, v4

    add-int/lit8 v0, v5, -0x2

    :goto_0
    if-ltz v0, :cond_3

    aget-object v1, v4, v0

    if-eqz v1, :cond_0

    sget-object v5, Ljava/lang/ThreadLocal$Values;->TOMBSTONE:Ljava/lang/Object;

    if-ne v1, v5, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_1
    move-object v3, v1

    check-cast v3, Ljava/lang/ref/Reference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/InheritableThreadLocal;

    if-eqz v2, :cond_2

    add-int/lit8 v5, v0, 0x1

    iget-object v6, p1, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    add-int/lit8 v7, v0, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/InheritableThreadLocal;->childValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    goto :goto_1

    :cond_2
    sget-object v5, Ljava/lang/ThreadLocal$Values;->TOMBSTONE:Ljava/lang/Object;

    aput-object v5, v4, v0

    add-int/lit8 v5, v0, 0x1

    aput-object v8, v4, v5

    iget-object v5, p1, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    sget-object v6, Ljava/lang/ThreadLocal$Values;->TOMBSTONE:Ljava/lang/Object;

    aput-object v6, v5, v0

    iget-object v5, p1, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    add-int/lit8 v6, v0, 0x1

    aput-object v8, v5, v6

    iget v5, p0, Ljava/lang/ThreadLocal$Values;->tombstones:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/lang/ThreadLocal$Values;->tombstones:I

    iget v5, p1, Ljava/lang/ThreadLocal$Values;->tombstones:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p1, Ljava/lang/ThreadLocal$Values;->tombstones:I

    iget v5, p0, Ljava/lang/ThreadLocal$Values;->size:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljava/lang/ThreadLocal$Values;->size:I

    iget v5, p1, Ljava/lang/ThreadLocal$Values;->size:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p1, Ljava/lang/ThreadLocal$Values;->size:I

    goto :goto_1

    :cond_3
    return-void
.end method

.method private initializeTable(I)V
    .locals 1

    mul-int/lit8 v0, p1, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    iget-object v0, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/lang/ThreadLocal$Values;->mask:I

    const/4 v0, 0x0

    iput v0, p0, Ljava/lang/ThreadLocal$Values;->clean:I

    mul-int/lit8 v0, p1, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Ljava/lang/ThreadLocal$Values;->maximumLoad:I

    return-void
.end method

.method private next(I)I
    .locals 2

    add-int/lit8 v0, p1, 0x2

    iget v1, p0, Ljava/lang/ThreadLocal$Values;->mask:I

    and-int/2addr v0, v1

    return v0
.end method

.method private rehash()Z
    .locals 11

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget v9, p0, Ljava/lang/ThreadLocal$Values;->tombstones:I

    iget v10, p0, Ljava/lang/ThreadLocal$Values;->size:I

    add-int/2addr v9, v10

    iget v10, p0, Ljava/lang/ThreadLocal$Values;->maximumLoad:I

    if-ge v9, v10, :cond_0

    :goto_0
    return v7

    :cond_0
    iget-object v9, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    array-length v9, v9

    shr-int/lit8 v0, v9, 0x1

    move v4, v0

    iget v9, p0, Ljava/lang/ThreadLocal$Values;->size:I

    shr-int/lit8 v10, v0, 0x1

    if-le v9, v10, :cond_1

    mul-int/lit8 v4, v0, 0x2

    :cond_1
    iget-object v5, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    invoke-direct {p0, v4}, Ljava/lang/ThreadLocal$Values;->initializeTable(I)V

    iput v7, p0, Ljava/lang/ThreadLocal$Values;->tombstones:I

    iget v7, p0, Ljava/lang/ThreadLocal$Values;->size:I

    if-nez v7, :cond_2

    move v7, v8

    goto :goto_0

    :cond_2
    array-length v7, v5

    add-int/lit8 v1, v7, -0x2

    :goto_1
    if-ltz v1, :cond_6

    aget-object v2, v5, v1

    if-eqz v2, :cond_3

    sget-object v7, Ljava/lang/ThreadLocal$Values;->TOMBSTONE:Ljava/lang/Object;

    if-ne v2, v7, :cond_4

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, -0x2

    goto :goto_1

    :cond_4
    move-object v6, v2

    check-cast v6, Ljava/lang/ref/Reference;

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ThreadLocal;

    if-eqz v3, :cond_5

    add-int/lit8 v7, v1, 0x1

    aget-object v7, v5, v7

    invoke-virtual {p0, v3, v7}, Ljava/lang/ThreadLocal$Values;->add(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    iget v7, p0, Ljava/lang/ThreadLocal$Values;->size:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Ljava/lang/ThreadLocal$Values;->size:I

    goto :goto_2

    :cond_6
    move v7, v8

    goto :goto_0
.end method


# virtual methods
.method add(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ThreadLocal",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    #getter for: Ljava/lang/ThreadLocal;->hash:I
    invoke-static {p1}, Ljava/lang/ThreadLocal;->access$200(Ljava/lang/ThreadLocal;)I

    move-result v2

    iget v3, p0, Ljava/lang/ThreadLocal$Values;->mask:I

    and-int v0, v2, v3

    :goto_0
    iget-object v2, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    aget-object v1, v2, v0

    if-nez v1, :cond_0

    iget-object v2, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    #getter for: Ljava/lang/ThreadLocal;->reference:Ljava/lang/ref/Reference;
    invoke-static {p1}, Ljava/lang/ThreadLocal;->access$300(Ljava/lang/ThreadLocal;)Ljava/lang/ref/Reference;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    aput-object p2, v2, v3

    return-void

    :cond_0
    invoke-direct {p0, v0}, Ljava/lang/ThreadLocal$Values;->next(I)I

    move-result v0

    goto :goto_0
.end method

.method getAfterMiss(Ljava/lang/ThreadLocal;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ThreadLocal",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v7, -0x1

    iget-object v3, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    #getter for: Ljava/lang/ThreadLocal;->hash:I
    invoke-static {p1}, Ljava/lang/ThreadLocal;->access$200(Ljava/lang/ThreadLocal;)I

    move-result v5

    iget v6, p0, Ljava/lang/ThreadLocal$Values;->mask:I

    and-int v1, v5, v6

    aget-object v5, v3, v1

    if-nez v5, :cond_1

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->initialValue()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    if-ne v5, v3, :cond_0

    aget-object v5, v3, v1

    if-nez v5, :cond_0

    #getter for: Ljava/lang/ThreadLocal;->reference:Ljava/lang/ref/Reference;
    invoke-static {p1}, Ljava/lang/ThreadLocal;->access$300(Ljava/lang/ThreadLocal;)Ljava/lang/ref/Reference;

    move-result-object v5

    aput-object v5, v3, v1

    add-int/lit8 v5, v1, 0x1

    aput-object v4, v3, v5

    iget v5, p0, Ljava/lang/ThreadLocal$Values;->size:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/lang/ThreadLocal$Values;->size:I

    invoke-direct {p0}, Ljava/lang/ThreadLocal$Values;->cleanUp()V

    :goto_0
    return-object v4

    :cond_0
    invoke-virtual {p0, p1, v4}, Ljava/lang/ThreadLocal$Values;->put(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    invoke-direct {p0, v1}, Ljava/lang/ThreadLocal$Values;->next(I)I

    move-result v1

    :goto_1
    aget-object v2, v3, v1

    #getter for: Ljava/lang/ThreadLocal;->reference:Ljava/lang/ref/Reference;
    invoke-static {p1}, Ljava/lang/ThreadLocal;->access$300(Ljava/lang/ThreadLocal;)Ljava/lang/ref/Reference;

    move-result-object v5

    if-ne v2, v5, :cond_2

    add-int/lit8 v5, v1, 0x1

    aget-object v4, v3, v5

    goto :goto_0

    :cond_2
    if-nez v2, :cond_5

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->initialValue()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    if-ne v5, v3, :cond_4

    if-le v0, v7, :cond_3

    aget-object v5, v3, v0

    sget-object v6, Ljava/lang/ThreadLocal$Values;->TOMBSTONE:Ljava/lang/Object;

    if-ne v5, v6, :cond_3

    #getter for: Ljava/lang/ThreadLocal;->reference:Ljava/lang/ref/Reference;
    invoke-static {p1}, Ljava/lang/ThreadLocal;->access$300(Ljava/lang/ThreadLocal;)Ljava/lang/ref/Reference;

    move-result-object v5

    aput-object v5, v3, v0

    add-int/lit8 v5, v0, 0x1

    aput-object v4, v3, v5

    iget v5, p0, Ljava/lang/ThreadLocal$Values;->tombstones:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljava/lang/ThreadLocal$Values;->tombstones:I

    iget v5, p0, Ljava/lang/ThreadLocal$Values;->size:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/lang/ThreadLocal$Values;->size:I

    goto :goto_0

    :cond_3
    aget-object v5, v3, v1

    if-nez v5, :cond_4

    #getter for: Ljava/lang/ThreadLocal;->reference:Ljava/lang/ref/Reference;
    invoke-static {p1}, Ljava/lang/ThreadLocal;->access$300(Ljava/lang/ThreadLocal;)Ljava/lang/ref/Reference;

    move-result-object v5

    aput-object v5, v3, v1

    add-int/lit8 v5, v1, 0x1

    aput-object v4, v3, v5

    iget v5, p0, Ljava/lang/ThreadLocal$Values;->size:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/lang/ThreadLocal$Values;->size:I

    invoke-direct {p0}, Ljava/lang/ThreadLocal$Values;->cleanUp()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1, v4}, Ljava/lang/ThreadLocal$Values;->put(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    if-ne v0, v7, :cond_6

    sget-object v5, Ljava/lang/ThreadLocal$Values;->TOMBSTONE:Ljava/lang/Object;

    if-ne v2, v5, :cond_6

    move v0, v1

    :cond_6
    invoke-direct {p0, v1}, Ljava/lang/ThreadLocal$Values;->next(I)I

    move-result v1

    goto :goto_1
.end method

.method put(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ThreadLocal",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const/4 v5, -0x1

    invoke-direct {p0}, Ljava/lang/ThreadLocal$Values;->cleanUp()V

    const/4 v0, -0x1

    #getter for: Ljava/lang/ThreadLocal;->hash:I
    invoke-static {p1}, Ljava/lang/ThreadLocal;->access$200(Ljava/lang/ThreadLocal;)I

    move-result v3

    iget v4, p0, Ljava/lang/ThreadLocal$Values;->mask:I

    and-int v1, v3, v4

    :goto_0
    iget-object v3, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    aget-object v2, v3, v1

    #getter for: Ljava/lang/ThreadLocal;->reference:Ljava/lang/ref/Reference;
    invoke-static {p1}, Ljava/lang/ThreadLocal;->access$300(Ljava/lang/ThreadLocal;)Ljava/lang/ref/Reference;

    move-result-object v3

    if-ne v2, v3, :cond_0

    iget-object v3, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    add-int/lit8 v4, v1, 0x1

    aput-object p2, v3, v4

    :goto_1
    return-void

    :cond_0
    if-nez v2, :cond_2

    if-ne v0, v5, :cond_1

    iget-object v3, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    #getter for: Ljava/lang/ThreadLocal;->reference:Ljava/lang/ref/Reference;
    invoke-static {p1}, Ljava/lang/ThreadLocal;->access$300(Ljava/lang/ThreadLocal;)Ljava/lang/ref/Reference;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v3, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    add-int/lit8 v4, v1, 0x1

    aput-object p2, v3, v4

    iget v3, p0, Ljava/lang/ThreadLocal$Values;->size:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/lang/ThreadLocal$Values;->size:I

    goto :goto_1

    :cond_1
    iget-object v3, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    #getter for: Ljava/lang/ThreadLocal;->reference:Ljava/lang/ref/Reference;
    invoke-static {p1}, Ljava/lang/ThreadLocal;->access$300(Ljava/lang/ThreadLocal;)Ljava/lang/ref/Reference;

    move-result-object v4

    aput-object v4, v3, v0

    iget-object v3, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    add-int/lit8 v4, v0, 0x1

    aput-object p2, v3, v4

    iget v3, p0, Ljava/lang/ThreadLocal$Values;->tombstones:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Ljava/lang/ThreadLocal$Values;->tombstones:I

    iget v3, p0, Ljava/lang/ThreadLocal$Values;->size:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/lang/ThreadLocal$Values;->size:I

    goto :goto_1

    :cond_2
    if-ne v0, v5, :cond_3

    sget-object v3, Ljava/lang/ThreadLocal$Values;->TOMBSTONE:Ljava/lang/Object;

    if-ne v2, v3, :cond_3

    move v0, v1

    :cond_3
    invoke-direct {p0, v1}, Ljava/lang/ThreadLocal$Values;->next(I)I

    move-result v1

    goto :goto_0
.end method

.method remove(Ljava/lang/ThreadLocal;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ThreadLocal",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/ThreadLocal$Values;->cleanUp()V

    #getter for: Ljava/lang/ThreadLocal;->hash:I
    invoke-static {p1}, Ljava/lang/ThreadLocal;->access$200(Ljava/lang/ThreadLocal;)I

    move-result v2

    iget v3, p0, Ljava/lang/ThreadLocal$Values;->mask:I

    and-int v0, v2, v3

    :goto_0
    iget-object v2, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    aget-object v1, v2, v0

    #getter for: Ljava/lang/ThreadLocal;->reference:Ljava/lang/ref/Reference;
    invoke-static {p1}, Ljava/lang/ThreadLocal;->access$300(Ljava/lang/ThreadLocal;)Ljava/lang/ref/Reference;

    move-result-object v2

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    sget-object v3, Ljava/lang/ThreadLocal$Values;->TOMBSTONE:Ljava/lang/Object;

    aput-object v3, v2, v0

    iget-object v2, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    iget v2, p0, Ljava/lang/ThreadLocal$Values;->tombstones:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/lang/ThreadLocal$Values;->tombstones:I

    iget v2, p0, Ljava/lang/ThreadLocal$Values;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljava/lang/ThreadLocal$Values;->size:I

    :cond_0
    return-void

    :cond_1
    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Ljava/lang/ThreadLocal$Values;->next(I)I

    move-result v0

    goto :goto_0
.end method
