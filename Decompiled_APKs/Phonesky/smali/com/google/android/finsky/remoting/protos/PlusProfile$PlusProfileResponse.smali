.class public final Lcom/google/android/finsky/remoting/protos/PlusProfile$PlusProfileResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "PlusProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/PlusProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlusProfileResponse"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasPlusProfile:Z

.field private plusProfile_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/PlusProfile$PlusProfileResponse;->plusProfile_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/PlusProfile$PlusProfileResponse;->cachedSize:I

    .line 10
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/PlusProfile$PlusProfileResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/PlusProfile$PlusProfileResponse;->getSerializedSize()I

    .line 60
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/PlusProfile$PlusProfileResponse;->cachedSize:I

    return v0
.end method

.method public getPlusProfile()Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/PlusProfile$PlusProfileResponse;->plusProfile_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/PlusProfile$PlusProfileResponse;->hasPlusProfile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/PlusProfile$PlusProfileResponse;->getPlusProfile()Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 70
    :cond_0
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/PlusProfile$PlusProfileResponse;->cachedSize:I

    .line 71
    return v0
.end method

.method public hasPlusProfile()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/PlusProfile$PlusProfileResponse;->hasPlusProfile:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/PlusProfile$PlusProfileResponse;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 80
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 84
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/PlusProfile$PlusProfileResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 85
    :sswitch_0
    return-object p0

    .line 90
    :sswitch_1
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;-><init>()V

    .line 91
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 92
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/PlusProfile$PlusProfileResponse;->setPlusProfile(Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;)Lcom/google/android/finsky/remoting/protos/PlusProfile$PlusProfileResponse;

    goto :goto_0

    .line 80
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/PlusProfile$PlusProfileResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/PlusProfile$PlusProfileResponse;

    move-result-object v0

    return-object v0
.end method

.method public setPlusProfile(Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;)Lcom/google/android/finsky/remoting/protos/PlusProfile$PlusProfileResponse;
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

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/PlusProfile$PlusProfileResponse;->hasPlusProfile:Z

    .line 23
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/PlusProfile$PlusProfileResponse;->plusProfile_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;

    .line 24
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
    .line 48
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/PlusProfile$PlusProfileResponse;->hasPlusProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/PlusProfile$PlusProfileResponse;->getPlusProfile()Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 51
    :cond_0
    return-void
.end method
