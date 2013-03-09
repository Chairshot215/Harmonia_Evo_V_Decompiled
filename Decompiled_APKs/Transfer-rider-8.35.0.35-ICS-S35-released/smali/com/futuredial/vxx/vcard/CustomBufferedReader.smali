.class Lcom/futuredial/vxx/vcard/CustomBufferedReader;
.super Ljava/io/BufferedReader;
.source "VCardParser_V21.java"


# instance fields
.field private mTime:J


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 1109
    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1110
    return-void
.end method


# virtual methods
.method public getTotalmillisecond()J
    .locals 2

    .prologue
    .line 1122
    iget-wide v0, p0, Lcom/futuredial/vxx/vcard/CustomBufferedReader;->mTime:J

    return-wide v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1115
    .local v3, start:J
    invoke-super {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 1116
    .local v2, ret:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1117
    .local v0, end:J
    iget-wide v5, p0, Lcom/futuredial/vxx/vcard/CustomBufferedReader;->mTime:J

    sub-long v7, v0, v3

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/futuredial/vxx/vcard/CustomBufferedReader;->mTime:J

    .line 1118
    return-object v2
.end method
