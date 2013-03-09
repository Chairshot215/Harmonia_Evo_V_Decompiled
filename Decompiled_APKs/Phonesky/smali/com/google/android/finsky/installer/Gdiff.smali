.class public Lcom/google/android/finsky/installer/Gdiff;
.super Ljava/lang/Object;
.source "Gdiff.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/installer/Gdiff$FileFormatException;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method private static copyFromOriginal([BLjava/io/RandomAccessFile;Ljava/io/OutputStream;JI)V
    .locals 5
    .parameter "buffer"
    .parameter "inputFile"
    .parameter "output"
    .parameter "inputOffset"
    .parameter "copyLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x4000

    .line 179
    if-gez p5, :cond_0

    .line 180
    new-instance v2, Ljava/io/IOException;

    const-string v3, "copyLength negative"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 182
    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v3, p3, v3

    if-gez v3, :cond_1

    .line 183
    new-instance v2, Ljava/io/IOException;

    const-string v3, "inputOffset negative"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 186
    :cond_1
    :try_start_0
    invoke-virtual {p1, p3, p4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 187
    :goto_0
    if-lez p5, :cond_3

    .line 188
    if-ge p5, v2, :cond_2

    move v1, p5

    .line 189
    .local v1, spanLength:I
    :goto_1
    const/4 v3, 0x0

    invoke-virtual {p1, p0, v3, v1}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 190
    const/4 v3, 0x0

    invoke-virtual {p2, p0, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    sub-int/2addr p5, v1

    .line 192
    goto :goto_0

    .end local v1           #spanLength:I
    :cond_2
    move v1, v2

    .line 188
    goto :goto_1

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, e:Ljava/io/EOFException;
    new-instance v2, Ljava/io/IOException;

    const-string v3, "patch underrun"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 196
    .end local v0           #e:Ljava/io/EOFException;
    :cond_3
    return-void
.end method

.method private static copyFromPatch([BLjava/io/DataInputStream;Ljava/io/OutputStream;I)V
    .locals 4
    .parameter "buffer"
    .parameter "patchDataStream"
    .parameter "output"
    .parameter "copyLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x4000

    .line 159
    if-gez p3, :cond_0

    .line 160
    new-instance v2, Ljava/io/IOException;

    const-string v3, "copyLength negative"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 163
    :cond_0
    :goto_0
    if-lez p3, :cond_2

    .line 164
    if-ge p3, v2, :cond_1

    move v1, p3

    .line 165
    .local v1, spanLength:I
    :goto_1
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1, p0, v3, v1}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 166
    const/4 v3, 0x0

    invoke-virtual {p2, p0, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    sub-int/2addr p3, v1

    .line 168
    goto :goto_0

    .end local v1           #spanLength:I
    :cond_1
    move v1, v2

    .line 164
    goto :goto_1

    .line 169
    .restart local v1       #spanLength:I
    :catch_0
    move-exception v0

    .line 170
    .local v0, e:Ljava/io/EOFException;
    new-instance v2, Ljava/io/IOException;

    const-string v3, "patch underrun"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 172
    .end local v0           #e:Ljava/io/EOFException;
    .end local v1           #spanLength:I
    :cond_2
    return-void
.end method

.method public static patch(Ljava/io/RandomAccessFile;Ljava/io/InputStream;Ljava/io/OutputStream;J)J
    .locals 18
    .parameter "inputFile"
    .parameter "patchFile"
    .parameter "output"
    .parameter "maxOutputLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    const/16 v2, 0x4000

    new-array v1, v2, [B

    .line 63
    .local v1, buffer:[B
    const-wide/16 v9, 0x0

    .line 66
    .local v9, outputSize:J
    new-instance v12, Ljava/io/BufferedInputStream;

    const/16 v2, 0x100

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 68
    .end local p1
    .local v12, patchFile:Ljava/io/InputStream;
    new-instance v11, Ljava/io/DataInputStream;

    invoke-direct {v11, v12}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 71
    .local v11, patchDataStream:Ljava/io/DataInputStream;
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 72
    .local v8, magic:I
    const v2, -0x2e002e01

    if-eq v8, v2, :cond_0

    .line 73
    new-instance v2, Lcom/google/android/finsky/installer/Gdiff$FileFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unexpected magic="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, "%x"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/finsky/installer/Gdiff$FileFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 76
    :cond_0
    invoke-virtual {v11}, Ljava/io/DataInputStream;->read()I

    move-result v13

    .line 77
    .local v13, version:I
    const/4 v2, 0x4

    if-eq v13, v2, :cond_1

    .line 78
    new-instance v2, Lcom/google/android/finsky/installer/Gdiff$FileFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unexpected version="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/finsky/installer/Gdiff$FileFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 85
    :cond_1
    invoke-virtual {v11}, Ljava/io/DataInputStream;->read()I

    move-result v7

    .line 86
    .local v7, command:I
    sparse-switch v7, :sswitch_data_0

    .line 143
    move v6, v7

    .line 144
    .local v6, copyLength:I
    move-object/from16 v0, p2

    invoke-static {v1, v11, v0, v6}, Lcom/google/android/finsky/installer/Gdiff;->copyFromPatch([BLjava/io/DataInputStream;Ljava/io/OutputStream;I)V

    .line 147
    :goto_0
    int-to-long v2, v6

    add-long/2addr v9, v2

    .line 148
    cmp-long v2, v9, p3

    if-lez v2, :cond_1

    .line 149
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Output length overrun"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 88
    .end local v6           #copyLength:I
    :sswitch_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Patch file overrun"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 92
    :sswitch_1
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v6

    .line 93
    .restart local v6       #copyLength:I
    move-object/from16 v0, p2

    invoke-static {v1, v11, v0, v6}, Lcom/google/android/finsky/installer/Gdiff;->copyFromPatch([BLjava/io/DataInputStream;Ljava/io/OutputStream;I)V

    goto :goto_0

    .line 96
    .end local v6           #copyLength:I
    :sswitch_2
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 97
    .restart local v6       #copyLength:I
    move-object/from16 v0, p2

    invoke-static {v1, v11, v0, v6}, Lcom/google/android/finsky/installer/Gdiff;->copyFromPatch([BLjava/io/DataInputStream;Ljava/io/OutputStream;I)V

    goto :goto_0

    .line 100
    .end local v6           #copyLength:I
    :sswitch_3
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    int-to-long v4, v2

    .line 101
    .local v4, copyOffset:J
    invoke-virtual {v11}, Ljava/io/DataInputStream;->read()I

    move-result v6

    .line 102
    .restart local v6       #copyLength:I
    const/4 v2, -0x1

    if-ne v6, v2, :cond_2

    .line 103
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unexpected end of patch"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move-object/from16 v2, p0

    move-object/from16 v3, p2

    .line 105
    invoke-static/range {v1 .. v6}, Lcom/google/android/finsky/installer/Gdiff;->copyFromOriginal([BLjava/io/RandomAccessFile;Ljava/io/OutputStream;JI)V

    goto :goto_0

    .line 108
    .end local v4           #copyOffset:J
    .end local v6           #copyLength:I
    :sswitch_4
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    int-to-long v4, v2

    .line 109
    .restart local v4       #copyOffset:J
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v6

    .restart local v6       #copyLength:I
    move-object/from16 v2, p0

    move-object/from16 v3, p2

    .line 110
    invoke-static/range {v1 .. v6}, Lcom/google/android/finsky/installer/Gdiff;->copyFromOriginal([BLjava/io/RandomAccessFile;Ljava/io/OutputStream;JI)V

    goto :goto_0

    .line 113
    .end local v4           #copyOffset:J
    .end local v6           #copyLength:I
    :sswitch_5
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    int-to-long v4, v2

    .line 114
    .restart local v4       #copyOffset:J
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .restart local v6       #copyLength:I
    move-object/from16 v2, p0

    move-object/from16 v3, p2

    .line 115
    invoke-static/range {v1 .. v6}, Lcom/google/android/finsky/installer/Gdiff;->copyFromOriginal([BLjava/io/RandomAccessFile;Ljava/io/OutputStream;JI)V

    goto :goto_0

    .line 118
    .end local v4           #copyOffset:J
    .end local v6           #copyLength:I
    :sswitch_6
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    int-to-long v4, v2

    .line 119
    .restart local v4       #copyOffset:J
    invoke-virtual {v11}, Ljava/io/DataInputStream;->read()I

    move-result v6

    .line 120
    .restart local v6       #copyLength:I
    const/4 v2, -0x1

    if-ne v6, v2, :cond_3

    .line 121
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unexpected end of patch"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    move-object/from16 v2, p0

    move-object/from16 v3, p2

    .line 123
    invoke-static/range {v1 .. v6}, Lcom/google/android/finsky/installer/Gdiff;->copyFromOriginal([BLjava/io/RandomAccessFile;Ljava/io/OutputStream;JI)V

    goto/16 :goto_0

    .line 126
    .end local v4           #copyOffset:J
    .end local v6           #copyLength:I
    :sswitch_7
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    int-to-long v4, v2

    .line 127
    .restart local v4       #copyOffset:J
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v6

    .restart local v6       #copyLength:I
    move-object/from16 v2, p0

    move-object/from16 v3, p2

    .line 128
    invoke-static/range {v1 .. v6}, Lcom/google/android/finsky/installer/Gdiff;->copyFromOriginal([BLjava/io/RandomAccessFile;Ljava/io/OutputStream;JI)V

    goto/16 :goto_0

    .line 131
    .end local v4           #copyOffset:J
    .end local v6           #copyLength:I
    :sswitch_8
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    int-to-long v4, v2

    .line 132
    .restart local v4       #copyOffset:J
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .restart local v6       #copyLength:I
    move-object/from16 v2, p0

    move-object/from16 v3, p2

    .line 133
    invoke-static/range {v1 .. v6}, Lcom/google/android/finsky/installer/Gdiff;->copyFromOriginal([BLjava/io/RandomAccessFile;Ljava/io/OutputStream;JI)V

    goto/16 :goto_0

    .line 136
    .end local v4           #copyOffset:J
    .end local v6           #copyLength:I
    :sswitch_9
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    .line 137
    .restart local v4       #copyOffset:J
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .restart local v6       #copyLength:I
    move-object/from16 v2, p0

    move-object/from16 v3, p2

    .line 138
    invoke-static/range {v1 .. v6}, Lcom/google/android/finsky/installer/Gdiff;->copyFromOriginal([BLjava/io/RandomAccessFile;Ljava/io/OutputStream;JI)V

    goto/16 :goto_0

    .line 90
    .end local v4           #copyOffset:J
    .end local v6           #copyLength:I
    :sswitch_a
    return-wide v9

    .line 86
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_a
        0xf7 -> :sswitch_1
        0xf8 -> :sswitch_2
        0xf9 -> :sswitch_3
        0xfa -> :sswitch_4
        0xfb -> :sswitch_5
        0xfc -> :sswitch_6
        0xfd -> :sswitch_7
        0xfe -> :sswitch_8
        0xff -> :sswitch_9
    .end sparse-switch
.end method
