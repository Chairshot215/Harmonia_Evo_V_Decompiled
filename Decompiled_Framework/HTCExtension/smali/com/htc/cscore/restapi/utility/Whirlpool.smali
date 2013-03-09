.class public Lcom/htc/cscore/restapi/utility/Whirlpool;
.super Ljava/lang/Object;
.source "Whirlpool.java"


# static fields
.field private static C:[[J = null

.field public static final DIGESTBITS:I = 0x200

.field public static final DIGESTBYTES:I = 0x40

.field private static final LONG_ITERATION:I = 0x5f5e100

.field protected static final R:I = 0xa

.field private static rc:[J = null

.field private static final sbox:Ljava/lang/String; = "\u1823\uc6e8\u87b8\u014f\u36a6\ud2f5\u796f\u9152\u60bc\u9b8e\ua30c\u7b35\u1de0\ud7c2\u2e4b\ufe57\u1577\u37e5\u9ff0\u4ada\u58c9\u290a\ub1a0\u6b85\ubd5d\u10f4\ucb3e\u0567\ue427\u418b\ua77d\u95d8\ufbee\u7c66\udd17\u479e\uca2d\ubf07\uad5a\u8333\u6302\uaa71\uc819\u49d9\uf2e3\u5b88\u9a26\u32b0\ue90f\ud580\ubecd\u3448\uff7a\u905f\u2068\u1aae\ub454\u9322\u64f1\u7312\u4008\uc3ec\udba1\u8d3d\u9700\ucf2b\u7682\ud61b\ub5af\u6a50\u45f3\u30ef\u3f55\ua2ea\u65ba\u2fc0\ude1c\ufd4d\u9275\u068a\ub2e6\u0e1f\u62d4\ua896\uf9c5\u2559\u8472\u394c\u5e78\u388c\ud1a5\ue261\ub321\u9c1e\u43c7\ufc04\u5199\u6d0d\ufadf\u7e24\u3bab\uce11\u8f4e\ub7eb\u3c81\u94f7\ub913\u2cd3\ue76e\uc403\u5644\u7fa9\u2abb\uc153\udc0b\u9d6c\u3174\uf646\uac89\u14e1\u163a\u6909\u70b6\ud0ed\ucc42\u98a4\u285c\uf886"


# instance fields
.field protected K:[J

.field protected L:[J

.field protected bitLength:[B

.field protected block:[J

.field protected buffer:[B

.field protected bufferBits:I

.field protected bufferPos:I

.field protected hash:[J

.field protected state:[J


# direct methods
.method static constructor <clinit>()V
    .locals 26

    const/16 v19, 0x8

    const/16 v20, 0x100

    filled-new-array/range {v19 .. v20}, [I

    move-result-object v19

    sget-object v20, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [[J

    sput-object v19, Lcom/htc/cscore/restapi/utility/Whirlpool;->C:[[J

    const/16 v19, 0xb

    move/from16 v0, v19

    new-array v0, v0, [J

    move-object/from16 v19, v0

    sput-object v19, Lcom/htc/cscore/restapi/utility/Whirlpool;->rc:[J

    const/16 v18, 0x0

    :goto_0
    const/16 v19, 0x100

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    const-string v19, "\u1823\uc6e8\u87b8\u014f\u36a6\ud2f5\u796f\u9152\u60bc\u9b8e\ua30c\u7b35\u1de0\ud7c2\u2e4b\ufe57\u1577\u37e5\u9ff0\u4ada\u58c9\u290a\ub1a0\u6b85\ubd5d\u10f4\ucb3e\u0567\ue427\u418b\ua77d\u95d8\ufbee\u7c66\udd17\u479e\uca2d\ubf07\uad5a\u8333\u6302\uaa71\uc819\u49d9\uf2e3\u5b88\u9a26\u32b0\ue90f\ud580\ubecd\u3448\uff7a\u905f\u2068\u1aae\ub454\u9322\u64f1\u7312\u4008\uc3ec\udba1\u8d3d\u9700\ucf2b\u7682\ud61b\ub5af\u6a50\u45f3\u30ef\u3f55\ua2ea\u65ba\u2fc0\ude1c\ufd4d\u9275\u068a\ub2e6\u0e1f\u62d4\ua896\uf9c5\u2559\u8472\u394c\u5e78\u388c\ud1a5\ue261\ub321\u9c1e\u43c7\ufc04\u5199\u6d0d\ufadf\u7e24\u3bab\uce11\u8f4e\ub7eb\u3c81\u94f7\ub913\u2cd3\ue76e\uc403\u5644\u7fa9\u2abb\uc153\udc0b\u9d6c\u3174\uf646\uac89\u14e1\u163a\u6909\u70b6\ud0ed\ucc42\u98a4\u285c\uf886"

    div-int/lit8 v20, v18, 0x2

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->charAt(I)C

    move-result v2

    and-int/lit8 v19, v18, 0x1

    if-nez v19, :cond_3

    ushr-int/lit8 v19, v2, 0x8

    move/from16 v0, v19

    int-to-long v6, v0

    :goto_1
    const/16 v19, 0x1

    shl-long v8, v6, v19

    const-wide/16 v19, 0x100

    cmp-long v19, v8, v19

    if-ltz v19, :cond_0

    const-wide/16 v19, 0x11d

    xor-long v8, v8, v19

    :cond_0
    const/16 v19, 0x1

    shl-long v10, v8, v19

    const-wide/16 v19, 0x100

    cmp-long v19, v10, v19

    if-ltz v19, :cond_1

    const-wide/16 v19, 0x11d

    xor-long v10, v10, v19

    :cond_1
    xor-long v12, v10, v6

    const/16 v19, 0x1

    shl-long v14, v10, v19

    const-wide/16 v19, 0x100

    cmp-long v19, v14, v19

    if-ltz v19, :cond_2

    const-wide/16 v19, 0x11d

    xor-long v14, v14, v19

    :cond_2
    xor-long v16, v14, v6

    sget-object v19, Lcom/htc/cscore/restapi/utility/Whirlpool;->C:[[J

    const/16 v20, 0x0

    aget-object v19, v19, v20

    const/16 v20, 0x38

    shl-long v20, v6, v20

    const/16 v22, 0x30

    shl-long v22, v6, v22

    or-long v20, v20, v22

    const/16 v22, 0x28

    shl-long v22, v10, v22

    or-long v20, v20, v22

    const/16 v22, 0x20

    shl-long v22, v6, v22

    or-long v20, v20, v22

    const/16 v22, 0x18

    shl-long v22, v14, v22

    or-long v20, v20, v22

    const/16 v22, 0x10

    shl-long v22, v12, v22

    or-long v20, v20, v22

    const/16 v22, 0x8

    shl-long v22, v8, v22

    or-long v20, v20, v22

    or-long v20, v20, v16

    aput-wide v20, v19, v18

    const/4 v5, 0x1

    :goto_2
    const/16 v19, 0x8

    move/from16 v0, v19

    if-ge v5, v0, :cond_4

    sget-object v19, Lcom/htc/cscore/restapi/utility/Whirlpool;->C:[[J

    aget-object v19, v19, v5

    sget-object v20, Lcom/htc/cscore/restapi/utility/Whirlpool;->C:[[J

    add-int/lit8 v21, v5, -0x1

    aget-object v20, v20, v21

    aget-wide v20, v20, v18

    const/16 v22, 0x8

    ushr-long v20, v20, v22

    sget-object v22, Lcom/htc/cscore/restapi/utility/Whirlpool;->C:[[J

    add-int/lit8 v23, v5, -0x1

    aget-object v22, v22, v23

    aget-wide v22, v22, v18

    const/16 v24, 0x38

    shl-long v22, v22, v24

    or-long v20, v20, v22

    aput-wide v20, v19, v18

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    and-int/lit16 v0, v2, 0xff

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v6, v0

    goto/16 :goto_1

    :cond_4
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    :cond_5
    sget-object v19, Lcom/htc/cscore/restapi/utility/Whirlpool;->rc:[J

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    aput-wide v21, v19, v20

    const/4 v4, 0x1

    :goto_3
    const/16 v19, 0xa

    move/from16 v0, v19

    if-gt v4, v0, :cond_6

    add-int/lit8 v19, v4, -0x1

    mul-int/lit8 v3, v19, 0x8

    sget-object v19, Lcom/htc/cscore/restapi/utility/Whirlpool;->rc:[J

    sget-object v20, Lcom/htc/cscore/restapi/utility/Whirlpool;->C:[[J

    const/16 v21, 0x0

    aget-object v20, v20, v21

    aget-wide v20, v20, v3

    const-wide/high16 v22, -0x100

    and-long v20, v20, v22

    sget-object v22, Lcom/htc/cscore/restapi/utility/Whirlpool;->C:[[J

    const/16 v23, 0x1

    aget-object v22, v22, v23

    add-int/lit8 v23, v3, 0x1

    aget-wide v22, v22, v23

    const-wide/high16 v24, 0xff

    and-long v22, v22, v24

    xor-long v20, v20, v22

    sget-object v22, Lcom/htc/cscore/restapi/utility/Whirlpool;->C:[[J

    const/16 v23, 0x2

    aget-object v22, v22, v23

    add-int/lit8 v23, v3, 0x2

    aget-wide v22, v22, v23

    const-wide v24, 0xff0000000000L

    and-long v22, v22, v24

    xor-long v20, v20, v22

    sget-object v22, Lcom/htc/cscore/restapi/utility/Whirlpool;->C:[[J

    const/16 v23, 0x3

    aget-object v22, v22, v23

    add-int/lit8 v23, v3, 0x3

    aget-wide v22, v22, v23

    const-wide v24, 0xff00000000L

    and-long v22, v22, v24

    xor-long v20, v20, v22

    sget-object v22, Lcom/htc/cscore/restapi/utility/Whirlpool;->C:[[J

    const/16 v23, 0x4

    aget-object v22, v22, v23

    add-int/lit8 v23, v3, 0x4

    aget-wide v22, v22, v23

    const-wide v24, 0xff000000L

    and-long v22, v22, v24

    xor-long v20, v20, v22

    sget-object v22, Lcom/htc/cscore/restapi/utility/Whirlpool;->C:[[J

    const/16 v23, 0x5

    aget-object v22, v22, v23

    add-int/lit8 v23, v3, 0x5

    aget-wide v22, v22, v23

    const-wide/32 v24, 0xff0000

    and-long v22, v22, v24

    xor-long v20, v20, v22

    sget-object v22, Lcom/htc/cscore/restapi/utility/Whirlpool;->C:[[J

    const/16 v23, 0x6

    aget-object v22, v22, v23

    add-int/lit8 v23, v3, 0x6

    aget-wide v22, v22, v23

    const-wide/32 v24, 0xff00

    and-long v22, v22, v24

    xor-long v20, v20, v22

    sget-object v22, Lcom/htc/cscore/restapi/utility/Whirlpool;->C:[[J

    const/16 v23, 0x7

    aget-object v22, v22, v23

    add-int/lit8 v23, v3, 0x7

    aget-wide v22, v22, v23

    const-wide/16 v24, 0xff

    and-long v22, v22, v24

    xor-long v20, v20, v22

    aput-wide v20, v19, v4

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    :cond_6
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x8

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bitLength:[B

    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->buffer:[B

    iput v2, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferBits:I

    iput v2, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferPos:I

    new-array v0, v1, [J

    iput-object v0, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->hash:[J

    new-array v0, v1, [J

    iput-object v0, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->K:[J

    new-array v0, v1, [J

    iput-object v0, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->L:[J

    new-array v0, v1, [J

    iput-object v0, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->block:[J

    new-array v0, v1, [J

    iput-object v0, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->state:[J

    return-void
.end method

.method public static WhirlPoolHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v2, 0x40

    new-array v0, v2, [B

    new-instance v1, Lcom/htc/cscore/restapi/utility/Whirlpool;

    invoke-direct {v1}, Lcom/htc/cscore/restapi/utility/Whirlpool;-><init>()V

    invoke-virtual {v1, p0}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEadd(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEfinalize([B)V

    invoke-static {v0}, Lcom/htc/cscore/restapi/utility/Whirlpool;->display([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static display([B)Ljava/lang/String;
    .locals 6

    array-length v4, p0

    mul-int/lit8 v4, v4, 0x2

    new-array v3, v4, [C

    const-string v1, "0123456789ABCDEF"

    const/4 v2, 0x0

    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_0

    aget-byte v4, p0, v2

    and-int/lit16 v0, v4, 0xff

    mul-int/lit8 v4, v2, 0x2

    ushr-int/lit8 v5, v0, 0x4

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v3, v4

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v5, v0, 0xf

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/htc/cscore/restapi/utility/Whirlpool;->makeISOTestVectors()V

    return-void
.end method

.method public static makeISOTestVectors()V
    .locals 6

    new-instance v2, Lcom/htc/cscore/restapi/utility/Whirlpool;

    invoke-direct {v2}, Lcom/htc/cscore/restapi/utility/Whirlpool;-><init>()V

    const/16 v3, 0x40

    new-array v1, v3, [B

    const v3, 0xf4240

    new-array v0, v3, [B

    const/4 v3, 0x0

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([BB)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "1. In this example the data-string is the empty string, i.e. the string of length zero.\n"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEinit()V

    invoke-virtual {v2, v1}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEfinalize([B)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The hash-code is the following 512-bit string.\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/htc/cscore/restapi/utility/Whirlpool;->display([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "2. In this example the data-string consists of a single byte, namely the ASCII-coded version of the letter \'a\'.\n"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEinit()V

    const-string v3, "a"

    invoke-virtual {v2, v3}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEadd(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEfinalize([B)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The hash-code is the following 512-bit string.\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/htc/cscore/restapi/utility/Whirlpool;->display([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "3. In this example the data-string is the three-byte string consisting of the ASCII-coded version of \'abc\'.\n"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEinit()V

    const-string v3, "abc"

    invoke-virtual {v2, v3}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEadd(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEfinalize([B)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The hash-code is the following 512-bit string.\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/htc/cscore/restapi/utility/Whirlpool;->display([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "4. In this example the data-string is the 14-byte string consisting of the ASCII-coded version of \'message digest\'.\n"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEinit()V

    const-string v3, "message digest"

    invoke-virtual {v2, v3}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEadd(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEfinalize([B)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The hash-code is the following 512-bit string.\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/htc/cscore/restapi/utility/Whirlpool;->display([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "5. In this example the data-string is the 26-byte string consisting of the ASCII-coded version of \'abcdefghijklmnopqrstuvwxyz\'.\n"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEinit()V

    const-string v3, "abcdefghijklmnopqrstuvwxyz"

    invoke-virtual {v2, v3}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEadd(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEfinalize([B)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The hash-code is the following 512-bit string.\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/htc/cscore/restapi/utility/Whirlpool;->display([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "6. In this example the data-string is the 62-byte string consisting of the ASCII-coded version of \'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789\'.\n"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEinit()V

    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"

    invoke-virtual {v2, v3}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEadd(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEfinalize([B)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The hash-code is the following 512-bit string.\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/htc/cscore/restapi/utility/Whirlpool;->display([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "7. In this example the data-string is the 80-byte string consisting of the ASCII-coded version of eight repetitions of \'1234567890\'.\n"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEinit()V

    const-string v3, "12345678901234567890123456789012345678901234567890123456789012345678901234567890"

    invoke-virtual {v2, v3}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEadd(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEfinalize([B)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The hash-code is the following 512-bit string.\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/htc/cscore/restapi/utility/Whirlpool;->display([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "8. In this example the data-string is the 32-byte string consisting of the ASCII-coded version of \'abcdbcdecdefdefgefghfghighijhijk\'.\n"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEinit()V

    const-string v3, "abcdbcdecdefdefgefghfghighijhijk"

    invoke-virtual {v2, v3}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEadd(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEfinalize([B)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The hash-code is the following 512-bit string.\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/htc/cscore/restapi/utility/Whirlpool;->display([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/16 v3, 0x61

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([BB)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "9. In this example the data-string is the 1000000-byte string consisting of the ASCII-coded version of \'a\' repeated 10^6 times.\n"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEinit()V

    const-wide/32 v3, 0x7a1200

    invoke-virtual {v2, v0, v3, v4}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEadd([BJ)V

    invoke-virtual {v2, v1}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEfinalize([B)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The hash-code is the following 512-bit string.\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/htc/cscore/restapi/utility/Whirlpool;->display([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static makeNESSIETestVectors()V
    .locals 13

    const-wide/16 v11, 0x200

    const/16 v10, 0x80

    const/16 v9, 0x40

    const/4 v8, 0x0

    new-instance v4, Lcom/htc/cscore/restapi/utility/Whirlpool;

    invoke-direct {v4}, Lcom/htc/cscore/restapi/utility/Whirlpool;-><init>()V

    new-array v1, v9, [B

    new-array v0, v10, [B

    invoke-static {v0, v8}, Ljava/util/Arrays;->fill([BB)V

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Message digests of strings of 0-bits and length L:"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    const/16 v5, 0x400

    if-ge v2, v5, :cond_0

    invoke-virtual {v4}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEinit()V

    int-to-long v5, v2

    invoke-virtual {v4, v0, v5, v6}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEadd([BJ)V

    invoke-virtual {v4, v1}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEfinalize([B)V

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "     "

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    L ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Lcom/htc/cscore/restapi/utility/Whirlpool;->display([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Message digests of all 512-bit strings S containing a single 1-bit:"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-array v0, v9, [B

    invoke-static {v0, v8}, Ljava/util/Arrays;->fill([BB)V

    const/4 v2, 0x0

    :goto_1
    const/16 v5, 0x200

    if-ge v2, v5, :cond_1

    div-int/lit8 v5, v2, 0x8

    aget-byte v6, v0, v5

    rem-int/lit8 v7, v2, 0x8

    ushr-int v7, v10, v7

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    invoke-virtual {v4}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEinit()V

    invoke-virtual {v4, v0, v11, v12}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEadd([BJ)V

    invoke-virtual {v4, v1}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEfinalize([B)V

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    S = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Lcom/htc/cscore/restapi/utility/Whirlpool;->display([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Lcom/htc/cscore/restapi/utility/Whirlpool;->display([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    div-int/lit8 v5, v2, 0x8

    aput-byte v8, v0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_2
    array-length v5, v1

    if-ge v2, v5, :cond_2

    aput-byte v8, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_3
    const v5, 0x5f5e100

    if-ge v2, v5, :cond_3

    invoke-virtual {v4}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEinit()V

    invoke-virtual {v4, v1, v11, v12}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEadd([BJ)V

    invoke-virtual {v4, v1}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEfinalize([B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Iterated message digest computation (100000000 times): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Lcom/htc/cscore/restapi/utility/Whirlpool;->display([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public NESSIEadd(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v0, v2, [B

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    array-length v2, v0

    mul-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEadd([BJ)V

    :cond_1
    return-void
.end method

.method public NESSIEadd([BJ)V
    .locals 12

    const/4 v5, 0x0

    long-to-int v8, p2

    and-int/lit8 v8, v8, 0x7

    rsub-int/lit8 v8, v8, 0x8

    and-int/lit8 v4, v8, 0x7

    iget v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferBits:I

    and-int/lit8 v1, v8, 0x7

    move-wide v6, p2

    const/16 v3, 0x1f

    const/4 v2, 0x0

    :goto_0
    if-ltz v3, :cond_2

    iget-object v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bitLength:[B

    aget-byte v8, v8, v3

    and-int/lit16 v8, v8, 0xff

    long-to-int v9, v6

    and-int/lit16 v9, v9, 0xff

    add-int/2addr v8, v9

    add-int/2addr v2, v8

    iget-object v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bitLength:[B

    int-to-byte v9, v2

    aput-byte v9, v8, v3

    ushr-int/lit8 v2, v2, 0x8

    const/16 v8, 0x8

    ushr-long/2addr v6, v8

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    iget-object v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->buffer:[B

    iget v9, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferPos:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferPos:I

    aget-byte v10, v8, v9

    ushr-int v11, v0, v1

    or-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    iget v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferBits:I

    rsub-int/lit8 v9, v1, 0x8

    add-int/2addr v8, v9

    iput v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferBits:I

    iget v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferBits:I

    const/16 v9, 0x200

    if-ne v8, v9, :cond_1

    invoke-virtual {p0}, Lcom/htc/cscore/restapi/utility/Whirlpool;->processBuffer()V

    const/4 v8, 0x0

    iput v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferPos:I

    iput v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferBits:I

    :cond_1
    iget-object v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->buffer:[B

    iget v9, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferPos:I

    rsub-int/lit8 v10, v1, 0x8

    shl-int v10, v0, v10

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    iget v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferBits:I

    add-int/2addr v8, v1

    iput v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferBits:I

    const-wide/16 v8, 0x8

    sub-long/2addr p2, v8

    add-int/lit8 v5, v5, 0x1

    :cond_2
    const-wide/16 v8, 0x8

    cmp-long v8, p2, v8

    if-lez v8, :cond_4

    aget-byte v8, p1, v5

    shl-int/2addr v8, v4

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v9, v5, 0x1

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    rsub-int/lit8 v10, v4, 0x8

    ushr-int/2addr v9, v10

    or-int v0, v8, v9

    if-ltz v0, :cond_3

    const/16 v8, 0x100

    if-lt v0, v8, :cond_0

    :cond_3
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "LOGIC ERROR"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_4
    const-wide/16 v8, 0x0

    cmp-long v8, p2, v8

    if-lez v8, :cond_5

    aget-byte v8, p1, v5

    shl-int/2addr v8, v4

    and-int/lit16 v0, v8, 0xff

    iget-object v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->buffer:[B

    iget v9, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferPos:I

    aget-byte v10, v8, v9

    ushr-int v11, v0, v1

    or-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    :goto_1
    int-to-long v8, v1

    add-long/2addr v8, p2

    const-wide/16 v10, 0x8

    cmp-long v8, v8, v10

    if-gez v8, :cond_6

    iget v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferBits:I

    int-to-long v8, v8

    add-long/2addr v8, p2

    long-to-int v8, v8

    iput v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferBits:I

    :goto_2
    return-void

    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    iget v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferPos:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferPos:I

    iget v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferBits:I

    rsub-int/lit8 v9, v1, 0x8

    add-int/2addr v8, v9

    iput v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferBits:I

    rsub-int/lit8 v8, v1, 0x8

    int-to-long v8, v8

    sub-long/2addr p2, v8

    iget v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferBits:I

    const/16 v9, 0x200

    if-ne v8, v9, :cond_7

    invoke-virtual {p0}, Lcom/htc/cscore/restapi/utility/Whirlpool;->processBuffer()V

    const/4 v8, 0x0

    iput v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferPos:I

    iput v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferBits:I

    :cond_7
    iget-object v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->buffer:[B

    iget v9, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferPos:I

    rsub-int/lit8 v10, v1, 0x8

    shl-int v10, v0, v10

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    iget v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferBits:I

    long-to-int v9, p2

    add-int/2addr v8, v9

    iput v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferBits:I

    goto :goto_2
.end method

.method public NESSIEfinalize([B)V
    .locals 12

    const/16 v11, 0x8

    const/4 v10, 0x0

    const/16 v9, 0x20

    iget-object v4, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->buffer:[B

    iget v5, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferPos:I

    aget-byte v6, v4, v5

    const/16 v7, 0x80

    iget v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferBits:I

    and-int/lit8 v8, v8, 0x7

    ushr-int/2addr v7, v8

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    iget v4, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferPos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferPos:I

    iget v4, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferPos:I

    if-le v4, v9, :cond_1

    :goto_0
    iget v4, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferPos:I

    const/16 v5, 0x40

    if-ge v4, v5, :cond_0

    iget-object v4, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->buffer:[B

    iget v5, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferPos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferPos:I

    aput-byte v10, v4, v5

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/restapi/utility/Whirlpool;->processBuffer()V

    iput v10, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferPos:I

    :cond_1
    :goto_1
    iget v4, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferPos:I

    if-ge v4, v9, :cond_2

    iget-object v4, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->buffer:[B

    iget v5, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferPos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferPos:I

    aput-byte v10, v4, v5

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bitLength:[B

    iget-object v5, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->buffer:[B

    invoke-static {v4, v10, v5, v9, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lcom/htc/cscore/restapi/utility/Whirlpool;->processBuffer()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2
    if-ge v2, v11, :cond_3

    iget-object v4, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->hash:[J

    aget-wide v0, v4, v2

    const/16 v4, 0x38

    ushr-long v4, v0, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x30

    ushr-long v5, v0, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    add-int/lit8 v4, v3, 0x2

    const/16 v5, 0x28

    ushr-long v5, v0, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    add-int/lit8 v4, v3, 0x3

    ushr-long v5, v0, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    add-int/lit8 v4, v3, 0x4

    const/16 v5, 0x18

    ushr-long v5, v0, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    add-int/lit8 v4, v3, 0x5

    const/16 v5, 0x10

    ushr-long v5, v0, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    add-int/lit8 v4, v3, 0x6

    ushr-long v5, v0, v11

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    add-int/lit8 v4, v3, 0x7

    long-to-int v5, v0

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x8

    goto :goto_2

    :cond_3
    return-void
.end method

.method public NESSIEinit()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bitLength:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    iput v1, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferPos:I

    iput v1, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferBits:I

    iget-object v0, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->buffer:[B

    aput-byte v1, v0, v1

    iget-object v0, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->hash:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    return-void
.end method

.method protected processBuffer()V
    .locals 15

    const-wide/16 v13, 0xff

    const/16 v12, 0x8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, v12, :cond_0

    iget-object v5, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->block:[J

    iget-object v6, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->buffer:[B

    aget-byte v6, v6, v1

    int-to-long v6, v6

    const/16 v8, 0x38

    shl-long/2addr v6, v8

    iget-object v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->buffer:[B

    add-int/lit8 v9, v1, 0x1

    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long/2addr v8, v13

    const/16 v10, 0x30

    shl-long/2addr v8, v10

    xor-long/2addr v6, v8

    iget-object v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->buffer:[B

    add-int/lit8 v9, v1, 0x2

    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long/2addr v8, v13

    const/16 v10, 0x28

    shl-long/2addr v8, v10

    xor-long/2addr v6, v8

    iget-object v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->buffer:[B

    add-int/lit8 v9, v1, 0x3

    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long/2addr v8, v13

    const/16 v10, 0x20

    shl-long/2addr v8, v10

    xor-long/2addr v6, v8

    iget-object v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->buffer:[B

    add-int/lit8 v9, v1, 0x4

    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long/2addr v8, v13

    const/16 v10, 0x18

    shl-long/2addr v8, v10

    xor-long/2addr v6, v8

    iget-object v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->buffer:[B

    add-int/lit8 v9, v1, 0x5

    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long/2addr v8, v13

    const/16 v10, 0x10

    shl-long/2addr v8, v10

    xor-long/2addr v6, v8

    iget-object v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->buffer:[B

    add-int/lit8 v9, v1, 0x6

    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long/2addr v8, v13

    shl-long/2addr v8, v12

    xor-long/2addr v6, v8

    iget-object v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->buffer:[B

    add-int/lit8 v9, v1, 0x7

    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long/2addr v8, v13

    xor-long/2addr v6, v8

    aput-wide v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v12, :cond_1

    iget-object v5, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->state:[J

    iget-object v6, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->block:[J

    aget-wide v6, v6, v0

    iget-object v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->K:[J

    iget-object v9, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->hash:[J

    aget-wide v9, v9, v0

    aput-wide v9, v8, v0

    xor-long/2addr v6, v9

    aput-wide v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    :goto_2
    const/16 v5, 0xa

    if-gt v2, v5, :cond_8

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v12, :cond_3

    iget-object v5, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->L:[J

    const-wide/16 v6, 0x0

    aput-wide v6, v5, v0

    const/4 v4, 0x0

    const/16 v3, 0x38

    :goto_4
    if-ge v4, v12, :cond_2

    iget-object v5, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->L:[J

    aget-wide v6, v5, v0

    sget-object v8, Lcom/htc/cscore/restapi/utility/Whirlpool;->C:[[J

    aget-object v8, v8, v4

    iget-object v9, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->K:[J

    sub-int v10, v0, v4

    and-int/lit8 v10, v10, 0x7

    aget-wide v9, v9, v10

    ushr-long/2addr v9, v3

    long-to-int v9, v9

    and-int/lit16 v9, v9, 0xff

    aget-wide v8, v8, v9

    xor-long/2addr v6, v8

    aput-wide v6, v5, v0

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, -0x8

    goto :goto_4

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v12, :cond_4

    iget-object v5, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->K:[J

    iget-object v6, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->L:[J

    aget-wide v6, v6, v0

    aput-wide v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_4
    iget-object v5, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->K:[J

    const/4 v6, 0x0

    aget-wide v7, v5, v6

    sget-object v9, Lcom/htc/cscore/restapi/utility/Whirlpool;->rc:[J

    aget-wide v9, v9, v2

    xor-long/2addr v7, v9

    aput-wide v7, v5, v6

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v12, :cond_6

    iget-object v5, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->L:[J

    iget-object v6, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->K:[J

    aget-wide v6, v6, v0

    aput-wide v6, v5, v0

    const/4 v4, 0x0

    const/16 v3, 0x38

    :goto_7
    if-ge v4, v12, :cond_5

    iget-object v5, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->L:[J

    aget-wide v6, v5, v0

    sget-object v8, Lcom/htc/cscore/restapi/utility/Whirlpool;->C:[[J

    aget-object v8, v8, v4

    iget-object v9, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->state:[J

    sub-int v10, v0, v4

    and-int/lit8 v10, v10, 0x7

    aget-wide v9, v9, v10

    ushr-long/2addr v9, v3

    long-to-int v9, v9

    and-int/lit16 v9, v9, 0xff

    aget-wide v8, v8, v9

    xor-long/2addr v6, v8

    aput-wide v6, v5, v0

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, -0x8

    goto :goto_7

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    :goto_8
    if-ge v0, v12, :cond_7

    iget-object v5, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->state:[J

    iget-object v6, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->L:[J

    aget-wide v6, v6, v0

    aput-wide v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_8
    const/4 v0, 0x0

    :goto_9
    if-ge v0, v12, :cond_9

    iget-object v5, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->hash:[J

    aget-wide v6, v5, v0

    iget-object v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->state:[J

    aget-wide v8, v8, v0

    iget-object v10, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->block:[J

    aget-wide v10, v10, v0

    xor-long/2addr v8, v10

    xor-long/2addr v6, v8

    aput-wide v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_9
    return-void
.end method
