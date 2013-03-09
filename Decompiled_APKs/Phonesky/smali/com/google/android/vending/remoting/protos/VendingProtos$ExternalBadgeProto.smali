.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExternalBadgeProto"
.end annotation


# instance fields
.field private badgeImage_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

.field private hasLocalizedDescription:Z

.field private hasLocalizedTitle:Z

.field private hasSearchId:Z

.field private localizedDescription_:Ljava/lang/String;

.field private localizedTitle_:Ljava/lang/String;

.field private searchId_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1647
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1652
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->localizedTitle_:Ljava/lang/String;

    .line 1669
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->localizedDescription_:Ljava/lang/String;

    .line 1685
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->badgeImage_:Ljava/util/List;

    .line 1719
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->searchId_:Ljava/lang/String;

    .line 1766
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->cachedSize:I

    .line 1647
    return-void
.end method


# virtual methods
.method public addBadgeImage(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 1702
    if-nez p1, :cond_0

    .line 1703
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1705
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->badgeImage_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1706
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->badgeImage_:Ljava/util/List;

    .line 1708
    :cond_1
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->badgeImage_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1709
    return-object p0
.end method

.method public getBadgeImageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1688
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->badgeImage_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1769
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 1771
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->getSerializedSize()I

    .line 1773
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->cachedSize:I

    return v0
.end method

.method public getLocalizedDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1670
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->localizedDescription_:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalizedTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1653
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->localizedTitle_:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1720
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->searchId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 1778
    const/4 v2, 0x0

    .line 1779
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->hasLocalizedTitle()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1780
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->getLocalizedTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1783
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->hasLocalizedDescription()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1784
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->getLocalizedDescription()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1787
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->getBadgeImageList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;

    .line 1788
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 1791
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->hasSearchId()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1792
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->getSearchId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1795
    :cond_3
    iput v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->cachedSize:I

    .line 1796
    return v2
.end method

.method public hasLocalizedDescription()Z
    .locals 1

    .prologue
    .line 1671
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->hasLocalizedDescription:Z

    return v0
.end method

.method public hasLocalizedTitle()Z
    .locals 1

    .prologue
    .line 1654
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->hasLocalizedTitle:Z

    return v0
.end method

.method public hasSearchId()Z
    .locals 1

    .prologue
    .line 1721
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->hasSearchId:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1804
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1805
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1809
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1810
    :sswitch_0
    return-object p0

    .line 1815
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->setLocalizedTitle(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;

    goto :goto_0

    .line 1819
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->setLocalizedDescription(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;

    goto :goto_0

    .line 1823
    :sswitch_3
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;-><init>()V

    .line 1824
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1825
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->addBadgeImage(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;

    goto :goto_0

    .line 1829
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->setSearchId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;

    goto :goto_0

    .line 1805
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
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
    .line 1645
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;

    move-result-object v0

    return-object v0
.end method

.method public setLocalizedDescription(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 1673
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->hasLocalizedDescription:Z

    .line 1674
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->localizedDescription_:Ljava/lang/String;

    .line 1675
    return-object p0
.end method

.method public setLocalizedTitle(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 1656
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->hasLocalizedTitle:Z

    .line 1657
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->localizedTitle_:Ljava/lang/String;

    .line 1658
    return-object p0
.end method

.method public setSearchId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 1723
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->hasSearchId:Z

    .line 1724
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->searchId_:Ljava/lang/String;

    .line 1725
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1752
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->hasLocalizedTitle()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1753
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->getLocalizedTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1755
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->hasLocalizedDescription()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1756
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->getLocalizedDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1758
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->getBadgeImageList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;

    .line 1759
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 1761
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeImageProto;
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->hasSearchId()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1762
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;->getSearchId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1764
    :cond_3
    return-void
.end method
