.class public final Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Browse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Browse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BrowseResponse"
.end annotation


# instance fields
.field private breadcrumb_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

.field private category_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;",
            ">;"
        }
    .end annotation
.end field

.field private contentsUrl_:Ljava/lang/String;

.field private hasContentsUrl:Z

.field private hasPromoUrl:Z

.field private promoUrl_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->contentsUrl_:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->promoUrl_:Ljava/lang/String;

    .line 48
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->category_:Ljava/util/List;

    .line 81
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->breadcrumb_:Ljava/util/List;

    .line 143
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->cachedSize:I

    .line 10
    return-void
.end method


# virtual methods
.method public addBreadcrumb(Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;)Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 98
    if-nez p1, :cond_0

    .line 99
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->breadcrumb_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->breadcrumb_:Ljava/util/List;

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->breadcrumb_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    return-object p0
.end method

.method public addCategory(Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;)Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 65
    if-nez p1, :cond_0

    .line 66
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->category_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->category_:Ljava/util/List;

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->category_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    return-object p0
.end method

.method public getBreadcrumbList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->breadcrumb_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->getSerializedSize()I

    .line 150
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->cachedSize:I

    return v0
.end method

.method public getCategoryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->category_:Ljava/util/List;

    return-object v0
.end method

.method public getContentsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->contentsUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getPromoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->promoUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 155
    const/4 v2, 0x0

    .line 156
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->hasContentsUrl()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 157
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->getContentsUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->hasPromoUrl()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 161
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->getPromoUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 164
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->getCategoryList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;

    .line 165
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 168
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->getBreadcrumbList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;

    .line 169
    .restart local v0       #element:Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 172
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;
    :cond_3
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->cachedSize:I

    .line 173
    return v2
.end method

.method public hasContentsUrl()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->hasContentsUrl:Z

    return v0
.end method

.method public hasPromoUrl()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->hasPromoUrl:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 182
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 186
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 187
    :sswitch_0
    return-object p0

    .line 192
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->setContentsUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    goto :goto_0

    .line 196
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->setPromoUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    goto :goto_0

    .line 200
    :sswitch_3
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;-><init>()V

    .line 201
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 202
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->addCategory(Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;)Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    goto :goto_0

    .line 206
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;
    :sswitch_4
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;-><init>()V

    .line 207
    .restart local v1       #value:Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 208
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->addBreadcrumb(Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;)Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    goto :goto_0

    .line 182
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
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    move-result-object v0

    return-object v0
.end method

.method public setContentsUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->hasContentsUrl:Z

    .line 20
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->contentsUrl_:Ljava/lang/String;

    .line 21
    return-object p0
.end method

.method public setPromoUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->hasPromoUrl:Z

    .line 37
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->promoUrl_:Ljava/lang/String;

    .line 38
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
    .line 129
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->hasContentsUrl()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->getContentsUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->hasPromoUrl()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->getPromoUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 135
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->getCategoryList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;

    .line 136
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 138
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->getBreadcrumbList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;

    .line 139
    .restart local v0       #element:Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_1

    .line 141
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;
    :cond_3
    return-void
.end method
