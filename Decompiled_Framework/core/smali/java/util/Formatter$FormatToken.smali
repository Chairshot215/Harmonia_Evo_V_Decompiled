.class Ljava/util/Formatter$FormatToken;
.super Ljava/lang/Object;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Formatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FormatToken"
.end annotation


# static fields
.field static final DEFAULT_PRECISION:I = 0x6

.field static final FLAGS_UNSET:I = 0x0

.field static final FLAG_ZERO:I = 0x10

.field static final LAST_ARGUMENT_INDEX:I = -0x2

.field static final UNSET:I = -0x1


# instance fields
.field private argIndex:I

.field private conversionType:C

.field private dateSuffix:C

.field flagComma:Z

.field flagMinus:Z

.field flagParenthesis:Z

.field flagPlus:Z

.field flagSharp:Z

.field flagSpace:Z

.field flagZero:Z

.field private precision:I

.field private strFlags:Ljava/lang/StringBuilder;

.field private width:I


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Ljava/util/Formatter$FormatToken;->argIndex:I

    const v0, 0xffff

    iput-char v0, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    iput v1, p0, Ljava/util/Formatter$FormatToken;->precision:I

    iput v1, p0, Ljava/util/Formatter$FormatToken;->width:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Formatter$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/Formatter$FormatToken;-><init>()V

    return-void
.end method


# virtual methods
.method checkFlags(Ljava/lang/Object;)V
    .locals 14

    const/4 v12, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x1

    const/4 v0, 0x1

    iget-char v11, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    sparse-switch v11, :sswitch_data_0

    invoke-virtual {p0}, Ljava/util/Formatter$FormatToken;->unknownFormatConversionException()Ljava/util/UnknownFormatConversionException;

    move-result-object v11

    throw v11

    :sswitch_0
    const/4 v5, 0x0

    :cond_0
    :goto_0
    :sswitch_1
    const/4 v10, 0x0

    if-nez v1, :cond_4

    iget-boolean v11, p0, Ljava/util/Formatter$FormatToken;->flagComma:Z

    if-eqz v11, :cond_4

    const-string v10, ","

    :cond_1
    :goto_1
    if-eqz v10, :cond_b

    iget-char v11, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    const/16 v12, 0x6e

    if-ne v11, v12, :cond_a

    new-instance v11, Ljava/util/IllegalFormatFlagsException;

    invoke-direct {v11, v10}, Ljava/util/IllegalFormatFlagsException;-><init>(Ljava/lang/String;)V

    throw v11

    :sswitch_2
    instance-of v11, p1, Ljava/util/Formattable;

    if-eqz v11, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :sswitch_3
    const/4 v9, 0x1

    move v7, v9

    move v4, v9

    move v3, v9

    move v1, v9

    goto :goto_0

    :sswitch_4
    const/4 v9, 0x1

    move v7, v9

    move v6, v9

    move v4, v9

    move v3, v9

    move v1, v9

    goto :goto_0

    :sswitch_5
    const/4 v9, 0x1

    move v7, v9

    move v6, v9

    move v4, v9

    move v3, v9

    goto :goto_0

    :sswitch_6
    const/4 v9, 0x1

    move v7, v9

    move v6, v9

    move v4, v9

    goto :goto_0

    :sswitch_7
    const/4 v9, 0x1

    move v7, v9

    move v4, v9

    move v3, v9

    move v1, v9

    const/4 v5, 0x0

    goto :goto_0

    :sswitch_8
    const/4 v9, 0x1

    move v6, v9

    if-eqz p1, :cond_2

    instance-of v11, p1, Ljava/math/BigInteger;

    if-eqz v11, :cond_3

    :cond_2
    const/4 v7, 0x1

    move v4, v7

    move v3, v7

    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    :sswitch_9
    const/4 v2, 0x0

    const/4 v8, 0x0

    move v5, v8

    move v0, v8

    goto :goto_0

    :sswitch_a
    const/4 v0, 0x0

    const/4 v5, 0x0

    goto :goto_0

    :cond_4
    if-nez v2, :cond_5

    iget-boolean v11, p0, Ljava/util/Formatter$FormatToken;->flagMinus:Z

    if-eqz v11, :cond_5

    const-string v10, "-"

    goto :goto_1

    :cond_5
    if-nez v3, :cond_6

    iget-boolean v11, p0, Ljava/util/Formatter$FormatToken;->flagParenthesis:Z

    if-eqz v11, :cond_6

    const-string v10, "("

    goto :goto_1

    :cond_6
    if-nez v4, :cond_7

    iget-boolean v11, p0, Ljava/util/Formatter$FormatToken;->flagPlus:Z

    if-eqz v11, :cond_7

    const-string v10, "+"

    goto :goto_1

    :cond_7
    if-nez v6, :cond_8

    iget-boolean v11, p0, Ljava/util/Formatter$FormatToken;->flagSharp:Z

    if-eqz v11, :cond_8

    const-string v10, "#"

    goto :goto_1

    :cond_8
    if-nez v7, :cond_9

    iget-boolean v11, p0, Ljava/util/Formatter$FormatToken;->flagSpace:Z

    if-eqz v11, :cond_9

    const-string v10, " "

    goto :goto_1

    :cond_9
    if-nez v9, :cond_1

    iget-boolean v11, p0, Ljava/util/Formatter$FormatToken;->flagZero:Z

    if-eqz v11, :cond_1

    const-string v10, "0"

    goto :goto_1

    :cond_a
    new-instance v11, Ljava/util/FormatFlagsConversionMismatchException;

    iget-char v12, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    invoke-direct {v11, v10, v12}, Ljava/util/FormatFlagsConversionMismatchException;-><init>(Ljava/lang/String;C)V

    throw v11

    :cond_b
    iget-boolean v11, p0, Ljava/util/Formatter$FormatToken;->flagMinus:Z

    if-nez v11, :cond_c

    iget-boolean v11, p0, Ljava/util/Formatter$FormatToken;->flagZero:Z

    if-eqz v11, :cond_d

    :cond_c
    iget v11, p0, Ljava/util/Formatter$FormatToken;->width:I

    if-ne v11, v12, :cond_d

    new-instance v11, Ljava/util/MissingFormatWidthException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-char v13, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/util/MissingFormatWidthException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_d
    if-nez v0, :cond_e

    iget v11, p0, Ljava/util/Formatter$FormatToken;->argIndex:I

    if-eq v11, v12, :cond_e

    new-instance v11, Ljava/util/IllegalFormatFlagsException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "%"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-char v13, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " doesn\'t take an argument"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/util/IllegalFormatFlagsException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_e
    if-nez v5, :cond_f

    iget v11, p0, Ljava/util/Formatter$FormatToken;->precision:I

    if-eq v11, v12, :cond_f

    new-instance v11, Ljava/util/IllegalFormatPrecisionException;

    iget v12, p0, Ljava/util/Formatter$FormatToken;->precision:I

    invoke-direct {v11, v12}, Ljava/util/IllegalFormatPrecisionException;-><init>(I)V

    throw v11

    :cond_f
    if-nez v8, :cond_10

    iget v11, p0, Ljava/util/Formatter$FormatToken;->width:I

    if-eq v11, v12, :cond_10

    new-instance v11, Ljava/util/IllegalFormatWidthException;

    iget v12, p0, Ljava/util/Formatter$FormatToken;->width:I

    invoke-direct {v11, v12}, Ljava/util/IllegalFormatWidthException;-><init>(I)V

    throw v11

    :cond_10
    iget-boolean v11, p0, Ljava/util/Formatter$FormatToken;->flagPlus:Z

    if-eqz v11, :cond_11

    iget-boolean v11, p0, Ljava/util/Formatter$FormatToken;->flagSpace:Z

    if-eqz v11, :cond_11

    new-instance v11, Ljava/util/IllegalFormatFlagsException;

    const-string v12, "the \'+\' and \' \' flags are incompatible"

    invoke-direct {v11, v12}, Ljava/util/IllegalFormatFlagsException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_11
    iget-boolean v11, p0, Ljava/util/Formatter$FormatToken;->flagMinus:Z

    if-eqz v11, :cond_12

    iget-boolean v11, p0, Ljava/util/Formatter$FormatToken;->flagZero:Z

    if-eqz v11, :cond_12

    new-instance v11, Ljava/util/IllegalFormatFlagsException;

    const-string v12, "the \'-\' and \'0\' flags are incompatible"

    invoke-direct {v11, v12}, Ljava/util/IllegalFormatFlagsException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_12
    return-void

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_a
        0x41 -> :sswitch_6
        0x42 -> :sswitch_1
        0x43 -> :sswitch_0
        0x45 -> :sswitch_5
        0x47 -> :sswitch_3
        0x48 -> :sswitch_1
        0x53 -> :sswitch_2
        0x54 -> :sswitch_0
        0x58 -> :sswitch_8
        0x61 -> :sswitch_6
        0x62 -> :sswitch_1
        0x63 -> :sswitch_0
        0x64 -> :sswitch_7
        0x65 -> :sswitch_5
        0x66 -> :sswitch_4
        0x67 -> :sswitch_3
        0x68 -> :sswitch_1
        0x6e -> :sswitch_9
        0x6f -> :sswitch_8
        0x73 -> :sswitch_2
        0x74 -> :sswitch_0
        0x78 -> :sswitch_8
    .end sparse-switch
.end method

.method getArgIndex()I
    .locals 1

    iget v0, p0, Ljava/util/Formatter$FormatToken;->argIndex:I

    return v0
.end method

.method getConversionType()C
    .locals 1

    iget-char v0, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    return v0
.end method

.method getDateSuffix()C
    .locals 1

    iget-char v0, p0, Ljava/util/Formatter$FormatToken;->dateSuffix:C

    return v0
.end method

.method getPrecision()I
    .locals 1

    iget v0, p0, Ljava/util/Formatter$FormatToken;->precision:I

    return v0
.end method

.method getStrFlags()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/Formatter$FormatToken;->strFlags:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/Formatter$FormatToken;->strFlags:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method getWidth()I
    .locals 1

    iget v0, p0, Ljava/util/Formatter$FormatToken;->width:I

    return v0
.end method

.method isDefault()Z
    .locals 2

    const/4 v1, -0x1

    iget-boolean v0, p0, Ljava/util/Formatter$FormatToken;->flagComma:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ljava/util/Formatter$FormatToken;->flagMinus:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ljava/util/Formatter$FormatToken;->flagParenthesis:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ljava/util/Formatter$FormatToken;->flagPlus:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ljava/util/Formatter$FormatToken;->flagSharp:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ljava/util/Formatter$FormatToken;->flagSpace:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ljava/util/Formatter$FormatToken;->flagZero:Z

    if-nez v0, :cond_0

    iget v0, p0, Ljava/util/Formatter$FormatToken;->width:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Ljava/util/Formatter$FormatToken;->precision:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPrecisionSet()Z
    .locals 2

    iget v0, p0, Ljava/util/Formatter$FormatToken;->precision:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method requireArgument()Z
    .locals 2

    iget-char v0, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    const/16 v1, 0x25

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setArgIndex(I)V
    .locals 0

    iput p1, p0, Ljava/util/Formatter$FormatToken;->argIndex:I

    return-void
.end method

.method setConversionType(C)V
    .locals 0

    iput-char p1, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    return-void
.end method

.method setDateSuffix(C)V
    .locals 0

    iput-char p1, p0, Ljava/util/Formatter$FormatToken;->dateSuffix:C

    return-void
.end method

.method setFlag(I)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :sswitch_0
    iget-boolean v0, p0, Ljava/util/Formatter$FormatToken;->flagComma:Z

    iput-boolean v1, p0, Ljava/util/Formatter$FormatToken;->flagComma:Z

    :goto_1
    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/DuplicateFormatFlagsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/DuplicateFormatFlagsException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_1
    iget-boolean v0, p0, Ljava/util/Formatter$FormatToken;->flagMinus:Z

    iput-boolean v1, p0, Ljava/util/Formatter$FormatToken;->flagMinus:Z

    goto :goto_1

    :sswitch_2
    iget-boolean v0, p0, Ljava/util/Formatter$FormatToken;->flagParenthesis:Z

    iput-boolean v1, p0, Ljava/util/Formatter$FormatToken;->flagParenthesis:Z

    goto :goto_1

    :sswitch_3
    iget-boolean v0, p0, Ljava/util/Formatter$FormatToken;->flagPlus:Z

    iput-boolean v1, p0, Ljava/util/Formatter$FormatToken;->flagPlus:Z

    goto :goto_1

    :sswitch_4
    iget-boolean v0, p0, Ljava/util/Formatter$FormatToken;->flagSharp:Z

    iput-boolean v1, p0, Ljava/util/Formatter$FormatToken;->flagSharp:Z

    goto :goto_1

    :sswitch_5
    iget-boolean v0, p0, Ljava/util/Formatter$FormatToken;->flagSpace:Z

    iput-boolean v1, p0, Ljava/util/Formatter$FormatToken;->flagSpace:Z

    goto :goto_1

    :sswitch_6
    iget-boolean v0, p0, Ljava/util/Formatter$FormatToken;->flagZero:Z

    iput-boolean v1, p0, Ljava/util/Formatter$FormatToken;->flagZero:Z

    goto :goto_1

    :cond_0
    iget-object v2, p0, Ljava/util/Formatter$FormatToken;->strFlags:Ljava/lang/StringBuilder;

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v2, p0, Ljava/util/Formatter$FormatToken;->strFlags:Ljava/lang/StringBuilder;

    :cond_1
    iget-object v2, p0, Ljava/util/Formatter$FormatToken;->strFlags:Ljava/lang/StringBuilder;

    int-to-char v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_5
        0x23 -> :sswitch_4
        0x28 -> :sswitch_2
        0x2b -> :sswitch_3
        0x2c -> :sswitch_0
        0x2d -> :sswitch_1
        0x30 -> :sswitch_6
    .end sparse-switch
.end method

.method setPrecision(I)V
    .locals 0

    iput p1, p0, Ljava/util/Formatter$FormatToken;->precision:I

    return-void
.end method

.method setWidth(I)V
    .locals 0

    iput p1, p0, Ljava/util/Formatter$FormatToken;->width:I

    return-void
.end method

.method public unknownFormatConversionException()Ljava/util/UnknownFormatConversionException;
    .locals 5

    iget-char v0, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    const/16 v1, 0x74

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    const/16 v1, 0x54

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/util/UnknownFormatConversionException;

    const-string v1, "%c%c"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-char v4, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-char v4, p0, Ljava/util/Formatter$FormatToken;->dateSuffix:C

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/UnknownFormatConversionException;

    iget-char v1, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
