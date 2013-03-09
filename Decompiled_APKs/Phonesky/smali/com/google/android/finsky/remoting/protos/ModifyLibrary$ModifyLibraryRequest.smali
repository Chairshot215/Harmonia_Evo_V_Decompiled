.class public final Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ModifyLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/ModifyLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ModifyLibraryRequest"
.end annotation


# instance fields
.field private cachedSize:I

.field private forAddDocid_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private forArchiveDocid_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private forRemovalDocid_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hasLibraryId:Z

.field private libraryId_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;->libraryId_:Ljava/lang/String;

    .line 31
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;->forAddDocid_:Ljava/util/List;

    .line 64
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;->forRemovalDocid_:Ljava/util/List;

    .line 97
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;->forArchiveDocid_:Ljava/util/List;

    .line 158
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;->cachedSize:I

    .line 10
    return-void
.end method


# virtual methods
.method public addForAddDocid(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 48
    if-nez p1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;->forAddDocid_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;->forAddDocid_:Ljava/util/List;

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;->forAddDocid_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    return-object p0
.end method

.method public addForArchiveDocid(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 114
    if-nez p1, :cond_0

    .line 115
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;->forArchiveDocid_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;->forArchiveDocid_:Ljava/util/List;

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;->forArchiveDocid_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    return-object p0
.end method

.method public addForRemovalDocid(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 81
    if-nez p1, :cond_0

    .line 82
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;->forRemovalDocid_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;->forRemovalDocid_:Ljava/util/List;

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;->forRemovalDocid_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;->cachedSize:I

    if-gez v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;->getSerializedSize()I

    .line 165
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;->cachedSize:I

    return v0
.end method

.method public getForAddDocidList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;->forAddDocid_:Ljava/util/List;

    return-object v0
.end method

.method public getForArchiveDocidList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;->forArchiveDocid_:Ljava/util/List;

    return-object v0
.end method

.method public getForRemovalDocidList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;->forRemovalDocid_:Ljava/util/List;

    return-object v0
.end method

.method public getLibraryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;->libraryId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 170
    const/4 v3, 0x0

    .line 171
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;->hasLibraryId()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 172
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;->getLibraryId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 176
    :cond_0
    const/4 v0, 0x0

    .line 177
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;->getForAddDocidList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 178
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 181
    .end local v1           #element:Ljava/lang/String;
    :cond_1
    add-int/2addr v3, v0

    .line 182
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;->getForAddDocidList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 185
    const/4 v0, 0x0

    .line 186
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;->getForRemovalDocidList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 187
    .restart local v1       #element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1

    .line 190
    .end local v1           #element:Ljava/lang/String;
    :cond_2
    add-int/2addr v3, v0

    .line 191
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;->getForRemovalDocidList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 194
    const/4 v0, 0x0

    .line 195
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;->getForArchiveDocidList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 196
    .restart local v1       #element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_2

    .line 199
    .end local v1           #element:Ljava/lang/String;
    :cond_3
    add-int/2addr v3, v0

    .line 200
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;->getForArchiveDocidList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 202
    iput v3, p0, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;->cachedSize:I

    .line 203
    return v3
.end method

.method public hasLibraryId()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;->hasLibraryId:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 212
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 216
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 217
    :sswitch_0
    return-object p0

    .line 222
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;->setLibraryId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;

    goto :goto_0

    .line 226
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;->addForAddDocid(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;

    goto :goto_0

    .line 230
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;->addForRemovalDocid(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;

    goto :goto_0

    .line 234
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;->addForArchiveDocid(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;

    goto :goto_0

    .line 212
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;

    move-result-object v0

    return-object v0
.end method

.method public setLibraryId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;->hasLibraryId:Z

    .line 20
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;->libraryId_:Ljava/lang/String;

    .line 21
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
    .line 144
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;->hasLibraryId()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;->getLibraryId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;->getForAddDocidList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 148
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 150
    .end local v0           #element:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;->getForRemovalDocidList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 151
    .restart local v0       #element:Ljava/lang/String;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_1

    .line 153
    .end local v0           #element:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryRequest;->getForArchiveDocidList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 154
    .restart local v0       #element:Ljava/lang/String;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_2

    .line 156
    .end local v0           #element:Ljava/lang/String;
    :cond_3
    return-void
.end method
