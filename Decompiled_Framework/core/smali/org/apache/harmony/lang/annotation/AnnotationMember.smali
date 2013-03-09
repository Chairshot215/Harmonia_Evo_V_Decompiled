.class public Lorg/apache/harmony/lang/annotation/AnnotationMember;
.super Ljava/lang/Object;
.source "AnnotationMember.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/lang/annotation/AnnotationMember$DefaultValues;
    }
.end annotation


# static fields
.field protected static final ARRAY:C = '['

.field protected static final ERROR:C = '!'

.field protected static final NO_VALUE:Ljava/lang/Object; = null

.field protected static final OTHER:C = '*'


# instance fields
.field protected transient definingMethod:Ljava/lang/reflect/Method;

.field protected transient elementType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected final name:Ljava/lang/String;

.field protected final tag:C

.field protected final value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/harmony/lang/annotation/AnnotationMember$DefaultValues;->NO_VALUE:Lorg/apache/harmony/lang/annotation/AnnotationMember$DefaultValues;

    sput-object v0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->NO_VALUE:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->name:Ljava/lang/String;

    if-nez p2, :cond_0

    sget-object p2, Lorg/apache/harmony/lang/annotation/AnnotationMember;->NO_VALUE:Ljava/lang/Object;

    :cond_0
    iput-object p2, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    const/16 v0, 0x21

    iput-char v0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->tag:C

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x5b

    iput-char v0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->tag:C

    goto :goto_0

    :cond_2
    const/16 v0, 0x2a

    iput-char v0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->tag:C

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/lang/annotation/AnnotationMember;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p4, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->definingMethod:Ljava/lang/reflect/Method;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p3, v0, :cond_0

    const-class v0, Ljava/lang/Integer;

    iput-object v0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->elementType:Ljava/lang/Class;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p3, v0, :cond_1

    const-class v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->elementType:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p3, v0, :cond_2

    const-class v0, Ljava/lang/Character;

    iput-object v0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->elementType:Ljava/lang/Class;

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p3, v0, :cond_3

    const-class v0, Ljava/lang/Float;

    iput-object v0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->elementType:Ljava/lang/Class;

    goto :goto_0

    :cond_3
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p3, v0, :cond_4

    const-class v0, Ljava/lang/Double;

    iput-object v0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->elementType:Ljava/lang/Class;

    goto :goto_0

    :cond_4
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p3, v0, :cond_5

    const-class v0, Ljava/lang/Long;

    iput-object v0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->elementType:Ljava/lang/Class;

    goto :goto_0

    :cond_5
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p3, v0, :cond_6

    const-class v0, Ljava/lang/Short;

    iput-object v0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->elementType:Ljava/lang/Class;

    goto :goto_0

    :cond_6
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p3, v0, :cond_7

    const-class v0, Ljava/lang/Byte;

    iput-object v0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->elementType:Ljava/lang/Class;

    goto :goto_0

    :cond_7
    iput-object p3, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->elementType:Ljava/lang/Class;

    goto :goto_0
.end method


# virtual methods
.method public copyValue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-char v1, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->tag:C

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [I

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v1, [I

    check-cast v1, [I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-class v1, [B

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_3
    const-class v1, [S

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v1, [S

    check-cast v1, [S

    invoke-virtual {v1}, [S->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_4
    const-class v1, [J

    if-ne v0, v1, :cond_5

    iget-object v1, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v1, [J

    check-cast v1, [J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_5
    const-class v1, [C

    if-ne v0, v1, :cond_6

    iget-object v1, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v1, [C

    check-cast v1, [C

    invoke-virtual {v1}, [C->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_6
    const-class v1, [Z

    if-ne v0, v1, :cond_7

    iget-object v1, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v1, [Z

    check-cast v1, [Z

    invoke-virtual {v1}, [Z->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_7
    const-class v1, [F

    if-ne v0, v1, :cond_8

    iget-object v1, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v1, [F

    check-cast v1, [F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_8
    const-class v1, [D

    if-ne v0, v1, :cond_9

    iget-object v1, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v1, [D

    check-cast v1, [D

    invoke-virtual {v1}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_9
    iget-object v1, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public equalArrayValue(Ljava/lang/Object;)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    instance-of v2, v2, [Ljava/lang/Object;

    if-eqz v2, :cond_1

    instance-of v2, p1, [Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v0, v2, :cond_0

    const-class v2, [I

    if-ne v0, v2, :cond_2

    iget-object v1, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v1, [I

    check-cast v1, [I

    check-cast p1, [I

    check-cast p1, [I

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    goto :goto_0

    :cond_2
    const-class v2, [B

    if-ne v0, v2, :cond_3

    iget-object v1, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    check-cast p1, [B

    check-cast p1, [B

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    goto :goto_0

    :cond_3
    const-class v2, [S

    if-ne v0, v2, :cond_4

    iget-object v1, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v1, [S

    check-cast v1, [S

    check-cast p1, [S

    check-cast p1, [S

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([S[S)Z

    move-result v1

    goto :goto_0

    :cond_4
    const-class v2, [J

    if-ne v0, v2, :cond_5

    iget-object v1, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v1, [J

    check-cast v1, [J

    check-cast p1, [J

    check-cast p1, [J

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    goto :goto_0

    :cond_5
    const-class v2, [C

    if-ne v0, v2, :cond_6

    iget-object v1, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v1, [C

    check-cast v1, [C

    check-cast p1, [C

    check-cast p1, [C

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v1

    goto :goto_0

    :cond_6
    const-class v2, [Z

    if-ne v0, v2, :cond_7

    iget-object v1, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v1, [Z

    check-cast v1, [Z

    check-cast p1, [Z

    check-cast p1, [Z

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v1

    goto :goto_0

    :cond_7
    const-class v2, [F

    if-ne v0, v2, :cond_8

    iget-object v1, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v1, [F

    check-cast v1, [F

    check-cast p1, [F

    check-cast p1, [F

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v1

    goto/16 :goto_0

    :cond_8
    const-class v2, [D

    if-ne v0, v2, :cond_0

    iget-object v1, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v1, [D

    check-cast v1, [D

    check-cast p1, [D

    check-cast p1, [D

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v2, p1, Lorg/apache/harmony/lang/annotation/AnnotationMember;

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/lang/annotation/AnnotationMember;

    iget-object v2, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->name:Ljava/lang/String;

    iget-object v3, v0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-char v2, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->tag:C

    iget-char v3, v0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->tag:C

    if-ne v2, v3, :cond_0

    iget-char v2, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->tag:C

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_2

    iget-object v1, v0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lorg/apache/harmony/lang/annotation/AnnotationMember;->equalArrayValue(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_2
    iget-char v2, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->tag:C

    const/16 v3, 0x21

    if-eq v2, v3, :cond_0

    iget-object v1, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    iget-object v2, v0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    iget-object v2, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int/lit8 v0, v2, 0x7f

    iget-char v2, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->tag:C

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_8

    iget-object v2, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, [I

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    xor-int/2addr v2, v0

    :goto_0
    return v2

    :cond_0
    const-class v2, [B

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    xor-int/2addr v2, v0

    goto :goto_0

    :cond_1
    const-class v2, [S

    if-ne v1, v2, :cond_2

    iget-object v2, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v2, [S

    check-cast v2, [S

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([S)I

    move-result v2

    xor-int/2addr v2, v0

    goto :goto_0

    :cond_2
    const-class v2, [J

    if-ne v1, v2, :cond_3

    iget-object v2, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v2, [J

    check-cast v2, [J

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([J)I

    move-result v2

    xor-int/2addr v2, v0

    goto :goto_0

    :cond_3
    const-class v2, [C

    if-ne v1, v2, :cond_4

    iget-object v2, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v2, [C

    check-cast v2, [C

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([C)I

    move-result v2

    xor-int/2addr v2, v0

    goto :goto_0

    :cond_4
    const-class v2, [Z

    if-ne v1, v2, :cond_5

    iget-object v2, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v2, [Z

    check-cast v2, [Z

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Z)I

    move-result v2

    xor-int/2addr v2, v0

    goto :goto_0

    :cond_5
    const-class v2, [F

    if-ne v1, v2, :cond_6

    iget-object v2, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v2, [F

    check-cast v2, [F

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([F)I

    move-result v2

    xor-int/2addr v2, v0

    goto :goto_0

    :cond_6
    const-class v2, [D

    if-ne v1, v2, :cond_7

    iget-object v2, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v2, [D

    check-cast v2, [D

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([D)I

    move-result v2

    xor-int/2addr v2, v0

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    xor-int/2addr v2, v0

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v2, v0

    goto/16 :goto_0
.end method

.method public rethrowError()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-char v9, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->tag:C

    const/16 v10, 0x21

    if-ne v9, v10, :cond_4

    iget-object v9, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    instance-of v9, v9, Ljava/lang/TypeNotPresentException;

    if-eqz v9, :cond_0

    iget-object v8, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v8, Ljava/lang/TypeNotPresentException;

    new-instance v9, Ljava/lang/TypeNotPresentException;

    invoke-virtual {v8}, Ljava/lang/TypeNotPresentException;->typeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/TypeNotPresentException;->getCause()Ljava/lang/Throwable;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Ljava/lang/TypeNotPresentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    :cond_0
    iget-object v9, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    instance-of v9, v9, Ljava/lang/EnumConstantNotPresentException;

    if-eqz v9, :cond_1

    iget-object v3, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/EnumConstantNotPresentException;

    new-instance v9, Ljava/lang/EnumConstantNotPresentException;

    invoke-virtual {v3}, Ljava/lang/EnumConstantNotPresentException;->enumType()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/EnumConstantNotPresentException;->constantName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Ljava/lang/EnumConstantNotPresentException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v9

    :cond_1
    iget-object v9, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    instance-of v9, v9, Ljava/lang/ArrayStoreException;

    if-eqz v9, :cond_2

    iget-object v0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ArrayStoreException;

    new-instance v9, Ljava/lang/ArrayStoreException;

    invoke-virtual {v0}, Ljava/lang/ArrayStoreException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/ArrayStoreException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_2
    iget-object v4, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    if-nez v7, :cond_3

    const/16 v9, 0x200

    :goto_0
    invoke-direct {v2, v9}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v6, Ljava/io/ObjectOutputStream;

    invoke-direct {v6, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v6, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->flush()V

    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->close()V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V

    throw v4

    :cond_3
    array-length v9, v7

    add-int/lit8 v9, v9, 0x1

    mul-int/lit8 v9, v9, 0x50

    goto :goto_0

    :cond_4
    return-void
.end method

.method protected setDefinition(Lorg/apache/harmony/lang/annotation/AnnotationMember;)Lorg/apache/harmony/lang/annotation/AnnotationMember;
    .locals 1

    iget-object v0, p1, Lorg/apache/harmony/lang/annotation/AnnotationMember;->definingMethod:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->definingMethod:Ljava/lang/reflect/Method;

    iget-object v0, p1, Lorg/apache/harmony/lang/annotation/AnnotationMember;->elementType:Ljava/lang/Class;

    iput-object v0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->elementType:Ljava/lang/Class;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-char v3, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->tag:C

    const/16 v4, 0x5b

    if-ne v3, v4, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x50

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v3, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    if-eqz v0, :cond_0

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v3, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    return-object v3

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public validateValue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-char v0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->tag:C

    const/16 v1, 0x21

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/harmony/lang/annotation/AnnotationMember;->rethrowError()V

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    sget-object v1, Lorg/apache/harmony/lang/annotation/AnnotationMember;->NO_VALUE:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->elementType:Ljava/lang/Class;

    iget-object v1, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->elementType:Ljava/lang/Class;

    iget-object v1, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lorg/apache/harmony/lang/annotation/AnnotationMember;->copyValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/annotation/AnnotationTypeMismatchException;

    iget-object v1, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->definingMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lorg/apache/harmony/lang/annotation/AnnotationMember;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/annotation/AnnotationTypeMismatchException;-><init>(Ljava/lang/reflect/Method;Ljava/lang/String;)V

    throw v0
.end method
