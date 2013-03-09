.class public final Ljava/lang/String;
.super Ljava/lang/Object;
.source "String.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/String$1;,
        Ljava/lang/String$CaseInsensitiveComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/CharSequence;"
    }
.end annotation


# static fields
.field private static final ASCII:[C = null

.field public static final CASE_INSENSITIVE_ORDER:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final REPLACEMENT_CHAR:C = '\ufffd'

.field private static final serialVersionUID:J = -0x5f0f5bc785c44cbeL


# instance fields
.field private final count:I

.field private hashCode:I

.field private final offset:I

.field private final value:[C


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v1, Ljava/lang/String$CaseInsensitiveComparator;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/String$CaseInsensitiveComparator;-><init>(Ljava/lang/String$1;)V

    sput-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    const/16 v1, 0x80

    new-array v1, v1, [C

    sput-object v1, Ljava/lang/String;->ASCII:[C

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Ljava/lang/String;->ASCII:[C

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Ljava/lang/String;->ASCII:[C

    int-to-char v2, v0

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Llibcore/util/EmptyArray;->CHAR:[C

    iput-object v0, p0, Ljava/lang/String;->value:[C

    iput v1, p0, Ljava/lang/String;->offset:I

    iput v1, p0, Ljava/lang/String;->count:I

    return-void
.end method

.method constructor <init>(II[C)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Ljava/lang/String;->value:[C

    iput p1, p0, Ljava/lang/String;->offset:I

    iput p2, p0, Ljava/lang/String;->count:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Ljava/lang/String;->value:[C

    array-length v0, v0

    iget v1, p1, Ljava/lang/String;->count:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Ljava/lang/String;->value:[C

    :goto_0
    iput-object v0, p0, Ljava/lang/String;->value:[C

    const/4 v0, 0x0

    iput v0, p0, Ljava/lang/String;->offset:I

    iget-object v0, p0, Ljava/lang/String;->value:[C

    array-length v0, v0

    iput v0, p0, Ljava/lang/String;->count:I

    return-void

    :cond_0
    iget-object v0, p1, Ljava/lang/String;->value:[C

    iget v1, p1, Ljava/lang/String;->offset:I

    iget v2, p1, Ljava/lang/String;->offset:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v0

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;C)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v4, p0, Ljava/lang/String;->offset:I

    iget v0, p1, Ljava/lang/String;->count:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/lang/String;->value:[C

    iget v0, p1, Ljava/lang/String;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/lang/String;->count:I

    iget-object v0, p1, Ljava/lang/String;->value:[C

    iget v1, p1, Ljava/lang/String;->offset:I

    iget-object v2, p0, Ljava/lang/String;->value:[C

    iget v3, p1, Ljava/lang/String;->count:I

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Ljava/lang/String;->value:[C

    iget v1, p1, Ljava/lang/String;->count:I

    aput-char p2, v0, v1

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 7

    const/4 v6, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string p1, "null"

    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Ljava/lang/String;->count:I

    iget v3, v1, Ljava/lang/String;->count:I

    add-int v0, v2, v3

    new-array v2, v0, [C

    iput-object v2, p0, Ljava/lang/String;->value:[C

    iput v6, p0, Ljava/lang/String;->offset:I

    iget-object v2, p1, Ljava/lang/String;->value:[C

    iget v3, p1, Ljava/lang/String;->offset:I

    iget-object v4, p0, Ljava/lang/String;->value:[C

    iget v5, p1, Ljava/lang/String;->count:I

    invoke-static {v2, v3, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v1, Ljava/lang/String;->value:[C

    iget v3, v1, Ljava/lang/String;->offset:I

    iget-object v4, p0, Ljava/lang/String;->value:[C

    iget v5, p1, Ljava/lang/String;->count:I

    iget v6, v1, Ljava/lang/String;->count:I

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Ljava/lang/String;->count:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string p1, "null"

    :cond_0
    if-nez p2, :cond_1

    const-string p2, "null"

    :cond_1
    iget v0, p1, Ljava/lang/String;->count:I

    iget v1, p2, Ljava/lang/String;->count:I

    add-int/2addr v0, v1

    iput v0, p0, Ljava/lang/String;->count:I

    iget v0, p0, Ljava/lang/String;->count:I

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/lang/String;->value:[C

    iput v4, p0, Ljava/lang/String;->offset:I

    iget-object v0, p1, Ljava/lang/String;->value:[C

    iget v1, p1, Ljava/lang/String;->offset:I

    iget-object v2, p0, Ljava/lang/String;->value:[C

    iget v3, p1, Ljava/lang/String;->count:I

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p2, Ljava/lang/String;->value:[C

    iget v1, p2, Ljava/lang/String;->offset:I

    iget-object v2, p0, Ljava/lang/String;->value:[C

    iget v3, p1, Ljava/lang/String;->count:I

    iget v4, p2, Ljava/lang/String;->count:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string p1, "null"

    :cond_0
    if-nez p2, :cond_1

    const-string p2, "null"

    :cond_1
    if-nez p3, :cond_2

    const-string p3, "null"

    :cond_2
    iget v0, p1, Ljava/lang/String;->count:I

    iget v1, p2, Ljava/lang/String;->count:I

    add-int/2addr v0, v1

    iget v1, p3, Ljava/lang/String;->count:I

    add-int/2addr v0, v1

    iput v0, p0, Ljava/lang/String;->count:I

    iget v0, p0, Ljava/lang/String;->count:I

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/lang/String;->value:[C

    iput v4, p0, Ljava/lang/String;->offset:I

    iget-object v0, p1, Ljava/lang/String;->value:[C

    iget v1, p1, Ljava/lang/String;->offset:I

    iget-object v2, p0, Ljava/lang/String;->value:[C

    iget v3, p1, Ljava/lang/String;->count:I

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p2, Ljava/lang/String;->value:[C

    iget v1, p2, Ljava/lang/String;->offset:I

    iget-object v2, p0, Ljava/lang/String;->value:[C

    iget v3, p1, Ljava/lang/String;->count:I

    iget v4, p2, Ljava/lang/String;->count:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p3, Ljava/lang/String;->value:[C

    iget v1, p3, Ljava/lang/String;->offset:I

    iget-object v2, p0, Ljava/lang/String;->value:[C

    iget v3, p1, Ljava/lang/String;->count:I

    iget v4, p2, Ljava/lang/String;->count:I

    add-int/2addr v3, v4

    iget v4, p3, Ljava/lang/String;->count:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/StringBuffer;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ljava/lang/String;->offset:I

    monitor-enter p1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->shareValue()[C

    move-result-object v0

    iput-object v0, p0, Ljava/lang/String;->value:[C

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iput v0, p0, Ljava/lang/String;->count:I

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "stringBuilder == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput v2, p0, Ljava/lang/String;->offset:I

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Ljava/lang/String;->count:I

    iget v0, p0, Ljava/lang/String;->count:I

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/lang/String;->value:[C

    iget v0, p0, Ljava/lang/String;->count:I

    iget-object v1, p0, Ljava/lang/String;->value:[C

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .annotation build Ljava/lang/FindBugsSuppressWarnings;
        value = {
            "DM_DEFAULT_ENCODING"
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Ljava/lang/String;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, p2, v0, v1}, Ljava/lang/String;-><init>([BIII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    or-int v1, p2, p3

    if-ltz v1, :cond_0

    array-length v1, p1

    sub-int/2addr v1, p2

    if-le p3, v1, :cond_1

    :cond_0
    array-length v1, p1

    invoke-direct {p0, v1, p2, p3}, Ljava/lang/String;->failedBoundsCheck(III)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v1

    throw v1

    :cond_1
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->length()I

    move-result v1

    iput v1, p0, Ljava/lang/String;->count:I

    const/4 v1, 0x0

    iput v1, p0, Ljava/lang/String;->offset:I

    iget v1, p0, Ljava/lang/String;->count:I

    if-lez v1, :cond_2

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v1

    iput-object v1, p0, Ljava/lang/String;->value:[C

    :goto_0
    return-void

    :cond_2
    sget-object v1, Llibcore/util/EmptyArray;->CHAR:[C

    iput-object v1, p0, Ljava/lang/String;->value:[C

    goto :goto_0
.end method

.method public constructor <init>([BIII)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    or-int v2, p3, p4

    if-ltz v2, :cond_0

    array-length v2, p1

    sub-int/2addr v2, p3

    if-le p4, v2, :cond_1

    :cond_0
    array-length v2, p1

    invoke-direct {p0, v2, p3, p4}, Ljava/lang/String;->failedBoundsCheck(III)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v2

    throw v2

    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Ljava/lang/String;->offset:I

    new-array v2, p4, [C

    iput-object v2, p0, Ljava/lang/String;->value:[C

    iput p4, p0, Ljava/lang/String;->count:I

    shl-int/lit8 p2, p2, 0x8

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Ljava/lang/String;->count:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Ljava/lang/String;->value:[C

    add-int/lit8 v1, p3, 0x1

    aget-byte v3, p1, p3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v3, p2

    int-to-char v3, v3

    aput-char v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    move p3, v1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public constructor <init>([BIILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-static {p4}, Ljava/nio/charset/Charset;->forNameUEE(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>([BIILjava/nio/charset/Charset;)V
    .locals 28

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    or-int v23, p2, p3

    if-ltz v23, :cond_0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v23, v0

    sub-int v23, v23, p2

    move/from16 v0, p3

    move/from16 v1, v23

    if-le v0, v1, :cond_1

    :cond_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;->failedBoundsCheck(III)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v23

    throw v23

    :cond_1
    invoke-virtual/range {p4 .. p4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    const-string v23, "UTF-8"

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_10

    move-object/from16 v8, p1

    move/from16 v0, p3

    new-array v0, v0, [C

    move-object/from16 v19, v0

    move/from16 v11, p2

    add-int v13, p2, p3

    const/4 v15, 0x0

    move/from16 v16, v15

    move v12, v11

    :goto_0
    if-ge v12, v13, :cond_14

    add-int/lit8 v11, v12, 0x1

    aget-byte v5, v8, v12

    and-int/lit16 v0, v5, 0x80

    move/from16 v23, v0

    if-nez v23, :cond_2

    and-int/lit16 v0, v5, 0xff

    move/from16 v20, v0

    add-int/lit8 v15, v16, 0x1

    move/from16 v0, v20

    int-to-char v0, v0

    move/from16 v23, v0

    aput-char v23, v19, v16

    :goto_1
    move/from16 v16, v15

    move v12, v11

    goto :goto_0

    :cond_2
    and-int/lit16 v0, v5, 0xe0

    move/from16 v23, v0

    const/16 v24, 0xc0

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_3

    and-int/lit16 v0, v5, 0xf0

    move/from16 v23, v0

    const/16 v24, 0xe0

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_3

    and-int/lit16 v0, v5, 0xf8

    move/from16 v23, v0

    const/16 v24, 0xf0

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_3

    and-int/lit16 v0, v5, 0xfc

    move/from16 v23, v0

    const/16 v24, 0xf8

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_3

    and-int/lit16 v0, v5, 0xfe

    move/from16 v23, v0

    const/16 v24, 0xfc

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_e

    :cond_3
    const/16 v18, 0x1

    and-int/lit16 v0, v5, 0xf0

    move/from16 v23, v0

    const/16 v24, 0xe0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    const/16 v18, 0x2

    :cond_4
    :goto_2
    add-int v23, v11, v18

    move/from16 v0, v23

    if-le v0, v13, :cond_8

    add-int/lit8 v15, v16, 0x1

    const v23, 0xfffd

    aput-char v23, v19, v16

    :goto_3
    move/from16 v0, p3

    if-ne v15, v0, :cond_f

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/String;->offset:I

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/lang/String;->value:[C

    move-object/from16 v0, p0

    iput v15, v0, Ljava/lang/String;->count:I

    :goto_4
    return-void

    :cond_5
    and-int/lit16 v0, v5, 0xf8

    move/from16 v23, v0

    const/16 v24, 0xf0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    const/16 v18, 0x3

    goto :goto_2

    :cond_6
    and-int/lit16 v0, v5, 0xfc

    move/from16 v23, v0

    const/16 v24, 0xf8

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    const/16 v18, 0x4

    goto :goto_2

    :cond_7
    and-int/lit16 v0, v5, 0xfe

    move/from16 v23, v0

    const/16 v24, 0xfc

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    const/16 v18, 0x5

    goto :goto_2

    :cond_8
    const/16 v23, 0x1f

    add-int/lit8 v24, v18, -0x1

    shr-int v23, v23, v24

    and-int v20, v5, v23

    const/4 v10, 0x0

    move v12, v11

    :goto_5
    move/from16 v0, v18

    if-ge v10, v0, :cond_a

    add-int/lit8 v11, v12, 0x1

    aget-byte v4, v8, v12

    and-int/lit16 v0, v4, 0xc0

    move/from16 v23, v0

    const/16 v24, 0x80

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_9

    add-int/lit8 v15, v16, 0x1

    const v23, 0xfffd

    aput-char v23, v19, v16

    add-int/lit8 v11, v11, -0x1

    move/from16 v16, v15

    move v12, v11

    goto/16 :goto_0

    :cond_9
    shl-int/lit8 v20, v20, 0x6

    and-int/lit8 v23, v4, 0x3f

    or-int v20, v20, v23

    add-int/lit8 v10, v10, 0x1

    move v12, v11

    goto :goto_5

    :cond_a
    const/16 v23, 0x2

    move/from16 v0, v18

    move/from16 v1, v23

    if-eq v0, v1, :cond_b

    const v23, 0xd800

    move/from16 v0, v20

    move/from16 v1, v23

    if-lt v0, v1, :cond_b

    const v23, 0xdfff

    move/from16 v0, v20

    move/from16 v1, v23

    if-gt v0, v1, :cond_b

    add-int/lit8 v15, v16, 0x1

    const v23, 0xfffd

    aput-char v23, v19, v16

    move/from16 v16, v15

    goto/16 :goto_0

    :cond_b
    const v23, 0x10ffff

    move/from16 v0, v20

    move/from16 v1, v23

    if-le v0, v1, :cond_c

    add-int/lit8 v15, v16, 0x1

    const v23, 0xfffd

    aput-char v23, v19, v16

    move/from16 v16, v15

    goto/16 :goto_0

    :cond_c
    const/high16 v23, 0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_d

    add-int/lit8 v15, v16, 0x1

    move/from16 v0, v20

    int-to-char v0, v0

    move/from16 v23, v0

    aput-char v23, v19, v16

    :goto_6
    move v11, v12

    goto/16 :goto_1

    :cond_d
    const v23, 0xffff

    and-int v22, v20, v23

    shr-int/lit8 v23, v20, 0x10

    and-int/lit8 v17, v23, 0x1f

    add-int/lit8 v23, v17, -0x1

    const v24, 0xffff

    and-int v21, v23, v24

    const v23, 0xd800

    shl-int/lit8 v24, v21, 0x6

    or-int v23, v23, v24

    shr-int/lit8 v24, v22, 0xa

    or-int v9, v23, v24

    const v23, 0xdc00

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0x3ff

    move/from16 v24, v0

    or-int v14, v23, v24

    add-int/lit8 v15, v16, 0x1

    int-to-char v0, v9

    move/from16 v23, v0

    aput-char v23, v19, v16

    add-int/lit8 v16, v15, 0x1

    int-to-char v0, v14

    move/from16 v23, v0

    aput-char v23, v19, v15

    move/from16 v15, v16

    goto :goto_6

    :cond_e
    add-int/lit8 v15, v16, 0x1

    const v23, 0xfffd

    aput-char v23, v19, v16

    goto/16 :goto_1

    :cond_f
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/String;->offset:I

    new-array v0, v15, [C

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/lang/String;->value:[C

    move-object/from16 v0, p0

    iput v15, v0, Ljava/lang/String;->count:I

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/String;->value:[C

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_4

    :cond_10
    const-string v23, "ISO-8859-1"

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/String;->offset:I

    move/from16 v0, p3

    new-array v0, v0, [C

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/lang/String;->value:[C

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/String;->count:I

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/String;->value:[C

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Ljava/nio/charset/Charsets;->isoLatin1BytesToChars([BII[C)V

    goto/16 :goto_4

    :cond_11
    const-string v23, "US-ASCII"

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_12

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/String;->offset:I

    move/from16 v0, p3

    new-array v0, v0, [C

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/lang/String;->value:[C

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/String;->count:I

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/String;->value:[C

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Ljava/nio/charset/Charsets;->asciiBytesToChars([BII[C)V

    goto/16 :goto_4

    :cond_12
    invoke-static/range {p1 .. p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v23

    move-object/from16 v0, p4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v7

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/String;->offset:I

    invoke-virtual {v7}, Ljava/nio/CharBuffer;->length()I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/String;->count:I

    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/String;->count:I

    move/from16 v23, v0

    if-lez v23, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/String;->count:I

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v0, v0, [C

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/lang/String;->value:[C

    invoke-virtual {v7}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/String;->value:[C

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/String;->count:I

    move/from16 v27, v0

    invoke-static/range {v23 .. v27}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_4

    :cond_13
    sget-object v23, Llibcore/util/EmptyArray;->CHAR:[C

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/lang/String;->value:[C

    goto/16 :goto_4

    :cond_14
    move/from16 v15, v16

    move v11, v12

    goto/16 :goto_3
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p2}, Ljava/nio/charset/Charset;->forNameUEE(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>([BLjava/nio/charset/Charset;)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1, p2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>([C)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Ljava/lang/String;-><init>([CII)V

    return-void
.end method

.method public constructor <init>([CII)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    or-int v0, p2, p3

    if-ltz v0, :cond_0

    array-length v0, p1

    sub-int/2addr v0, p2

    if-le p3, v0, :cond_1

    :cond_0
    array-length v0, p1

    invoke-direct {p0, v0, p2, p3}, Ljava/lang/String;->failedBoundsCheck(III)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0

    :cond_1
    iput v2, p0, Ljava/lang/String;->offset:I

    new-array v0, p3, [C

    iput-object v0, p0, Ljava/lang/String;->value:[C

    iput p3, p0, Ljava/lang/String;->count:I

    iget-object v0, p0, Ljava/lang/String;->value:[C

    iget v1, p0, Ljava/lang/String;->count:I

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>([III)V
    .locals 5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    :cond_0
    or-int v3, p2, p3

    if-ltz v3, :cond_1

    array-length v3, p1

    sub-int/2addr v3, p2

    if-le p3, v3, :cond_2

    :cond_1
    array-length v3, p1

    invoke-direct {p0, v3, p2, p3}, Ljava/lang/String;->failedBoundsCheck(III)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v3

    throw v3

    :cond_2
    const/4 v3, 0x0

    iput v3, p0, Ljava/lang/String;->offset:I

    mul-int/lit8 v3, p3, 0x2

    new-array v3, v3, [C

    iput-object v3, p0, Ljava/lang/String;->value:[C

    add-int v1, p2, p3

    const/4 v0, 0x0

    move v2, p2

    :goto_0
    if-ge v2, v1, :cond_3

    aget v3, p1, v2

    iget-object v4, p0, Ljava/lang/String;->value:[C

    invoke-static {v3, v4, v0}, Ljava/lang/Character;->toChars(I[CI)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iput v0, p0, Ljava/lang/String;->count:I

    return-void
.end method

.method public static copyValueOf([C)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-direct {v0, p0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public static copyValueOf([CII)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method private failedBoundsCheck(III)Ljava/lang/StringIndexOutOfBoundsException;
    .locals 1

    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(III)V

    throw v0
.end method

.method private native fastIndexOf(II)I
.end method

.method private foldCase(C)C
    .locals 1

    const/16 v0, 0x80

    if-ge p1, v0, :cond_1

    const/16 v0, 0x41

    if-gt v0, p1, :cond_0

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_0

    add-int/lit8 v0, p1, 0x20

    int-to-char p1, v0

    :cond_0
    :goto_0
    return p1

    :cond_1
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    goto :goto_0
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "null format argument"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez p2, :cond_1

    const/4 v2, 0x0

    :goto_0
    add-int v0, v3, v2

    new-instance v1, Ljava/util/Formatter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-direct {v1, v2, p0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    invoke-virtual {v1, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    array-length v2, p2

    mul-int/lit8 v2, v2, 0xa

    goto :goto_0
.end method

.method private indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;
    .locals 1

    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private static indexOf(Ljava/lang/String;Ljava/lang/String;IIC)I
    .locals 14
    .annotation build Ljava/lang/FindBugsSuppressWarnings;
        value = {
            "UPM_UNCALLED_PRIVATE_METHOD"
        }
    .end annotation

    iget-object v1, p0, Ljava/lang/String;->value:[C

    iget v4, p0, Ljava/lang/String;->offset:I

    iget v3, p0, Ljava/lang/String;->count:I

    iget-object v7, p1, Ljava/lang/String;->value:[C

    iget v10, p1, Ljava/lang/String;->offset:I

    iget v8, p1, Ljava/lang/String;->count:I

    add-int/lit8 v9, v8, -0x1

    add-int v2, v4, v3

    add-int v5, v4, v9

    :goto_0
    if-ge v5, v2, :cond_5

    aget-char v12, v1, v5

    move/from16 v0, p4

    if-ne v0, v12, :cond_3

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v9, :cond_2

    add-int v12, v6, v10

    aget-char v12, v7, v12

    add-int v13, v5, v6

    sub-int/2addr v13, v9

    aget-char v13, v1, v13

    if-eq v12, v13, :cond_1

    const/4 v11, 0x1

    const/4 v12, 0x1

    aget-char v13, v1, v5

    shl-int/2addr v12, v13

    and-int v12, v12, p2

    if-nez v12, :cond_0

    add-int/2addr v11, v6

    :cond_0
    move/from16 v0, p3

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v12

    add-int/2addr v5, v12

    goto :goto_0

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    sub-int v12, v5, v9

    sub-int/2addr v12, v4

    :goto_2
    return v12

    :cond_3
    const/4 v12, 0x1

    aget-char v13, v1, v5

    shl-int/2addr v12, v13

    and-int v12, v12, p2

    if-nez v12, :cond_4

    add-int/2addr v5, v9

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    const/4 v12, -0x1

    goto :goto_2
.end method

.method private indexOfSupplementary(II)I
    .locals 4

    invoke-static {p1}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>(II[C)V

    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0
.end method

.method private lastIndexOfSupplementary(II)I
    .locals 4

    invoke-static {p1}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>(II[C)V

    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0
.end method

.method private startEndAndLength(II)Ljava/lang/StringIndexOutOfBoundsException;
    .locals 2

    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    sub-int v1, p2, p1

    invoke-direct {v0, p0, p1, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;II)V

    throw v0
.end method

.method public static valueOf(C)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/16 v1, 0x80

    if-ge p0, v1, :cond_0

    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/lang/String;->ASCII:[C

    invoke-direct {v0, p0, v2, v1}, Ljava/lang/String;-><init>(II[C)V

    :goto_0
    iput p0, v0, Ljava/lang/String;->hashCode:I

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    new-array v1, v2, [C

    aput-char p0, v1, v3

    invoke-direct {v0, v3, v2, v1}, Ljava/lang/String;-><init>(II[C)V

    goto :goto_0
.end method

.method public static valueOf(D)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(F)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(J)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method

.method public static valueOf(Z)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "true"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public static valueOf([C)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-direct {v0, p0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public static valueOf([CII)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method


# virtual methods
.method _getChars(II[CI)V
    .locals 3

    iget-object v0, p0, Ljava/lang/String;->value:[C

    iget v1, p0, Ljava/lang/String;->offset:I

    add-int/2addr v1, p1

    sub-int v2, p2, p1

    invoke-static {v0, v1, p3, p4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public native charAt(I)C
.end method

.method public codePointAt(I)I
    .locals 4

    if-ltz p1, :cond_0

    iget v0, p0, Ljava/lang/String;->count:I

    if-lt p1, v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/String;->indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0

    :cond_1
    iget-object v0, p0, Ljava/lang/String;->value:[C

    iget v1, p0, Ljava/lang/String;->offset:I

    add-int/2addr v1, p1

    iget v2, p0, Ljava/lang/String;->offset:I

    iget v3, p0, Ljava/lang/String;->count:I

    add-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/Character;->codePointAt([CII)I

    move-result v0

    return v0
.end method

.method public codePointBefore(I)I
    .locals 3

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    iget v0, p0, Ljava/lang/String;->count:I

    if-le p1, v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/String;->indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0

    :cond_1
    iget-object v0, p0, Ljava/lang/String;->value:[C

    iget v1, p0, Ljava/lang/String;->offset:I

    add-int/2addr v1, p1

    iget v2, p0, Ljava/lang/String;->offset:I

    invoke-static {v0, v1, v2}, Ljava/lang/Character;->codePointBefore([CII)I

    move-result v0

    return v0
.end method

.method public codePointCount(II)I
    .locals 3

    if-ltz p1, :cond_0

    iget v0, p0, Ljava/lang/String;->count:I

    if-gt p2, v0, :cond_0

    if-le p1, p2, :cond_1

    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/lang/String;->startEndAndLength(II)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0

    :cond_1
    iget-object v0, p0, Ljava/lang/String;->value:[C

    iget v1, p0, Ljava/lang/String;->offset:I

    add-int/2addr v1, p1

    sub-int v2, p2, p1

    invoke-static {v0, v1, v2}, Ljava/lang/Character;->codePointCount([CII)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public native compareTo(Ljava/lang/String;)I
.end method

.method public compareToIgnoreCase(Ljava/lang/String;)I
    .locals 12

    iget v3, p0, Ljava/lang/String;->offset:I

    iget v5, p1, Ljava/lang/String;->offset:I

    iget v10, p0, Ljava/lang/String;->offset:I

    iget v9, p0, Ljava/lang/String;->count:I

    iget v11, p1, Ljava/lang/String;->count:I

    if-ge v9, v11, :cond_0

    iget v9, p0, Ljava/lang/String;->count:I

    :goto_0
    add-int v2, v10, v9

    iget-object v8, p1, Ljava/lang/String;->value:[C

    move v6, v5

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_2

    iget-object v9, p0, Ljava/lang/String;->value:[C

    add-int/lit8 v3, v4, 0x1

    aget-char v0, v9, v4

    add-int/lit8 v5, v6, 0x1

    aget-char v1, v8, v6

    if-ne v0, v1, :cond_1

    move v6, v5

    move v4, v3

    goto :goto_1

    :cond_0
    iget v9, p1, Ljava/lang/String;->count:I

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Ljava/lang/String;->foldCase(C)C

    move-result v0

    invoke-direct {p0, v1}, Ljava/lang/String;->foldCase(C)C

    move-result v1

    sub-int v7, v0, v1

    if-eqz v7, :cond_3

    :goto_2
    return v7

    :cond_2
    iget v9, p0, Ljava/lang/String;->count:I

    iget v10, p1, Ljava/lang/String;->count:I

    sub-int v7, v9, v10

    move v5, v6

    move v3, v4

    goto :goto_2

    :cond_3
    move v6, v5

    move v4, v3

    goto :goto_1
.end method

.method public concat(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    iget v1, p1, Ljava/lang/String;->count:I

    if-lez v1, :cond_1

    iget v1, p0, Ljava/lang/String;->count:I

    if-lez v1, :cond_1

    iget v1, p0, Ljava/lang/String;->count:I

    iget v2, p1, Ljava/lang/String;->count:I

    add-int/2addr v1, v2

    new-array v0, v1, [C

    iget-object v1, p0, Ljava/lang/String;->value:[C

    iget v2, p0, Ljava/lang/String;->offset:I

    iget v3, p0, Ljava/lang/String;->count:I

    invoke-static {v1, v2, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p1, Ljava/lang/String;->value:[C

    iget v2, p1, Ljava/lang/String;->offset:I

    iget v3, p0, Ljava/lang/String;->count:I

    iget v4, p1, Ljava/lang/String;->count:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Ljava/lang/String;

    array-length v1, v0

    invoke-direct {p1, v5, v1, v0}, Ljava/lang/String;-><init>(II[C)V

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    iget v1, p0, Ljava/lang/String;->count:I

    if-eqz v1, :cond_0

    move-object p1, p0

    goto :goto_0
.end method

.method public contains(Ljava/lang/CharSequence;)Z
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public contentEquals(Ljava/lang/CharSequence;)Z
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget v2, p0, Ljava/lang/String;->count:I

    if-eq v0, v2, :cond_1

    :goto_0
    return v1

    :cond_1
    if-nez v0, :cond_2

    iget v2, p0, Ljava/lang/String;->count:I

    if-nez v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v1, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    goto :goto_0
.end method

.method public contentEquals(Ljava/lang/StringBuffer;)Z
    .locals 5

    const/4 v1, 0x0

    monitor-enter p1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iget v2, p0, Ljava/lang/String;->count:I

    if-eq v2, v0, :cond_0

    monitor-exit p1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->getValue()[C

    move-result-object v4

    invoke-direct {v2, v3, v0, v4}, Ljava/lang/String;-><init>(II[C)V

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public endsWith(Ljava/lang/String;)Z
    .locals 3

    iget v0, p0, Ljava/lang/String;->count:I

    iget v1, p1, Ljava/lang/String;->count:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    iget v2, p1, Ljava/lang/String;->count:I

    invoke-virtual {p0, v0, p1, v1, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public native equals(Ljava/lang/Object;)Z
.end method

.method public equalsIgnoreCase(Ljava/lang/String;)Z
    .locals 12
    .annotation build Ljava/lang/FindBugsSuppressWarnings;
        value = {
            "ES_COMPARING_PARAMETER_STRING_WITH_EQ"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    if-eqz p1, :cond_2

    iget v10, p0, Ljava/lang/String;->count:I

    iget v11, p1, Ljava/lang/String;->count:I

    if-eq v10, v11, :cond_3

    :cond_2
    move v8, v9

    goto :goto_0

    :cond_3
    iget v3, p0, Ljava/lang/String;->offset:I

    iget v5, p1, Ljava/lang/String;->offset:I

    iget v10, p0, Ljava/lang/String;->offset:I

    iget v11, p0, Ljava/lang/String;->count:I

    add-int v2, v10, v11

    iget-object v7, p1, Ljava/lang/String;->value:[C

    move v6, v5

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_0

    iget-object v10, p0, Ljava/lang/String;->value:[C

    add-int/lit8 v3, v4, 0x1

    aget-char v0, v10, v4

    add-int/lit8 v5, v6, 0x1

    aget-char v1, v7, v6

    if-eq v0, v1, :cond_4

    invoke-direct {p0, v0}, Ljava/lang/String;->foldCase(C)C

    move-result v10

    invoke-direct {p0, v1}, Ljava/lang/String;->foldCase(C)C

    move-result v11

    if-eq v10, v11, :cond_4

    move v8, v9

    goto :goto_0

    :cond_4
    move v6, v5

    move v4, v3

    goto :goto_1
.end method

.method public getBytes(II[BI)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    iget v3, p0, Ljava/lang/String;->count:I

    if-gt p2, v3, :cond_0

    iget v3, p0, Ljava/lang/String;->offset:I

    add-int/2addr p2, v3

    :try_start_0
    iget v3, p0, Ljava/lang/String;->offset:I

    add-int v0, v3, p1

    move v2, p4

    :goto_0
    if-ge v0, p2, :cond_1

    add-int/lit8 p4, v2, 0x1

    iget-object v3, p0, Ljava/lang/String;->value:[C

    aget-char v3, v3, v0

    int-to-byte v3, v3

    aput-byte v3, p3, v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    move v2, p4

    goto :goto_0

    :catch_0
    move-exception v1

    array-length v3, p3

    sub-int v4, p2, p1

    invoke-direct {p0, v3, p4, v4}, Ljava/lang/String;->failedBoundsCheck(III)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v3

    throw v3

    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/lang/String;->startEndAndLength(II)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v3

    throw v3

    :cond_1
    return-void
.end method

.method public getBytes()[B
    .locals 1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public getBytes(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-static {p1}, Ljava/nio/charset/Charset;->forNameUEE(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public getBytes(Ljava/nio/charset/Charset;)[B
    .locals 7

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    const-string v4, "UTF-8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Ljava/lang/String;->value:[C

    iget v5, p0, Ljava/lang/String;->offset:I

    iget v6, p0, Ljava/lang/String;->count:I

    invoke-static {v4, v5, v6}, Ljava/nio/charset/Charsets;->toUtf8Bytes([CII)[B

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v4, "ISO-8859-1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Ljava/lang/String;->value:[C

    iget v5, p0, Ljava/lang/String;->offset:I

    iget v6, p0, Ljava/lang/String;->count:I

    invoke-static {v4, v5, v6}, Ljava/nio/charset/Charsets;->toIsoLatin1Bytes([CII)[B

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v4, "US-ASCII"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Ljava/lang/String;->value:[C

    iget v5, p0, Ljava/lang/String;->offset:I

    iget v6, p0, Ljava/lang/String;->count:I

    invoke-static {v4, v5, v6}, Ljava/nio/charset/Charsets;->toAsciiBytes([CII)[B

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v4, "UTF-16BE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Ljava/lang/String;->value:[C

    iget v5, p0, Ljava/lang/String;->offset:I

    iget v6, p0, Ljava/lang/String;->count:I

    invoke-static {v4, v5, v6}, Ljava/nio/charset/Charsets;->toBigEndianUtf16Bytes([CII)[B

    move-result-object v1

    goto :goto_0

    :cond_3
    iget-object v4, p0, Ljava/lang/String;->value:[C

    iget v5, p0, Ljava/lang/String;->offset:I

    iget v6, p0, Ljava/lang/String;->count:I

    invoke-static {v4, v5, v6}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->asReadOnlyBuffer()Ljava/nio/CharBuffer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    new-array v1, v4, [B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public getChars(II[CI)V
    .locals 3

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    iget v0, p0, Ljava/lang/String;->count:I

    if-gt p2, v0, :cond_0

    iget-object v0, p0, Ljava/lang/String;->value:[C

    iget v1, p0, Ljava/lang/String;->offset:I

    add-int/2addr v1, p1

    sub-int v2, p2, p1

    invoke-static {v0, v1, p3, p4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/lang/String;->startEndAndLength(II)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0
.end method

.method public hashCode()I
    .locals 6

    iget v2, p0, Ljava/lang/String;->hashCode:I

    if-nez v2, :cond_2

    iget v4, p0, Ljava/lang/String;->count:I

    if-nez v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    iget v4, p0, Ljava/lang/String;->count:I

    iget v5, p0, Ljava/lang/String;->offset:I

    add-int v1, v4, v5

    iget-object v0, p0, Ljava/lang/String;->value:[C

    iget v3, p0, Ljava/lang/String;->offset:I

    :goto_1
    if-ge v3, v1, :cond_1

    mul-int/lit8 v4, v2, 0x1f

    aget-char v5, v0, v3

    add-int v2, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iput v2, p0, Ljava/lang/String;->hashCode:I

    :cond_2
    move v4, v2

    goto :goto_0
.end method

.method public indexOf(I)I
    .locals 2

    const/4 v1, 0x0

    const v0, 0xffff

    if-le p1, v0, :cond_0

    invoke-direct {p0, p1, v1}, Ljava/lang/String;->indexOfSupplementary(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, v1}, Ljava/lang/String;->fastIndexOf(II)I

    move-result v0

    goto :goto_0
.end method

.method public indexOf(II)I
    .locals 1

    const v0, 0xffff

    if-le p1, v0, :cond_0

    invoke-direct {p0, p1, p2}, Ljava/lang/String;->indexOfSupplementary(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/lang/String;->fastIndexOf(II)I

    move-result v0

    goto :goto_0
.end method

.method public indexOf(Ljava/lang/String;)I
    .locals 14

    const/4 v11, -0x1

    const/4 v7, 0x0

    iget v8, p1, Ljava/lang/String;->count:I

    iget v0, p0, Ljava/lang/String;->count:I

    if-lez v8, :cond_6

    if-le v8, v0, :cond_1

    move v4, v11

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v10, p1, Ljava/lang/String;->value:[C

    iget v9, p1, Ljava/lang/String;->offset:I

    aget-char v3, v10, v9

    add-int v2, v9, v8

    :goto_1
    invoke-virtual {p0, v3, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-eq v4, v11, :cond_2

    add-int v12, v8, v4

    if-le v12, v0, :cond_3

    :cond_2
    move v4, v11

    goto :goto_0

    :cond_3
    iget v12, p0, Ljava/lang/String;->offset:I

    add-int v5, v12, v4

    move v6, v9

    iget-object v1, p0, Ljava/lang/String;->value:[C

    :cond_4
    add-int/lit8 v6, v6, 0x1

    if-ge v6, v2, :cond_5

    add-int/lit8 v5, v5, 0x1

    aget-char v12, v1, v5

    aget-char v13, v10, v6

    if-eq v12, v13, :cond_4

    :cond_5
    if-eq v6, v2, :cond_0

    add-int/lit8 v7, v4, 0x1

    goto :goto_1

    :cond_6
    if-ge v7, v0, :cond_7

    move v0, v7

    :cond_7
    move v4, v0

    goto :goto_0
.end method

.method public indexOf(Ljava/lang/String;I)I
    .locals 13

    const/4 v10, -0x1

    if-gez p2, :cond_0

    const/4 p2, 0x0

    :cond_0
    iget v7, p1, Ljava/lang/String;->count:I

    iget v0, p0, Ljava/lang/String;->count:I

    if-lez v7, :cond_7

    add-int v11, v7, p2

    if-le v11, v0, :cond_2

    move v4, v10

    :cond_1
    :goto_0
    return v4

    :cond_2
    iget-object v9, p1, Ljava/lang/String;->value:[C

    iget v8, p1, Ljava/lang/String;->offset:I

    aget-char v3, v9, v8

    add-int v2, v8, v7

    :goto_1
    invoke-virtual {p0, v3, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-eq v4, v10, :cond_3

    add-int v11, v7, v4

    if-le v11, v0, :cond_4

    :cond_3
    move v4, v10

    goto :goto_0

    :cond_4
    iget v11, p0, Ljava/lang/String;->offset:I

    add-int v5, v11, v4

    move v6, v8

    iget-object v1, p0, Ljava/lang/String;->value:[C

    :cond_5
    add-int/lit8 v6, v6, 0x1

    if-ge v6, v2, :cond_6

    add-int/lit8 v5, v5, 0x1

    aget-char v11, v1, v5

    aget-char v12, v9, v6

    if-eq v11, v12, :cond_5

    :cond_6
    if-eq v6, v2, :cond_1

    add-int/lit8 p2, v4, 0x1

    goto :goto_1

    :cond_7
    if-ge p2, v0, :cond_8

    move v0, p2

    :cond_8
    move v4, v0

    goto :goto_0
.end method

.method public native intern()Ljava/lang/String;
.end method

.method public native isEmpty()Z
.end method

.method public lastIndexOf(I)I
    .locals 5

    const v4, 0xffff

    if-le p1, v4, :cond_0

    const v4, 0x7fffffff

    invoke-direct {p0, p1, v4}, Ljava/lang/String;->lastIndexOfSupplementary(II)I

    move-result v4

    :goto_0
    return v4

    :cond_0
    iget v0, p0, Ljava/lang/String;->count:I

    iget v1, p0, Ljava/lang/String;->offset:I

    iget-object v2, p0, Ljava/lang/String;->value:[C

    add-int v4, v1, v0

    add-int/lit8 v3, v4, -0x1

    :goto_1
    if-lt v3, v1, :cond_2

    aget-char v4, v2, v3

    if-ne v4, p1, :cond_1

    sub-int v4, v3, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public lastIndexOf(II)I
    .locals 5

    const v4, 0xffff

    if-le p1, v4, :cond_0

    invoke-direct {p0, p1, p2}, Ljava/lang/String;->lastIndexOfSupplementary(II)I

    move-result v4

    :goto_0
    return v4

    :cond_0
    iget v0, p0, Ljava/lang/String;->count:I

    iget v1, p0, Ljava/lang/String;->offset:I

    iget-object v2, p0, Ljava/lang/String;->value:[C

    if-ltz p2, :cond_3

    if-lt p2, v0, :cond_1

    add-int/lit8 p2, v0, -0x1

    :cond_1
    add-int v3, v1, p2

    :goto_1
    if-lt v3, v1, :cond_3

    aget-char v4, v2, v3

    if-ne v4, p1, :cond_2

    sub-int v4, v3, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_3
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public lastIndexOf(Ljava/lang/String;)I
    .locals 1

    iget v0, p0, Ljava/lang/String;->count:I

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/String;I)I
    .locals 11

    const/4 v8, -0x1

    iget v5, p1, Ljava/lang/String;->count:I

    iget v9, p0, Ljava/lang/String;->count:I

    if-gt v5, v9, :cond_7

    if-ltz p2, :cond_7

    if-lez v5, :cond_5

    iget v9, p0, Ljava/lang/String;->count:I

    sub-int/2addr v9, v5

    if-le p2, v9, :cond_0

    iget v9, p0, Ljava/lang/String;->count:I

    sub-int p2, v9, v5

    :cond_0
    iget-object v7, p1, Ljava/lang/String;->value:[C

    iget v6, p1, Ljava/lang/String;->offset:I

    aget-char v1, v7, v6

    add-int v0, v6, v5

    :goto_0
    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    if-ne v2, v8, :cond_2

    move v2, v8

    :cond_1
    :goto_1
    return v2

    :cond_2
    iget v9, p0, Ljava/lang/String;->offset:I

    add-int v3, v9, v2

    move v4, v6

    :cond_3
    add-int/lit8 v4, v4, 0x1

    if-ge v4, v0, :cond_4

    iget-object v9, p0, Ljava/lang/String;->value:[C

    add-int/lit8 v3, v3, 0x1

    aget-char v9, v9, v3

    aget-char v10, v7, v4

    if-eq v9, v10, :cond_3

    :cond_4
    if-eq v4, v0, :cond_1

    add-int/lit8 p2, v2, -0x1

    goto :goto_0

    :cond_5
    iget v8, p0, Ljava/lang/String;->count:I

    if-ge p2, v8, :cond_6

    move v8, p2

    :goto_2
    move v2, v8

    goto :goto_1

    :cond_6
    iget v8, p0, Ljava/lang/String;->count:I

    goto :goto_2

    :cond_7
    move v2, v8

    goto :goto_1
.end method

.method public native length()I
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public offsetByCodePoints(II)I
    .locals 5

    iget v2, p0, Ljava/lang/String;->offset:I

    add-int v1, p1, v2

    iget-object v2, p0, Ljava/lang/String;->value:[C

    iget v3, p0, Ljava/lang/String;->offset:I

    iget v4, p0, Ljava/lang/String;->count:I

    invoke-static {v2, v3, v4, v1, p2}, Ljava/lang/Character;->offsetByCodePoints([CIIII)I

    move-result v0

    iget v2, p0, Ljava/lang/String;->offset:I

    sub-int v2, v0, v2

    return v2
.end method

.method public regionMatches(ILjava/lang/String;II)Z
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez p2, :cond_0

    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    :cond_0
    if-ltz p3, :cond_1

    iget v7, p2, Ljava/lang/String;->count:I

    sub-int/2addr v7, p3

    if-ge v7, p4, :cond_3

    :cond_1
    move v5, v6

    :cond_2
    :goto_0
    return v5

    :cond_3
    if-ltz p1, :cond_4

    iget v7, p0, Ljava/lang/String;->count:I

    sub-int/2addr v7, p1

    if-ge v7, p4, :cond_5

    :cond_4
    move v5, v6

    goto :goto_0

    :cond_5
    if-lez p4, :cond_2

    iget v7, p0, Ljava/lang/String;->offset:I

    add-int v1, v7, p1

    iget v7, p2, Ljava/lang/String;->offset:I

    add-int v2, v7, p3

    iget-object v3, p0, Ljava/lang/String;->value:[C

    iget-object v4, p2, Ljava/lang/String;->value:[C

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p4, :cond_2

    add-int v7, v1, v0

    aget-char v7, v3, v7

    add-int v8, v2, v0

    aget-char v8, v4, v8

    if-eq v7, v8, :cond_6

    move v5, v6

    goto :goto_0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public regionMatches(ZILjava/lang/String;II)Z
    .locals 9

    const/4 v6, 0x0

    if-nez p1, :cond_1

    invoke-virtual {p0, p2, p3, p4, p5}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    :cond_0
    :goto_0
    return v6

    :cond_1
    if-nez p3, :cond_2

    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "string == null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    if-ltz p2, :cond_0

    iget v7, p0, Ljava/lang/String;->count:I

    sub-int/2addr v7, p2

    if-gt p5, v7, :cond_0

    if-ltz p4, :cond_0

    iget v7, p3, Ljava/lang/String;->count:I

    sub-int/2addr v7, p4

    if-gt p5, v7, :cond_0

    iget v7, p0, Ljava/lang/String;->offset:I

    add-int/2addr p2, v7

    iget v7, p3, Ljava/lang/String;->offset:I

    add-int/2addr p4, v7

    add-int v2, p2, p5

    iget-object v4, p3, Ljava/lang/String;->value:[C

    move v3, p4

    move v5, p2

    :goto_1
    if-ge v5, v2, :cond_4

    iget-object v7, p0, Ljava/lang/String;->value:[C

    add-int/lit8 p2, v5, 0x1

    aget-char v0, v7, v5

    add-int/lit8 p4, v3, 0x1

    aget-char v1, v4, v3

    if-eq v0, v1, :cond_3

    invoke-direct {p0, v0}, Ljava/lang/String;->foldCase(C)C

    move-result v7

    invoke-direct {p0, v1}, Ljava/lang/String;->foldCase(C)C

    move-result v8

    if-ne v7, v8, :cond_0

    :cond_3
    move v3, p4

    move v5, p2

    goto :goto_1

    :cond_4
    const/4 v6, 0x1

    move p4, v3

    move p2, v5

    goto :goto_0
.end method

.method public removeSelf(C)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    iget v6, p0, Ljava/lang/String;->offset:I

    iget v7, p0, Ljava/lang/String;->offset:I

    iget v8, p0, Ljava/lang/String;->count:I

    add-int v4, v7, v8

    const/4 v5, 0x0

    const/4 v1, 0x0

    iget-object v7, p0, Ljava/lang/String;->value:[C

    if-eqz v7, :cond_0

    iget v7, p0, Ljava/lang/String;->count:I

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    iget v7, p0, Ljava/lang/String;->count:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    iget-object v7, p0, Ljava/lang/String;->value:[C

    aget-char v7, v7, v6

    if-ne v7, p1, :cond_2

    const-string p0, ""

    goto :goto_0

    :cond_2
    :goto_1
    if-ge v6, v4, :cond_3

    iget-object v7, p0, Ljava/lang/String;->value:[C

    aget-char v7, v7, v6

    if-ne v7, p1, :cond_3

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    if-lt v6, v4, :cond_4

    const-string p0, ""

    goto :goto_0

    :cond_4
    iget v7, p0, Ljava/lang/String;->offset:I

    if-eq v6, v7, :cond_5

    const/4 v1, 0x1

    sub-int v7, v4, v6

    new-array v0, v7, [C

    :cond_5
    move v2, v6

    :goto_2
    if-ge v2, v4, :cond_8

    iget-object v7, p0, Ljava/lang/String;->value:[C

    aget-char v7, v7, v2

    if-ne v7, p1, :cond_6

    if-nez v1, :cond_7

    const/4 v1, 0x1

    sub-int v7, v4, v6

    add-int/lit8 v7, v7, -0x1

    new-array v0, v7, [C

    move v3, v6

    :goto_3
    if-ge v3, v2, :cond_7

    iget-object v7, p0, Ljava/lang/String;->value:[C

    aget-char v7, v7, v3

    aput-char v7, v0, v5

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    if-eqz v1, :cond_7

    iget-object v7, p0, Ljava/lang/String;->value:[C

    aget-char v7, v7, v2

    aput-char v7, v0, v5

    add-int/lit8 v5, v5, 0x1

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    if-eqz v1, :cond_0

    new-instance p0, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {p0, v7, v5, v0}, Ljava/lang/String;-><init>(II[C)V

    goto :goto_0
.end method

.method public replace(CC)Ljava/lang/String;
    .locals 10

    const/4 v9, 0x0

    iget-object v2, p0, Ljava/lang/String;->value:[C

    iget v1, p0, Ljava/lang/String;->offset:I

    iget v0, p0, Ljava/lang/String;->count:I

    move v4, v1

    add-int v5, v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v4, v5, :cond_2

    aget-char v7, v2, v4

    if-ne v7, p1, :cond_1

    if-nez v3, :cond_0

    new-array v6, v0, [C

    invoke-static {v2, v1, v6, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v6

    sub-int/2addr v4, v1

    sub-int/2addr v5, v1

    const/4 v3, 0x1

    :cond_0
    aput-char p2, v2, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    new-instance v7, Ljava/lang/String;

    iget v8, p0, Ljava/lang/String;->count:I

    invoke-direct {v7, v9, v8, v2}, Ljava/lang/String;-><init>(II[C)V

    move-object p0, v7

    :cond_3
    return-object p0
.end method

.method public replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 12

    const/4 v11, -0x1

    if-nez p1, :cond_0

    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "target == null"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    if-nez p2, :cond_1

    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "replacement == null"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v11, :cond_2

    :goto_0
    return-object p0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_4

    iget v8, p0, Ljava/lang/String;->count:I

    add-int/lit8 v8, v8, 0x2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    mul-int v4, v8, v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ljava/lang/String;->offset:I

    :goto_1
    iget v8, p0, Ljava/lang/String;->count:I

    if-ge v0, v8, :cond_3

    iget-object v8, p0, Ljava/lang/String;->value:[C

    aget-char v8, v8, v0

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    iget v8, p0, Ljava/lang/String;->count:I

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v5, 0x0

    :cond_5
    iget-object v8, p0, Ljava/lang/String;->value:[C

    iget v9, p0, Ljava/lang/String;->offset:I

    add-int/2addr v9, v5

    sub-int v10, v1, v5

    invoke-virtual {v3, v8, v9, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v5, v1, v6

    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v11, :cond_5

    iget-object v8, p0, Ljava/lang/String;->value:[C

    iget v9, p0, Ljava/lang/String;->offset:I

    add-int/2addr v9, v5

    iget v10, p0, Ljava/lang/String;->count:I

    sub-int/2addr v10, v5

    invoke-virtual {v3, v8, v9, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public split(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 2

    invoke-static {p1, p0, p2}, Ljava/util/regex/Splitter;->fastSplit(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public startsWith(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public startsWith(Ljava/lang/String;I)Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p1, Ljava/lang/String;->count:I

    invoke-virtual {p0, p2, p1, v0, v1}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public substring(I)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    if-ltz p1, :cond_1

    iget v0, p0, Ljava/lang/String;->count:I

    if-gt p1, v0, :cond_1

    new-instance v0, Ljava/lang/String;

    iget v1, p0, Ljava/lang/String;->offset:I

    add-int/2addr v1, p1

    iget v2, p0, Ljava/lang/String;->count:I

    sub-int/2addr v2, p1

    iget-object v3, p0, Ljava/lang/String;->value:[C

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>(II[C)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Ljava/lang/String;->indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0
.end method

.method public substring(II)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    iget v0, p0, Ljava/lang/String;->count:I

    if-ne p2, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    if-ltz p1, :cond_1

    if-gt p1, p2, :cond_1

    iget v0, p0, Ljava/lang/String;->count:I

    if-gt p2, v0, :cond_1

    new-instance v0, Ljava/lang/String;

    iget v1, p0, Ljava/lang/String;->offset:I

    add-int/2addr v1, p1

    sub-int v2, p2, p1

    iget-object v3, p0, Ljava/lang/String;->value:[C

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>(II[C)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Ljava/lang/String;->startEndAndLength(II)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0
.end method

.method public toCharArray()[C
    .locals 5

    iget v1, p0, Ljava/lang/String;->count:I

    new-array v0, v1, [C

    iget-object v1, p0, Ljava/lang/String;->value:[C

    iget v2, p0, Ljava/lang/String;->offset:I

    const/4 v3, 0x0

    iget v4, p0, Ljava/lang/String;->count:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public toLowerCase()Ljava/lang/String;
    .locals 4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Ljava/lang/String;->value:[C

    iget v2, p0, Ljava/lang/String;->offset:I

    iget v3, p0, Ljava/lang/String;->count:I

    invoke-static {v0, p0, v1, v2, v3}, Ljava/lang/CaseMapper;->toLowerCase(Ljava/util/Locale;Ljava/lang/String;[CII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Ljava/lang/String;->value:[C

    iget v1, p0, Ljava/lang/String;->offset:I

    iget v2, p0, Ljava/lang/String;->count:I

    invoke-static {p1, p0, v0, v1, v2}, Ljava/lang/CaseMapper;->toLowerCase(Ljava/util/Locale;Ljava/lang/String;[CII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    return-object p0
.end method

.method public toUpperCase()Ljava/lang/String;
    .locals 4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Ljava/lang/String;->value:[C

    iget v2, p0, Ljava/lang/String;->offset:I

    iget v3, p0, Ljava/lang/String;->count:I

    invoke-static {v0, p0, v1, v2, v3}, Ljava/lang/CaseMapper;->toUpperCase(Ljava/util/Locale;Ljava/lang/String;[CII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Ljava/lang/String;->value:[C

    iget v1, p0, Ljava/lang/String;->offset:I

    iget v2, p0, Ljava/lang/String;->count:I

    invoke-static {p1, p0, v0, v1, v2}, Ljava/lang/CaseMapper;->toUpperCase(Ljava/util/Locale;Ljava/lang/String;[CII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trim()Ljava/lang/String;
    .locals 6

    const/16 v5, 0x20

    iget v2, p0, Ljava/lang/String;->offset:I

    iget v3, p0, Ljava/lang/String;->offset:I

    iget v4, p0, Ljava/lang/String;->count:I

    add-int/2addr v3, v4

    add-int/lit8 v1, v3, -0x1

    move v0, v1

    :goto_0
    if-gt v2, v0, :cond_0

    iget-object v3, p0, Ljava/lang/String;->value:[C

    aget-char v3, v3, v2

    if-gt v3, v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-lt v0, v2, :cond_1

    iget-object v3, p0, Ljava/lang/String;->value:[C

    aget-char v3, v3, v0

    if-gt v3, v5, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    iget v3, p0, Ljava/lang/String;->offset:I

    if-ne v2, v3, :cond_2

    if-ne v0, v1, :cond_2

    :goto_2
    return-object p0

    :cond_2
    new-instance v3, Ljava/lang/String;

    sub-int v4, v0, v2

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Ljava/lang/String;->value:[C

    invoke-direct {v3, v2, v4, v5}, Ljava/lang/String;-><init>(II[C)V

    move-object p0, v3

    goto :goto_2
.end method
