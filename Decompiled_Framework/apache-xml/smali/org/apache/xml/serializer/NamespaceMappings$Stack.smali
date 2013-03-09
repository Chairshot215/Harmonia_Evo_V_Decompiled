.class Lorg/apache/xml/serializer/NamespaceMappings$Stack;
.super Ljava/lang/Object;
.source "NamespaceMappings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/serializer/NamespaceMappings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Stack"
.end annotation


# instance fields
.field m_stack:[Ljava/lang/Object;

.field private max:I

.field final synthetic this$0:Lorg/apache/xml/serializer/NamespaceMappings;

.field private top:I


# direct methods
.method public constructor <init>(Lorg/apache/xml/serializer/NamespaceMappings;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->this$0:Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    const/16 v0, 0x14

    iput v0, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->max:I

    iget v0, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->max:I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->m_stack:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->m_stack:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    iget-object v2, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->this$0:Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-direct {v0, v2}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;-><init>(Lorg/apache/xml/serializer/NamespaceMappings;)V

    iget v2, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->max:I

    iput v2, v0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->max:I

    iget v2, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    iput v2, v0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    iget v2, v0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->max:I

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, v0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->m_stack:[Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    if-gt v1, v2, :cond_0

    iget-object v2, v0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->m_stack:[Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->m_stack:[Ljava/lang/Object;

    aget-object v3, v3, v1

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public empty()Z
    .locals 1

    iget v0, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getElement(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->m_stack:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public peek()Ljava/lang/Object;
    .locals 3

    iget v1, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->m_stack:[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    aget-object v0, v1, v2

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public peek(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->m_stack:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public pop()Ljava/lang/Object;
    .locals 3

    iget v1, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->m_stack:[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    aget-object v0, v1, v2

    iget v1, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public push(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 v4, 0x0

    iget v2, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    iget v2, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->max:I

    iget v3, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    if-gt v2, v3, :cond_0

    iget v2, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->max:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v1, v2, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->m_stack:[Ljava/lang/Object;

    iget v3, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->max:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v1, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->max:I

    iput-object v0, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->m_stack:[Ljava/lang/Object;

    :cond_0
    iget-object v2, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->m_stack:[Ljava/lang/Object;

    iget v3, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    aput-object p1, v2, v3

    return-object p1
.end method
