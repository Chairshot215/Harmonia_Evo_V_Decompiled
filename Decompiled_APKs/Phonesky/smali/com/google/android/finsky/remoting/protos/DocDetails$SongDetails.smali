.class public final Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SongDetails"
.end annotation


# instance fields
.field private albumName_:Ljava/lang/String;

.field private cachedSize:I

.field private details_:Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

.field private displayArtist_:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

.field private hasAlbumName:Z

.field private hasDetails:Z

.field private hasDisplayArtist:Z

.field private hasName:Z

.field private hasPreviewUrl:Z

.field private hasTrackNumber:Z

.field private name_:Ljava/lang/String;

.field private previewUrl_:Ljava/lang/String;

.field private trackNumber_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1808
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1813
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->name_:Ljava/lang/String;

    .line 1830
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->details_:Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

    .line 1850
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->albumName_:Ljava/lang/String;

    .line 1867
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->trackNumber_:I

    .line 1884
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->previewUrl_:Ljava/lang/String;

    .line 1901
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->displayArtist_:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    .line 1956
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->cachedSize:I

    .line 1808
    return-void
.end method


# virtual methods
.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1851
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->albumName_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1959
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->cachedSize:I

    if-gez v0, :cond_0

    .line 1961
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->getSerializedSize()I

    .line 1963
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->cachedSize:I

    return v0
.end method

.method public getDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;
    .locals 1

    .prologue
    .line 1832
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->details_:Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

    return-object v0
.end method

.method public getDisplayArtist()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;
    .locals 1

    .prologue
    .line 1903
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->displayArtist_:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1814
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1885
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->previewUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1968
    const/4 v0, 0x0

    .line 1969
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1970
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1973
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasDetails()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1974
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->getDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1977
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasAlbumName()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1978
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->getAlbumName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1981
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasTrackNumber()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1982
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->getTrackNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1985
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasPreviewUrl()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1986
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->getPreviewUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1989
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasDisplayArtist()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1990
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->getDisplayArtist()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1993
    :cond_5
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->cachedSize:I

    .line 1994
    return v0
.end method

.method public getTrackNumber()I
    .locals 1

    .prologue
    .line 1868
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->trackNumber_:I

    return v0
.end method

.method public hasAlbumName()Z
    .locals 1

    .prologue
    .line 1852
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasAlbumName:Z

    return v0
.end method

.method public hasDetails()Z
    .locals 1

    .prologue
    .line 1831
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasDetails:Z

    return v0
.end method

.method public hasDisplayArtist()Z
    .locals 1

    .prologue
    .line 1902
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasDisplayArtist:Z

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 1815
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasName:Z

    return v0
.end method

.method public hasPreviewUrl()Z
    .locals 1

    .prologue
    .line 1886
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasPreviewUrl:Z

    return v0
.end method

.method public hasTrackNumber()Z
    .locals 1

    .prologue
    .line 1869
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasTrackNumber:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2002
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2003
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2007
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2008
    :sswitch_0
    return-object p0

    .line 2013
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    goto :goto_0

    .line 2017
    :sswitch_2
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;-><init>()V

    .line 2018
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2019
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->setDetails(Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;)Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    goto :goto_0

    .line 2023
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->setAlbumName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    goto :goto_0

    .line 2027
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->setTrackNumber(I)Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    goto :goto_0

    .line 2031
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->setPreviewUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    goto :goto_0

    .line 2035
    :sswitch_6
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;-><init>()V

    .line 2036
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2037
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->setDisplayArtist(Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;)Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    goto :goto_0

    .line 2003
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
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
    .line 1805
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    move-result-object v0

    return-object v0
.end method

.method public setAlbumName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 1854
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasAlbumName:Z

    .line 1855
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->albumName_:Ljava/lang/String;

    .line 1856
    return-object p0
.end method

.method public setDetails(Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;)Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 1834
    if-nez p1, :cond_0

    .line 1835
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1837
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasDetails:Z

    .line 1838
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->details_:Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

    .line 1839
    return-object p0
.end method

.method public setDisplayArtist(Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;)Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 1905
    if-nez p1, :cond_0

    .line 1906
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1908
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasDisplayArtist:Z

    .line 1909
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->displayArtist_:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    .line 1910
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 1817
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasName:Z

    .line 1818
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->name_:Ljava/lang/String;

    .line 1819
    return-object p0
.end method

.method public setPreviewUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 1888
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasPreviewUrl:Z

    .line 1889
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->previewUrl_:Ljava/lang/String;

    .line 1890
    return-object p0
.end method

.method public setTrackNumber(I)Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 1871
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasTrackNumber:Z

    .line 1872
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->trackNumber_:I

    .line 1873
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
    .line 1936
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1937
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1939
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasDetails()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1940
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->getDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1942
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasAlbumName()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1943
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1945
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasTrackNumber()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1946
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->getTrackNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1948
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasPreviewUrl()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1949
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->getPreviewUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1951
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->hasDisplayArtist()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1952
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->getDisplayArtist()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1954
    :cond_5
    return-void
.end method
