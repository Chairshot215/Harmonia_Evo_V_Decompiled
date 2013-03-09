.class public Lcom/google/android/backup/BackupDataReassembler;
.super Ljava/lang/Object;
.source "BackupDataReassembler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/backup/BackupDataReassembler$InvalidDataException;
    }
.end annotation


# instance fields
.field private mCurrentKey:Ljava/lang/String;

.field private mCurrentPart:I

.field private mOutput:Landroid/app/backup/BackupDataOutput;

.field private mTotalBytes:I

.field private mWrittenBytes:I


# direct methods
.method public constructor <init>(Landroid/app/backup/BackupDataOutput;)V
    .locals 2
    .parameter "output"

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/backup/BackupDataReassembler;->mCurrentKey:Ljava/lang/String;

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/backup/BackupDataReassembler;->mCurrentPart:I

    .line 36
    iput v1, p0, Lcom/google/android/backup/BackupDataReassembler;->mTotalBytes:I

    .line 37
    iput v1, p0, Lcom/google/android/backup/BackupDataReassembler;->mWrittenBytes:I

    .line 51
    iput-object p1, p0, Lcom/google/android/backup/BackupDataReassembler;->mOutput:Landroid/app/backup/BackupDataOutput;

    .line 52
    return-void
.end method

.method private writeKey(Ljava/lang/String;II[B)V
    .locals 3
    .parameter "key"
    .parameter "part"
    .parameter "total"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/backup/BackupDataReassembler$InvalidDataException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/backup/BackupDataReassembler;->mCurrentKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/backup/BackupDataReassembler;->mCurrentKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    .line 89
    new-instance v0, Lcom/google/android/backup/BackupDataReassembler$InvalidDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of order: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/backup/BackupDataReassembler;->mCurrentKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/backup/BackupDataReassembler$InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/google/android/backup/BackupDataReassembler;->mCurrentKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 93
    iget v0, p0, Lcom/google/android/backup/BackupDataReassembler;->mTotalBytes:I

    iget v1, p0, Lcom/google/android/backup/BackupDataReassembler;->mWrittenBytes:I

    if-eq v0, v1, :cond_1

    .line 94
    new-instance v0, Lcom/google/android/backup/BackupDataReassembler$InvalidDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Insufficient data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " follows "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/backup/BackupDataReassembler;->mCurrentKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " written="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/backup/BackupDataReassembler;->mWrittenBytes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " total="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/backup/BackupDataReassembler;->mTotalBytes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/backup/BackupDataReassembler$InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_1
    iput-object p1, p0, Lcom/google/android/backup/BackupDataReassembler;->mCurrentKey:Ljava/lang/String;

    .line 100
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/backup/BackupDataReassembler;->mCurrentPart:I

    .line 104
    :cond_2
    iget v0, p0, Lcom/google/android/backup/BackupDataReassembler;->mCurrentPart:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_3

    .line 129
    :goto_0
    return-void

    .line 106
    :cond_3
    iget v0, p0, Lcom/google/android/backup/BackupDataReassembler;->mCurrentPart:I

    add-int/lit8 v0, v0, 0x1

    if-eq p2, v0, :cond_4

    .line 107
    new-instance v0, Lcom/google/android/backup/BackupDataReassembler$InvalidDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of order: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " part="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " follows part="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/backup/BackupDataReassembler;->mCurrentPart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/backup/BackupDataReassembler$InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_4
    if-nez p2, :cond_5

    .line 112
    iget-object v0, p0, Lcom/google/android/backup/BackupDataReassembler;->mOutput:Landroid/app/backup/BackupDataOutput;

    invoke-virtual {v0, p1, p3}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 113
    iput p3, p0, Lcom/google/android/backup/BackupDataReassembler;->mTotalBytes:I

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/backup/BackupDataReassembler;->mWrittenBytes:I

    .line 116
    :cond_5
    iget v0, p0, Lcom/google/android/backup/BackupDataReassembler;->mWrittenBytes:I

    array-length v1, p4

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/backup/BackupDataReassembler;->mTotalBytes:I

    if-le v0, v1, :cond_6

    .line 117
    new-instance v0, Lcom/google/android/backup/BackupDataReassembler$InvalidDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Excess data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " part="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " written="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/backup/BackupDataReassembler;->mWrittenBytes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " total="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/backup/BackupDataReassembler;->mTotalBytes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/backup/BackupDataReassembler$InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_6
    iget v0, p0, Lcom/google/android/backup/BackupDataReassembler;->mTotalBytes:I

    if-eq p3, v0, :cond_7

    .line 122
    new-instance v0, Lcom/google/android/backup/BackupDataReassembler$InvalidDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistent size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " part="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " total="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " previous total="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/backup/BackupDataReassembler;->mTotalBytes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/backup/BackupDataReassembler$InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_7
    iget-object v0, p0, Lcom/google/android/backup/BackupDataReassembler;->mOutput:Landroid/app/backup/BackupDataOutput;

    array-length v1, p4

    invoke-virtual {v0, p4, v1}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    .line 127
    iput p2, p0, Lcom/google/android/backup/BackupDataReassembler;->mCurrentPart:I

    .line 128
    iget v0, p0, Lcom/google/android/backup/BackupDataReassembler;->mWrittenBytes:I

    array-length v1, p4

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/backup/BackupDataReassembler;->mWrittenBytes:I

    goto/16 :goto_0
.end method


# virtual methods
.method public writeSomeData(Ljava/util/Map;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/backup/BackupDataReassembler$InvalidDataException;
        }
    .end annotation

    .prologue
    .local p1, values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;[B>;"
    const/4 v10, 0x0

    .line 67
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 68
    .local v4, keys:[Ljava/lang/String;
    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 70
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v8, v4

    if-ge v1, v8, :cond_1

    .line 71
    aget-object v3, v4, v1

    .line 72
    .local v3, key:Ljava/lang/String;
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 73
    .local v0, data:[B
    const-string v8, ":#"

    invoke-virtual {v3, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 74
    .local v2, index:I
    const/4 v8, -0x1

    if-eq v2, v8, :cond_0

    .line 75
    new-instance v6, Ljava/text/ParsePosition;

    invoke-direct {v6, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 76
    .local v6, pos:Ljava/text/ParsePosition;
    sget-object v8, Lcom/google/android/backup/BackupDataFragmenter;->PART_FORMAT:Ljava/text/DecimalFormat;

    invoke-virtual {v8, v3, v6}, Ljava/text/DecimalFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 77
    .local v5, part:I
    sget-object v8, Lcom/google/android/backup/BackupDataFragmenter;->TOTAL_FORMAT:Ljava/text/DecimalFormat;

    invoke-virtual {v8, v3, v6}, Ljava/text/DecimalFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v7

    .line 78
    .local v7, total:I
    invoke-virtual {v3, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v5, v7, v0}, Lcom/google/android/backup/BackupDataReassembler;->writeKey(Ljava/lang/String;II[B)V

    .line 70
    .end local v5           #part:I
    .end local v6           #pos:Ljava/text/ParsePosition;
    .end local v7           #total:I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    :cond_0
    array-length v8, v0

    invoke-direct {p0, v3, v10, v8, v0}, Lcom/google/android/backup/BackupDataReassembler;->writeKey(Ljava/lang/String;II[B)V

    .line 81
    const/4 v8, -0x2

    iput v8, p0, Lcom/google/android/backup/BackupDataReassembler;->mCurrentPart:I

    goto :goto_1

    .line 84
    .end local v0           #data:[B
    .end local v2           #index:I
    .end local v3           #key:Ljava/lang/String;
    :cond_1
    return-void
.end method
