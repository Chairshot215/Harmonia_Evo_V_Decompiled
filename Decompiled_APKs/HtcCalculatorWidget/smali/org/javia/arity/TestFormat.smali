.class Lorg/javia/arity/TestFormat;
.super Ljava/lang/Object;
.source "UnitTest.java"


# static fields
.field static cases:[Lorg/javia/arity/FormatCase;

.field static sizeCases:[Lorg/javia/arity/SizeCase;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x1

    const/16 v9, 0x9

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 276
    const/16 v0, 0x27

    new-array v0, v0, [Lorg/javia/arity/FormatCase;

    new-instance v1, Lorg/javia/arity/FormatCase;

    const-wide v2, 0x3fb999999999999aL

    const-string v4, "0.1"

    invoke-direct {v1, v7, v2, v3, v4}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/FormatCase;

    const-wide v2, 0x3fbeb851eb851eb8L

    const-string v4, "0.12"

    invoke-direct {v1, v7, v2, v3, v4}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v1, v0, v10

    new-instance v1, Lorg/javia/arity/FormatCase;

    const-wide v2, 0x3f50624dd2f1a9fcL

    const-string v4, "0.001"

    invoke-direct {v1, v7, v2, v3, v4}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v1, v0, v8

    const/4 v1, 0x3

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide v3, 0x3f53a92a30553261L

    const-string v5, "0.0012"

    invoke-direct {v2, v7, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide v3, 0x3e7ad7f29abcaf48L

    const-string v5, "1E-7"

    invoke-direct {v2, v7, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    new-instance v1, Lorg/javia/arity/FormatCase;

    const-wide v2, 0x3e801b2b29a4692bL

    const-string v4, "1.2E-7"

    invoke-direct {v1, v7, v2, v3, v4}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v1, v0, v11

    const/4 v1, 0x6

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide v3, 0x3fbf9add3746f62eL

    const-string v5, "0.123456789012345"

    invoke-direct {v2, v7, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide/16 v3, 0x0

    const-string v5, "0"

    invoke-direct {v2, v7, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide/high16 v3, 0x3ff0

    const-string v5, "1"

    invoke-direct {v2, v7, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    new-instance v1, Lorg/javia/arity/FormatCase;

    const-wide/high16 v2, 0x4028

    const-string v4, "12"

    invoke-direct {v1, v7, v2, v3, v4}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v1, v0, v9

    const/16 v1, 0xa

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide v3, 0x41d26580b4800000L

    const-string v5, "1234567890"

    invoke-direct {v2, v7, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide v3, 0x41cdcd6500000000L

    const-string v5, "1000000000"

    invoke-direct {v2, v7, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide v3, 0x3ff3c0ca428c59ddL

    const-string v5, "1.23456789012345"

    invoke-direct {v2, v7, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide v3, 0x40c81cd6e63c53b2L

    const-string v5, "12345.6789012345"

    invoke-direct {v2, v7, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide v3, 0x41d26580b487e69bL

    const-string v5, "1234567890.12345"

    invoke-direct {v2, v7, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide v3, 0x42dc12218377de40L

    const-string v5, "1.23456789012345E14"

    invoke-direct {v2, v7, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide v3, 0x42d6bcc41e900000L

    const-string v5, "1E14"

    invoke-direct {v2, v7, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide v3, 0x42db48eb57e00000L

    const-string v5, "1.2E14"

    invoke-direct {v2, v7, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide v3, 0x42d6bcc41e900040L

    const-string v5, "1.00000000000001E14"

    invoke-direct {v2, v7, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide v3, 0x3fb999999999999aL

    const-string v5, "0.1"

    invoke-direct {v2, v8, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide v3, 0x3e801b2b29a4692bL

    const-string v5, "1.2E-7"

    invoke-direct {v2, v8, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide v3, 0x3fbf9add3746f62eL

    const-string v5, "0.12345678901235"

    invoke-direct {v2, v8, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide/16 v3, 0x0

    const-string v5, "0"

    invoke-direct {v2, v8, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide v3, 0x3ff3c0ca428c59ddL

    const-string v5, "1.2345678901235"

    invoke-direct {v2, v8, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Lorg/javia/arity/FormatCase;

    const/4 v3, 0x3

    const-wide v4, 0x3ff3c0ca428c59ddL

    const-string v6, "1.234567890123"

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide v3, 0x40c81cd6e63c53b2L

    const-string v5, "12345.6789012345"

    invoke-direct {v2, v7, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide v3, 0x41d26580b487e69bL

    const-string v5, "1234567890.1235"

    invoke-direct {v2, v8, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Lorg/javia/arity/FormatCase;

    const/4 v3, 0x3

    const-wide v4, 0x42dc12218377de40L

    const-string v6, "1.234567890123E14"

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide v3, 0x42d6bcc41e900040L

    const-string v5, "1E14"

    invoke-direct {v2, v8, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide v3, 0x4345ee2a2eb5a5c4L

    const-string v5, "1.2345678901234568E16"

    invoke-direct {v2, v7, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide v3, 0x4345ee2a2eb5a5c4L

    const-string v5, "1.2345678901235E16"

    invoke-direct {v2, v8, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide v3, 0x4376345785d8a000L

    const-string v5, "1E17"

    invoke-direct {v2, v7, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide v3, 0x4341c37937e08000L

    const-string v5, "1E16"

    invoke-direct {v2, v7, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide v3, 0x430c6bf52633fff8L

    const-string v5, "9.99999999999999E14"

    invoke-direct {v2, v7, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide v3, 0x430c6bf52633fff8L

    const-string v5, "1E15"

    invoke-direct {v2, v8, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide v3, 0x430c6bf52633ffd0L

    const-string v5, "9.9999999999999E14"

    invoke-direct {v2, v8, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide v3, 0x3ff00014f8b588e3L

    invoke-static {v3, v4}, Lorg/javia/arity/MoreMath;->log2(D)D

    move-result-wide v3

    const-string v5, "0.000028853612282487"

    invoke-direct {v2, v8, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide v3, 0x3f3a36e2eb1c432dL

    const-string v5, "0.0004"

    invoke-direct {v2, v7, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide v3, 0x46293e5939a08ceaL

    const-string v5, "1E30"

    invoke-direct {v2, v7, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Lorg/javia/arity/TestFormat;->cases:[Lorg/javia/arity/FormatCase;

    .line 346
    const/16 v0, 0xf

    new-array v0, v0, [Lorg/javia/arity/SizeCase;

    new-instance v1, Lorg/javia/arity/SizeCase;

    const-string v2, "1111111110"

    const-string v3, "1.11111E9"

    invoke-direct {v1, v9, v2, v3}, Lorg/javia/arity/SizeCase;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/SizeCase;

    const/16 v2, 0xa

    const-string v3, "1111111110"

    const-string v4, "1111111110"

    invoke-direct {v1, v2, v3, v4}, Lorg/javia/arity/SizeCase;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v10

    new-instance v1, Lorg/javia/arity/SizeCase;

    const/16 v2, 0xa

    const-string v3, "11111111110"

    const-string v4, "1.11111E10"

    invoke-direct {v1, v2, v3, v4}, Lorg/javia/arity/SizeCase;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v8

    const/4 v1, 0x3

    new-instance v2, Lorg/javia/arity/SizeCase;

    const/16 v3, 0xa

    const-string v4, "12.11111E9"

    const-string v5, "12.11111E9"

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/SizeCase;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lorg/javia/arity/SizeCase;

    const-string v3, "12.34567E9"

    const-string v4, "12.3456E9"

    invoke-direct {v2, v9, v3, v4}, Lorg/javia/arity/SizeCase;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    new-instance v1, Lorg/javia/arity/SizeCase;

    const-string v2, "12345678E3"

    const-string v3, "1.2345E10"

    invoke-direct {v1, v9, v2, v3}, Lorg/javia/arity/SizeCase;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v11

    const/4 v1, 0x6

    new-instance v2, Lorg/javia/arity/SizeCase;

    const-string v3, "-12345678E3"

    const-string v4, "-1.234E10"

    invoke-direct {v2, v9, v3, v4}, Lorg/javia/arity/SizeCase;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lorg/javia/arity/SizeCase;

    const-string v3, "-0.00000007"

    const-string v4, "-0.000000"

    invoke-direct {v2, v9, v3, v4}, Lorg/javia/arity/SizeCase;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lorg/javia/arity/SizeCase;

    const-string v3, "-1.23E123"

    const-string v4, "-1.23E123"

    invoke-direct {v2, v11, v3, v4}, Lorg/javia/arity/SizeCase;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    new-instance v1, Lorg/javia/arity/SizeCase;

    const-string v2, "-1.2E123"

    const-string v3, "-1.2E123"

    invoke-direct {v1, v11, v2, v3}, Lorg/javia/arity/SizeCase;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v9

    const/16 v1, 0xa

    new-instance v2, Lorg/javia/arity/SizeCase;

    const-string v3, "-1E123"

    const-string v4, "-1E123"

    invoke-direct {v2, v11, v3, v4}, Lorg/javia/arity/SizeCase;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lorg/javia/arity/SizeCase;

    const-string v3, "-1"

    const-string v4, "-1"

    invoke-direct {v2, v8, v3, v4}, Lorg/javia/arity/SizeCase;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lorg/javia/arity/SizeCase;

    const-string v3, "-1"

    const-string v4, "-1"

    invoke-direct {v2, v10, v3, v4}, Lorg/javia/arity/SizeCase;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lorg/javia/arity/SizeCase;

    const-string v3, "-0.02"

    const-string v4, "-0.02"

    invoke-direct {v2, v10, v3, v4}, Lorg/javia/arity/SizeCase;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lorg/javia/arity/SizeCase;

    const-string v3, "0.02"

    const-string v4, "0"

    invoke-direct {v2, v10, v3, v4}, Lorg/javia/arity/SizeCase;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Lorg/javia/arity/TestFormat;->sizeCases:[Lorg/javia/arity/SizeCase;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 275
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static testFormat()Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 328
    const/4 v0, 0x1

    move v2, v0

    move v0, v1

    .line 329
    :goto_0
    sget-object v3, Lorg/javia/arity/TestFormat;->cases:[Lorg/javia/arity/FormatCase;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 330
    sget-object v3, Lorg/javia/arity/TestFormat;->cases:[Lorg/javia/arity/FormatCase;

    aget-object v3, v3, v0

    .line 331
    iget-object v4, v3, Lorg/javia/arity/FormatCase;->res:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 332
    iget v6, v3, Lorg/javia/arity/FormatCase;->rounding:I

    if-nez v6, :cond_0

    iget-wide v6, v3, Lorg/javia/arity/FormatCase;->val:D

    cmpl-double v6, v4, v6

    if-eqz v6, :cond_0

    .line 333
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "wrong test? "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lorg/javia/arity/FormatCase;->res:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v7, v3, Lorg/javia/arity/FormatCase;->val:D

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 335
    :cond_0
    iget-wide v4, v3, Lorg/javia/arity/FormatCase;->val:D

    iget v6, v3, Lorg/javia/arity/FormatCase;->rounding:I

    invoke-static {v4, v5, v6}, Lorg/javia/arity/Util;->doubleToString(DI)Ljava/lang/String;

    move-result-object v4

    .line 336
    iget-object v5, v3, Lorg/javia/arity/FormatCase;->res:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 337
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lorg/javia/arity/FormatCase;->res:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\', got \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v3, Lorg/javia/arity/FormatCase;->val:D

    invoke-static {v5, v6}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v2, v1

    .line 340
    :cond_1
    iget v4, v3, Lorg/javia/arity/FormatCase;->rounding:I

    if-nez v4, :cond_2

    .line 329
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 340
    :cond_2
    iget v3, v3, Lorg/javia/arity/FormatCase;->rounding:I

    rsub-int/lit8 v3, v3, 0xf

    goto :goto_1

    .line 343
    :cond_3
    return v2
.end method

.method static testSizeCases()Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 367
    const/4 v0, 0x1

    .line 368
    sget-object v3, Lorg/javia/arity/TestFormat;->sizeCases:[Lorg/javia/arity/SizeCase;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v3, v2

    .line 369
    iget-object v6, v5, Lorg/javia/arity/SizeCase;->val:Ljava/lang/String;

    iget v7, v5, Lorg/javia/arity/SizeCase;->size:I

    invoke-static {v6, v7}, Lorg/javia/arity/Util;->sizeTruncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 370
    iget-object v7, v5, Lorg/javia/arity/SizeCase;->res:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 371
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sizeTruncate("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lorg/javia/arity/SizeCase;->val:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lorg/javia/arity/SizeCase;->size:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "): got \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' expected \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, v5, Lorg/javia/arity/SizeCase;->res:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v1

    .line 368
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 376
    :cond_1
    return v0
.end method
