.class Lorg/apache/xml/serializer/CharInfo$CharKey;
.super Ljava/lang/Object;
.source "CharInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/serializer/CharInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CharKey"
.end annotation


# instance fields
.field private m_char:C


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(C)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-char p1, p0, Lorg/apache/xml/serializer/CharInfo$CharKey;->m_char:C

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, Lorg/apache/xml/serializer/CharInfo$CharKey;

    iget-char v0, p1, Lorg/apache/xml/serializer/CharInfo$CharKey;->m_char:C

    iget-char v1, p0, Lorg/apache/xml/serializer/CharInfo$CharKey;->m_char:C

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-char v0, p0, Lorg/apache/xml/serializer/CharInfo$CharKey;->m_char:C

    return v0
.end method

.method public final setChar(C)V
    .locals 0

    iput-char p1, p0, Lorg/apache/xml/serializer/CharInfo$CharKey;->m_char:C

    return-void
.end method
