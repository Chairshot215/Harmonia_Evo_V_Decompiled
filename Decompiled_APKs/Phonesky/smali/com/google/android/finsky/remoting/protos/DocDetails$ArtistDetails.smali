.class public final Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ArtistDetails"
.end annotation


# instance fields
.field private cachedSize:I

.field private detailsUrl_:Ljava/lang/String;

.field private externalLinks_:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;

.field private hasDetailsUrl:Z

.field private hasExternalLinks:Z

.field private hasName:Z

.field private name_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2060
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2065
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->detailsUrl_:Ljava/lang/String;

    .line 2082
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->name_:Ljava/lang/String;

    .line 2099
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->externalLinks_:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;

    .line 2142
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->cachedSize:I

    .line 2060
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2145
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->cachedSize:I

    if-gez v0, :cond_0

    .line 2147
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->getSerializedSize()I

    .line 2149
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->cachedSize:I

    return v0
.end method

.method public getDetailsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2066
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->detailsUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalLinks()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;
    .locals 1

    .prologue
    .line 2101
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->externalLinks_:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2083
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2154
    const/4 v0, 0x0

    .line 2155
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->hasDetailsUrl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2156
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->getDetailsUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2159
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->hasName()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2160
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2163
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->hasExternalLinks()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2164
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->getExternalLinks()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2167
    :cond_2
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->cachedSize:I

    .line 2168
    return v0
.end method

.method public hasDetailsUrl()Z
    .locals 1

    .prologue
    .line 2067
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->hasDetailsUrl:Z

    return v0
.end method

.method public hasExternalLinks()Z
    .locals 1

    .prologue
    .line 2100
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->hasExternalLinks:Z

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 2084
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->hasName:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2176
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2177
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2181
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2182
    :sswitch_0
    return-object p0

    .line 2187
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->setDetailsUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    goto :goto_0

    .line 2191
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    goto :goto_0

    .line 2195
    :sswitch_3
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;-><init>()V

    .line 2196
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2197
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->setExternalLinks(Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;)Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    goto :goto_0

    .line 2177
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
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
    .line 2057
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    move-result-object v0

    return-object v0
.end method

.method public setDetailsUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 2069
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->hasDetailsUrl:Z

    .line 2070
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->detailsUrl_:Ljava/lang/String;

    .line 2071
    return-object p0
.end method

.method public setExternalLinks(Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;)Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 2103
    if-nez p1, :cond_0

    .line 2104
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2106
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->hasExternalLinks:Z

    .line 2107
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->externalLinks_:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;

    .line 2108
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 2086
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->hasName:Z

    .line 2087
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->name_:Ljava/lang/String;

    .line 2088
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
    .line 2131
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->hasDetailsUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2132
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->getDetailsUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2134
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2135
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2137
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->hasExternalLinks()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2138
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->getExternalLinks()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2140
    :cond_2
    return-void
.end method
