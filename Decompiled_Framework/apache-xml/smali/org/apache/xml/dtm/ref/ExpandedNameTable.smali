.class public Lorg/apache/xml/dtm/ref/ExpandedNameTable;
.super Ljava/lang/Object;
.source "ExpandedNameTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;
    }
.end annotation


# static fields
.field public static final ATTRIBUTE:I = 0x2

.field public static final CDATA_SECTION:I = 0x4

.field public static final COMMENT:I = 0x8

.field public static final DOCUMENT:I = 0x9

.field public static final DOCUMENT_FRAGMENT:I = 0xb

.field public static final DOCUMENT_TYPE:I = 0xa

.field public static final ELEMENT:I = 0x1

.field public static final ENTITY:I = 0x6

.field public static final ENTITY_REFERENCE:I = 0x5

.field public static final NAMESPACE:I = 0xd

.field public static final NOTATION:I = 0xc

.field public static final PROCESSING_INSTRUCTION:I = 0x7

.field public static final TEXT:I = 0x3

.field private static m_defaultExtendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

.field private static m_initialCapacity:I

.field private static m_initialSize:I

.field private static m_loadFactor:F


# instance fields
.field hashET:Lorg/apache/xml/dtm/ref/ExtendedType;

.field private m_capacity:I

.field private m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

.field private m_nextType:I

.field private m_table:[Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

.field private m_threshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v5, 0xe

    const/16 v1, 0x80

    sput v1, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_initialSize:I

    const/high16 v1, 0x3f40

    sput v1, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_loadFactor:F

    const/16 v1, 0xcb

    sput v1, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_initialCapacity:I

    new-array v1, v5, [Lorg/apache/xml/dtm/ref/ExtendedType;

    sput-object v1, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_defaultExtendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    sget-object v1, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_defaultExtendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    new-instance v2, Lorg/apache/xml/dtm/ref/ExtendedType;

    const-string v3, ""

    const-string v4, ""

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/xml/dtm/ref/ExtendedType;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/xml/dtm/ref/ExtendedType;

    const/4 v1, -0x1

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/xml/dtm/ref/ExtendedType;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->hashET:Lorg/apache/xml/dtm/ref/ExtendedType;

    sget v0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_initialCapacity:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_capacity:I

    iget v0, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_capacity:I

    int-to-float v0, v0

    sget v1, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_loadFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_threshold:I

    iget v0, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_capacity:I

    new-array v0, v0, [Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_table:[Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    invoke-direct {p0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->initExtendedTypes()V

    return-void
.end method

.method private initExtendedTypes()V
    .locals 6

    const/16 v5, 0xe

    sget v1, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_initialSize:I

    new-array v1, v1, [Lorg/apache/xml/dtm/ref/ExtendedType;

    iput-object v1, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    sget-object v2, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_defaultExtendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_table:[Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    new-instance v2, Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    sget-object v3, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_defaultExtendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v0, v4}, Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;-><init>(Lorg/apache/xml/dtm/ref/ExtendedType;IILorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v5, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_nextType:I

    return-void
.end method

.method private rehash()V
    .locals 9

    iget v5, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_capacity:I

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_table:[Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    mul-int/lit8 v7, v5, 0x2

    add-int/lit8 v2, v7, 0x1

    iput v2, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_capacity:I

    int-to-float v7, v2

    sget v8, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_loadFactor:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_threshold:I

    new-array v7, v2, [Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    iput-object v7, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_table:[Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    add-int/lit8 v1, v5, -0x1

    :goto_0
    if-ltz v1, :cond_2

    aget-object v4, v6, v1

    :goto_1
    if-eqz v4, :cond_1

    move-object v0, v4

    iget-object v4, v4, Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;->next:Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    iget v7, v0, Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;->hash:I

    rem-int v3, v7, v2

    if-gez v3, :cond_0

    neg-int v3, v3

    :cond_0
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_table:[Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    aget-object v7, v7, v3

    iput-object v7, v0, Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;->next:Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_table:[Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    aput-object v0, v7, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getExpandedTypeID(I)I
    .locals 0

    return p1
.end method

.method public getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;IZ)I
    .locals 9

    const/4 v8, 0x0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    if-nez p2, :cond_1

    const-string p2, ""

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    add-int/2addr v6, p3

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v7

    add-int v2, v6, v7

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->hashET:Lorg/apache/xml/dtm/ref/ExtendedType;

    invoke-virtual {v6, p3, p1, p2, v2}, Lorg/apache/xml/dtm/ref/ExtendedType;->redefine(ILjava/lang/String;Ljava/lang/String;I)V

    iget v6, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_capacity:I

    rem-int v3, v2, v6

    if-gez v3, :cond_2

    neg-int v3, v3

    :cond_2
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_table:[Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    aget-object v0, v6, v3

    :goto_0
    if-eqz v0, :cond_4

    iget v6, v0, Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;->hash:I

    if-ne v6, v2, :cond_3

    iget-object v6, v0, Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;->key:Lorg/apache/xml/dtm/ref/ExtendedType;

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->hashET:Lorg/apache/xml/dtm/ref/ExtendedType;

    invoke-virtual {v6, v7}, Lorg/apache/xml/dtm/ref/ExtendedType;->equals(Lorg/apache/xml/dtm/ref/ExtendedType;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget v6, v0, Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;->value:I

    :goto_1
    return v6

    :cond_3
    iget-object v0, v0, Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;->next:Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    goto :goto_0

    :cond_4
    if-eqz p4, :cond_5

    const/4 v6, -0x1

    goto :goto_1

    :cond_5
    iget v6, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_nextType:I

    iget v7, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_threshold:I

    if-le v6, v7, :cond_6

    invoke-direct {p0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->rehash()V

    iget v6, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_capacity:I

    rem-int v3, v2, v6

    if-gez v3, :cond_6

    neg-int v3, v3

    :cond_6
    new-instance v5, Lorg/apache/xml/dtm/ref/ExtendedType;

    invoke-direct {v5, p3, p1, p2, v2}, Lorg/apache/xml/dtm/ref/ExtendedType;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    array-length v6, v6

    iget v7, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_nextType:I

    if-ne v6, v7, :cond_7

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x2

    new-array v4, v6, [Lorg/apache/xml/dtm/ref/ExtendedType;

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    array-length v7, v7

    invoke-static {v6, v8, v4, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v4, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    :cond_7
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    iget v7, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_nextType:I

    aput-object v5, v6, v7

    new-instance v1, Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    iget v6, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_nextType:I

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_table:[Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    aget-object v7, v7, v3

    invoke-direct {v1, v5, v6, v2, v7}, Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;-><init>(Lorg/apache/xml/dtm/ref/ExtendedType;IILorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;)V

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_table:[Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    aput-object v1, v6, v3

    iget v6, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_nextType:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_nextType:I

    goto :goto_1
.end method

.method public getExtendedTypes()[Lorg/apache/xml/dtm/ref/ExtendedType;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    return-object v0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/ExtendedType;->getLocalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLocalNameID(I)I
    .locals 2

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/ExtendedType;->getLocalName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method

.method public getNamespace(I)Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNamespace()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public final getNamespaceID(I)I
    .locals 2

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNamespace()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_nextType:I

    return v0
.end method

.method public final getType(I)S
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNodeType()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method
