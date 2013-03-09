.class public final Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlbumDetails"
.end annotation


# instance fields
.field private cachedSize:I

.field private details_:Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

.field private displayArtist_:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

.field private hasDetails:Z

.field private hasDisplayArtist:Z

.field private hasName:Z

.field private name_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1643
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1648
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->name_:Ljava/lang/String;

    .line 1665
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->details_:Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

    .line 1685
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->displayArtist_:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    .line 1728
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->cachedSize:I

    .line 1643
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1731
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->cachedSize:I

    if-gez v0, :cond_0

    .line 1733
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->getSerializedSize()I

    .line 1735
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->cachedSize:I

    return v0
.end method

.method public getDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;
    .locals 1

    .prologue
    .line 1667
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->details_:Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

    return-object v0
.end method

.method public getDisplayArtist()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;
    .locals 1

    .prologue
    .line 1687
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->displayArtist_:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1649
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1740
    const/4 v0, 0x0

    .line 1741
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->hasName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1742
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1745
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->hasDetails()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1746
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->getDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1749
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->hasDisplayArtist()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1750
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->getDisplayArtist()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1753
    :cond_2
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->cachedSize:I

    .line 1754
    return v0
.end method

.method public hasDetails()Z
    .locals 1

    .prologue
    .line 1666
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->hasDetails:Z

    return v0
.end method

.method public hasDisplayArtist()Z
    .locals 1

    .prologue
    .line 1686
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->hasDisplayArtist:Z

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 1650
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->hasName:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1762
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1763
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1767
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1768
    :sswitch_0
    return-object p0

    .line 1773
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;

    goto :goto_0

    .line 1777
    :sswitch_2
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;-><init>()V

    .line 1778
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1779
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->setDetails(Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;)Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;

    goto :goto_0

    .line 1783
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;
    :sswitch_3
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;-><init>()V

    .line 1784
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1785
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->setDisplayArtist(Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;)Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;

    goto :goto_0

    .line 1763
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
    .line 1640
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;

    move-result-object v0

    return-object v0
.end method

.method public setDetails(Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;)Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 1669
    if-nez p1, :cond_0

    .line 1670
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1672
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->hasDetails:Z

    .line 1673
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->details_:Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

    .line 1674
    return-object p0
.end method

.method public setDisplayArtist(Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;)Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 1689
    if-nez p1, :cond_0

    .line 1690
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1692
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->hasDisplayArtist:Z

    .line 1693
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->displayArtist_:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    .line 1694
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 1652
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->hasName:Z

    .line 1653
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->name_:Ljava/lang/String;

    .line 1654
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
    .line 1717
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->hasName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1718
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1720
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->hasDetails()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1721
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->getDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1723
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->hasDisplayArtist()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1724
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->getDisplayArtist()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1726
    :cond_2
    return-void
.end method
