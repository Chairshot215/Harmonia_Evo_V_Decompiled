.class public Lcom/amazon/thirdparty/Base64$InputStream;
.super Ljava/io/FilterInputStream;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/thirdparty/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputStream"
.end annotation


# instance fields
.field private breakLines:Z

.field private buffer:[B

.field private bufferLength:I

.field private encode:Z

.field private lineLength:I

.field private numSigBytes:I

.field private position:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 1009
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/amazon/thirdparty/Base64$InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 1010
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 4
    .parameter "in"
    .parameter "options"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1038
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1039
    and-int/lit8 v0, p2, 0x8

    const/16 v3, 0x8

    if-eq v0, v3, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/amazon/thirdparty/Base64$InputStream;->breakLines:Z

    .line 1040
    and-int/lit8 v0, p2, 0x1

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/amazon/thirdparty/Base64$InputStream;->encode:Z

    .line 1041
    iget-boolean v0, p0, Lcom/amazon/thirdparty/Base64$InputStream;->encode:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    :goto_2
    iput v0, p0, Lcom/amazon/thirdparty/Base64$InputStream;->bufferLength:I

    .line 1042
    iget v0, p0, Lcom/amazon/thirdparty/Base64$InputStream;->bufferLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/amazon/thirdparty/Base64$InputStream;->buffer:[B

    .line 1043
    const/4 v0, -0x1

    iput v0, p0, Lcom/amazon/thirdparty/Base64$InputStream;->position:I

    .line 1044
    iput v2, p0, Lcom/amazon/thirdparty/Base64$InputStream;->lineLength:I

    .line 1045
    return-void

    :cond_0
    move v0, v2

    .line 1039
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1040
    goto :goto_1

    .line 1041
    :cond_2
    const/4 v0, 0x3

    goto :goto_2
.end method


# virtual methods
.method public read()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v10, 0x4

    const/4 v6, -0x1

    const/4 v9, 0x0

    .line 1056
    iget v7, p0, Lcom/amazon/thirdparty/Base64$InputStream;->position:I

    if-gez v7, :cond_2

    .line 1057
    iget-boolean v7, p0, Lcom/amazon/thirdparty/Base64$InputStream;->encode:Z

    if-eqz v7, :cond_4

    .line 1058
    new-array v1, v8, [B

    .line 1059
    .local v1, b3:[B
    const/4 v5, 0x0

    .line 1060
    .local v5, numBinaryBytes:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v8, :cond_1

    .line 1062
    :try_start_0
    iget-object v7, p0, Lcom/amazon/thirdparty/Base64$InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 1065
    .local v0, b:I
    if-ltz v0, :cond_0

    .line 1066
    int-to-byte v7, v0

    aput-byte v7, v1, v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1067
    add-int/lit8 v5, v5, 0x1

    .line 1060
    .end local v0           #b:I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1071
    :catch_0
    move-exception v3

    .line 1073
    .local v3, e:Ljava/io/IOException;
    if-nez v4, :cond_0

    .line 1074
    throw v3

    .line 1079
    .end local v3           #e:Ljava/io/IOException;
    :cond_1
    if-lez v5, :cond_3

    .line 1080
    iget-object v7, p0, Lcom/amazon/thirdparty/Base64$InputStream;->buffer:[B

    #calls: Lcom/amazon/thirdparty/Base64;->encode3to4([BII[BI)[B
    invoke-static {v1, v9, v5, v7, v9}, Lcom/amazon/thirdparty/Base64;->access$000([BII[BI)[B

    .line 1081
    iput v9, p0, Lcom/amazon/thirdparty/Base64$InputStream;->position:I

    .line 1082
    iput v10, p0, Lcom/amazon/thirdparty/Base64$InputStream;->numSigBytes:I

    .line 1124
    .end local v1           #b3:[B
    .end local v4           #i:I
    .end local v5           #numBinaryBytes:I
    :cond_2
    :goto_1
    iget v7, p0, Lcom/amazon/thirdparty/Base64$InputStream;->position:I

    if-ltz v7, :cond_d

    .line 1126
    iget v7, p0, Lcom/amazon/thirdparty/Base64$InputStream;->position:I

    iget v8, p0, Lcom/amazon/thirdparty/Base64$InputStream;->numSigBytes:I

    if-lt v7, v8, :cond_a

    .line 1143
    :cond_3
    :goto_2
    return v6

    .line 1091
    :cond_4
    new-array v2, v10, [B

    .line 1092
    .local v2, b4:[B
    const/4 v4, 0x0

    .line 1093
    .restart local v4       #i:I
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v10, :cond_7

    .line 1095
    const/4 v0, 0x0

    .line 1097
    .restart local v0       #b:I
    :cond_5
    iget-object v7, p0, Lcom/amazon/thirdparty/Base64$InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 1099
    if-ltz v0, :cond_6

    invoke-static {}, Lcom/amazon/thirdparty/Base64;->access$100()[B

    move-result-object v7

    and-int/lit8 v8, v0, 0x7f

    aget-byte v7, v7, v8

    const/4 v8, -0x5

    if-le v7, v8, :cond_5

    .line 1101
    :cond_6
    if-gez v0, :cond_8

    .line 1107
    .end local v0           #b:I
    :cond_7
    if-ne v4, v10, :cond_9

    .line 1108
    iget-object v7, p0, Lcom/amazon/thirdparty/Base64$InputStream;->buffer:[B

    #calls: Lcom/amazon/thirdparty/Base64;->decode4to3([BI[BI)I
    invoke-static {v2, v9, v7, v9}, Lcom/amazon/thirdparty/Base64;->access$200([BI[BI)I

    move-result v7

    iput v7, p0, Lcom/amazon/thirdparty/Base64$InputStream;->numSigBytes:I

    .line 1109
    iput v9, p0, Lcom/amazon/thirdparty/Base64$InputStream;->position:I

    goto :goto_1

    .line 1104
    .restart local v0       #b:I
    :cond_8
    int-to-byte v7, v0

    aput-byte v7, v2, v4

    .line 1093
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1111
    .end local v0           #b:I
    :cond_9
    if-eqz v4, :cond_3

    .line 1116
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Improperly padded Base64 input."

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1129
    .end local v2           #b4:[B
    .end local v4           #i:I
    :cond_a
    iget-boolean v7, p0, Lcom/amazon/thirdparty/Base64$InputStream;->encode:Z

    if-eqz v7, :cond_b

    iget-boolean v7, p0, Lcom/amazon/thirdparty/Base64$InputStream;->breakLines:Z

    if-eqz v7, :cond_b

    iget v7, p0, Lcom/amazon/thirdparty/Base64$InputStream;->lineLength:I

    const/16 v8, 0x4c

    if-lt v7, v8, :cond_b

    .line 1130
    iput v9, p0, Lcom/amazon/thirdparty/Base64$InputStream;->lineLength:I

    .line 1131
    const/16 v6, 0xa

    goto :goto_2

    .line 1134
    :cond_b
    iget v7, p0, Lcom/amazon/thirdparty/Base64$InputStream;->lineLength:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/amazon/thirdparty/Base64$InputStream;->lineLength:I

    .line 1138
    iget-object v7, p0, Lcom/amazon/thirdparty/Base64$InputStream;->buffer:[B

    iget v8, p0, Lcom/amazon/thirdparty/Base64$InputStream;->position:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/amazon/thirdparty/Base64$InputStream;->position:I

    aget-byte v0, v7, v8

    .line 1140
    .restart local v0       #b:I
    iget v7, p0, Lcom/amazon/thirdparty/Base64$InputStream;->position:I

    iget v8, p0, Lcom/amazon/thirdparty/Base64$InputStream;->bufferLength:I

    if-lt v7, v8, :cond_c

    .line 1141
    iput v6, p0, Lcom/amazon/thirdparty/Base64$InputStream;->position:I

    .line 1143
    :cond_c
    and-int/lit16 v6, v0, 0xff

    goto :goto_2

    .line 1151
    .end local v0           #b:I
    :cond_d
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Error in Base64 code reading stream."

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public read([BII)I
    .locals 4
    .parameter "dest"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1174
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 1175
    invoke-virtual {p0}, Lcom/amazon/thirdparty/Base64$InputStream;->read()I

    move-result v0

    .line 1180
    .local v0, b:I
    if-ltz v0, :cond_0

    .line 1181
    add-int v2, p2, v1

    int-to-byte v3, v0

    aput-byte v3, p1, v2

    .line 1174
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1182
    :cond_0
    if-nez v1, :cond_1

    .line 1183
    const/4 v1, -0x1

    .line 1187
    .end local v0           #b:I
    .end local v1           #i:I
    :cond_1
    return v1
.end method
