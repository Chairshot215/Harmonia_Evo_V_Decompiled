.class public Lgnu/text/PrettyWriter;
.super Ljava/io/Writer;
.source "PrettyWriter.java"


# static fields
.field private static final BLOCK_PER_LINE_PREFIX_END:I = -0x3

.field private static final BLOCK_PREFIX_LENGTH:I = -0x4

.field private static final BLOCK_SECTION_COLUMN:I = -0x2

.field private static final BLOCK_SECTION_START_LINE:I = -0x6

.field private static final BLOCK_START_COLUMN:I = -0x1

.field private static final BLOCK_SUFFIX_LENGTH:I = -0x5

.field private static final LOGICAL_BLOCK_LENGTH:I = 0x6

.field public static final NEWLINE_FILL:I = 0x46

.field public static final NEWLINE_LINEAR:I = 0x4e

.field public static final NEWLINE_LITERAL:I = 0x4c

.field public static final NEWLINE_MANDATORY:I = 0x52

.field public static final NEWLINE_MISER:I = 0x4d

.field public static final NEWLINE_SPACE:I = 0x53

.field static final QITEM_BASE_SIZE:I = 0x2

.field static final QITEM_BLOCK_END_SIZE:I = 0x2

.field static final QITEM_BLOCK_END_TYPE:I = 0x5

.field static final QITEM_BLOCK_START_BLOCK_END:I = 0x4

.field static final QITEM_BLOCK_START_PREFIX:I = 0x5

.field static final QITEM_BLOCK_START_SIZE:I = 0x7

.field static final QITEM_BLOCK_START_SUFFIX:I = 0x6

.field static final QITEM_BLOCK_START_TYPE:I = 0x4

.field static final QITEM_INDENTATION_AMOUNT:I = 0x3

.field static final QITEM_INDENTATION_BLOCK:C = 'B'

.field static final QITEM_INDENTATION_CURRENT:C = 'C'

.field static final QITEM_INDENTATION_KIND:I = 0x2

.field static final QITEM_INDENTATION_SIZE:I = 0x4

.field static final QITEM_INDENTATION_TYPE:I = 0x3

.field static final QITEM_NEWLINE_KIND:I = 0x4

.field static final QITEM_NEWLINE_SIZE:I = 0x5

.field static final QITEM_NEWLINE_TYPE:I = 0x2

.field static final QITEM_NOP_TYPE:I = 0x0

.field static final QITEM_POSN:I = 0x1

.field static final QITEM_SECTION_START_DEPTH:I = 0x2

.field static final QITEM_SECTION_START_SECTION_END:I = 0x3

.field static final QITEM_SECTION_START_SIZE:I = 0x4

.field static final QITEM_TAB_COLINC:I = 0x4

.field static final QITEM_TAB_COLNUM:I = 0x3

.field static final QITEM_TAB_FLAGS:I = 0x2

.field static final QITEM_TAB_IS_RELATIVE:I = 0x2

.field static final QITEM_TAB_IS_SECTION:I = 0x1

.field static final QITEM_TAB_SIZE:I = 0x5

.field static final QITEM_TAB_TYPE:I = 0x6

.field static final QITEM_TYPE_AND_SIZE:I = 0x0

.field static final QUEUE_INIT_ALLOC_SIZE:I = 0x12c

.field public static indentLoc:Lgnu/mapping/ThreadLocation;

.field public static initialBufferSize:I

.field public static lineLengthLoc:Lgnu/mapping/ThreadLocation;

.field public static miserWidthLoc:Lgnu/mapping/ThreadLocation;


# instance fields
.field blockDepth:I

.field blocks:[I

.field public buffer:[C

.field public bufferFillPointer:I

.field bufferOffset:I

.field bufferStartColumn:I

.field currentBlock:I

.field lineLength:I

.field lineNumber:I

.field miserWidth:I

.field protected out:Ljava/io/Writer;

.field public pendingBlocksCount:I

.field prefix:[C

.field prettyPrintingMode:I

.field queueInts:[I

.field queueSize:I

.field queueStrings:[Ljava/lang/String;

.field queueTail:I

.field suffix:[C

.field wordEndSeen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lgnu/mapping/ThreadLocation;

    const-string v1, "line-length"

    invoke-direct {v0, v1}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/text/PrettyWriter;->lineLengthLoc:Lgnu/mapping/ThreadLocation;

    .line 44
    new-instance v0, Lgnu/mapping/ThreadLocation;

    const-string v1, "miser-width"

    invoke-direct {v0, v1}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/text/PrettyWriter;->miserWidthLoc:Lgnu/mapping/ThreadLocation;

    .line 46
    new-instance v0, Lgnu/mapping/ThreadLocation;

    const-string v1, "indent"

    invoke-direct {v0, v1}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/text/PrettyWriter;->indentLoc:Lgnu/mapping/ThreadLocation;

    .line 78
    const/16 v0, 0x7e

    sput v0, Lgnu/text/PrettyWriter;->initialBufferSize:I

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2
    .parameter "out"

    .prologue
    const/16 v1, 0x12c

    .line 20
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 39
    const/16 v0, 0x50

    iput v0, p0, Lgnu/text/PrettyWriter;->lineLength:I

    .line 40
    const/16 v0, 0x28

    iput v0, p0, Lgnu/text/PrettyWriter;->miserWidth:I

    .line 81
    sget v0, Lgnu/text/PrettyWriter;->initialBufferSize:I

    new-array v0, v0, [C

    iput-object v0, p0, Lgnu/text/PrettyWriter;->buffer:[C

    .line 126
    const/16 v0, 0x3c

    new-array v0, v0, [I

    iput-object v0, p0, Lgnu/text/PrettyWriter;->blocks:[I

    .line 136
    const/4 v0, 0x6

    iput v0, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    .line 141
    sget v0, Lgnu/text/PrettyWriter;->initialBufferSize:I

    new-array v0, v0, [C

    iput-object v0, p0, Lgnu/text/PrettyWriter;->prefix:[C

    .line 146
    sget v0, Lgnu/text/PrettyWriter;->initialBufferSize:I

    new-array v0, v0, [C

    iput-object v0, p0, Lgnu/text/PrettyWriter;->suffix:[C

    .line 166
    new-array v0, v1, [I

    iput-object v0, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    .line 169
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lgnu/text/PrettyWriter;->queueStrings:[Ljava/lang/String;

    .line 177
    const/4 v0, -0x1

    iput v0, p0, Lgnu/text/PrettyWriter;->currentBlock:I

    .line 21
    iput-object p1, p0, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    .line 22
    const/4 v0, 0x1

    iput v0, p0, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;I)V
    .locals 3
    .parameter "out"
    .parameter "lineLength"

    .prologue
    const/16 v2, 0x12c

    const/4 v1, 0x1

    .line 26
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 39
    const/16 v0, 0x50

    iput v0, p0, Lgnu/text/PrettyWriter;->lineLength:I

    .line 40
    const/16 v0, 0x28

    iput v0, p0, Lgnu/text/PrettyWriter;->miserWidth:I

    .line 81
    sget v0, Lgnu/text/PrettyWriter;->initialBufferSize:I

    new-array v0, v0, [C

    iput-object v0, p0, Lgnu/text/PrettyWriter;->buffer:[C

    .line 126
    const/16 v0, 0x3c

    new-array v0, v0, [I

    iput-object v0, p0, Lgnu/text/PrettyWriter;->blocks:[I

    .line 136
    const/4 v0, 0x6

    iput v0, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    .line 141
    sget v0, Lgnu/text/PrettyWriter;->initialBufferSize:I

    new-array v0, v0, [C

    iput-object v0, p0, Lgnu/text/PrettyWriter;->prefix:[C

    .line 146
    sget v0, Lgnu/text/PrettyWriter;->initialBufferSize:I

    new-array v0, v0, [C

    iput-object v0, p0, Lgnu/text/PrettyWriter;->suffix:[C

    .line 166
    new-array v0, v2, [I

    iput-object v0, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    .line 169
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lgnu/text/PrettyWriter;->queueStrings:[Ljava/lang/String;

    .line 177
    const/4 v0, -0x1

    iput v0, p0, Lgnu/text/PrettyWriter;->currentBlock:I

    .line 27
    iput-object p1, p0, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    .line 28
    iput p2, p0, Lgnu/text/PrettyWriter;->lineLength:I

    .line 29
    if-le p2, v1, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    .line 30
    return-void

    .line 29
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/Writer;Z)V
    .locals 2
    .parameter "out"
    .parameter "prettyPrintingMode"

    .prologue
    const/16 v1, 0x12c

    .line 33
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 39
    const/16 v0, 0x50

    iput v0, p0, Lgnu/text/PrettyWriter;->lineLength:I

    .line 40
    const/16 v0, 0x28

    iput v0, p0, Lgnu/text/PrettyWriter;->miserWidth:I

    .line 81
    sget v0, Lgnu/text/PrettyWriter;->initialBufferSize:I

    new-array v0, v0, [C

    iput-object v0, p0, Lgnu/text/PrettyWriter;->buffer:[C

    .line 126
    const/16 v0, 0x3c

    new-array v0, v0, [I

    iput-object v0, p0, Lgnu/text/PrettyWriter;->blocks:[I

    .line 136
    const/4 v0, 0x6

    iput v0, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    .line 141
    sget v0, Lgnu/text/PrettyWriter;->initialBufferSize:I

    new-array v0, v0, [C

    iput-object v0, p0, Lgnu/text/PrettyWriter;->prefix:[C

    .line 146
    sget v0, Lgnu/text/PrettyWriter;->initialBufferSize:I

    new-array v0, v0, [C

    iput-object v0, p0, Lgnu/text/PrettyWriter;->suffix:[C

    .line 166
    new-array v0, v1, [I

    iput-object v0, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    .line 169
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lgnu/text/PrettyWriter;->queueStrings:[Ljava/lang/String;

    .line 177
    const/4 v0, -0x1

    iput v0, p0, Lgnu/text/PrettyWriter;->currentBlock:I

    .line 34
    iput-object p1, p0, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    .line 35
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    .line 36
    return-void

    .line 35
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static enoughSpace(II)I
    .locals 3
    .parameter "current"
    .parameter "want"

    .prologue
    .line 482
    mul-int/lit8 v0, p0, 0x2

    .line 483
    .local v0, doubled:I
    mul-int/lit8 v2, p1, 0x5

    shr-int/lit8 v2, v2, 0x2

    add-int v1, p0, v2

    .line 484
    .local v1, enough:I
    if-le v0, v1, :cond_0

    move v2, v0

    :goto_0
    return v2

    :cond_0
    move v2, v1

    goto :goto_0
.end method

.method private getPerLinePrefixEnd()I
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lgnu/text/PrettyWriter;->blocks:[I

    iget v1, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    add-int/lit8 v1, v1, -0x3

    aget v0, v0, v1

    return v0
.end method

.method private getPrefixLength()I
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lgnu/text/PrettyWriter;->blocks:[I

    iget v1, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    add-int/lit8 v1, v1, -0x4

    aget v0, v0, v1

    return v0
.end method

.method private getQueueSize(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 187
    iget-object v0, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    aget v0, v0, p1

    shr-int/lit8 v0, v0, 0x10

    return v0
.end method

.method private getQueueType(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 186
    iget-object v0, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    aget v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private getSectionColumn()I
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lgnu/text/PrettyWriter;->blocks:[I

    iget v1, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    add-int/lit8 v1, v1, -0x2

    aget v0, v0, v1

    return v0
.end method

.method private getSectionStartLine()I
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lgnu/text/PrettyWriter;->blocks:[I

    iget v1, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    add-int/lit8 v1, v1, -0x6

    aget v0, v0, v1

    return v0
.end method

.method private getStartColumn()I
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lgnu/text/PrettyWriter;->blocks:[I

    iget v1, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method private getSuffixLength()I
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lgnu/text/PrettyWriter;->blocks:[I

    iget v1, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    add-int/lit8 v1, v1, -0x5

    aget v0, v0, v1

    return v0
.end method

.method private indexPosn(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 110
    iget v0, p0, Lgnu/text/PrettyWriter;->bufferOffset:I

    add-int/2addr v0, p1

    return v0
.end method

.method private posnColumn(I)I
    .locals 1
    .parameter "posn"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lgnu/text/PrettyWriter;->posnIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lgnu/text/PrettyWriter;->indexColumn(I)I

    move-result v0

    return v0
.end method

.method private posnIndex(I)I
    .locals 1
    .parameter "posn"

    .prologue
    .line 115
    iget v0, p0, Lgnu/text/PrettyWriter;->bufferOffset:I

    sub-int v0, p1, v0

    return v0
.end method

.method private pushLogicalBlock(IIIII)V
    .locals 5
    .parameter "column"
    .parameter "perLineEnd"
    .parameter "prefixLength"
    .parameter "suffixLength"
    .parameter "sectionStartLine"

    .prologue
    const/4 v4, 0x0

    .line 412
    iget v2, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    add-int/lit8 v1, v2, 0x6

    .line 413
    .local v1, newLength:I
    iget-object v2, p0, Lgnu/text/PrettyWriter;->blocks:[I

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 415
    iget-object v2, p0, Lgnu/text/PrettyWriter;->blocks:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    new-array v0, v2, [I

    .line 416
    .local v0, newBlocks:[I
    iget-object v2, p0, Lgnu/text/PrettyWriter;->blocks:[I

    iget v3, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 417
    iput-object v0, p0, Lgnu/text/PrettyWriter;->blocks:[I

    .line 419
    .end local v0           #newBlocks:[I
    :cond_0
    iput v1, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    .line 420
    iget-object v2, p0, Lgnu/text/PrettyWriter;->blocks:[I

    iget v3, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    add-int/lit8 v3, v3, -0x1

    aput p1, v2, v3

    .line 421
    iget-object v2, p0, Lgnu/text/PrettyWriter;->blocks:[I

    iget v3, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    add-int/lit8 v3, v3, -0x2

    aput p1, v2, v3

    .line 422
    iget-object v2, p0, Lgnu/text/PrettyWriter;->blocks:[I

    iget v3, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    add-int/lit8 v3, v3, -0x3

    aput p2, v2, v3

    .line 423
    iget-object v2, p0, Lgnu/text/PrettyWriter;->blocks:[I

    iget v3, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    add-int/lit8 v3, v3, -0x4

    aput p3, v2, v3

    .line 424
    iget-object v2, p0, Lgnu/text/PrettyWriter;->blocks:[I

    iget v3, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    add-int/lit8 v3, v3, -0x5

    aput p4, v2, v3

    .line 425
    iget-object v2, p0, Lgnu/text/PrettyWriter;->blocks:[I

    iget v3, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    add-int/lit8 v3, v3, -0x6

    aput p5, v2, v3

    .line 426
    return-void
.end method


# virtual methods
.method public addIndentation(IZ)V
    .locals 1
    .parameter "amount"
    .parameter "current"

    .prologue
    .line 615
    iget v0, p0, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    if-lez v0, :cond_0

    .line 616
    if-eqz p2, :cond_1

    const/16 v0, 0x43

    :goto_0
    invoke-virtual {p0, v0, p1}, Lgnu/text/PrettyWriter;->enqueueIndent(CI)I

    .line 619
    :cond_0
    return-void

    .line 616
    :cond_1
    const/16 v0, 0x42

    goto :goto_0
.end method

.method public clearBuffer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1251
    iput v1, p0, Lgnu/text/PrettyWriter;->bufferStartColumn:I

    .line 1252
    iput v1, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .line 1253
    iput v1, p0, Lgnu/text/PrettyWriter;->lineNumber:I

    .line 1254
    iput v1, p0, Lgnu/text/PrettyWriter;->bufferOffset:I

    .line 1255
    const/4 v0, 0x6

    iput v0, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    .line 1256
    iput v1, p0, Lgnu/text/PrettyWriter;->queueTail:I

    .line 1257
    iput v1, p0, Lgnu/text/PrettyWriter;->queueSize:I

    .line 1258
    iput v1, p0, Lgnu/text/PrettyWriter;->pendingBlocksCount:I

    .line 1259
    return-void
.end method

.method public clearWordEnd()V
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgnu/text/PrettyWriter;->wordEndSeen:Z

    .line 301
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1210
    iget-object v0, p0, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 1212
    invoke-virtual {p0}, Lgnu/text/PrettyWriter;->forcePrettyOutput()V

    .line 1213
    iget-object v0, p0, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 1214
    iput-object v1, p0, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    .line 1216
    :cond_0
    iput-object v1, p0, Lgnu/text/PrettyWriter;->buffer:[C

    .line 1217
    return-void
.end method

.method public closeThis()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1222
    iget-object v0, p0, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 1224
    invoke-virtual {p0}, Lgnu/text/PrettyWriter;->forcePrettyOutput()V

    .line 1225
    iput-object v1, p0, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    .line 1227
    :cond_0
    iput-object v1, p0, Lgnu/text/PrettyWriter;->buffer:[C

    .line 1228
    return-void
.end method

.method computeTabSize(III)I
    .locals 12
    .parameter "tab"
    .parameter "sectionStart"
    .parameter "column"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 734
    iget-object v8, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v9, p1, 0x2

    aget v2, v8, v9

    .line 735
    .local v2, flags:I
    and-int/lit8 v8, v2, 0x1

    if-eqz v8, :cond_1

    move v4, v11

    .line 736
    .local v4, isSection:Z
    :goto_0
    and-int/lit8 v8, v2, 0x2

    if-eqz v8, :cond_2

    move v3, v11

    .line 737
    .local v3, isRelative:Z
    :goto_1
    if-eqz v4, :cond_3

    move v6, p2

    .line 738
    .local v6, origin:I
    :goto_2
    iget-object v8, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v9, p1, 0x3

    aget v1, v8, v9

    .line 739
    .local v1, colnum:I
    iget-object v8, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v9, p1, 0x4

    aget v0, v8, v9

    .line 740
    .local v0, colinc:I
    if-eqz v3, :cond_4

    .line 742
    if-le v0, v11, :cond_0

    .line 744
    add-int v5, p3, v1

    .line 745
    .local v5, newposn:I
    rem-int v7, v5, v0

    .line 746
    .local v7, rem:I
    if-eqz v7, :cond_0

    .line 747
    move v0, v7

    add-int/2addr v1, v7

    .end local v5           #newposn:I
    .end local v7           #rem:I
    :cond_0
    move v8, v1

    .line 754
    :goto_3
    return v8

    .end local v0           #colinc:I
    .end local v1           #colnum:I
    .end local v3           #isRelative:Z
    .end local v4           #isSection:Z
    .end local v6           #origin:I
    :cond_1
    move v4, v10

    .line 735
    goto :goto_0

    .restart local v4       #isSection:Z
    :cond_2
    move v3, v10

    .line 736
    goto :goto_1

    .restart local v3       #isRelative:Z
    :cond_3
    move v6, v10

    .line 737
    goto :goto_2

    .line 751
    .restart local v0       #colinc:I
    .restart local v1       #colnum:I
    .restart local v6       #origin:I
    :cond_4
    add-int v8, v1, v6

    if-gt p3, v8, :cond_5

    .line 752
    add-int v8, p3, v6

    sub-int/2addr v8, p3

    goto :goto_3

    .line 754
    :cond_5
    sub-int v8, p3, v6

    rem-int/2addr v8, v0

    sub-int v8, v0, v8

    goto :goto_3
.end method

.method public endLogicalBlock()V
    .locals 12

    .prologue
    const/4 v11, -0x1

    .line 671
    const/4 v8, 0x5

    const/4 v9, 0x2

    invoke-virtual {p0, v8, v9}, Lgnu/text/PrettyWriter;->enqueue(II)I

    move-result v0

    .line 672
    .local v0, end:I
    iget v8, p0, Lgnu/text/PrettyWriter;->pendingBlocksCount:I

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    iput v8, p0, Lgnu/text/PrettyWriter;->pendingBlocksCount:I

    .line 673
    iget v8, p0, Lgnu/text/PrettyWriter;->currentBlock:I

    if-gez v8, :cond_1

    .line 678
    iget-object v8, p0, Lgnu/text/PrettyWriter;->blocks:[I

    iget v9, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    add-int/lit8 v9, v9, -0x5

    aget v6, v8, v9

    .line 679
    .local v6, suffixLength:I
    iget-object v8, p0, Lgnu/text/PrettyWriter;->blocks:[I

    iget v9, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    const/4 v10, 0x6

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x5

    aget v7, v8, v9

    .line 681
    .local v7, suffixPreviousLength:I
    if-le v6, v7, :cond_0

    .line 682
    iget-object v8, p0, Lgnu/text/PrettyWriter;->suffix:[C

    iget-object v9, p0, Lgnu/text/PrettyWriter;->suffix:[C

    array-length v9, v9

    sub-int/2addr v9, v6

    sub-int v10, v6, v7

    invoke-virtual {p0, v8, v9, v10}, Lgnu/text/PrettyWriter;->write([CII)V

    .line 685
    :cond_0
    iput v11, p0, Lgnu/text/PrettyWriter;->currentBlock:I

    .line 720
    .end local v6           #suffixLength:I
    .end local v7           #suffixPreviousLength:I
    :goto_0
    return-void

    .line 688
    :cond_1
    iget v4, p0, Lgnu/text/PrettyWriter;->currentBlock:I

    .line 689
    .local v4, start:I
    iget-object v8, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v9, v4, 0x4

    aget v2, v8, v9

    .line 690
    .local v2, outerBlock:I
    if-nez v2, :cond_4

    .line 691
    iput v11, p0, Lgnu/text/PrettyWriter;->currentBlock:I

    .line 712
    :goto_1
    iget-object v8, p0, Lgnu/text/PrettyWriter;->queueStrings:[Ljava/lang/String;

    add-int/lit8 v9, v4, 0x6

    aget-object v5, v8, v9

    .line 713
    .local v5, suffix:Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 714
    invoke-virtual {p0, v5}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 715
    :cond_2
    sub-int v1, v0, v4

    .line 716
    .local v1, endFromStart:I
    if-gez v1, :cond_3

    .line 717
    iget-object v8, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    array-length v8, v8

    add-int/2addr v1, v8

    .line 718
    :cond_3
    iget-object v8, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v9, v4, 0x4

    aput v1, v8, v9

    goto :goto_0

    .line 694
    .end local v1           #endFromStart:I
    .end local v5           #suffix:Ljava/lang/String;
    :cond_4
    iget v8, p0, Lgnu/text/PrettyWriter;->queueTail:I

    sub-int v3, v8, v4

    .line 695
    .local v3, qtailFromStart:I
    if-lez v3, :cond_5

    .line 696
    iget-object v8, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    array-length v8, v8

    sub-int/2addr v3, v8

    .line 697
    :cond_5
    if-ge v2, v3, :cond_6

    .line 701
    iput v11, p0, Lgnu/text/PrettyWriter;->currentBlock:I

    goto :goto_1

    .line 706
    :cond_6
    add-int/2addr v2, v4

    .line 707
    if-gez v2, :cond_7

    .line 708
    iget-object v8, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    array-length v8, v8

    add-int/2addr v2, v8

    .line 709
    :cond_7
    iput v2, p0, Lgnu/text/PrettyWriter;->currentBlock:I

    goto :goto_1
.end method

.method public endLogicalBlock(Ljava/lang/String;)V
    .locals 1
    .parameter "suffix"

    .prologue
    .line 724
    iget v0, p0, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    if-lez v0, :cond_1

    .line 725
    invoke-virtual {p0}, Lgnu/text/PrettyWriter;->endLogicalBlock()V

    .line 728
    :cond_0
    :goto_0
    return-void

    .line 726
    :cond_1
    if-eqz p1, :cond_0

    .line 727
    invoke-virtual {p0, p1}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public enqueue(II)I
    .locals 12
    .parameter "kind"
    .parameter "size"

    .prologue
    const/4 v11, 0x0

    .line 523
    iget-object v9, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    array-length v6, v9

    .line 524
    .local v6, oldLength:I
    iget v9, p0, Lgnu/text/PrettyWriter;->queueTail:I

    sub-int v9, v6, v9

    iget v10, p0, Lgnu/text/PrettyWriter;->queueSize:I

    sub-int v2, v9, v10

    .line 525
    .local v2, endAvail:I
    if-lez v2, :cond_0

    if-le p2, v2, :cond_0

    .line 526
    invoke-virtual {p0, v11, v2}, Lgnu/text/PrettyWriter;->enqueue(II)I

    .line 527
    :cond_0
    iget v9, p0, Lgnu/text/PrettyWriter;->queueSize:I

    add-int/2addr v9, p2

    if-le v9, v6, :cond_3

    .line 529
    invoke-static {v6, p2}, Lgnu/text/PrettyWriter;->enoughSpace(II)I

    move-result v4

    .line 530
    .local v4, newLength:I
    new-array v3, v4, [I

    .line 531
    .local v3, newInts:[I
    new-array v5, v4, [Ljava/lang/String;

    .line 532
    .local v5, newStrings:[Ljava/lang/String;
    iget v9, p0, Lgnu/text/PrettyWriter;->queueTail:I

    iget v10, p0, Lgnu/text/PrettyWriter;->queueSize:I

    add-int/2addr v9, v10

    sub-int v8, v9, v6

    .line 533
    .local v8, queueHead:I
    if-lez v8, :cond_1

    .line 535
    iget-object v9, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    invoke-static {v9, v11, v3, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 536
    iget-object v9, p0, Lgnu/text/PrettyWriter;->queueStrings:[Ljava/lang/String;

    invoke-static {v9, v11, v5, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 538
    :cond_1
    iget v9, p0, Lgnu/text/PrettyWriter;->queueTail:I

    sub-int v7, v6, v9

    .line 539
    .local v7, part1Len:I
    sub-int v1, v4, v6

    .line 540
    .local v1, deltaLength:I
    iget-object v9, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    iget v10, p0, Lgnu/text/PrettyWriter;->queueTail:I

    iget v11, p0, Lgnu/text/PrettyWriter;->queueTail:I

    add-int/2addr v11, v1

    invoke-static {v9, v10, v3, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 543
    iget-object v9, p0, Lgnu/text/PrettyWriter;->queueStrings:[Ljava/lang/String;

    iget v10, p0, Lgnu/text/PrettyWriter;->queueTail:I

    iget v11, p0, Lgnu/text/PrettyWriter;->queueTail:I

    add-int/2addr v11, v1

    invoke-static {v9, v10, v5, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 546
    iput-object v3, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    .line 547
    iput-object v5, p0, Lgnu/text/PrettyWriter;->queueStrings:[Ljava/lang/String;

    .line 548
    iget v9, p0, Lgnu/text/PrettyWriter;->currentBlock:I

    iget v10, p0, Lgnu/text/PrettyWriter;->queueTail:I

    if-lt v9, v10, :cond_2

    .line 549
    iget v9, p0, Lgnu/text/PrettyWriter;->currentBlock:I

    add-int/2addr v9, v1

    iput v9, p0, Lgnu/text/PrettyWriter;->currentBlock:I

    .line 550
    :cond_2
    iget v9, p0, Lgnu/text/PrettyWriter;->queueTail:I

    add-int/2addr v9, v1

    iput v9, p0, Lgnu/text/PrettyWriter;->queueTail:I

    .line 552
    .end local v1           #deltaLength:I
    .end local v3           #newInts:[I
    .end local v4           #newLength:I
    .end local v5           #newStrings:[Ljava/lang/String;
    .end local v7           #part1Len:I
    .end local v8           #queueHead:I
    :cond_3
    iget v9, p0, Lgnu/text/PrettyWriter;->queueTail:I

    iget v10, p0, Lgnu/text/PrettyWriter;->queueSize:I

    add-int v0, v9, v10

    .line 553
    .local v0, addr:I
    iget-object v9, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    array-length v9, v9

    if-lt v0, v9, :cond_4

    .line 554
    iget-object v9, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    array-length v9, v9

    sub-int/2addr v0, v9

    .line 555
    :cond_4
    iget-object v9, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v10, v0, 0x0

    shl-int/lit8 v11, p2, 0x10

    or-int/2addr v11, p1

    aput v11, v9, v10

    .line 556
    const/4 v9, 0x1

    if-le p2, v9, :cond_5

    .line 557
    iget-object v9, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v10, v0, 0x1

    iget v11, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    invoke-direct {p0, v11}, Lgnu/text/PrettyWriter;->indexPosn(I)I

    move-result v11

    aput v11, v9, v10

    .line 559
    :cond_5
    iget v9, p0, Lgnu/text/PrettyWriter;->queueSize:I

    add-int/2addr v9, p2

    iput v9, p0, Lgnu/text/PrettyWriter;->queueSize:I

    .line 560
    return v0
.end method

.method public enqueueIndent(CI)I
    .locals 3
    .parameter "kind"
    .parameter "amount"

    .prologue
    .line 607
    const/4 v1, 0x3

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lgnu/text/PrettyWriter;->enqueue(II)I

    move-result v0

    .line 608
    .local v0, result:I
    iget-object v1, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v2, v0, 0x2

    aput p1, v1, v2

    .line 609
    iget-object v1, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v2, v0, 0x3

    aput p2, v1, v2

    .line 610
    return v0
.end method

.method public enqueueNewline(I)V
    .locals 12
    .parameter "kind"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 565
    iput-boolean v10, p0, Lgnu/text/PrettyWriter;->wordEndSeen:Z

    .line 566
    iget v1, p0, Lgnu/text/PrettyWriter;->pendingBlocksCount:I

    .line 568
    .local v1, depth:I
    const/4 v7, 0x5

    invoke-virtual {p0, v11, v7}, Lgnu/text/PrettyWriter;->enqueue(II)I

    move-result v3

    .line 569
    .local v3, newline:I
    iget-object v7, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v8, v3, 0x4

    aput p1, v7, v8

    .line 570
    iget-object v7, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v8, v3, 0x2

    iget v9, p0, Lgnu/text/PrettyWriter;->pendingBlocksCount:I

    aput v9, v7, v8

    .line 571
    iget-object v7, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v8, v3, 0x3

    aput v10, v7, v8

    .line 572
    iget v2, p0, Lgnu/text/PrettyWriter;->queueTail:I

    .line 573
    .local v2, entry:I
    iget v5, p0, Lgnu/text/PrettyWriter;->queueSize:I

    .line 574
    .local v5, todo:I
    :goto_0
    if-lez v5, :cond_1

    .line 576
    iget-object v7, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    array-length v7, v7

    if-ne v2, v7, :cond_0

    .line 577
    const/4 v2, 0x0

    .line 578
    :cond_0
    if-ne v2, v3, :cond_3

    .line 595
    :cond_1
    const/16 v7, 0x4c

    if-eq p1, v7, :cond_2

    const/16 v7, 0x52

    if-ne p1, v7, :cond_7

    :cond_2
    const/4 v7, 0x1

    :goto_1
    invoke-virtual {p0, v7, v10}, Lgnu/text/PrettyWriter;->maybeOutput(ZZ)Z

    .line 596
    return-void

    .line 580
    :cond_3
    invoke-direct {p0, v2}, Lgnu/text/PrettyWriter;->getQueueType(I)I

    move-result v6

    .line 581
    .local v6, type:I
    if-eq v6, v11, :cond_4

    const/4 v7, 0x4

    if-ne v6, v7, :cond_6

    :cond_4
    iget-object v7, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v8, v2, 0x3

    aget v7, v7, v8

    if-nez v7, :cond_6

    iget-object v7, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v8, v2, 0x2

    aget v7, v7, v8

    if-gt v1, v7, :cond_6

    .line 586
    sub-int v0, v3, v2

    .line 587
    .local v0, delta:I
    if-gez v0, :cond_5

    .line 588
    iget-object v7, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    array-length v7, v7

    add-int/2addr v0, v7

    .line 589
    :cond_5
    iget-object v7, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v8, v2, 0x3

    aput v0, v7, v8

    .line 591
    .end local v0           #delta:I
    :cond_6
    invoke-direct {p0, v2}, Lgnu/text/PrettyWriter;->getQueueSize(I)I

    move-result v4

    .line 592
    .local v4, size:I
    sub-int/2addr v5, v4

    .line 593
    add-int/2addr v2, v4

    .line 594
    goto :goto_0

    .end local v4           #size:I
    .end local v6           #type:I
    :cond_7
    move v7, v10

    .line 595
    goto :goto_1
.end method

.method enqueueTab(III)I
    .locals 3
    .parameter "flags"
    .parameter "colnum"
    .parameter "colinc"

    .prologue
    .line 469
    const/4 v1, 0x6

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Lgnu/text/PrettyWriter;->enqueue(II)I

    move-result v0

    .line 470
    .local v0, addr:I
    iget-object v1, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v2, v0, 0x2

    aput p1, v1, v2

    .line 471
    iget-object v1, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v2, v0, 0x3

    aput p2, v1, v2

    .line 472
    iget-object v1, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v2, v0, 0x4

    aput p3, v1, v2

    .line 473
    return v0
.end method

.method ensureSpaceInBuffer(I)I
    .locals 9
    .parameter "want"

    .prologue
    const/4 v8, 0x0

    .line 870
    iget-object v1, p0, Lgnu/text/PrettyWriter;->buffer:[C

    .line 871
    .local v1, buffer:[C
    array-length v4, v1

    .line 872
    .local v4, length:I
    iget v2, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .line 873
    .local v2, fillPtr:I
    sub-int v0, v4, v2

    .line 874
    .local v0, available:I
    if-lez v0, :cond_0

    move v7, v0

    .line 889
    :goto_0
    return v7

    .line 876
    :cond_0
    iget v7, p0, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    if-lez v7, :cond_2

    iget v7, p0, Lgnu/text/PrettyWriter;->lineLength:I

    if-le v2, v7, :cond_2

    .line 878
    invoke-virtual {p0, v8, v8}, Lgnu/text/PrettyWriter;->maybeOutput(ZZ)Z

    move-result v7

    if-nez v7, :cond_1

    .line 879
    invoke-virtual {p0}, Lgnu/text/PrettyWriter;->outputPartialLine()V

    .line 880
    :cond_1
    invoke-virtual {p0, p1}, Lgnu/text/PrettyWriter;->ensureSpaceInBuffer(I)I

    move-result v7

    goto :goto_0

    .line 884
    :cond_2
    invoke-static {v4, p1}, Lgnu/text/PrettyWriter;->enoughSpace(II)I

    move-result v6

    .line 885
    .local v6, newLength:I
    new-array v5, v6, [C

    .line 886
    .local v5, newBuffer:[C
    iput-object v5, p0, Lgnu/text/PrettyWriter;->buffer:[C

    .line 887
    move v3, v2

    .local v3, i:I
    :goto_1
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_3

    .line 888
    aget-char v7, v1, v3

    aput-char v7, v5, v3

    goto :goto_1

    .line 889
    :cond_3
    sub-int v7, v6, v2

    goto :goto_0
.end method

.method expandTabs(I)V
    .locals 33
    .parameter "through"

    .prologue
    .line 792
    const/16 v21, 0x0

    .line 793
    .local v21, numInsertions:I
    const/4 v5, 0x0

    .line 794
    .local v5, additional:I
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/PrettyWriter;->bufferStartColumn:I

    move v9, v0

    .line 795
    .local v9, column:I
    invoke-direct/range {p0 .. p0}, Lgnu/text/PrettyWriter;->getSectionColumn()I

    move-result v23

    .line 796
    .local v23, sectionStart:I
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/PrettyWriter;->queueTail:I

    move/from16 v22, v0

    .line 797
    .local v22, op:I
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/PrettyWriter;->queueSize:I

    move/from16 v27, v0

    .line 798
    .local v27, todo:I
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/PrettyWriter;->pendingBlocksCount:I

    move/from16 v29, v0

    mul-int/lit8 v7, v29, 0x6

    .line 799
    .local v7, blocksUsed:I
    :goto_0
    if-lez v27, :cond_1

    .line 801
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/text/PrettyWriter;->queueInts:[I

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v22

    move/from16 v1, v29

    if-ne v0, v1, :cond_0

    .line 802
    const/16 v22, 0x0

    .line 803
    :cond_0
    move/from16 v0, v22

    move/from16 v1, p1

    if-ne v0, v1, :cond_3

    .line 834
    :cond_1
    if-lez v21, :cond_a

    .line 836
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    move v12, v0

    .line 837
    .local v12, fillPtr:I
    add-int v19, v12, v5

    .line 838
    .local v19, newFillPtr:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/text/PrettyWriter;->buffer:[C

    move-object v8, v0

    .line 839
    .local v8, buffer:[C
    move-object/from16 v18, v8

    .line 840
    .local v18, newBuffer:[C
    move-object v0, v8

    array-length v0, v0

    move/from16 v16, v0

    .line 841
    .local v16, length:I
    move v11, v12

    .line 842
    .local v11, end:I
    move/from16 v0, v19

    move/from16 v1, v16

    if-le v0, v1, :cond_2

    .line 844
    invoke-static {v12, v5}, Lgnu/text/PrettyWriter;->enoughSpace(II)I

    move-result v20

    .line 845
    .local v20, newLength:I
    move/from16 v0, v20

    new-array v0, v0, [C

    move-object/from16 v18, v0

    .line 846
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/text/PrettyWriter;->buffer:[C

    .line 848
    .end local v20           #newLength:I
    :cond_2
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .line 849
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/PrettyWriter;->bufferOffset:I

    move/from16 v29, v0

    sub-int v29, v29, v5

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/text/PrettyWriter;->bufferOffset:I

    .line 850
    move/from16 v13, v21

    .local v13, i:I
    :goto_1
    add-int/lit8 v13, v13, -0x1

    if-ltz v13, :cond_9

    .line 852
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/text/PrettyWriter;->blocks:[I

    move-object/from16 v29, v0

    mul-int/lit8 v30, v13, 0x2

    add-int v30, v30, v7

    aget v25, v29, v30

    .line 853
    .local v25, srcpos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/text/PrettyWriter;->blocks:[I

    move-object/from16 v29, v0

    mul-int/lit8 v30, v13, 0x2

    add-int v30, v30, v7

    add-int/lit8 v30, v30, 0x1

    aget v6, v29, v30

    .line 854
    .local v6, amount:I
    add-int v10, v25, v5

    .line 855
    .local v10, dstpos:I
    sub-int v29, v11, v25

    move-object v0, v8

    move/from16 v1, v25

    move-object/from16 v2, v18

    move v3, v10

    move/from16 v4, v29

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 856
    sub-int v15, v10, v6

    .local v15, j:I
    :goto_2
    if-ge v15, v10, :cond_8

    .line 857
    const/16 v29, 0x20

    aput-char v29, v18, v15

    .line 856
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 805
    .end local v6           #amount:I
    .end local v8           #buffer:[C
    .end local v10           #dstpos:I
    .end local v11           #end:I
    .end local v12           #fillPtr:I
    .end local v13           #i:I
    .end local v15           #j:I
    .end local v16           #length:I
    .end local v18           #newBuffer:[C
    .end local v19           #newFillPtr:I
    .end local v25           #srcpos:I
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lgnu/text/PrettyWriter;->getQueueType(I)I

    move-result v28

    .line 806
    .local v28, type:I
    const/16 v29, 0x6

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_6

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/text/PrettyWriter;->queueInts:[I

    move-object/from16 v29, v0

    add-int/lit8 v30, v22, 0x1

    aget v29, v29, v30

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lgnu/text/PrettyWriter;->posnIndex(I)I

    move-result v14

    .line 809
    .local v14, index:I
    add-int v29, v9, v14

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lgnu/text/PrettyWriter;->computeTabSize(III)I

    move-result v26

    .line 810
    .local v26, tabsize:I
    if-eqz v26, :cond_5

    .line 813
    mul-int/lit8 v29, v21, 0x2

    add-int v29, v29, v7

    add-int/lit8 v29, v29, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/text/PrettyWriter;->blocks:[I

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_4

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/text/PrettyWriter;->blocks:[I

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    mul-int/lit8 v29, v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 816
    .local v17, newBlocks:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/text/PrettyWriter;->blocks:[I

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/text/PrettyWriter;->blocks:[I

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v29

    move/from16 v1, v30

    move-object/from16 v2, v17

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 817
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/text/PrettyWriter;->blocks:[I

    .line 819
    .end local v17           #newBlocks:[I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/text/PrettyWriter;->blocks:[I

    move-object/from16 v29, v0

    mul-int/lit8 v30, v21, 0x2

    add-int v30, v30, v7

    aput v14, v29, v30

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/text/PrettyWriter;->blocks:[I

    move-object/from16 v29, v0

    mul-int/lit8 v30, v21, 0x2

    add-int v30, v30, v7

    add-int/lit8 v30, v30, 0x1

    aput v26, v29, v30

    .line 821
    add-int/lit8 v21, v21, 0x1

    .line 822
    add-int v5, v5, v26

    .line 823
    add-int v9, v9, v26

    .line 830
    .end local v14           #index:I
    .end local v26           #tabsize:I
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lgnu/text/PrettyWriter;->getQueueSize(I)I

    move-result v24

    .line 831
    .local v24, size:I
    sub-int v27, v27, v24

    .line 832
    add-int v22, v22, v24

    .line 833
    goto/16 :goto_0

    .line 826
    .end local v24           #size:I
    :cond_6
    const/16 v29, 0x2

    move/from16 v0, v22

    move/from16 v1, v29

    if-eq v0, v1, :cond_7

    const/16 v29, 0x4

    move/from16 v0, v22

    move/from16 v1, v29

    if-ne v0, v1, :cond_5

    .line 828
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/text/PrettyWriter;->queueInts:[I

    move-object/from16 v29, v0

    add-int/lit8 v30, v22, 0x1

    aget v29, v29, v30

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lgnu/text/PrettyWriter;->posnIndex(I)I

    move-result v29

    add-int v23, v9, v29

    goto :goto_3

    .line 858
    .end local v28           #type:I
    .restart local v6       #amount:I
    .restart local v8       #buffer:[C
    .restart local v10       #dstpos:I
    .restart local v11       #end:I
    .restart local v12       #fillPtr:I
    .restart local v13       #i:I
    .restart local v15       #j:I
    .restart local v16       #length:I
    .restart local v18       #newBuffer:[C
    .restart local v19       #newFillPtr:I
    .restart local v25       #srcpos:I
    :cond_8
    sub-int/2addr v5, v6

    .line 859
    move/from16 v11, v25

    .line 860
    goto/16 :goto_1

    .line 861
    .end local v6           #amount:I
    .end local v10           #dstpos:I
    .end local v15           #j:I
    .end local v25           #srcpos:I
    :cond_9
    move-object/from16 v0, v18

    move-object v1, v8

    if-eq v0, v1, :cond_a

    .line 862
    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object v0, v8

    move/from16 v1, v29

    move-object/from16 v2, v18

    move/from16 v3, v30

    move v4, v11

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 864
    .end local v8           #buffer:[C
    .end local v11           #end:I
    .end local v12           #fillPtr:I
    .end local v13           #i:I
    .end local v16           #length:I
    .end local v18           #newBuffer:[C
    .end local v19           #newFillPtr:I
    :cond_a
    return-void
.end method

.method fitsOnLine(IZ)I
    .locals 4
    .parameter "sectionEnd"
    .parameter "forceNewlines"

    .prologue
    const/4 v3, -0x1

    .line 1049
    iget v0, p0, Lgnu/text/PrettyWriter;->lineLength:I

    .line 1050
    .local v0, available:I
    invoke-virtual {p0}, Lgnu/text/PrettyWriter;->printReadably()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lgnu/text/PrettyWriter;->getMaxLines()I

    move-result v1

    iget v2, p0, Lgnu/text/PrettyWriter;->lineNumber:I

    if-ne v1, v2, :cond_0

    .line 1052
    add-int/lit8 v0, v0, -0x3

    .line 1053
    invoke-direct {p0}, Lgnu/text/PrettyWriter;->getSuffixLength()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1055
    :cond_0
    if-ltz p1, :cond_2

    .line 1056
    iget-object v1, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v2, p1, 0x1

    aget v1, v1, v2

    invoke-direct {p0, v1}, Lgnu/text/PrettyWriter;->posnColumn(I)I

    move-result v1

    if-gt v1, v0, :cond_1

    const/4 v1, 0x1

    .line 1061
    :goto_0
    return v1

    :cond_1
    move v1, v3

    .line 1056
    goto :goto_0

    .line 1057
    :cond_2
    if-eqz p2, :cond_3

    move v1, v3

    .line 1058
    goto :goto_0

    .line 1059
    :cond_3
    iget v1, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    invoke-virtual {p0, v1}, Lgnu/text/PrettyWriter;->indexColumn(I)I

    move-result v1

    if-le v1, v0, :cond_4

    move v1, v3

    .line 1060
    goto :goto_0

    .line 1061
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public flush()V
    .locals 3

    .prologue
    .line 1195
    iget-object v1, p0, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    if-nez v1, :cond_0

    .line 1206
    :goto_0
    return-void

    .line 1199
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lgnu/text/PrettyWriter;->forcePrettyOutput()V

    .line 1200
    iget-object v1, p0, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1202
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1204
    .local v0, ex:Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public forcePrettyOutput()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1183
    const/4 v0, 0x1

    invoke-virtual {p0, v3, v0}, Lgnu/text/PrettyWriter;->maybeOutput(ZZ)Z

    .line 1184
    iget v0, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    if-lez v0, :cond_0

    .line 1185
    invoke-virtual {p0}, Lgnu/text/PrettyWriter;->outputPartialLine()V

    .line 1186
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lgnu/text/PrettyWriter;->expandTabs(I)V

    .line 1187
    invoke-virtual {p0}, Lgnu/text/PrettyWriter;->getColumnNumber()I

    move-result v0

    iput v0, p0, Lgnu/text/PrettyWriter;->bufferStartColumn:I

    .line 1188
    iget-object v0, p0, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    iget-object v1, p0, Lgnu/text/PrettyWriter;->buffer:[C

    iget v2, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/Writer;->write([CII)V

    .line 1189
    iput v3, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .line 1190
    iput v3, p0, Lgnu/text/PrettyWriter;->queueSize:I

    .line 1191
    return-void
.end method

.method public getColumnNumber()I
    .locals 4

    .prologue
    .line 1233
    iget v1, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .line 1236
    .local v1, i:I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_1

    .line 1237
    iget v2, p0, Lgnu/text/PrettyWriter;->bufferStartColumn:I

    iget v3, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    add-int/2addr v2, v3

    .line 1240
    :goto_0
    return v2

    .line 1238
    :cond_1
    iget-object v2, p0, Lgnu/text/PrettyWriter;->buffer:[C

    aget-char v0, v2, v1

    .line 1239
    .local v0, ch:C
    const/16 v2, 0xa

    if-eq v0, v2, :cond_2

    const/16 v2, 0xd

    if-ne v0, v2, :cond_0

    .line 1240
    :cond_2
    iget v2, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    add-int/lit8 v3, v1, 0x1

    sub-int/2addr v2, v3

    goto :goto_0
.end method

.method getMaxLines()I
    .locals 1

    .prologue
    .line 1037
    const/4 v0, -0x1

    return v0
.end method

.method protected getMiserWidth()I
    .locals 1

    .prologue
    .line 1024
    iget v0, p0, Lgnu/text/PrettyWriter;->miserWidth:I

    return v0
.end method

.method public getPrettyPrintingMode()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    return v0
.end method

.method indexColumn(I)I
    .locals 10
    .parameter "index"

    .prologue
    .line 759
    iget v0, p0, Lgnu/text/PrettyWriter;->bufferStartColumn:I

    .line 760
    .local v0, column:I
    invoke-direct {p0}, Lgnu/text/PrettyWriter;->getSectionColumn()I

    move-result v4

    .line 761
    .local v4, sectionStart:I
    invoke-direct {p0, p1}, Lgnu/text/PrettyWriter;->indexPosn(I)I

    move-result v1

    .line 762
    .local v1, endPosn:I
    iget v2, p0, Lgnu/text/PrettyWriter;->queueTail:I

    .line 763
    .local v2, op:I
    iget v6, p0, Lgnu/text/PrettyWriter;->queueSize:I

    .line 764
    .local v6, todo:I
    :goto_0
    if-lez v6, :cond_1

    .line 767
    iget-object v8, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    array-length v8, v8

    if-lt v2, v8, :cond_0

    .line 768
    const/4 v2, 0x0

    .line 769
    :cond_0
    invoke-direct {p0, v2}, Lgnu/text/PrettyWriter;->getQueueType(I)I

    move-result v7

    .line 770
    .local v7, type:I
    if-eqz v7, :cond_3

    .line 772
    iget-object v8, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v9, v2, 0x1

    aget v3, v8, v9

    .line 773
    .local v3, posn:I
    if-lt v3, v1, :cond_2

    .line 787
    .end local v3           #posn:I
    .end local v7           #type:I
    :cond_1
    add-int v8, v0, p1

    return v8

    .line 775
    .restart local v3       #posn:I
    .restart local v7       #type:I
    :cond_2
    const/4 v8, 0x6

    if-ne v7, v8, :cond_4

    .line 776
    invoke-direct {p0, v3}, Lgnu/text/PrettyWriter;->posnIndex(I)I

    move-result v8

    add-int/2addr v8, v0

    invoke-virtual {p0, v2, v4, v8}, Lgnu/text/PrettyWriter;->computeTabSize(III)I

    move-result v8

    add-int/2addr v0, v8

    .line 783
    .end local v3           #posn:I
    :cond_3
    :goto_1
    invoke-direct {p0, v2}, Lgnu/text/PrettyWriter;->getQueueSize(I)I

    move-result v5

    .line 784
    .local v5, size:I
    sub-int/2addr v6, v5

    .line 785
    add-int/2addr v2, v5

    .line 786
    goto :goto_0

    .line 778
    .end local v5           #size:I
    .restart local v3       #posn:I
    :cond_4
    const/4 v8, 0x2

    if-eq v7, v8, :cond_5

    const/4 v8, 0x4

    if-ne v7, v8, :cond_3

    .line 780
    :cond_5
    iget-object v8, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v9, v2, 0x1

    aget v8, v8, v9

    invoke-direct {p0, v8}, Lgnu/text/PrettyWriter;->posnIndex(I)I

    move-result v8

    add-int v4, v0, v8

    goto :goto_1
.end method

.method isMisering()Z
    .locals 3

    .prologue
    .line 1029
    invoke-virtual {p0}, Lgnu/text/PrettyWriter;->getMiserWidth()I

    move-result v0

    .line 1030
    .local v0, mwidth:I
    if-lez v0, :cond_0

    iget v1, p0, Lgnu/text/PrettyWriter;->lineLength:I

    invoke-direct {p0}, Lgnu/text/PrettyWriter;->getStartColumn()I

    move-result v2

    sub-int/2addr v1, v2

    if-gt v1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPrettyPrinting()Z
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lineAbbreviationHappened()V
    .locals 0

    .prologue
    .line 1067
    return-void
.end method

.method maybeOutput(ZZ)Z
    .locals 20
    .parameter "forceNewlines"
    .parameter "flushing"

    .prologue
    .line 895
    const/4 v12, 0x0

    .line 898
    .local v12, outputAnything:Z
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/PrettyWriter;->queueSize:I

    move/from16 v18, v0

    if-lez v18, :cond_d

    .line 900
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/PrettyWriter;->queueTail:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/text/PrettyWriter;->queueInts:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_0

    .line 901
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/text/PrettyWriter;->queueTail:I

    .line 902
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/PrettyWriter;->queueTail:I

    move v11, v0

    .line 903
    .local v11, next:I
    move-object/from16 v0, p0

    move v1, v11

    invoke-direct {v0, v1}, Lgnu/text/PrettyWriter;->getQueueType(I)I

    move-result v17

    .line 904
    .local v17, type:I
    packed-switch v17, :pswitch_data_0

    .line 1013
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/PrettyWriter;->queueTail:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgnu/text/PrettyWriter;->getQueueSize(I)I

    move-result v14

    .line 1014
    .local v14, size:I
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/PrettyWriter;->queueSize:I

    move/from16 v18, v0

    sub-int v18, v18, v14

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/text/PrettyWriter;->queueSize:I

    .line 1016
    add-int v18, v11, v14

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/text/PrettyWriter;->queueTail:I

    goto :goto_0

    .line 908
    .end local v14           #size:I
    :pswitch_0
    const/4 v8, -0x1

    .line 909
    .local v8, fits:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/text/PrettyWriter;->queueInts:[I

    move-object/from16 v18, v0

    add-int/lit8 v19, v11, 0x4

    aget v18, v18, v19

    sparse-switch v18, :sswitch_data_0

    .line 912
    const/4 v4, 0x1

    .line 944
    .local v4, cond:Z
    :goto_2
    if-eqz v4, :cond_1

    .line 946
    const/4 v12, 0x1

    .line 949
    if-eqz p2, :cond_8

    if-nez v8, :cond_8

    .line 950
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lgnu/text/PrettyWriter;->outputPartialLine()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 954
    :catch_0
    move-exception v18

    move-object/from16 v7, v18

    .line 956
    .local v7, ex:Ljava/io/IOException;
    new-instance v18, Ljava/lang/RuntimeException;

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v18

    .line 915
    .end local v4           #cond:Z
    .end local v7           #ex:Ljava/io/IOException;
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lgnu/text/PrettyWriter;->isMisering()Z

    move-result v4

    .line 916
    .restart local v4       #cond:Z
    goto :goto_2

    .line 918
    .end local v4           #cond:Z
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lgnu/text/PrettyWriter;->isMisering()Z

    move-result v18

    if-nez v18, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/PrettyWriter;->lineNumber:I

    move/from16 v18, v0

    invoke-direct/range {p0 .. p0}, Lgnu/text/PrettyWriter;->getSectionStartLine()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_3

    .line 921
    :cond_2
    const/4 v4, 0x1

    .line 922
    .restart local v4       #cond:Z
    goto :goto_2

    .line 926
    .end local v4           #cond:Z
    :cond_3
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/text/PrettyWriter;->queueInts:[I

    move-object/from16 v18, v0

    add-int/lit8 v19, v11, 0x3

    aget v5, v18, v19

    .line 927
    .local v5, end:I
    if-nez v5, :cond_5

    .line 928
    const/4 v5, -0x1

    .line 935
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    move v1, v5

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lgnu/text/PrettyWriter;->fitsOnLine(IZ)I

    move-result v8

    .line 936
    if-lez v8, :cond_6

    .line 937
    const/4 v4, 0x0

    .restart local v4       #cond:Z
    goto :goto_2

    .line 931
    .end local v4           #cond:Z
    :cond_5
    add-int/2addr v5, v11

    .line 932
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/text/PrettyWriter;->queueInts:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move v0, v5

    move/from16 v1, v18

    if-lt v0, v1, :cond_4

    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/text/PrettyWriter;->queueInts:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    sub-int v5, v5, v18

    goto :goto_3

    .line 938
    :cond_6
    if-ltz v8, :cond_7

    if-eqz p2, :cond_d

    .line 939
    :cond_7
    const/4 v4, 0x1

    .restart local v4       #cond:Z
    goto :goto_2

    .line 952
    .end local v5           #end:I
    :cond_8
    :try_start_1
    move-object/from16 v0, p0

    move v1, v11

    invoke-virtual {v0, v1}, Lgnu/text/PrettyWriter;->outputLine(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 961
    .end local v4           #cond:Z
    .end local v8           #fits:I
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lgnu/text/PrettyWriter;->isMisering()Z

    move-result v18

    if-nez v18, :cond_1

    .line 963
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/text/PrettyWriter;->queueInts:[I

    move-object/from16 v18, v0

    add-int/lit8 v19, v11, 0x2

    aget v10, v18, v19

    .line 964
    .local v10, kind:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/text/PrettyWriter;->queueInts:[I

    move-object/from16 v18, v0

    add-int/lit8 v19, v11, 0x3

    aget v9, v18, v19

    .line 965
    .local v9, indent:I
    const/16 v18, 0x42

    move v0, v10

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 966
    invoke-direct/range {p0 .. p0}, Lgnu/text/PrettyWriter;->getStartColumn()I

    move-result v18

    add-int v9, v9, v18

    .line 970
    :goto_4
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Lgnu/text/PrettyWriter;->setIndentation(I)V

    goto/16 :goto_1

    .line 968
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/text/PrettyWriter;->queueInts:[I

    move-object/from16 v18, v0

    add-int/lit8 v19, v11, 0x1

    aget v18, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgnu/text/PrettyWriter;->posnColumn(I)I

    move-result v18

    add-int v9, v9, v18

    goto :goto_4

    .line 974
    .end local v9           #indent:I
    .end local v10           #kind:I
    :pswitch_2
    move v15, v11

    .line 975
    .local v15, start:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/text/PrettyWriter;->queueInts:[I

    move-object/from16 v18, v0

    add-int/lit8 v19, v11, 0x3

    aget v5, v18, v19

    .line 977
    .restart local v5       #end:I
    if-lez v5, :cond_a

    add-int v18, v5, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/text/PrettyWriter;->queueInts:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    rem-int v18, v18, v19

    move/from16 v5, v18

    .line 978
    :goto_5
    move-object/from16 v0, p0

    move v1, v5

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lgnu/text/PrettyWriter;->fitsOnLine(IZ)I

    move-result v8

    .line 980
    .restart local v8       #fits:I
    if-lez v8, :cond_b

    .line 984
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/text/PrettyWriter;->queueInts:[I

    move-object/from16 v18, v0

    add-int/lit8 v19, v11, 0x4

    aget v6, v18, v19

    .line 986
    .local v6, endr:I
    add-int v18, v6, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/text/PrettyWriter;->queueInts:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    rem-int v11, v18, v19

    .line 987
    move-object/from16 v0, p0

    move v1, v11

    invoke-virtual {v0, v1}, Lgnu/text/PrettyWriter;->expandTabs(I)V

    .line 988
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/text/PrettyWriter;->queueTail:I

    .line 989
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/PrettyWriter;->queueSize:I

    move/from16 v18, v0

    sub-int v18, v18, v6

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/text/PrettyWriter;->queueSize:I

    .line 1002
    .end local v6           #endr:I
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/PrettyWriter;->currentBlock:I

    move/from16 v18, v0

    move/from16 v0, v18

    move v1, v15

    if-ne v0, v1, :cond_1

    .line 1003
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/text/PrettyWriter;->currentBlock:I

    goto/16 :goto_1

    .line 977
    .end local v8           #fits:I
    :cond_a
    const/16 v18, -0x1

    move/from16 v5, v18

    goto :goto_5

    .line 992
    .restart local v8       #fits:I
    :cond_b
    if-ltz v8, :cond_c

    if-eqz p2, :cond_d

    .line 994
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/text/PrettyWriter;->queueStrings:[Ljava/lang/String;

    move-object/from16 v18, v0

    add-int/lit8 v19, v11, 0x5

    aget-object v13, v18, v19

    .line 995
    .local v13, prefix:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/text/PrettyWriter;->queueStrings:[Ljava/lang/String;

    move-object/from16 v18, v0

    add-int/lit8 v19, v11, 0x6

    aget-object v16, v18, v19

    .line 997
    .local v16, suffix:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/text/PrettyWriter;->queueInts:[I

    move-object/from16 v18, v0

    add-int/lit8 v19, v11, 0x1

    aget v18, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgnu/text/PrettyWriter;->posnColumn(I)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object v2, v13

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lgnu/text/PrettyWriter;->reallyStartLogicalBlock(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1007
    .end local v5           #end:I
    .end local v8           #fits:I
    .end local v13           #prefix:Ljava/lang/String;
    .end local v15           #start:I
    .end local v16           #suffix:Ljava/lang/String;
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lgnu/text/PrettyWriter;->reallyEndLogicalBlock()V

    goto/16 :goto_1

    .line 1010
    :pswitch_4
    move-object/from16 v0, p0

    move v1, v11

    invoke-virtual {v0, v1}, Lgnu/text/PrettyWriter;->expandTabs(I)V

    goto/16 :goto_1

    .line 1018
    .end local v11           #next:I
    .end local v17           #type:I
    :cond_d
    return v12

    .line 904
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 909
    :sswitch_data_0
    .sparse-switch
        0x46 -> :sswitch_1
        0x4d -> :sswitch_0
        0x53 -> :sswitch_2
    .end sparse-switch
.end method

.method outputLine(I)V
    .locals 25
    .parameter "newline"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1074
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/text/PrettyWriter;->buffer:[C

    move-object v7, v0

    .line 1075
    .local v7, buffer:[C
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/text/PrettyWriter;->queueInts:[I

    move-object/from16 v22, v0

    add-int/lit8 v23, p1, 0x4

    aget v12, v22, v23

    .line 1076
    .local v12, kind:I
    const/16 v22, 0x4c

    move v0, v12

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    const/16 v22, 0x1

    move/from16 v11, v22

    .line 1077
    .local v11, isLiteral:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/text/PrettyWriter;->queueInts:[I

    move-object/from16 v22, v0

    add-int/lit8 v23, p1, 0x1

    aget v22, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lgnu/text/PrettyWriter;->posnIndex(I)I

    move-result v5

    .line 1079
    .local v5, amountToConsume:I
    if-eqz v11, :cond_5

    .line 1080
    move v6, v5

    .line 1098
    .local v6, amountToPrint:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object v1, v7

    move/from16 v2, v23

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/Writer;->write([CII)V

    .line 1099
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/PrettyWriter;->lineNumber:I

    move v14, v0

    .line 1101
    .local v14, lineNumber:I
    add-int/lit8 v14, v14, 0x1

    .line 1102
    invoke-virtual/range {p0 .. p0}, Lgnu/text/PrettyWriter;->printReadably()Z

    move-result v22

    if-nez v22, :cond_1

    .line 1104
    invoke-virtual/range {p0 .. p0}, Lgnu/text/PrettyWriter;->getMaxLines()I

    move-result v15

    .line 1105
    .local v15, maxLines:I
    if-lez v15, :cond_1

    if-lt v14, v15, :cond_1

    .line 1107
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    move-object/from16 v22, v0

    const-string v23, " .."

    invoke-virtual/range {v22 .. v23}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1108
    invoke-direct/range {p0 .. p0}, Lgnu/text/PrettyWriter;->getSuffixLength()I

    move-result v21

    .line 1109
    .local v21, suffixLength:I
    if-eqz v21, :cond_0

    .line 1111
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/text/PrettyWriter;->suffix:[C

    move-object/from16 v20, v0

    .line 1112
    .local v20, suffix:[C
    move-object/from16 v0, v20

    array-length v0, v0

    move v13, v0

    .line 1113
    .local v13, len:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    move-object/from16 v22, v0

    sub-int v23, v13, v21

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move/from16 v2, v23

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/Writer;->write([CII)V

    .line 1116
    .end local v13           #len:I
    .end local v20           #suffix:[C
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lgnu/text/PrettyWriter;->lineAbbreviationHappened()V

    .line 1119
    .end local v15           #maxLines:I
    .end local v21           #suffixLength:I
    :cond_1
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/text/PrettyWriter;->lineNumber:I

    .line 1120
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    move-object/from16 v22, v0

    const/16 v23, 0xa

    invoke-virtual/range {v22 .. v23}, Ljava/io/Writer;->write(I)V

    .line 1121
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/text/PrettyWriter;->bufferStartColumn:I

    .line 1122
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    move v9, v0

    .line 1123
    .local v9, fillPtr:I
    if-eqz v11, :cond_8

    invoke-direct/range {p0 .. p0}, Lgnu/text/PrettyWriter;->getPerLinePrefixEnd()I

    move-result v22

    move/from16 v18, v22

    .line 1124
    .local v18, prefixLen:I
    :goto_2
    sub-int v19, v5, v18

    .line 1125
    .local v19, shift:I
    sub-int v17, v9, v19

    .line 1126
    .local v17, newFillPtr:I
    move-object/from16 v16, v7

    .line 1127
    .local v16, newBuffer:[C
    array-length v8, v7

    .line 1128
    .local v8, bufferLength:I
    move/from16 v0, v17

    move v1, v8

    if-le v0, v1, :cond_2

    .line 1130
    sub-int v22, v17, v8

    move v0, v8

    move/from16 v1, v22

    invoke-static {v0, v1}, Lgnu/text/PrettyWriter;->enoughSpace(II)I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [C

    move-object/from16 v16, v0

    .line 1132
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/text/PrettyWriter;->buffer:[C

    .line 1134
    :cond_2
    sub-int v22, v9, v5

    move-object v0, v7

    move v1, v5

    move-object/from16 v2, v16

    move/from16 v3, v18

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1136
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/text/PrettyWriter;->prefix:[C

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v16

    move/from16 v3, v24

    move/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1137
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .line 1138
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/PrettyWriter;->bufferOffset:I

    move/from16 v22, v0

    add-int v22, v22, v19

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/text/PrettyWriter;->bufferOffset:I

    .line 1139
    if-nez v11, :cond_3

    .line 1141
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/text/PrettyWriter;->blocks:[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/PrettyWriter;->blockDepth:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x2

    aput v18, v22, v23

    .line 1142
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/text/PrettyWriter;->blocks:[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/PrettyWriter;->blockDepth:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x6

    aput v14, v22, v23

    .line 1144
    :cond_3
    return-void

    .line 1076
    .end local v5           #amountToConsume:I
    .end local v6           #amountToPrint:I
    .end local v8           #bufferLength:I
    .end local v9           #fillPtr:I
    .end local v11           #isLiteral:Z
    .end local v14           #lineNumber:I
    .end local v16           #newBuffer:[C
    .end local v17           #newFillPtr:I
    .end local v18           #prefixLen:I
    .end local v19           #shift:I
    :cond_4
    const/16 v22, 0x0

    move/from16 v11, v22

    goto/16 :goto_0

    .line 1084
    .restart local v5       #amountToConsume:I
    .restart local v11       #isLiteral:Z
    :cond_5
    move v10, v5

    .line 1086
    .local v10, i:I
    :cond_6
    add-int/lit8 v10, v10, -0x1

    if-gez v10, :cond_7

    .line 1088
    const/4 v6, 0x0

    .line 1089
    .restart local v6       #amountToPrint:I
    goto/16 :goto_1

    .line 1091
    .end local v6           #amountToPrint:I
    :cond_7
    aget-char v22, v7, v10

    const/16 v23, 0x20

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_6

    .line 1093
    add-int/lit8 v6, v10, 0x1

    .line 1094
    .restart local v6       #amountToPrint:I
    goto/16 :goto_1

    .line 1123
    .end local v10           #i:I
    .restart local v9       #fillPtr:I
    .restart local v14       #lineNumber:I
    :cond_8
    invoke-direct/range {p0 .. p0}, Lgnu/text/PrettyWriter;->getPrefixLength()I

    move-result v22

    move/from16 v18, v22

    goto/16 :goto_2
.end method

.method outputPartialLine()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1149
    iget v5, p0, Lgnu/text/PrettyWriter;->queueTail:I

    .line 1150
    .local v5, tail:I
    :goto_0
    iget v6, p0, Lgnu/text/PrettyWriter;->queueSize:I

    if-lez v6, :cond_1

    invoke-direct {p0, v5}, Lgnu/text/PrettyWriter;->getQueueType(I)I

    move-result v6

    if-nez v6, :cond_1

    .line 1152
    invoke-direct {p0, v5}, Lgnu/text/PrettyWriter;->getQueueSize(I)I

    move-result v4

    .line 1153
    .local v4, size:I
    iget v6, p0, Lgnu/text/PrettyWriter;->queueSize:I

    sub-int/2addr v6, v4

    iput v6, p0, Lgnu/text/PrettyWriter;->queueSize:I

    .line 1154
    add-int/2addr v5, v4

    .line 1155
    iget-object v6, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    array-length v6, v6

    if-ne v5, v6, :cond_0

    .line 1156
    const/4 v5, 0x0

    .line 1157
    :cond_0
    iput v5, p0, Lgnu/text/PrettyWriter;->queueTail:I

    goto :goto_0

    .line 1159
    .end local v4           #size:I
    :cond_1
    iget v2, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .line 1160
    .local v2, fillPtr:I
    iget v6, p0, Lgnu/text/PrettyWriter;->queueSize:I

    if-lez v6, :cond_2

    iget-object v6, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v7, v5, 0x1

    aget v6, v6, v7

    invoke-direct {p0, v6}, Lgnu/text/PrettyWriter;->posnIndex(I)I

    move-result v6

    move v0, v6

    .line 1162
    .local v0, count:I
    :goto_1
    sub-int v3, v2, v0

    .line 1163
    .local v3, newFillPtr:I
    if-gtz v0, :cond_3

    .line 1164
    new-instance v6, Ljava/lang/Error;

    const-string v7, "outputPartialLine called when nothing can be output."

    invoke-direct {v6, v7}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v6

    .end local v0           #count:I
    .end local v3           #newFillPtr:I
    :cond_2
    move v0, v2

    .line 1160
    goto :goto_1

    .line 1167
    .restart local v0       #count:I
    .restart local v3       #newFillPtr:I
    :cond_3
    :try_start_0
    iget-object v6, p0, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    iget-object v7, p0, Lgnu/text/PrettyWriter;->buffer:[C

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v0}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1174
    iput v0, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .line 1175
    invoke-virtual {p0}, Lgnu/text/PrettyWriter;->getColumnNumber()I

    move-result v6

    iput v6, p0, Lgnu/text/PrettyWriter;->bufferStartColumn:I

    .line 1176
    iget-object v6, p0, Lgnu/text/PrettyWriter;->buffer:[C

    iget-object v7, p0, Lgnu/text/PrettyWriter;->buffer:[C

    invoke-static {v6, v0, v7, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1177
    iput v3, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .line 1178
    iget v6, p0, Lgnu/text/PrettyWriter;->bufferOffset:I

    add-int/2addr v6, v0

    iput v6, p0, Lgnu/text/PrettyWriter;->bufferOffset:I

    .line 1179
    return-void

    .line 1170
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 1172
    .local v1, ex:Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method printReadably()Z
    .locals 1

    .prologue
    .line 1043
    const/4 v0, 0x1

    return v0
.end method

.method reallyEndLogicalBlock()V
    .locals 5

    .prologue
    .line 511
    invoke-direct {p0}, Lgnu/text/PrettyWriter;->getPrefixLength()I

    move-result v2

    .line 512
    .local v2, oldIndent:I
    iget v3, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    const/4 v4, 0x6

    sub-int/2addr v3, v4

    iput v3, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    .line 513
    invoke-direct {p0}, Lgnu/text/PrettyWriter;->getPrefixLength()I

    move-result v1

    .line 514
    .local v1, newIndent:I
    if-le v1, v2, :cond_0

    .line 516
    move v0, v2

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 517
    iget-object v3, p0, Lgnu/text/PrettyWriter;->prefix:[C

    const/16 v4, 0x20

    aput-char v4, v3, v0

    .line 516
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 519
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method reallyStartLogicalBlock(ILjava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "column"
    .parameter "prefix"
    .parameter "suffix"

    .prologue
    .line 430
    invoke-direct {p0}, Lgnu/text/PrettyWriter;->getPerLinePrefixEnd()I

    move-result v2

    .line 431
    .local v2, perLineEnd:I
    invoke-direct {p0}, Lgnu/text/PrettyWriter;->getPrefixLength()I

    move-result v3

    .line 432
    .local v3, prefixLength:I
    invoke-direct {p0}, Lgnu/text/PrettyWriter;->getSuffixLength()I

    move-result v4

    .line 433
    .local v4, suffixLength:I
    iget v5, p0, Lgnu/text/PrettyWriter;->lineNumber:I

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lgnu/text/PrettyWriter;->pushLogicalBlock(IIIII)V

    .line 435
    invoke-virtual {p0, p1}, Lgnu/text/PrettyWriter;->setIndentation(I)V

    .line 436
    if-eqz p2, :cond_0

    .line 438
    iget-object v0, p0, Lgnu/text/PrettyWriter;->blocks:[I

    iget v1, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    add-int/lit8 v1, v1, -0x3

    aput p1, v0, v1

    .line 439
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    .line 440
    .local v9, plen:I
    const/4 v0, 0x0

    iget-object v1, p0, Lgnu/text/PrettyWriter;->suffix:[C

    sub-int v2, p1, v9

    invoke-virtual {p2, v0, v9, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 442
    .end local v2           #perLineEnd:I
    .end local v9           #plen:I
    :cond_0
    if-eqz p3, :cond_2

    .line 447
    iget-object v10, p0, Lgnu/text/PrettyWriter;->suffix:[C

    .line 448
    .local v10, totalSuffix:[C
    array-length v11, v10

    .line 449
    .local v11, totalSuffixLen:I
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    .line 450
    .local v6, additional:I
    add-int v7, v4, v6

    .line 451
    .local v7, newSuffixLen:I
    if-le v7, v11, :cond_1

    .line 453
    invoke-static {v11, v6}, Lgnu/text/PrettyWriter;->enoughSpace(II)I

    move-result v8

    .line 454
    .local v8, newTotalSuffixLen:I
    new-array v0, v8, [C

    iput-object v0, p0, Lgnu/text/PrettyWriter;->suffix:[C

    .line 455
    sub-int v0, v11, v4

    iget-object v1, p0, Lgnu/text/PrettyWriter;->suffix:[C

    sub-int v2, v8, v4

    invoke-static {v10, v0, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 458
    move v11, v8

    .line 460
    .end local v8           #newTotalSuffixLen:I
    :cond_1
    const/4 v0, 0x0

    sub-int v1, v11, v7

    invoke-virtual {p3, v0, v6, v10, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 462
    iget-object v0, p0, Lgnu/text/PrettyWriter;->blocks:[I

    iget v1, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    add-int/lit8 v1, v1, -0x5

    aput v7, v0, v1

    .line 465
    .end local v6           #additional:I
    .end local v7           #newSuffixLen:I
    .end local v10           #totalSuffix:[C
    .end local v11           #totalSuffixLen:I
    :cond_2
    return-void
.end method

.method public setColumnNumber(I)V
    .locals 2
    .parameter "column"

    .prologue
    .line 1246
    iget v0, p0, Lgnu/text/PrettyWriter;->bufferStartColumn:I

    invoke-virtual {p0}, Lgnu/text/PrettyWriter;->getColumnNumber()I

    move-result v1

    sub-int v1, p1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lgnu/text/PrettyWriter;->bufferStartColumn:I

    .line 1247
    return-void
.end method

.method public setIndentation(I)V
    .locals 7
    .parameter "column"

    .prologue
    const/4 v6, 0x0

    .line 489
    iget-object v3, p0, Lgnu/text/PrettyWriter;->prefix:[C

    .line 490
    .local v3, prefix:[C
    array-length v4, v3

    .line 491
    .local v4, prefixLen:I
    invoke-direct {p0}, Lgnu/text/PrettyWriter;->getPrefixLength()I

    move-result v0

    .line 492
    .local v0, current:I
    invoke-direct {p0}, Lgnu/text/PrettyWriter;->getPerLinePrefixEnd()I

    move-result v2

    .line 493
    .local v2, minimum:I
    if-le v2, p1, :cond_0

    .line 494
    move p1, v2

    .line 495
    :cond_0
    if-le p1, v4, :cond_1

    .line 497
    sub-int v5, p1, v4

    invoke-static {v4, v5}, Lgnu/text/PrettyWriter;->enoughSpace(II)I

    move-result v5

    new-array v3, v5, [C

    .line 498
    iget-object v5, p0, Lgnu/text/PrettyWriter;->prefix:[C

    invoke-static {v5, v6, v3, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 499
    iput-object v3, p0, Lgnu/text/PrettyWriter;->prefix:[C

    .line 501
    :cond_1
    if-le p1, v0, :cond_2

    .line 503
    move v1, v0

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_2

    .line 504
    const/16 v5, 0x20

    aput-char v5, v3, v1

    .line 503
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 506
    .end local v1           #i:I
    :cond_2
    iget-object v5, p0, Lgnu/text/PrettyWriter;->blocks:[I

    iget v6, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    add-int/lit8 v6, v6, -0x4

    aput p1, v5, v6

    .line 507
    return-void
.end method

.method public setPrettyPrinting(Z)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 75
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    .line 76
    return-void

    .line 75
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setPrettyPrintingMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 60
    iput p1, p0, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    return-void
.end method

.method public startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 8
    .parameter "prefix"
    .parameter "perLine"
    .parameter "suffix"

    .prologue
    const/4 v7, 0x0

    .line 625
    iget v4, p0, Lgnu/text/PrettyWriter;->queueSize:I

    if-nez v4, :cond_1

    iget v4, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    if-nez v4, :cond_1

    .line 627
    sget-object v4, Lgnu/text/PrettyWriter;->lineLengthLoc:Lgnu/mapping/ThreadLocation;

    invoke-virtual {v4, v7}, Lgnu/mapping/ThreadLocation;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 628
    .local v0, llen:Ljava/lang/Object;
    if-nez v0, :cond_3

    .line 629
    const/16 v4, 0x50

    iput v4, p0, Lgnu/text/PrettyWriter;->lineLength:I

    .line 633
    :goto_0
    sget-object v4, Lgnu/text/PrettyWriter;->miserWidthLoc:Lgnu/mapping/ThreadLocation;

    invoke-virtual {v4, v7}, Lgnu/mapping/ThreadLocation;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 634
    .local v1, mwidth:Ljava/lang/Object;
    if-eqz v1, :cond_0

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v4, :cond_0

    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v1, v4, :cond_4

    .line 637
    :cond_0
    const/4 v4, -0x1

    iput v4, p0, Lgnu/text/PrettyWriter;->miserWidth:I

    .line 641
    :goto_1
    sget-object v4, Lgnu/text/PrettyWriter;->indentLoc:Lgnu/mapping/ThreadLocation;

    invoke-virtual {v4, v7}, Lgnu/mapping/ThreadLocation;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    .end local v0           #llen:Ljava/lang/Object;
    .end local v1           #mwidth:Ljava/lang/Object;
    :cond_1
    if-eqz p1, :cond_2

    .line 645
    invoke-virtual {p0, p1}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 646
    :cond_2
    iget v4, p0, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    if-nez v4, :cond_5

    .line 667
    :goto_2
    return-void

    .line 631
    .restart local v0       #llen:Ljava/lang/Object;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lgnu/text/PrettyWriter;->lineLength:I

    goto :goto_0

    .line 639
    .restart local v1       #mwidth:Ljava/lang/Object;
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lgnu/text/PrettyWriter;->miserWidth:I

    goto :goto_1

    .line 648
    .end local v0           #llen:Ljava/lang/Object;
    .end local v1           #mwidth:Ljava/lang/Object;
    :cond_5
    const/4 v4, 0x4

    const/4 v5, 0x7

    invoke-virtual {p0, v4, v5}, Lgnu/text/PrettyWriter;->enqueue(II)I

    move-result v3

    .line 650
    .local v3, start:I
    iget-object v4, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v5, v3, 0x2

    iget v6, p0, Lgnu/text/PrettyWriter;->pendingBlocksCount:I

    aput v6, v4, v5

    .line 651
    iget-object v4, p0, Lgnu/text/PrettyWriter;->queueStrings:[Ljava/lang/String;

    add-int/lit8 v5, v3, 0x5

    if-eqz p2, :cond_7

    move-object v6, p1

    :goto_3
    aput-object v6, v4, v5

    .line 653
    iget-object v4, p0, Lgnu/text/PrettyWriter;->queueStrings:[Ljava/lang/String;

    add-int/lit8 v5, v3, 0x6

    aput-object p3, v4, v5

    .line 654
    iget v4, p0, Lgnu/text/PrettyWriter;->pendingBlocksCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lgnu/text/PrettyWriter;->pendingBlocksCount:I

    .line 655
    iget v2, p0, Lgnu/text/PrettyWriter;->currentBlock:I

    .line 656
    .local v2, outerBlock:I
    if-gez v2, :cond_8

    .line 657
    const/4 v2, 0x0

    .line 664
    :cond_6
    :goto_4
    iget-object v4, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v5, v3, 0x4

    aput v2, v4, v5

    .line 665
    iget-object v4, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v5, v3, 0x3

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 666
    iput v3, p0, Lgnu/text/PrettyWriter;->currentBlock:I

    goto :goto_2

    .end local v2           #outerBlock:I
    :cond_7
    move-object v6, v7

    .line 651
    goto :goto_3

    .line 660
    .restart local v2       #outerBlock:I
    :cond_8
    sub-int/2addr v2, v3

    .line 661
    if-lez v2, :cond_6

    .line 662
    iget-object v4, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    array-length v4, v4

    sub-int/2addr v2, v4

    goto :goto_4
.end method

.method public write(I)V
    .locals 4
    .parameter "ch"

    .prologue
    const/4 v3, 0x1

    .line 305
    const/4 v1, 0x0

    iput-boolean v1, p0, Lgnu/text/PrettyWriter;->wordEndSeen:Z

    .line 307
    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    iget v1, p0, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    if-lez v1, :cond_1

    .line 308
    const/16 v1, 0x4c

    invoke-virtual {p0, v1}, Lgnu/text/PrettyWriter;->enqueueNewline(I)V

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    invoke-virtual {p0, v3}, Lgnu/text/PrettyWriter;->ensureSpaceInBuffer(I)I

    .line 312
    iget v0, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .line 313
    .local v0, fillPointer:I
    iget-object v1, p0, Lgnu/text/PrettyWriter;->buffer:[C

    int-to-char v2, p1

    aput-char v2, v1, v0

    .line 314
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .line 315
    const/16 v1, 0x20

    if-ne p1, v1, :cond_0

    iget v1, p0, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    if-le v1, v3, :cond_0

    iget v1, p0, Lgnu/text/PrettyWriter;->currentBlock:I

    if-gez v1, :cond_0

    .line 316
    const/16 v1, 0x53

    invoke-virtual {p0, v1}, Lgnu/text/PrettyWriter;->enqueueNewline(I)V

    goto :goto_0
.end method

.method public write(Ljava/lang/String;)V
    .locals 2
    .parameter "str"

    .prologue
    .line 322
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;II)V

    .line 323
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 8
    .parameter "str"
    .parameter "start"
    .parameter "count"

    .prologue
    .line 327
    const/4 v6, 0x0

    iput-boolean v6, p0, Lgnu/text/PrettyWriter;->wordEndSeen:Z

    .line 329
    :goto_0
    if-lez p3, :cond_4

    .line 331
    move v2, p3

    .line 333
    .local v2, cnt:I
    invoke-virtual {p0, p3}, Lgnu/text/PrettyWriter;->ensureSpaceInBuffer(I)I

    move-result v0

    .line 334
    .local v0, available:I
    if-le v2, v0, :cond_0

    .line 335
    move v2, v0

    .line 336
    :cond_0
    iget v3, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .line 337
    .local v3, fillPointer:I
    sub-int/2addr p3, v2

    move v4, v3

    .end local v3           #fillPointer:I
    .local v4, fillPointer:I
    move v5, p2

    .line 338
    .end local p2
    .local v5, start:I
    :goto_1
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_3

    .line 340
    add-int/lit8 p2, v5, 0x1

    .end local v5           #start:I
    .restart local p2
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 341
    .local v1, ch:C
    const/16 v6, 0xa

    if-ne v1, v6, :cond_2

    iget v6, p0, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    if-lez v6, :cond_2

    .line 343
    iput v4, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .line 344
    const/16 v6, 0x4c

    invoke-virtual {p0, v6}, Lgnu/text/PrettyWriter;->enqueueNewline(I)V

    .line 345
    iget v3, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .end local v4           #fillPointer:I
    .restart local v3       #fillPointer:I
    :cond_1
    :goto_2
    move v4, v3

    .end local v3           #fillPointer:I
    .restart local v4       #fillPointer:I
    move v5, p2

    .line 357
    .end local p2
    .restart local v5       #start:I
    goto :goto_1

    .line 349
    .end local v5           #start:I
    .restart local p2
    :cond_2
    iget-object v6, p0, Lgnu/text/PrettyWriter;->buffer:[C

    add-int/lit8 v3, v4, 0x1

    .end local v4           #fillPointer:I
    .restart local v3       #fillPointer:I
    aput-char v1, v6, v4

    .line 350
    const/16 v6, 0x20

    if-ne v1, v6, :cond_1

    iget v6, p0, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    const/4 v7, 0x1

    if-le v6, v7, :cond_1

    iget v6, p0, Lgnu/text/PrettyWriter;->currentBlock:I

    if-gez v6, :cond_1

    .line 352
    iput v3, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .line 353
    const/16 v6, 0x53

    invoke-virtual {p0, v6}, Lgnu/text/PrettyWriter;->enqueueNewline(I)V

    .line 354
    iget v3, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    goto :goto_2

    .line 358
    .end local v1           #ch:C
    .end local v3           #fillPointer:I
    .end local p2
    .restart local v4       #fillPointer:I
    .restart local v5       #start:I
    :cond_3
    iput v4, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    move p2, v5

    .line 359
    .end local v5           #start:I
    .restart local p2
    goto :goto_0

    .line 360
    .end local v0           #available:I
    .end local v2           #cnt:I
    .end local v4           #fillPointer:I
    :cond_4
    return-void
.end method

.method public write([C)V
    .locals 2
    .parameter "str"

    .prologue
    .line 364
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lgnu/text/PrettyWriter;->write([CII)V

    .line 365
    return-void
.end method

.method public write([CII)V
    .locals 10
    .parameter "str"
    .parameter "start"
    .parameter "count"

    .prologue
    .line 369
    const/4 v8, 0x0

    iput-boolean v8, p0, Lgnu/text/PrettyWriter;->wordEndSeen:Z

    .line 371
    add-int v3, p2, p3

    .line 373
    .local v3, end:I
    :goto_0
    if-lez p3, :cond_6

    .line 376
    move v5, p2

    .local v5, i:I
    :goto_1
    if-ge v5, v3, :cond_3

    .line 379
    iget v8, p0, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    if-lez v8, :cond_1

    aget-char v1, p1, v5

    .local v1, c:C
    const/16 v8, 0xa

    if-eq v1, v8, :cond_0

    const/16 v8, 0x20

    if-ne v1, v8, :cond_1

    iget v8, p0, Lgnu/text/PrettyWriter;->currentBlock:I

    if-gez v8, :cond_1

    .line 383
    :cond_0
    sub-int v8, v5, p2

    invoke-virtual {p0, p1, p2, v8}, Lgnu/text/PrettyWriter;->write([CII)V

    .line 384
    invoke-virtual {p0, v1}, Lgnu/text/PrettyWriter;->write(I)V

    .line 385
    add-int/lit8 p2, v5, 0x1

    .line 386
    sub-int p3, v3, p2

    .line 387
    goto :goto_0

    .line 376
    .end local v1           #c:C
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local p2
    .local v0, available:I
    .local v2, cnt:I
    .local v4, fillPointer:I
    .local v6, newFillPtr:I
    .local v7, start:I
    :cond_2
    move p2, v7

    .line 393
    .end local v0           #available:I
    .end local v2           #cnt:I
    .end local v4           #fillPointer:I
    .end local v6           #newFillPtr:I
    .end local v7           #start:I
    .restart local p2
    :cond_3
    invoke-virtual {p0, p3}, Lgnu/text/PrettyWriter;->ensureSpaceInBuffer(I)I

    move-result v0

    .line 394
    .restart local v0       #available:I
    if-ge v0, p3, :cond_4

    move v2, v0

    .line 395
    .restart local v2       #cnt:I
    :goto_2
    iget v4, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .line 396
    .restart local v4       #fillPointer:I
    add-int v6, v4, v2

    .line 397
    .restart local v6       #newFillPtr:I
    move v5, v4

    move v7, p2

    .end local p2
    .restart local v7       #start:I
    :goto_3
    if-ge v5, v6, :cond_5

    .line 398
    iget-object v8, p0, Lgnu/text/PrettyWriter;->buffer:[C

    add-int/lit8 p2, v7, 0x1

    .end local v7           #start:I
    .restart local p2
    aget-char v9, p1, v7

    aput-char v9, v8, v5

    .line 397
    add-int/lit8 v5, v5, 0x1

    move v7, p2

    .end local p2
    .restart local v7       #start:I
    goto :goto_3

    .end local v2           #cnt:I
    .end local v4           #fillPointer:I
    .end local v6           #newFillPtr:I
    .end local v7           #start:I
    .restart local p2
    :cond_4
    move v2, p3

    .line 394
    goto :goto_2

    .line 399
    .end local p2
    .restart local v2       #cnt:I
    .restart local v4       #fillPointer:I
    .restart local v6       #newFillPtr:I
    .restart local v7       #start:I
    :cond_5
    iput v6, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .line 400
    sub-int/2addr p3, v2

    .line 401
    if-nez p3, :cond_2

    move p2, v7

    .line 402
    .end local v7           #start:I
    .restart local p2
    goto :goto_0

    .line 405
    .end local v0           #available:I
    .end local v2           #cnt:I
    .end local v4           #fillPointer:I
    .end local v5           #i:I
    .end local v6           #newFillPtr:I
    :cond_6
    return-void
.end method

.method public final writeBreak(I)V
    .locals 1
    .parameter "kind"

    .prologue
    .line 600
    iget v0, p0, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    if-lez v0, :cond_0

    .line 601
    invoke-virtual {p0, p1}, Lgnu/text/PrettyWriter;->enqueueNewline(I)V

    .line 602
    :cond_0
    return-void
.end method

.method public writeWordEnd()V
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/text/PrettyWriter;->wordEndSeen:Z

    .line 285
    return-void
.end method

.method public writeWordStart()V
    .locals 1

    .prologue
    .line 293
    iget-boolean v0, p0, Lgnu/text/PrettyWriter;->wordEndSeen:Z

    if-eqz v0, :cond_0

    .line 294
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lgnu/text/PrettyWriter;->write(I)V

    .line 295
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgnu/text/PrettyWriter;->wordEndSeen:Z

    .line 296
    return-void
.end method
