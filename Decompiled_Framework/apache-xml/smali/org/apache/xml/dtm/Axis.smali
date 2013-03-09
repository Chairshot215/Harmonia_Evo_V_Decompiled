.class public final Lorg/apache/xml/dtm/Axis;
.super Ljava/lang/Object;
.source "Axis.java"


# static fields
.field public static final ALL:I = 0x10

.field public static final ALLFROMNODE:I = 0xe

.field public static final ANCESTOR:I = 0x0

.field public static final ANCESTORORSELF:I = 0x1

.field public static final ATTRIBUTE:I = 0x2

.field public static final CHILD:I = 0x3

.field public static final DESCENDANT:I = 0x4

.field public static final DESCENDANTORSELF:I = 0x5

.field public static final DESCENDANTSFROMROOT:I = 0x11

.field public static final DESCENDANTSORSELFFROMROOT:I = 0x12

.field public static final FILTEREDLIST:I = 0x14

.field public static final FOLLOWING:I = 0x6

.field public static final FOLLOWINGSIBLING:I = 0x7

.field public static final NAMESPACE:I = 0x9

.field public static final NAMESPACEDECLS:I = 0x8

.field public static final PARENT:I = 0xa

.field public static final PRECEDING:I = 0xb

.field public static final PRECEDINGANDANCESTOR:I = 0xf

.field public static final PRECEDINGSIBLING:I = 0xc

.field public static final ROOT:I = 0x13

.field public static final SELF:I = 0xd

.field private static final isReverse:[Z

.field private static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0xe

    new-array v0, v3, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/xml/dtm/Axis;->isReverse:[Z

    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ancestor"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ancestor-or-self"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "attribute"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "child"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "descendant"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "descendant-or-self"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "following"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "following-sibling"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "namespace-decls"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "namespace"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "parent"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "preceding"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "preceding-sibling"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "self"

    aput-object v2, v0, v1

    const-string v1, "all-from-node"

    aput-object v1, v0, v3

    const/16 v1, 0xf

    const-string v2, "preceding-and-ancestor"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "all"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "descendants-from-root"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "descendants-or-self-from-root"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "root"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "filtered-list"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/xml/dtm/Axis;->names:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 0x1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNames(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/xml/dtm/Axis;->names:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static getNamesLength()I
    .locals 1

    sget-object v0, Lorg/apache/xml/dtm/Axis;->names:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public static isReverse(I)Z
    .locals 1

    sget-object v0, Lorg/apache/xml/dtm/Axis;->isReverse:[Z

    aget-boolean v0, v0, p0

    return v0
.end method
