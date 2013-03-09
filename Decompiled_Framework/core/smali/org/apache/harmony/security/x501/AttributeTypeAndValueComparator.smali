.class public Lorg/apache/harmony/security/x501/AttributeTypeAndValueComparator;
.super Ljava/lang/Object;
.source "AttributeTypeAndValueComparator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x11da77530460369cL


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static compateOids(Lorg/apache/harmony/security/utils/ObjectIdentifier;Lorg/apache/harmony/security/utils/ObjectIdentifier;)I
    .locals 9

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {p0}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getOid()[I

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getOid()[I

    move-result-object v2

    array-length v7, v1

    array-length v8, v2

    if-ge v7, v8, :cond_2

    array-length v3, v1

    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_0

    aget v7, v1, v0

    aget v8, v2, v0

    if-ge v7, v8, :cond_3

    move v4, v5

    goto :goto_0

    :cond_2
    array-length v3, v2

    goto :goto_1

    :cond_3
    aget v7, v1, v0

    aget v8, v2, v0

    if-le v7, v8, :cond_4

    move v4, v6

    goto :goto_0

    :cond_4
    add-int/lit8 v7, v0, 0x1

    array-length v8, v1

    if-ne v7, v8, :cond_5

    add-int/lit8 v7, v0, 0x1

    array-length v8, v2

    if-ge v7, v8, :cond_5

    move v4, v5

    goto :goto_0

    :cond_5
    add-int/lit8 v7, v0, 0x1

    array-length v8, v1

    if-ge v7, v8, :cond_6

    add-int/lit8 v7, v0, 0x1

    array-length v8, v2

    if-ne v7, v8, :cond_6

    move v4, v6

    goto :goto_0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    if-ne p1, p2, :cond_0

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;

    move-object v1, p2

    check-cast v1, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->getType()Lorg/apache/harmony/security/utils/ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->getType()Lorg/apache/harmony/security/utils/ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_1

    if-nez v3, :cond_1

    const/4 v4, -0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->getType()Lorg/apache/harmony/security/utils/ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->getType()Lorg/apache/harmony/security/utils/ObjectIdentifier;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/harmony/security/x501/AttributeTypeAndValueComparator;->compateOids(Lorg/apache/harmony/security/utils/ObjectIdentifier;Lorg/apache/harmony/security/utils/ObjectIdentifier;)I

    move-result v4

    goto :goto_0
.end method
