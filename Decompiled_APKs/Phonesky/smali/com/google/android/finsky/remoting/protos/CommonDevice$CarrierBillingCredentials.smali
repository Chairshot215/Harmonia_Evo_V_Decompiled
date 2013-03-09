.class public final Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "CommonDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/CommonDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarrierBillingCredentials"
.end annotation


# instance fields
.field private cachedSize:I

.field private expiration_:J

.field private hasExpiration:Z

.field private hasValue:Z

.field private value_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1245
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1250
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;->value_:Ljava/lang/String;

    .line 1267
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;->expiration_:J

    .line 1303
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;->cachedSize:I

    .line 1245
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1306
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;->cachedSize:I

    if-gez v0, :cond_0

    .line 1308
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;->getSerializedSize()I

    .line 1310
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;->cachedSize:I

    return v0
.end method

.method public getExpiration()J
    .locals 2

    .prologue
    .line 1268
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;->expiration_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 1315
    const/4 v0, 0x0

    .line 1316
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1317
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1320
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;->hasExpiration()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1321
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;->getExpiration()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1324
    :cond_1
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;->cachedSize:I

    .line 1325
    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;->value_:Ljava/lang/String;

    return-object v0
.end method

.method public hasExpiration()Z
    .locals 1

    .prologue
    .line 1269
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;->hasExpiration:Z

    return v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 1252
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;->hasValue:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1333
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1334
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1338
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1339
    :sswitch_0
    return-object p0

    .line 1344
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;->setValue(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;

    goto :goto_0

    .line 1348
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;->setExpiration(J)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;

    goto :goto_0

    .line 1334
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
    .line 1242
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;

    move-result-object v0

    return-object v0
.end method

.method public setExpiration(J)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;
    .locals 1
    .parameter "value"

    .prologue
    .line 1271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;->hasExpiration:Z

    .line 1272
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;->expiration_:J

    .line 1273
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;
    .locals 1
    .parameter "value"

    .prologue
    .line 1254
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;->hasValue:Z

    .line 1255
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;->value_:Ljava/lang/String;

    .line 1256
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1295
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1296
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1298
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;->hasExpiration()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1299
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingCredentials;->getExpiration()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 1301
    :cond_1
    return-void
.end method
