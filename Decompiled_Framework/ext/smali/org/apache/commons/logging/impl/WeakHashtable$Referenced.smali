.class final Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;
.super Ljava/lang/Object;
.source "WeakHashtable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/logging/impl/WeakHashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Referenced"
.end annotation


# instance fields
.field private final hashCode:I

.field private final reference:Ljava/lang/ref/WeakReference;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->hashCode:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p0, v1}, Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;Lorg/apache/commons/logging/impl/WeakHashtable$1;)V

    iput-object v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->hashCode:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Lorg/apache/commons/logging/impl/WeakHashtable$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lorg/apache/commons/logging/impl/WeakHashtable$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    instance-of v6, p1, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;

    if-eqz v6, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;

    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v3, :cond_3

    if-nez v1, :cond_1

    move v2, v4

    :goto_0
    if-ne v2, v4, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->hashCode()I

    move-result v6

    invoke-virtual {v0}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->hashCode()I

    move-result v7

    if-ne v6, v7, :cond_2

    move v2, v4

    :cond_0
    :goto_1
    return v2

    :cond_1
    move v2, v5

    goto :goto_0

    :cond_2
    move v2, v5

    goto :goto_1

    :cond_3
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->hashCode:I

    return v0
.end method
