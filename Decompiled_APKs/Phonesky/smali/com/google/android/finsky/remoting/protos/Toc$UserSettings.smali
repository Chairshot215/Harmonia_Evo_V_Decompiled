.class public final Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Toc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Toc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserSettings"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasTosCheckboxMarketingEmailsOptedIn:Z

.field private tosCheckboxMarketingEmailsOptedIn_:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 736
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 741
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;->tosCheckboxMarketingEmailsOptedIn_:Z

    .line 773
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;->cachedSize:I

    .line 736
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 776
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;->cachedSize:I

    if-gez v0, :cond_0

    .line 778
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;->getSerializedSize()I

    .line 780
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 785
    const/4 v0, 0x0

    .line 786
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;->hasTosCheckboxMarketingEmailsOptedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 787
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;->getTosCheckboxMarketingEmailsOptedIn()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 790
    :cond_0
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;->cachedSize:I

    .line 791
    return v0
.end method

.method public getTosCheckboxMarketingEmailsOptedIn()Z
    .locals 1

    .prologue
    .line 742
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;->tosCheckboxMarketingEmailsOptedIn_:Z

    return v0
.end method

.method public hasTosCheckboxMarketingEmailsOptedIn()Z
    .locals 1

    .prologue
    .line 743
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;->hasTosCheckboxMarketingEmailsOptedIn:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 799
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 800
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 804
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 805
    :sswitch_0
    return-object p0

    .line 810
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;->setTosCheckboxMarketingEmailsOptedIn(Z)Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;

    goto :goto_0

    .line 800
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
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
    .line 733
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;

    move-result-object v0

    return-object v0
.end method

.method public setTosCheckboxMarketingEmailsOptedIn(Z)Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;
    .locals 1
    .parameter "value"

    .prologue
    .line 745
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;->hasTosCheckboxMarketingEmailsOptedIn:Z

    .line 746
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;->tosCheckboxMarketingEmailsOptedIn_:Z

    .line 747
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
    .line 768
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;->hasTosCheckboxMarketingEmailsOptedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 769
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;->getTosCheckboxMarketingEmailsOptedIn()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 771
    :cond_0
    return-void
.end method
