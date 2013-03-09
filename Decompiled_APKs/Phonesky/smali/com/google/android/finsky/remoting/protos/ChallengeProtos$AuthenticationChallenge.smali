.class public final Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ChallengeProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/ChallengeProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AuthenticationChallenge"
.end annotation


# instance fields
.field private authenticationType_:I

.field private cachedSize:I

.field private gaiaDescriptionTextHtml_:Ljava/lang/String;

.field private gaiaFooterTextHtml_:Ljava/lang/String;

.field private gaiaHeaderText_:Ljava/lang/String;

.field private hasAuthenticationType:Z

.field private hasGaiaDescriptionTextHtml:Z

.field private hasGaiaFooterTextHtml:Z

.field private hasGaiaHeaderText:Z

.field private hasResponseAuthenticationTypeParam:Z

.field private hasResponseRetryCountParam:Z

.field private responseAuthenticationTypeParam_:Ljava/lang/String;

.field private responseRetryCountParam_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 872
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 877
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->authenticationType_:I

    .line 894
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->responseAuthenticationTypeParam_:Ljava/lang/String;

    .line 911
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->responseRetryCountParam_:Ljava/lang/String;

    .line 928
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->gaiaHeaderText_:Ljava/lang/String;

    .line 945
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->gaiaDescriptionTextHtml_:Ljava/lang/String;

    .line 962
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->gaiaFooterTextHtml_:Ljava/lang/String;

    .line 1014
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->cachedSize:I

    .line 872
    return-void
.end method


# virtual methods
.method public getAuthenticationType()I
    .locals 1

    .prologue
    .line 879
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->authenticationType_:I

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1017
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->cachedSize:I

    if-gez v0, :cond_0

    .line 1019
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->getSerializedSize()I

    .line 1021
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->cachedSize:I

    return v0
.end method

.method public getGaiaDescriptionTextHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 946
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->gaiaDescriptionTextHtml_:Ljava/lang/String;

    return-object v0
.end method

.method public getGaiaFooterTextHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 963
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->gaiaFooterTextHtml_:Ljava/lang/String;

    return-object v0
.end method

.method public getGaiaHeaderText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 929
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->gaiaHeaderText_:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseAuthenticationTypeParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 895
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->responseAuthenticationTypeParam_:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseRetryCountParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 912
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->responseRetryCountParam_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1026
    const/4 v0, 0x0

    .line 1027
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->hasAuthenticationType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1028
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->getAuthenticationType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1031
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->hasResponseAuthenticationTypeParam()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1032
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->getResponseAuthenticationTypeParam()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1035
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->hasResponseRetryCountParam()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1036
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->getResponseRetryCountParam()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1039
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->hasGaiaHeaderText()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1040
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->getGaiaHeaderText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1043
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->hasGaiaDescriptionTextHtml()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1044
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->getGaiaDescriptionTextHtml()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1047
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->hasGaiaFooterTextHtml()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1048
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->getGaiaFooterTextHtml()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1051
    :cond_5
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->cachedSize:I

    .line 1052
    return v0
.end method

.method public hasAuthenticationType()Z
    .locals 1

    .prologue
    .line 878
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->hasAuthenticationType:Z

    return v0
.end method

.method public hasGaiaDescriptionTextHtml()Z
    .locals 1

    .prologue
    .line 947
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->hasGaiaDescriptionTextHtml:Z

    return v0
.end method

.method public hasGaiaFooterTextHtml()Z
    .locals 1

    .prologue
    .line 964
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->hasGaiaFooterTextHtml:Z

    return v0
.end method

.method public hasGaiaHeaderText()Z
    .locals 1

    .prologue
    .line 930
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->hasGaiaHeaderText:Z

    return v0
.end method

.method public hasResponseAuthenticationTypeParam()Z
    .locals 1

    .prologue
    .line 896
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->hasResponseAuthenticationTypeParam:Z

    return v0
.end method

.method public hasResponseRetryCountParam()Z
    .locals 1

    .prologue
    .line 913
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->hasResponseRetryCountParam:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1060
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1061
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1065
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1066
    :sswitch_0
    return-object p0

    .line 1071
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->setAuthenticationType(I)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;

    goto :goto_0

    .line 1075
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->setResponseAuthenticationTypeParam(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;

    goto :goto_0

    .line 1079
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->setResponseRetryCountParam(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;

    goto :goto_0

    .line 1083
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->setGaiaHeaderText(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;

    goto :goto_0

    .line 1087
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->setGaiaDescriptionTextHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;

    goto :goto_0

    .line 1091
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->setGaiaFooterTextHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;

    goto :goto_0

    .line 1061
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x32 -> :sswitch_4
        0x3a -> :sswitch_5
        0x42 -> :sswitch_6
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
    .line 869
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;

    move-result-object v0

    return-object v0
.end method

.method public setAuthenticationType(I)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;
    .locals 1
    .parameter "value"

    .prologue
    .line 881
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->hasAuthenticationType:Z

    .line 882
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->authenticationType_:I

    .line 883
    return-object p0
.end method

.method public setGaiaDescriptionTextHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;
    .locals 1
    .parameter "value"

    .prologue
    .line 949
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->hasGaiaDescriptionTextHtml:Z

    .line 950
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->gaiaDescriptionTextHtml_:Ljava/lang/String;

    .line 951
    return-object p0
.end method

.method public setGaiaFooterTextHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;
    .locals 1
    .parameter "value"

    .prologue
    .line 966
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->hasGaiaFooterTextHtml:Z

    .line 967
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->gaiaFooterTextHtml_:Ljava/lang/String;

    .line 968
    return-object p0
.end method

.method public setGaiaHeaderText(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;
    .locals 1
    .parameter "value"

    .prologue
    .line 932
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->hasGaiaHeaderText:Z

    .line 933
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->gaiaHeaderText_:Ljava/lang/String;

    .line 934
    return-object p0
.end method

.method public setResponseAuthenticationTypeParam(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;
    .locals 1
    .parameter "value"

    .prologue
    .line 898
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->hasResponseAuthenticationTypeParam:Z

    .line 899
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->responseAuthenticationTypeParam_:Ljava/lang/String;

    .line 900
    return-object p0
.end method

.method public setResponseRetryCountParam(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;
    .locals 1
    .parameter "value"

    .prologue
    .line 915
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->hasResponseRetryCountParam:Z

    .line 916
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->responseRetryCountParam_:Ljava/lang/String;

    .line 917
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
    .line 994
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->hasAuthenticationType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 995
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->getAuthenticationType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 997
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->hasResponseAuthenticationTypeParam()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 998
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->getResponseAuthenticationTypeParam()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1000
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->hasResponseRetryCountParam()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1001
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->getResponseRetryCountParam()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1003
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->hasGaiaHeaderText()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1004
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->getGaiaHeaderText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1006
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->hasGaiaDescriptionTextHtml()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1007
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->getGaiaDescriptionTextHtml()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1009
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->hasGaiaFooterTextHtml()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1010
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->getGaiaFooterTextHtml()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1012
    :cond_5
    return-void
.end method
