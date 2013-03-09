.class public final Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "CsdClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SignatureInfo"
.end annotation


# instance fields
.field private cachedSize:I

.field private certificateChain_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain;",
            ">;"
        }
    .end annotation
.end field

.field private hasTrusted:Z

.field private trusted_:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 750
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 754
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;->certificateChain_:Ljava/util/List;

    .line 788
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;->trusted_:Z

    .line 824
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;->cachedSize:I

    .line 750
    return-void
.end method


# virtual methods
.method public addCertificateChain(Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 771
    if-nez p1, :cond_0

    .line 772
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 774
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;->certificateChain_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 775
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;->certificateChain_:Ljava/util/List;

    .line 777
    :cond_1
    iget-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;->certificateChain_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 778
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 827
    iget v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 829
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;->getSerializedSize()I

    .line 831
    :cond_0
    iget v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;->cachedSize:I

    return v0
.end method

.method public getCertificateChainList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain;",
            ">;"
        }
    .end annotation

    .prologue
    .line 757
    iget-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;->certificateChain_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 836
    const/4 v2, 0x0

    .line 837
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;->getCertificateChainList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain;

    .line 838
    .local v0, element:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain;
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 841
    .end local v0           #element:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;->hasTrusted()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 842
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;->getTrusted()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 845
    :cond_1
    iput v2, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;->cachedSize:I

    .line 846
    return v2
.end method

.method public getTrusted()Z
    .locals 1

    .prologue
    .line 789
    iget-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;->trusted_:Z

    return v0
.end method

.method public hasTrusted()Z
    .locals 1

    .prologue
    .line 790
    iget-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;->hasTrusted:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 854
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 855
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 859
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 860
    :sswitch_0
    return-object p0

    .line 865
    :sswitch_1
    new-instance v1, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain;

    invoke-direct {v1}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain;-><init>()V

    .line 866
    .local v1, value:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 867
    invoke-virtual {p0, v1}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;->addCertificateChain(Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;

    goto :goto_0

    .line 871
    .end local v1           #value:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;->setTrusted(Z)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;

    goto :goto_0

    .line 855
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
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
    .line 747
    invoke-virtual {p0, p1}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;

    move-result-object v0

    return-object v0
.end method

.method public setTrusted(Z)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 792
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;->hasTrusted:Z

    .line 793
    iput-boolean p1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;->trusted_:Z

    .line 794
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
    .line 816
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;->getCertificateChainList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain;

    .line 817
    .local v0, element:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 819
    .end local v0           #element:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;->hasTrusted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 820
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;->getTrusted()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 822
    :cond_1
    return-void
.end method
