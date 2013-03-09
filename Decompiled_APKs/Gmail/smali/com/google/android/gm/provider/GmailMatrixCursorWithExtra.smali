.class public Lcom/google/android/gm/provider/GmailMatrixCursorWithExtra;
.super Landroid/database/AbstractCursor;
.source "GmailMatrixCursorWithExtra.java"

# interfaces
.implements Lcom/google/android/gm/provider/AppendableCursor;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final columnCount:I

.field private final columnNames:[Ljava/lang/String;

.field private data:[Ljava/lang/Object;

.field private final mExtras:Landroid/os/Bundle;

.field private rowCount:I


# direct methods
.method public constructor <init>([Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1
    .parameter "columnNames"
    .parameter "initialCapacity"
    .parameter "extras"

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gm/provider/GmailMatrixCursorWithExtra;->rowCount:I

    .line 55
    iput-object p1, p0, Lcom/google/android/gm/provider/GmailMatrixCursorWithExtra;->columnNames:[Ljava/lang/String;

    .line 56
    array-length v0, p1

    iput v0, p0, Lcom/google/android/gm/provider/GmailMatrixCursorWithExtra;->columnCount:I

    .line 57
    iput-object p3, p0, Lcom/google/android/gm/provider/GmailMatrixCursorWithExtra;->mExtras:Landroid/os/Bundle;

    .line 59
    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    .line 60
    const/4 p2, 0x1

    .line 63
    :cond_0
    iget v0, p0, Lcom/google/android/gm/provider/GmailMatrixCursorWithExtra;->columnCount:I

    mul-int/2addr v0, p2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gm/provider/GmailMatrixCursorWithExtra;->data:[Ljava/lang/Object;

    .line 64
    return-void
.end method

.method private ensureCapacity(I)V
    .locals 5
    .parameter "size"

    .prologue
    const/4 v4, 0x0

    .line 182
    iget-object v2, p0, Lcom/google/android/gm/provider/GmailMatrixCursorWithExtra;->data:[Ljava/lang/Object;

    array-length v2, v2

    if-le p1, v2, :cond_1

    .line 183
    iget-object v1, p0, Lcom/google/android/gm/provider/GmailMatrixCursorWithExtra;->data:[Ljava/lang/Object;

    .line 184
    .local v1, oldData:[Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/android/gm/provider/GmailMatrixCursorWithExtra;->data:[Ljava/lang/Object;

    array-length v2, v2

    mul-int/lit8 v0, v2, 0x2

    .line 185
    .local v0, newSize:I
    if-ge v0, p1, :cond_0

    .line 186
    move v0, p1

    .line 188
    :cond_0
    new-array v2, v0, [Ljava/lang/Object;

    iput-object v2, p0, Lcom/google/android/gm/provider/GmailMatrixCursorWithExtra;->data:[Ljava/lang/Object;

    .line 189
    iget-object v2, p0, Lcom/google/android/gm/provider/GmailMatrixCursorWithExtra;->data:[Ljava/lang/Object;

    array-length v3, v1

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    .end local v0           #newSize:I
    .end local v1           #oldData:[Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private get(I)Ljava/lang/Object;
    .locals 3
    .parameter "column"

    .prologue
    .line 76
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/android/gm/provider/GmailMatrixCursorWithExtra;->columnCount:I

    if-lt p1, v0, :cond_1

    .line 77
    :cond_0
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested column: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", # of columns: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gm/provider/GmailMatrixCursorWithExtra;->columnCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_1
    iget v0, p0, Lcom/google/android/gm/provider/GmailMatrixCursorWithExtra;->mPos:I

    if-gez v0, :cond_2

    .line 81
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v1, "Before first row."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_2
    iget v0, p0, Lcom/google/android/gm/provider/GmailMatrixCursorWithExtra;->mPos:I

    iget v1, p0, Lcom/google/android/gm/provider/GmailMatrixCursorWithExtra;->rowCount:I

    if-lt v0, v1, :cond_3

    .line 84
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v1, "After last row."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_3
    iget-object v0, p0, Lcom/google/android/gm/provider/GmailMatrixCursorWithExtra;->data:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gm/provider/GmailMatrixCursorWithExtra;->mPos:I

    iget v2, p0, Lcom/google/android/gm/provider/GmailMatrixCursorWithExtra;->columnCount:I

    mul-int/2addr v1, v2

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getTypeOfObject(Ljava/lang/Object;)I
    .locals 1
    .parameter "obj"

    .prologue
    .line 319
    if-nez p0, :cond_0

    .line 320
    const/4 v0, 0x0

    .line 329
    :goto_0
    return v0

    .line 321
    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    .line 322
    const/4 v0, 0x4

    goto :goto_0

    .line 323
    :cond_1
    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_3

    .line 324
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 325
    :cond_3
    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_4

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_4

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_4

    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_5

    .line 327
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 329
    :cond_5
    const/4 v0, 0x3

    goto :goto_0
.end method


# virtual methods
.method public addRow([Ljava/lang/Object;)V
    .locals 4
    .parameter "columnValues"

    .prologue
    .line 114
    array-length v1, p1

    iget v2, p0, Lcom/google/android/gm/provider/GmailMatrixCursorWithExtra;->columnCount:I

    if-eq v1, v2, :cond_0

    .line 115
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "columnNames.length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gm/provider/GmailMatrixCursorWithExtra;->columnCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", columnValues.length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 120
    :cond_0
    iget v1, p0, Lcom/google/android/gm/provider/GmailMatrixCursorWithExtra;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gm/provider/GmailMatrixCursorWithExtra;->rowCount:I

    iget v2, p0, Lcom/google/android/gm/provider/GmailMatrixCursorWithExtra;->columnCount:I

    mul-int v0, v1, v2

    .line 121
    .local v0, start:I
    iget v1, p0, Lcom/google/android/gm/provider/GmailMatrixCursorWithExtra;->columnCount:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/google/android/gm/provider/GmailMatrixCursorWithExtra;->ensureCapacity(I)V

    .line 122
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gm/provider/GmailMatrixCursorWithExtra;->data:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/gm/provider/GmailMatrixCursorWithExtra;->columnCount:I

    invoke-static {p1, v1, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    return-void
.end method

.method public getBlob(I)[B
    .locals 1
    .parameter "column"

    .prologue
    .line 287
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/GmailMatrixCursorWithExtra;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 288
    .local v0, value:Ljava/lang/Object;
    check-cast v0, [B

    .end local v0           #value:Ljava/lang/Object;
    check-cast v0, [B

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/android/gm/provider/GmailMatrixCursorWithExtra;->columnNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/google/android/gm/provider/GmailMatrixCursorWithExtra;->rowCount:I

    return v0
.end method

.method public getDouble(I)D
    .locals 3
    .parameter "column"

    .prologue
    .line 279
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/GmailMatrixCursorWithExtra;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 280
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    .line 282
    .end local v0           #value:Ljava/lang/Object;
    :goto_0
    return-wide v1

    .line 281
    .restart local v0       #value:Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    goto :goto_0

    .line 282
    .restart local v0       #value:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    goto :goto_0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/gm/provider/GmailMatrixCursorWithExtra;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getFloat(I)F
    .locals 2
    .parameter "column"

    .prologue
    .line 271
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/GmailMatrixCursorWithExtra;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 272
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 274
    .end local v0           #value:Ljava/lang/Object;
    :goto_0
    return v1

    .line 273
    .restart local v0       #value:Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    goto :goto_0

    .line 274
    .restart local v0       #value:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    goto :goto_0
.end method

.method public getInt(I)I
    .locals 2
    .parameter "column"

    .prologue
    .line 255
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/GmailMatrixCursorWithExtra;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 256
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 258
    .end local v0           #value:Ljava/lang/Object;
    :goto_0
    return v1

    .line 257
    .restart local v0       #value:Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    goto :goto_0

    .line 258
    .restart local v0       #value:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getLong(I)J
    .locals 3
    .parameter "column"

    .prologue
    .line 263
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/GmailMatrixCursorWithExtra;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 264
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    .line 266
    .end local v0           #value:Ljava/lang/Object;
    :goto_0
    return-wide v1

    .line 265
    .restart local v0       #value:Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    goto :goto_0

    .line 266
    .restart local v0       #value:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_0
.end method

.method public getShort(I)S
    .locals 2
    .parameter "column"

    .prologue
    .line 247
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/GmailMatrixCursorWithExtra;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 248
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 250
    .end local v0           #value:Ljava/lang/Object;
    :goto_0
    return v1

    .line 249
    .restart local v0       #value:Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v1

    goto :goto_0

    .line 250
    .restart local v0       #value:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .parameter "column"

    .prologue
    .line 240
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/GmailMatrixCursorWithExtra;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 241
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 242
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getType(I)I
    .locals 1
    .parameter "column"

    .prologue
    .line 293
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/GmailMatrixCursorWithExtra;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gm/provider/GmailMatrixCursorWithExtra;->getTypeOfObject(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isNull(I)Z
    .locals 1
    .parameter "column"

    .prologue
    .line 298
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/GmailMatrixCursorWithExtra;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
