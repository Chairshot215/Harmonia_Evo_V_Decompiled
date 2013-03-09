.class public Lorg/apache/xml/utils/res/IntArrayWrapper;
.super Ljava/lang/Object;
.source "IntArrayWrapper.java"


# instance fields
.field private m_int:[I


# direct methods
.method public constructor <init>([I)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xml/utils/res/IntArrayWrapper;->m_int:[I

    return-void
.end method


# virtual methods
.method public getInt(I)I
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/utils/res/IntArrayWrapper;->m_int:[I

    aget v0, v0, p1

    return v0
.end method

.method public getLength()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/utils/res/IntArrayWrapper;->m_int:[I

    array-length v0, v0

    return v0
.end method
