.class public Lorg/apache/xml/utils/res/CharArrayWrapper;
.super Ljava/lang/Object;
.source "CharArrayWrapper.java"


# instance fields
.field private m_char:[C


# direct methods
.method public constructor <init>([C)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xml/utils/res/CharArrayWrapper;->m_char:[C

    return-void
.end method


# virtual methods
.method public getChar(I)C
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/utils/res/CharArrayWrapper;->m_char:[C

    aget-char v0, v0, p1

    return v0
.end method

.method public getLength()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/utils/res/CharArrayWrapper;->m_char:[C

    array-length v0, v0

    return v0
.end method
