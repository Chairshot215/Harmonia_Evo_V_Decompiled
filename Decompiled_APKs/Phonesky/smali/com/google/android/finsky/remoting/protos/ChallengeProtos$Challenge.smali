.class public final Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ChallengeProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/ChallengeProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Challenge"
.end annotation


# instance fields
.field private addressChallenge_:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

.field private authenticationChallenge_:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;

.field private cachedSize:I

.field private hasAddressChallenge:Z

.field private hasAuthenticationChallenge:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;->addressChallenge_:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    .line 35
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;->authenticationChallenge_:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;->cachedSize:I

    .line 10
    return-void
.end method


# virtual methods
.method public getAddressChallenge()Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;->addressChallenge_:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    return-object v0
.end method

.method public getAuthenticationChallenge()Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;->authenticationChallenge_:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;->cachedSize:I

    if-gez v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;->getSerializedSize()I

    .line 84
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;->hasAddressChallenge()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;->getAddressChallenge()Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;->hasAuthenticationChallenge()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;->getAuthenticationChallenge()Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 98
    :cond_1
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;->cachedSize:I

    .line 99
    return v0
.end method

.method public hasAddressChallenge()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;->hasAddressChallenge:Z

    return v0
.end method

.method public hasAuthenticationChallenge()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;->hasAuthenticationChallenge:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 108
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 112
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 113
    :sswitch_0
    return-object p0

    .line 118
    :sswitch_1
    new-instance v1, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;-><init>()V

    .line 119
    .local v1, value:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 120
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;->setAddressChallenge(Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;

    goto :goto_0

    .line 124
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;
    :sswitch_2
    new-instance v1, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;-><init>()V

    .line 125
    .local v1, value:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 126
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;->setAuthenticationChallenge(Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;

    goto :goto_0

    .line 108
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;

    move-result-object v0

    return-object v0
.end method

.method public setAddressChallenge(Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;
    .locals 1
    .parameter "value"

    .prologue
    .line 19
    if-nez p1, :cond_0

    .line 20
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;->hasAddressChallenge:Z

    .line 23
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;->addressChallenge_:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    .line 24
    return-object p0
.end method

.method public setAuthenticationChallenge(Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;
    .locals 1
    .parameter "value"

    .prologue
    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 42
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;->hasAuthenticationChallenge:Z

    .line 43
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;->authenticationChallenge_:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;

    .line 44
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
    .line 69
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;->hasAddressChallenge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;->getAddressChallenge()Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;->hasAuthenticationChallenge()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;->getAuthenticationChallenge()Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 75
    :cond_1
    return-void
.end method
