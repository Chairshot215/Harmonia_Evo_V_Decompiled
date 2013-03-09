.class public final Llibcore/icu/ErrorCode;
.super Ljava/lang/Exception;
.source "ErrorCode.java"


# static fields
.field private static final ERROR_NAMES:[Ljava/lang/String; = null

.field public static final U_BUFFER_OVERFLOW_ERROR:I = 0xf

.field private static final U_ERROR_LIMIT:I = 0x15

.field private static final U_ILLEGAL_ARGUMENT_ERROR:I = 0x1

.field public static final U_ILLEGAL_CHAR_FOUND:I = 0xc

.field private static final U_INDEX_OUTOFBOUNDS_ERROR:I = 0x8

.field public static final U_INVALID_CHAR_FOUND:I = 0xa

.field public static final U_TRUNCATED_CHAR_FOUND:I = 0xb

.field private static final U_UNSUPPORTED_ERROR:I = 0x10

.field public static final U_ZERO_ERROR:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "U_ZERO_ERROR"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "U_ILLEGAL_ARGUMENT_ERROR"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "U_MISSING_RESOURCE_ERROR"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "U_INVALID_FORMAT_ERROR"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "U_FILE_ACCESS_ERROR"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "U_INTERNAL_PROGRAM_ERROR"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "U_MESSAGE_PARSE_ERROR"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "U_MEMORY_ALLOCATION_ERROR"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "U_INDEX_OUTOFBOUNDS_ERROR"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "U_PARSE_ERROR"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "U_INVALID_CHAR_FOUND"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "U_TRUNCATED_CHAR_FOUND"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "U_ILLEGAL_CHAR_FOUND"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "U_INVALID_TABLE_FORMAT"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "U_INVALID_TABLE_FILE"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "U_BUFFER_OVERFLOW_ERROR"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "U_UNSUPPORTED_ERROR"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "U_RESOURCE_TYPE_MISMATCH"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "U_ILLEGAL_ESCAPE_SEQUENCE"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "U_UNSUPPORTED_ESCAPE_SEQUENCE"

    aput-object v2, v0, v1

    sput-object v0, Llibcore/icu/ErrorCode;->ERROR_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public static isFailure(I)Z
    .locals 1

    if-lez p0, :cond_0

    const/16 v0, 0x15

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static throwException(I)Ljava/lang/RuntimeException;
    .locals 2

    if-gtz p0, :cond_0

    const/16 v0, 0x15

    if-lt p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    sget-object v1, Llibcore/icu/ErrorCode;->ERROR_NAMES:[Ljava/lang/String;

    aget-object v1, v1, p0

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Llibcore/icu/ErrorCode;->ERROR_NAMES:[Ljava/lang/String;

    aget-object v1, v1, p0

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    sget-object v1, Llibcore/icu/ErrorCode;->ERROR_NAMES:[Ljava/lang/String;

    aget-object v1, v1, p0

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    sget-object v1, Llibcore/icu/ErrorCode;->ERROR_NAMES:[Ljava/lang/String;

    aget-object v1, v1, p0

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x8 -> :sswitch_1
        0xf -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method
