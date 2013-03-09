.class public Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x1000

#the value of this static final field might be set in the static constructor
.field public static final DIR_SEPARATOR:C = '\u0000'

.field public static final DIR_SEPARATOR_UNIX:C = '/'

.field public static final DIR_SEPARATOR_WINDOWS:C = '\\'

.field public static final LINE_SEPARATOR:Ljava/lang/String; = null

.field public static final LINE_SEPARATOR_UNIX:Ljava/lang/String; = "\n"

.field public static final LINE_SEPARATOR_WINDOWS:Ljava/lang/String; = "\r\n"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 97
    sget-char v2, Ljava/io/File;->separatorChar:C

    sput-char v2, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->DIR_SEPARATOR:C

    .line 112
    new-instance v0, Ljava/io/StringWriter;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Ljava/io/StringWriter;-><init>(I)V

    .line 113
    .local v0, buf:Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 114
    .local v1, out:Ljava/io/PrintWriter;
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 115
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    return-void
.end method

.method public static closeQuietly(Ljava/io/InputStream;)V
    .locals 1
    .parameter "input"

    .prologue
    .line 177
    if-eqz p0, :cond_0

    .line 178
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 180
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "output"

    .prologue
    .line 195
    if-eqz p0, :cond_0

    .line 196
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/io/Reader;)V
    .locals 1
    .parameter "input"

    .prologue
    .line 141
    if-eqz p0, :cond_0

    .line 142
    :try_start_0
    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/io/Writer;)V
    .locals 1
    .parameter "output"

    .prologue
    .line 159
    if-eqz p0, :cond_0

    .line 160
    :try_start_0
    invoke-virtual {p0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static contentEquals(Ljava/io/InputStream;Ljava/io/InputStream;)Z
    .locals 7
    .parameter "input1"
    .parameter "input2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v6, -0x1

    .line 1217
    instance-of v5, p0, Ljava/io/BufferedInputStream;

    if-nez v5, :cond_0

    .line 1218
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p0
    .local v2, input1:Ljava/io/InputStream;
    move-object p0, v2

    .line 1220
    .end local v2           #input1:Ljava/io/InputStream;
    .restart local p0
    :cond_0
    instance-of v5, p1, Ljava/io/BufferedInputStream;

    if-nez v5, :cond_1

    .line 1221
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p1
    .local v3, input2:Ljava/io/InputStream;
    move-object p1, v3

    .line 1224
    .end local v3           #input2:Ljava/io/InputStream;
    .restart local p1
    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 1225
    .local v0, ch:I
    :goto_0
    if-eq v6, v0, :cond_4

    .line 1226
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 1227
    .local v1, ch2:I
    if-eq v0, v1, :cond_3

    .line 1234
    :cond_2
    :goto_1
    return v4

    .line 1230
    :cond_3
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 1231
    goto :goto_0

    .line 1233
    .end local v1           #ch2:I
    :cond_4
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 1234
    .restart local v1       #ch2:I
    if-ne v1, v6, :cond_2

    const/4 v4, 0x1

    goto :goto_1
.end method

.method public static contentEquals(Ljava/io/Reader;Ljava/io/Reader;)Z
    .locals 7
    .parameter "input1"
    .parameter "input2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v6, -0x1

    .line 1254
    instance-of v5, p0, Ljava/io/BufferedReader;

    if-nez v5, :cond_0

    .line 1255
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .end local p0
    .local v2, input1:Ljava/io/Reader;
    move-object p0, v2

    .line 1257
    .end local v2           #input1:Ljava/io/Reader;
    .restart local p0
    :cond_0
    instance-of v5, p1, Ljava/io/BufferedReader;

    if-nez v5, :cond_1

    .line 1258
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .end local p1
    .local v3, input2:Ljava/io/Reader;
    move-object p1, v3

    .line 1261
    .end local v3           #input2:Ljava/io/Reader;
    .restart local p1
    :cond_1
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v0

    .line 1262
    .local v0, ch:I
    :goto_0
    if-eq v6, v0, :cond_4

    .line 1263
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v1

    .line 1264
    .local v1, ch2:I
    if-eq v0, v1, :cond_3

    .line 1271
    :cond_2
    :goto_1
    return v4

    .line 1267
    :cond_3
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v0

    .line 1268
    goto :goto_0

    .line 1270
    .end local v1           #ch2:I
    :cond_4
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v1

    .line 1271
    .restart local v1       #ch2:I
    if-ne v1, v6, :cond_2

    const/4 v4, 0x1

    goto :goto_1
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 4
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 999
    invoke-static {p0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v0

    .line 1000
    .local v0, count:J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 1001
    const/4 v2, -0x1

    .line 1003
    :goto_0
    return v2

    :cond_0
    long-to-int v2, v0

    goto :goto_0
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/Writer;)I
    .locals 4
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1104
    invoke-static {p0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->copyLarge(Ljava/io/Reader;Ljava/io/Writer;)J

    move-result-wide v0

    .line 1105
    .local v0, count:J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 1106
    const/4 v2, -0x1

    .line 1108
    :goto_0
    return v2

    :cond_0
    long-to-int v2, v0

    goto :goto_0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/Writer;)V
    .locals 1
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1049
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 1050
    .local v0, in:Ljava/io/InputStreamReader;
    invoke-static {v0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 1051
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .parameter "input"
    .parameter "output"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1074
    if-nez p2, :cond_0

    .line 1075
    invoke-static {p0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;)V

    .line 1080
    :goto_0
    return-void

    .line 1077
    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1078
    .local v0, in:Ljava/io/InputStreamReader;
    invoke-static {v0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    goto :goto_0
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/OutputStream;)V
    .locals 1
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1156
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1157
    .local v0, out:Ljava/io/OutputStreamWriter;
    invoke-static {p0, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 1160
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    .line 1161
    return-void
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .parameter "input"
    .parameter "output"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1188
    if-nez p2, :cond_0

    .line 1189
    invoke-static {p0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/OutputStream;)V

    .line 1197
    :goto_0
    return-void

    .line 1191
    :cond_0
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1192
    .local v0, out:Ljava/io/OutputStreamWriter;
    invoke-static {p0, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 1195
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    goto :goto_0
.end method

.method public static copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 6
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1022
    const/16 v4, 0x1000

    new-array v0, v4, [B

    .line 1023
    .local v0, buffer:[B
    const-wide/16 v1, 0x0

    .line 1024
    .local v1, count:J
    const/4 v3, 0x0

    .line 1025
    .local v3, n:I
    :goto_0
    const/4 v4, -0x1

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-eq v4, v3, :cond_0

    .line 1026
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 1027
    int-to-long v4, v3

    add-long/2addr v1, v4

    goto :goto_0

    .line 1029
    :cond_0
    return-wide v1
.end method

.method public static copyLarge(Ljava/io/Reader;Ljava/io/Writer;)J
    .locals 6
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1125
    const/16 v4, 0x1000

    new-array v0, v4, [C

    .line 1126
    .local v0, buffer:[C
    const-wide/16 v1, 0x0

    .line 1127
    .local v1, count:J
    const/4 v3, 0x0

    .line 1128
    .local v3, n:I
    :goto_0
    const/4 v4, -0x1

    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v3

    if-eq v4, v3, :cond_0

    .line 1129
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v3}, Ljava/io/Writer;->write([CII)V

    .line 1130
    int-to-long v4, v3

    add-long/2addr v1, v4

    goto :goto_0

    .line 1132
    :cond_0
    return-wide v1
.end method

.method public static copyWithLimit(Ljava/io/InputStream;Ljava/io/OutputStream;J)J
    .locals 6
    .parameter "input"
    .parameter "output"
    .parameter "limit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1291
    const/16 v4, 0x1000

    new-array v0, v4, [B

    .line 1292
    .local v0, buffer:[B
    const-wide/16 v1, 0x0

    .line 1293
    .local v1, count:J
    const/4 v3, 0x0

    .line 1294
    .local v3, n:I
    :cond_0
    const/4 v4, -0x1

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-eq v4, v3, :cond_1

    .line 1295
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 1296
    int-to-long v4, v3

    add-long/2addr v1, v4

    .line 1297
    const-wide/16 v4, -0x1

    cmp-long v4, p2, v4

    if-eqz v4, :cond_0

    cmp-long v4, v1, p2

    if-lez v4, :cond_0

    .line 1301
    :cond_1
    return-wide v1
.end method

.method public static lineIterator(Ljava/io/InputStream;Ljava/lang/String;)Lcom/htc/util/mail/lib/org/apache/commons/io/LineIterator;
    .locals 2
    .parameter "input"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 575
    const/4 v0, 0x0

    .line 576
    .local v0, reader:Ljava/io/Reader;
    if-nez p1, :cond_0

    .line 577
    new-instance v0, Ljava/io/InputStreamReader;

    .end local v0           #reader:Ljava/io/Reader;
    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 581
    .restart local v0       #reader:Ljava/io/Reader;
    :goto_0
    new-instance v1, Lcom/htc/util/mail/lib/org/apache/commons/io/LineIterator;

    invoke-direct {v1, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/LineIterator;-><init>(Ljava/io/Reader;)V

    return-object v1

    .line 579
    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    .end local v0           #reader:Ljava/io/Reader;
    invoke-direct {v0, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .restart local v0       #reader:Ljava/io/Reader;
    goto :goto_0
.end method

.method public static lineIterator(Ljava/io/Reader;)Lcom/htc/util/mail/lib/org/apache/commons/io/LineIterator;
    .locals 1
    .parameter "reader"

    .prologue
    .line 540
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/LineIterator;

    invoke-direct {v0, p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/LineIterator;-><init>(Ljava/io/Reader;)V

    return-object v0
.end method

.method public static readLines(Ljava/io/InputStream;)Ljava/util/List;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 456
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 457
    .local v0, reader:Ljava/io/InputStreamReader;
    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->readLines(Ljava/io/Reader;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static readLines(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter "input"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 478
    if-nez p1, :cond_0

    .line 479
    invoke-static {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->readLines(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v1

    .line 482
    :goto_0
    return-object v1

    .line 481
    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 482
    .local v0, reader:Ljava/io/InputStreamReader;
    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->readLines(Ljava/io/Reader;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public static readLines(Ljava/io/Reader;)Ljava/util/List;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 500
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 501
    .local v2, reader:Ljava/io/BufferedReader;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 502
    .local v1, list:Ljava/util/List;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 503
    .local v0, line:Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 504
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 507
    :cond_0
    return-object v1
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;

    invoke-direct {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;-><init>()V

    .line 218
    .local v0, output:Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 219
    invoke-virtual {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static toByteArray(Ljava/io/Reader;)[B
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;

    invoke-direct {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;-><init>()V

    .line 236
    .local v0, output:Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/OutputStream;)V

    .line 237
    invoke-virtual {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static toByteArray(Ljava/io/Reader;Ljava/lang/String;)[B
    .locals 2
    .parameter "input"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 259
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;

    invoke-direct {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;-><init>()V

    .line 260
    .local v0, output:Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;
    invoke-static {p0, v0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 261
    invoke-virtual {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static toByteArray(Ljava/lang/String;)[B
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static toCharArray(Ljava/io/InputStream;)[C
    .locals 2
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 296
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 297
    .local v0, output:Ljava/io/CharArrayWriter;
    invoke-static {p0, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;)V

    .line 298
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object v1

    return-object v1
.end method

.method public static toCharArray(Ljava/io/InputStream;Ljava/lang/String;)[C
    .locals 2
    .parameter "is"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 320
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 321
    .local v0, output:Ljava/io/CharArrayWriter;
    invoke-static {p0, v0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V

    .line 322
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object v1

    return-object v1
.end method

.method public static toCharArray(Ljava/io/Reader;)[C
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 339
    .local v0, sw:Ljava/io/CharArrayWriter;
    invoke-static {p0, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 340
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object v1

    return-object v1
.end method

.method public static toInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .parameter "input"

    .prologue
    .line 594
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 595
    .local v0, bytes:[B
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v1
.end method

.method public static toInputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .parameter "input"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 612
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 613
    .local v0, bytes:[B
    :goto_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v1

    .line 612
    .end local v0           #bytes:[B
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method public static toString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 358
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 359
    .local v0, sw:Ljava/io/StringWriter;
    invoke-static {p0, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;)V

    .line 360
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "input"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 381
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 382
    .local v0, sw:Ljava/io/StringWriter;
    invoke-static {p0, v0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V

    .line 383
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toString(Ljava/io/Reader;)Ljava/lang/String;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 398
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 399
    .local v0, sw:Ljava/io/StringWriter;
    invoke-static {p0, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 400
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toString([B)Ljava/lang/String;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 414
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static toString([BLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "input"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 433
    if-nez p1, :cond_0

    .line 434
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    .line 436
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method

.method public static write(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 1
    .parameter "data"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 783
    if-eqz p0, :cond_0

    .line 784
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 786
    :cond_0
    return-void
.end method

.method public static write(Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .parameter "data"
    .parameter "output"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 806
    if-eqz p0, :cond_0

    .line 807
    if-nez p2, :cond_1

    .line 808
    invoke-static {p0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->write(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 813
    :cond_0
    :goto_0
    return-void

    .line 810
    :cond_1
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method

.method public static write(Ljava/lang/String;Ljava/io/Writer;)V
    .locals 0
    .parameter "data"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 763
    if-eqz p0, :cond_0

    .line 764
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 766
    :cond_0
    return-void
.end method

.method public static write(Ljava/lang/StringBuffer;Ljava/io/OutputStream;)V
    .locals 1
    .parameter "data"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 848
    if-eqz p0, :cond_0

    .line 849
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 851
    :cond_0
    return-void
.end method

.method public static write(Ljava/lang/StringBuffer;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .parameter "data"
    .parameter "output"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 871
    if-eqz p0, :cond_0

    .line 872
    if-nez p2, :cond_1

    .line 873
    invoke-static {p0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->write(Ljava/lang/StringBuffer;Ljava/io/OutputStream;)V

    .line 878
    :cond_0
    :goto_0
    return-void

    .line 875
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method

.method public static write(Ljava/lang/StringBuffer;Ljava/io/Writer;)V
    .locals 1
    .parameter "data"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 828
    if-eqz p0, :cond_0

    .line 829
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 831
    :cond_0
    return-void
.end method

.method public static write([BLjava/io/OutputStream;)V
    .locals 0
    .parameter "data"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 630
    if-eqz p0, :cond_0

    .line 631
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 633
    :cond_0
    return-void
.end method

.method public static write([BLjava/io/Writer;)V
    .locals 1
    .parameter "data"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 649
    if-eqz p0, :cond_0

    .line 650
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 652
    :cond_0
    return-void
.end method

.method public static write([BLjava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .parameter "data"
    .parameter "output"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 673
    if-eqz p0, :cond_0

    .line 674
    if-nez p2, :cond_1

    .line 675
    invoke-static {p0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->write([BLjava/io/Writer;)V

    .line 680
    :cond_0
    :goto_0
    return-void

    .line 677
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static write([CLjava/io/OutputStream;)V
    .locals 1
    .parameter "data"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 717
    if-eqz p0, :cond_0

    .line 718
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 720
    :cond_0
    return-void
.end method

.method public static write([CLjava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .parameter "data"
    .parameter "output"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 742
    if-eqz p0, :cond_0

    .line 743
    if-nez p2, :cond_1

    .line 744
    invoke-static {p0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->write([CLjava/io/OutputStream;)V

    .line 749
    :cond_0
    :goto_0
    return-void

    .line 746
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method

.method public static write([CLjava/io/Writer;)V
    .locals 0
    .parameter "data"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 696
    if-eqz p0, :cond_0

    .line 697
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write([C)V

    .line 699
    :cond_0
    return-void
.end method

.method public static writeLines(Ljava/util/Collection;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 3
    .parameter "lines"
    .parameter "lineEnding"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 896
    if-nez p0, :cond_1

    .line 909
    :cond_0
    return-void

    .line 899
    :cond_1
    if-nez p1, :cond_2

    .line 900
    sget-object p1, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 902
    :cond_2
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 903
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 904
    .local v1, line:Ljava/lang/Object;
    if-eqz v1, :cond_3

    .line 905
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write([B)V

    .line 907
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method

.method public static writeLines(Ljava/util/Collection;Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 3
    .parameter "lines"
    .parameter "lineEnding"
    .parameter "output"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 929
    if-nez p3, :cond_1

    .line 930
    invoke-static {p0, p1, p2}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->writeLines(Ljava/util/Collection;Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 946
    :cond_0
    return-void

    .line 932
    :cond_1
    if-eqz p0, :cond_0

    .line 935
    if-nez p1, :cond_2

    .line 936
    sget-object p1, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 938
    :cond_2
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 939
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 940
    .local v1, line:Ljava/lang/Object;
    if-eqz v1, :cond_3

    .line 941
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write([B)V

    .line 943
    :cond_3
    invoke-virtual {p1, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method

.method public static writeLines(Ljava/util/Collection;Ljava/lang/String;Ljava/io/Writer;)V
    .locals 3
    .parameter "lines"
    .parameter "lineEnding"
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 961
    if-nez p0, :cond_1

    .line 974
    :cond_0
    return-void

    .line 964
    :cond_1
    if-nez p1, :cond_2

    .line 965
    sget-object p1, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 967
    :cond_2
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 968
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 969
    .local v1, line:Ljava/lang/Object;
    if-eqz v1, :cond_3

    .line 970
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 972
    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method
