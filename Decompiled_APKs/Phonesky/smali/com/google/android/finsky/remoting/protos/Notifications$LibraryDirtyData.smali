.class public final Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Notifications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Notifications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LibraryDirtyData"
.end annotation


# instance fields
.field private backend_:I

.field private cachedSize:I

.field private hasBackend:Z

.field private hasLibraryId:Z

.field private libraryId_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 706
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 711
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;->backend_:I

    .line 728
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;->libraryId_:Ljava/lang/String;

    .line 764
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;->cachedSize:I

    .line 706
    return-void
.end method


# virtual methods
.method public getBackend()I
    .locals 1

    .prologue
    .line 713
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;->backend_:I

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 767
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;->cachedSize:I

    if-gez v0, :cond_0

    .line 769
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;->getSerializedSize()I

    .line 771
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;->cachedSize:I

    return v0
.end method

.method public getLibraryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;->libraryId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 776
    const/4 v0, 0x0

    .line 777
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;->hasBackend()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 778
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;->getBackend()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 781
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;->hasLibraryId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 782
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;->getLibraryId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 785
    :cond_1
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;->cachedSize:I

    .line 786
    return v0
.end method

.method public hasBackend()Z
    .locals 1

    .prologue
    .line 712
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;->hasBackend:Z

    return v0
.end method

.method public hasLibraryId()Z
    .locals 1

    .prologue
    .line 730
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;->hasLibraryId:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 794
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 795
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 799
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 800
    :sswitch_0
    return-object p0

    .line 805
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;->setBackend(I)Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;

    goto :goto_0

    .line 809
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;->setLibraryId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;

    goto :goto_0

    .line 795
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
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
    .line 703
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;

    move-result-object v0

    return-object v0
.end method

.method public setBackend(I)Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;
    .locals 1
    .parameter "value"

    .prologue
    .line 715
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;->hasBackend:Z

    .line 716
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;->backend_:I

    .line 717
    return-object p0
.end method

.method public setLibraryId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;
    .locals 1
    .parameter "value"

    .prologue
    .line 732
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;->hasLibraryId:Z

    .line 733
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;->libraryId_:Ljava/lang/String;

    .line 734
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
    .line 756
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;->hasBackend()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 757
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;->getBackend()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 759
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;->hasLibraryId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 760
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;->getLibraryId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 762
    :cond_1
    return-void
.end method
