.class public Lorg/apache/xpath/objects/XNumber;
.super Lorg/apache/xpath/objects/XObject;
.source "XNumber.java"


# static fields
.field static final serialVersionUID:J = -0x25c0ce08378ff1a1L


# instance fields
.field m_val:D


# direct methods
.method public constructor <init>(D)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xpath/objects/XObject;-><init>()V

    iput-wide p1, p0, Lorg/apache/xpath/objects/XNumber;->m_val:D

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/xpath/objects/XObject;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/xpath/objects/XNumber;->m_val:D

    invoke-virtual {p0, p1}, Lorg/apache/xpath/objects/XNumber;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method private static zeros(I)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x1

    if-ge p0, v2, :cond_0

    const-string v2, ""

    :goto_0
    return-object v2

    :cond_0
    new-array v0, p0, [C

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p0, :cond_1

    const/16 v2, 0x30

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method


# virtual methods
.method public bool()Z
    .locals 4

    iget-wide v0, p0, Lorg/apache/xpath/objects/XNumber;->m_val:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/apache/xpath/objects/XNumber;->m_val:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V
    .locals 0

    invoke-virtual {p2, p1, p0}, Lorg/apache/xpath/XPathVisitor;->visitNumberLiteral(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/objects/XNumber;)Z

    return-void
.end method

.method public equals(Lorg/apache/xpath/objects/XObject;)Z
    .locals 8

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v0

    const/4 v4, 0x4

    if-ne v0, v4, :cond_1

    :try_start_0
    invoke-virtual {p1, p0}, Lorg/apache/xpath/objects/XObject;->equals(Lorg/apache/xpath/objects/XObject;)Z

    move-result v2

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-ne v0, v2, :cond_2

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->bool()Z

    move-result v4

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XNumber;->bool()Z

    move-result v5

    if-eq v4, v5, :cond_0

    move v2, v3

    goto :goto_0

    :cond_2
    iget-wide v4, p0, Lorg/apache/xpath/objects/XNumber;->m_val:D

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->num()D
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v2, v1}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getTypeString()Ljava/lang/String;
    .locals 1

    const-string v0, "#NUMBER"

    return-object v0
.end method

.method public isStableNumber()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public num()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/xpath/objects/XNumber;->m_val:D

    return-wide v0
.end method

.method public num(Lorg/apache/xpath/XPathContext;)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-wide v0, p0, Lorg/apache/xpath/objects/XNumber;->m_val:D

    return-wide v0
.end method

.method public object()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Double;

    iget-wide v1, p0, Lorg/apache/xpath/objects/XNumber;->m_val:D

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XNumber;->setObject(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    return-object v0
.end method

.method public str()Ljava/lang/String;
    .locals 14

    const/16 v13, 0x30

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-wide v8, p0, Lorg/apache/xpath/objects/XNumber;->m_val:D

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v6, "NaN"

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    iget-wide v8, p0, Lorg/apache/xpath/objects/XNumber;->m_val:D

    invoke-static {v8, v9}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-wide v8, p0, Lorg/apache/xpath/objects/XNumber;->m_val:D

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-lez v8, :cond_2

    const-string v6, "Infinity"

    goto :goto_0

    :cond_2
    const-string v6, "-Infinity"

    goto :goto_0

    :cond_3
    iget-wide v4, p0, Lorg/apache/xpath/objects/XNumber;->m_val:D

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v8, v2, -0x2

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2e

    if-ne v8, v9, :cond_4

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v13, :cond_4

    add-int/lit8 v8, v2, -0x2

    invoke-virtual {v6, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v8, "-0"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v6, "0"

    goto :goto_0

    :cond_4
    const/16 v8, 0x45

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_5

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v13, :cond_0

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v6, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_5
    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2d

    if-ne v8, v9, :cond_6

    const-string v7, "-"

    invoke-virtual {v6, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v0, v0, -0x1

    :goto_1
    add-int/lit8 v3, v0, -0x2

    if-lt v1, v3, :cond_7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6, v12, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-int v9, v1, v3

    invoke-static {v9}, Lorg/apache/xpath/objects/XNumber;->zeros(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :cond_6
    const-string v7, ""

    goto :goto_1

    :cond_7
    :goto_2
    add-int/lit8 v8, v0, -0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v13, :cond_8

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_8
    if-lez v1, :cond_9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v1, 0x2

    invoke-virtual {v6, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v1, 0x2

    invoke-virtual {v6, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "0."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    rsub-int/lit8 v9, v1, -0x1

    invoke-static {v9}, Lorg/apache/xpath/objects/XNumber;->zeros(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6, v12, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0
.end method
