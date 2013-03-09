.class public final Lcom/jme3/math/Vector4f;
.super Ljava/lang/Object;
.source "Vector4f.java"

# interfaces
.implements Lcom/jme3/export/Savable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final NAN:Lcom/jme3/math/Vector4f; = null

.field public static final NEGATIVE_INFINITY:Lcom/jme3/math/Vector4f; = null

.field public static final POSITIVE_INFINITY:Lcom/jme3/math/Vector4f; = null

.field public static final UNIT_W:Lcom/jme3/math/Vector4f; = null

.field public static final UNIT_X:Lcom/jme3/math/Vector4f; = null

.field public static final UNIT_XYZW:Lcom/jme3/math/Vector4f; = null

.field public static final UNIT_Y:Lcom/jme3/math/Vector4f; = null

.field public static final UNIT_Z:Lcom/jme3/math/Vector4f; = null

.field public static final ZERO:Lcom/jme3/math/Vector4f; = null

.field private static final logger:Ljava/util/logging/Logger; = null

.field static final serialVersionUID:J = 0x1L


# instance fields
.field public w:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/high16 v5, 0x7fc0

    const/high16 v4, 0x7f80

    const/high16 v3, -0x80

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 51
    const-class v0, Lcom/jme3/math/Vector4f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/math/Vector4f;->logger:Ljava/util/logging/Logger;

    .line 53
    new-instance v0, Lcom/jme3/math/Vector4f;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/jme3/math/Vector4f;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/math/Vector4f;->ZERO:Lcom/jme3/math/Vector4f;

    .line 54
    new-instance v0, Lcom/jme3/math/Vector4f;

    invoke-direct {v0, v5, v5, v5, v5}, Lcom/jme3/math/Vector4f;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/math/Vector4f;->NAN:Lcom/jme3/math/Vector4f;

    .line 55
    new-instance v0, Lcom/jme3/math/Vector4f;

    invoke-direct {v0, v2, v1, v1, v1}, Lcom/jme3/math/Vector4f;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/math/Vector4f;->UNIT_X:Lcom/jme3/math/Vector4f;

    .line 56
    new-instance v0, Lcom/jme3/math/Vector4f;

    invoke-direct {v0, v1, v2, v1, v1}, Lcom/jme3/math/Vector4f;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/math/Vector4f;->UNIT_Y:Lcom/jme3/math/Vector4f;

    .line 57
    new-instance v0, Lcom/jme3/math/Vector4f;

    invoke-direct {v0, v1, v1, v2, v1}, Lcom/jme3/math/Vector4f;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/math/Vector4f;->UNIT_Z:Lcom/jme3/math/Vector4f;

    .line 58
    new-instance v0, Lcom/jme3/math/Vector4f;

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/jme3/math/Vector4f;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/math/Vector4f;->UNIT_W:Lcom/jme3/math/Vector4f;

    .line 59
    new-instance v0, Lcom/jme3/math/Vector4f;

    invoke-direct {v0, v2, v2, v2, v2}, Lcom/jme3/math/Vector4f;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/math/Vector4f;->UNIT_XYZW:Lcom/jme3/math/Vector4f;

    .line 60
    new-instance v0, Lcom/jme3/math/Vector4f;

    invoke-direct {v0, v4, v4, v4, v4}, Lcom/jme3/math/Vector4f;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/math/Vector4f;->POSITIVE_INFINITY:Lcom/jme3/math/Vector4f;

    .line 65
    new-instance v0, Lcom/jme3/math/Vector4f;

    invoke-direct {v0, v3, v3, v3, v3}, Lcom/jme3/math/Vector4f;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/math/Vector4f;->NEGATIVE_INFINITY:Lcom/jme3/math/Vector4f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/math/Vector4f;->w:F

    iput v0, p0, Lcom/jme3/math/Vector4f;->z:F

    iput v0, p0, Lcom/jme3/math/Vector4f;->y:F

    iput v0, p0, Lcom/jme3/math/Vector4f;->x:F

    .line 98
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "w"

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput p1, p0, Lcom/jme3/math/Vector4f;->x:F

    .line 115
    iput p2, p0, Lcom/jme3/math/Vector4f;->y:F

    .line 116
    iput p3, p0, Lcom/jme3/math/Vector4f;->z:F

    .line 117
    iput p4, p0, Lcom/jme3/math/Vector4f;->w:F

    .line 118
    return-void
.end method


# virtual methods
.method public clone()Lcom/jme3/math/Vector4f;
    .locals 2

    .prologue
    .line 831
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/math/Vector4f;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 832
    :catch_0
    move-exception v0

    .line 833
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/jme3/math/Vector4f;->clone()Lcom/jme3/math/Vector4f;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 865
    instance-of v3, p1, Lcom/jme3/math/Vector4f;

    if-nez v3, :cond_1

    .line 874
    :cond_0
    :goto_0
    return v1

    .line 867
    :cond_1
    if-ne p0, p1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 869
    check-cast v0, Lcom/jme3/math/Vector4f;

    .line 870
    .local v0, comp:Lcom/jme3/math/Vector4f;
    iget v3, p0, Lcom/jme3/math/Vector4f;->x:F

    iget v4, v0, Lcom/jme3/math/Vector4f;->x:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_0

    .line 871
    iget v3, p0, Lcom/jme3/math/Vector4f;->y:F

    iget v4, v0, Lcom/jme3/math/Vector4f;->y:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_0

    .line 872
    iget v3, p0, Lcom/jme3/math/Vector4f;->z:F

    iget v4, v0, Lcom/jme3/math/Vector4f;->z:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_0

    .line 873
    iget v3, p0, Lcom/jme3/math/Vector4f;->w:F

    iget v4, v0, Lcom/jme3/math/Vector4f;->w:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 874
    goto :goto_0
.end method

.method public getW()F
    .locals 1

    .prologue
    .line 948
    iget v0, p0, Lcom/jme3/math/Vector4f;->w:F

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 921
    iget v0, p0, Lcom/jme3/math/Vector4f;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 930
    iget v0, p0, Lcom/jme3/math/Vector4f;->y:F

    return v0
.end method

.method public getZ()F
    .locals 1

    .prologue
    .line 939
    iget v0, p0, Lcom/jme3/math/Vector4f;->z:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 884
    const/16 v0, 0x25

    .line 885
    .local v0, hash:I
    iget v1, p0, Lcom/jme3/math/Vector4f;->x:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/lit16 v1, v1, 0x559

    add-int/2addr v0, v1

    .line 886
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/jme3/math/Vector4f;->y:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 887
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/jme3/math/Vector4f;->z:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 888
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/jme3/math/Vector4f;->w:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 889
    return v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 3
    .parameter "e"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 913
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v0

    .line 914
    .local v0, capsule:Lcom/jme3/export/InputCapsule;
    const-string v1, "x"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/math/Vector4f;->x:F

    .line 915
    const-string v1, "y"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/math/Vector4f;->y:F

    .line 916
    const-string v1, "z"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/math/Vector4f;->z:F

    .line 917
    const-string v1, "w"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/math/Vector4f;->w:F

    .line 918
    return-void
.end method

.method public set(FFFF)Lcom/jme3/math/Vector4f;
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "w"

    .prologue
    .line 144
    iput p1, p0, Lcom/jme3/math/Vector4f;->x:F

    .line 145
    iput p2, p0, Lcom/jme3/math/Vector4f;->y:F

    .line 146
    iput p3, p0, Lcom/jme3/math/Vector4f;->z:F

    .line 147
    iput p4, p0, Lcom/jme3/math/Vector4f;->w:F

    .line 148
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jme3/math/Vector4f;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jme3/math/Vector4f;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jme3/math/Vector4f;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jme3/math/Vector4f;->w:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
