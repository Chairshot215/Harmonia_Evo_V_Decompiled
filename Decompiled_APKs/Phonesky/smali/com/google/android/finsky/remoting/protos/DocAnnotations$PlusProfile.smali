.class public final Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocAnnotations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocAnnotations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlusProfile"
.end annotation


# instance fields
.field private cachedSize:I

.field private displayName_:Ljava/lang/String;

.field private hasDisplayName:Z

.field private hasProfileImage:Z

.field private hasProfileImageUrl:Z

.field private profileImageUrl_:Ljava/lang/String;

.field private profileImage_:Lcom/google/android/finsky/remoting/protos/Doc$Image;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 906
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 911
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;->displayName_:Ljava/lang/String;

    .line 928
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;->profileImageUrl_:Ljava/lang/String;

    .line 945
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;->profileImage_:Lcom/google/android/finsky/remoting/protos/Doc$Image;

    .line 991
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;->cachedSize:I

    .line 906
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 994
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;->cachedSize:I

    if-gez v0, :cond_0

    .line 996
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;->getSerializedSize()I

    .line 998
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;->cachedSize:I

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 912
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;->displayName_:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileImage()Lcom/google/android/finsky/remoting/protos/Doc$Image;
    .locals 1

    .prologue
    .line 947
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;->profileImage_:Lcom/google/android/finsky/remoting/protos/Doc$Image;

    return-object v0
.end method

.method public getProfileImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 929
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;->profileImageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1003
    const/4 v0, 0x0

    .line 1004
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;->hasDisplayName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1005
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1008
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;->hasProfileImageUrl()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1009
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1012
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;->hasProfileImage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1013
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;->getProfileImage()Lcom/google/android/finsky/remoting/protos/Doc$Image;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1016
    :cond_2
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;->cachedSize:I

    .line 1017
    return v0
.end method

.method public hasDisplayName()Z
    .locals 1

    .prologue
    .line 913
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;->hasDisplayName:Z

    return v0
.end method

.method public hasProfileImage()Z
    .locals 1

    .prologue
    .line 946
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;->hasProfileImage:Z

    return v0
.end method

.method public hasProfileImageUrl()Z
    .locals 1

    .prologue
    .line 930
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;->hasProfileImageUrl:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1025
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1026
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1030
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1031
    :sswitch_0
    return-object p0

    .line 1036
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;->setDisplayName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;

    goto :goto_0

    .line 1040
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;->setProfileImageUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;

    goto :goto_0

    .line 1044
    :sswitch_3
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image;-><init>()V

    .line 1045
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1046
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;->setProfileImage(Lcom/google/android/finsky/remoting/protos/Doc$Image;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;

    goto :goto_0

    .line 1026
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
        0x22 -> :sswitch_2
        0x2a -> :sswitch_3
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
    .line 903
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;

    move-result-object v0

    return-object v0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;
    .locals 1
    .parameter "value"

    .prologue
    .line 915
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;->hasDisplayName:Z

    .line 916
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;->displayName_:Ljava/lang/String;

    .line 917
    return-object p0
.end method

.method public setProfileImage(Lcom/google/android/finsky/remoting/protos/Doc$Image;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;
    .locals 1
    .parameter "value"

    .prologue
    .line 949
    if-nez p1, :cond_0

    .line 950
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 952
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;->hasProfileImage:Z

    .line 953
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;->profileImage_:Lcom/google/android/finsky/remoting/protos/Doc$Image;

    .line 954
    return-object p0
.end method

.method public setProfileImageUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;
    .locals 1
    .parameter "value"

    .prologue
    .line 932
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;->hasProfileImageUrl:Z

    .line 933
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;->profileImageUrl_:Ljava/lang/String;

    .line 934
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
    .line 980
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;->hasDisplayName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 981
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 983
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;->hasProfileImageUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 984
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 986
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;->hasProfileImage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 987
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;->getProfileImage()Lcom/google/android/finsky/remoting/protos/Doc$Image;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 989
    :cond_2
    return-void
.end method
