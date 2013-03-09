.class public final Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocAnnotations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocAnnotations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContainerWithBanner"
.end annotation


# instance fields
.field private cachedSize:I

.field private colorThemeArgb_:Ljava/lang/String;

.field private hasColorThemeArgb:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2049
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2054
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;->colorThemeArgb_:Ljava/lang/String;

    .line 2086
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;->cachedSize:I

    .line 2049
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2089
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;->cachedSize:I

    if-gez v0, :cond_0

    .line 2091
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;->getSerializedSize()I

    .line 2093
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;->cachedSize:I

    return v0
.end method

.method public getColorThemeArgb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2055
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;->colorThemeArgb_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2098
    const/4 v0, 0x0

    .line 2099
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;->hasColorThemeArgb()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2100
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;->getColorThemeArgb()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2103
    :cond_0
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;->cachedSize:I

    .line 2104
    return v0
.end method

.method public hasColorThemeArgb()Z
    .locals 1

    .prologue
    .line 2056
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;->hasColorThemeArgb:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2112
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2113
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2117
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2118
    :sswitch_0
    return-object p0

    .line 2123
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;->setColorThemeArgb(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;

    goto :goto_0

    .line 2113
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
    .line 2046
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;

    move-result-object v0

    return-object v0
.end method

.method public setColorThemeArgb(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;
    .locals 1
    .parameter "value"

    .prologue
    .line 2058
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;->hasColorThemeArgb:Z

    .line 2059
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;->colorThemeArgb_:Ljava/lang/String;

    .line 2060
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
    .line 2081
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;->hasColorThemeArgb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2082
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;->getColorThemeArgb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2084
    :cond_0
    return-void
.end method
