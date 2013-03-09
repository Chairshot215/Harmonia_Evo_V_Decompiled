.class public final Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocAnnotations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocAnnotations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TileTemplate"
.end annotation


# instance fields
.field private cachedSize:I

.field private colorTextArgb_:Ljava/lang/String;

.field private colorThemeArgb_:Ljava/lang/String;

.field private hasColorTextArgb:Z

.field private hasColorThemeArgb:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1923
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1928
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;->colorThemeArgb_:Ljava/lang/String;

    .line 1945
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;->colorTextArgb_:Ljava/lang/String;

    .line 1981
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;->cachedSize:I

    .line 1923
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1984
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;->cachedSize:I

    if-gez v0, :cond_0

    .line 1986
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;->getSerializedSize()I

    .line 1988
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;->cachedSize:I

    return v0
.end method

.method public getColorTextArgb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1946
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;->colorTextArgb_:Ljava/lang/String;

    return-object v0
.end method

.method public getColorThemeArgb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1929
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;->colorThemeArgb_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1993
    const/4 v0, 0x0

    .line 1994
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;->hasColorThemeArgb()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1995
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;->getColorThemeArgb()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1998
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;->hasColorTextArgb()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1999
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;->getColorTextArgb()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2002
    :cond_1
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;->cachedSize:I

    .line 2003
    return v0
.end method

.method public hasColorTextArgb()Z
    .locals 1

    .prologue
    .line 1947
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;->hasColorTextArgb:Z

    return v0
.end method

.method public hasColorThemeArgb()Z
    .locals 1

    .prologue
    .line 1930
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;->hasColorThemeArgb:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2011
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2012
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2016
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2017
    :sswitch_0
    return-object p0

    .line 2022
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;->setColorThemeArgb(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    goto :goto_0

    .line 2026
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;->setColorTextArgb(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    goto :goto_0

    .line 2012
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1920
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    move-result-object v0

    return-object v0
.end method

.method public setColorTextArgb(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    .locals 1
    .parameter "value"

    .prologue
    .line 1949
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;->hasColorTextArgb:Z

    .line 1950
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;->colorTextArgb_:Ljava/lang/String;

    .line 1951
    return-object p0
.end method

.method public setColorThemeArgb(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    .locals 1
    .parameter "value"

    .prologue
    .line 1932
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;->hasColorThemeArgb:Z

    .line 1933
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;->colorThemeArgb_:Ljava/lang/String;

    .line 1934
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1973
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;->hasColorThemeArgb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1974
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;->getColorThemeArgb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1976
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;->hasColorTextArgb()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1977
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;->getColorTextArgb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1979
    :cond_1
    return-void
.end method
