.class public abstract Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private final bluetoothConnectionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private byteOrder:Ljava/nio/ByteOrder;

.field private connectedBluetoothSocket:Ljava/lang/Object;

.field private delimiter:B

.field private encoding:Ljava/lang/String;

.field private inputStream:Ljava/io/InputStream;

.field protected final logTag:Ljava/lang/String;

.field private outputStream:Ljava/io/OutputStream;

.field protected secure:Z


# direct methods
.method protected constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V
    .locals 1

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;-><init>(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothConnectionListeners:Ljava/util/List;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->HighByteFirst(Z)V

    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->CharacterEncoding(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->DelimiterByte(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->Secure(Z)V

    return-void
.end method

.method protected constructor <init>(Ljava/io/OutputStream;Ljava/io/InputStream;)V
    .locals 3

    const/4 v2, 0x0

    move-object v0, v2

    check-cast v0, Lcom/google/appinventor/components/runtime/Form;

    move-object v1, v0

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;-><init>(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V

    const-string v1, "Not Null"

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->connectedBluetoothSocket:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->outputStream:Ljava/io/OutputStream;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->inputStream:Ljava/io/InputStream;

    return-void
.end method

.method private fireAfterConnectEvent()V
    .locals 2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothConnectionListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;->afterConnect(Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fireBeforeDisconnectEvent()V
    .locals 2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothConnectionListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;->beforeDisconnect(Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private prepareToDie()V
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->connectedBluetoothSocket:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->Disconnect()V

    :cond_0
    return-void
.end method


# virtual methods
.method public Available()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether Bluetooth is available on the device"
    .end annotation

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getBluetoothAdapter()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public BluetoothError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The BluetoothError event is no longer used. Please use the Screen.ErrorOccurred event instead."
        userVisible = false
    .end annotation

    return-void
.end method

.method public BytesAvailableToReceive()I
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns an estimate of the number of bytes that can be received without blocking"
    .end annotation

    const/4 v4, 0x0

    const-string v0, "BytesAvailableToReceive"

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->IsConnected()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x203

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    move v0, v4

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    const/16 v2, 0x205

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    move v0, v4

    goto :goto_0
.end method

.method public CharacterEncoding()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public CharacterEncoding(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "UTF-8"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    :try_start_0
    const-string v0, "check"

    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->encoding:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "CharacterEncoding"

    const/16 v1, 0x207

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public DelimiterByte()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    iget-byte v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->delimiter:B

    return v0
.end method

.method public DelimiterByte(I)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    const-string v0, "DelimiterByte"

    int-to-byte v1, p1

    shr-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_0

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/16 v1, 0x1ff

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iput-byte v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->delimiter:B

    goto :goto_0
.end method

.method public final Disconnect()V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Disconnect from the connected Bluetooth device."
    .end annotation

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->connectedBluetoothSocket:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->fireBeforeDisconnectEvent()V

    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->connectedBluetoothSocket:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->closeBluetoothSocket(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    const-string v1, "Disconnected from Bluetooth device."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->connectedBluetoothSocket:Ljava/lang/Object;

    :cond_0
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->inputStream:Ljava/io/InputStream;

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->outputStream:Ljava/io/OutputStream;

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while disconnecting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether Bluetooth is enabled"
    .end annotation

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getBluetoothAdapter()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->isBluetoothEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public HighByteFirst(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    if-eqz p1, :cond_0

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    :goto_0
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    return-void

    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0
.end method

.method public HighByteFirst()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final Initialize()V
    .locals 0

    return-void
.end method

.method public final IsConnected()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->connectedBluetoothSocket:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ReceiveSigned1ByteNumber()I
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive a signed 1-byte number from the connected Bluetooth device."
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "ReceiveSigned1ByteNumber"

    invoke-virtual {p0, v0, v3}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    array-length v1, v0

    if-eq v1, v3, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    aget-byte v0, v0, v2

    goto :goto_0
.end method

.method public ReceiveSigned2ByteNumber()I
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive a signed 2-byte number from the connected Bluetooth device."
    .end annotation

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "ReceiveSigned2ByteNumber"

    invoke-virtual {p0, v0, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    array-length v1, v0

    if-eq v1, v2, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_1

    aget-byte v1, v0, v4

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v3

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    goto :goto_0

    :cond_1
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v4

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public ReceiveSigned4ByteNumber()J
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive a signed 4-byte number from the connected Bluetooth device."
    .end annotation

    const/4 v2, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "ReceiveSigned4ByteNumber"

    invoke-virtual {p0, v0, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    array-length v1, v0

    if-eq v1, v2, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_1

    aget-byte v1, v0, v6

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, v0, v5

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    aget-byte v2, v0, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    aget-byte v0, v0, v3

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    int-to-long v0, v0

    goto :goto_0

    :cond_1
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, v0, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    aget-byte v2, v0, v5

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    aget-byte v0, v0, v6

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    int-to-long v0, v0

    goto :goto_0
.end method

.method public ReceiveSignedBytes(I)Ljava/util/List;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive multiple signed byte values from the connected Bluetooth device. If numberOfBytes is less than 0, read until a delimiter byte value is received."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "ReceiveSignedBytes"

    invoke-virtual {p0, v0, p1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget-byte v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public ReceiveText(I)Ljava/lang/String;
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive text from the connected Bluetooth device. If numberOfBytes is less than 0, read until a delimiter byte value is received."
    .end annotation

    const-string v0, "ReceiveText"

    invoke-virtual {p0, v0, p1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    if-gez p1, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    array-length v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->encoding:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->encoding:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UnsupportedEncodingException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    move-object v0, v1

    goto :goto_0
.end method

.method public ReceiveUnsigned1ByteNumber()I
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive an unsigned 1-byte number from the connected Bluetooth device."
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "ReceiveUnsigned1ByteNumber"

    invoke-virtual {p0, v0, v3}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    array-length v1, v0

    if-eq v1, v3, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public ReceiveUnsigned2ByteNumber()I
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive a unsigned 2-byte number from the connected Bluetooth device."
    .end annotation

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "ReceiveUnsigned2ByteNumber"

    invoke-virtual {p0, v0, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    array-length v1, v0

    if-eq v1, v2, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_1

    aget-byte v1, v0, v4

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    goto :goto_0

    :cond_1
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public ReceiveUnsigned4ByteNumber()J
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive a unsigned 4-byte number from the connected Bluetooth device."
    .end annotation

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide/16 v6, 0xff

    const-string v0, "ReceiveUnsigned4ByteNumber"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_1

    aget-byte v1, v0, v11

    int-to-long v1, v1

    and-long/2addr v1, v6

    aget-byte v3, v0, v10

    int-to-long v3, v3

    and-long/2addr v3, v6

    const/16 v5, 0x8

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    aget-byte v3, v0, v9

    int-to-long v3, v3

    and-long/2addr v3, v6

    const/16 v5, 0x10

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    aget-byte v0, v0, v8

    int-to-long v3, v0

    and-long/2addr v3, v6

    const/16 v0, 0x18

    shl-long/2addr v3, v0

    or-long v0, v1, v3

    goto :goto_0

    :cond_1
    aget-byte v1, v0, v8

    int-to-long v1, v1

    and-long/2addr v1, v6

    aget-byte v3, v0, v9

    int-to-long v3, v3

    and-long/2addr v3, v6

    const/16 v5, 0x8

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    aget-byte v3, v0, v10

    int-to-long v3, v3

    and-long/2addr v3, v6

    const/16 v5, 0x10

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    aget-byte v0, v0, v11

    int-to-long v3, v0

    and-long/2addr v3, v6

    const/16 v0, 0x18

    shl-long/2addr v3, v0

    or-long v0, v1, v3

    goto :goto_0
.end method

.method public ReceiveUnsignedBytes(I)Ljava/util/List;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive multiple unsigned byte values from the connected Bluetooth device. If numberOfBytes is less than 0, read until a delimiter byte value is received."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "ReceiveUnsignedBytes"

    invoke-virtual {p0, v0, p1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public Secure(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->secure:Z

    return-void
.end method

.method public Secure()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether to invoke SSP (Simple Secure Pairing), which is supported on devices with Bluetooth v2.1 or higher. When working with embedded Bluetooth devices, this property may need to be set to False. For Android 2.0-2.2, this property setting will be ignored."
    .end annotation

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->secure:Z

    return v0
.end method

.method public Send1ByteNumber(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send a 1-byte number to the connected Bluetooth device."
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "Send1ByteNumber"

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    int-to-byte v2, v1

    shr-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    const/16 v1, 0x1ff

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const/16 v1, 0x1fe

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->write(Ljava/lang/String;B)V

    goto :goto_0
.end method

.method public Send2ByteNumber(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send a 2-byte number to the connected Bluetooth device."
    .end annotation

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v0, "Send2ByteNumber"

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    new-array v2, v7, [B

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v3, v4, :cond_0

    and-int/lit16 v3, v1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v6

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v3, v1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    :goto_0
    shr-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    const/16 v1, 0x200

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    :goto_1
    return-void

    :catch_0
    move-exception v1

    const/16 v1, 0x1fe

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    and-int/lit16 v3, v1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v3, v1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v6

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->write(Ljava/lang/String;[B)V

    goto :goto_1
.end method

.method public Send4ByteNumber(Ljava/lang/String;)V
    .locals 13
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send a 4-byte number to the connected Bluetooth device."
    .end annotation

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/16 v9, 0x8

    const-wide/16 v7, 0xff

    const-string v0, "Send4ByteNumber"

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    const/4 v3, 0x4

    new-array v3, v3, [B

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v4, v5, :cond_0

    const/4 v4, 0x3

    and-long v5, v1, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    shr-long/2addr v1, v9

    and-long v4, v1, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v12

    shr-long/2addr v1, v9

    and-long v4, v1, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v11

    shr-long/2addr v1, v9

    and-long v4, v1, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v10

    :goto_0
    shr-long/2addr v1, v9

    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-eqz v4, :cond_1

    const-wide/16 v4, -0x1

    cmp-long v1, v1, v4

    if-eqz v1, :cond_1

    const/16 v1, 0x200

    new-array v2, v12, [Ljava/lang/Object;

    aput-object p1, v2, v10

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    :goto_1
    return-void

    :catch_0
    move-exception v1

    const/16 v1, 0x1fe

    new-array v2, v11, [Ljava/lang/Object;

    aput-object p1, v2, v10

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    and-long v4, v1, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v10

    shr-long/2addr v1, v9

    and-long v4, v1, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v11

    shr-long/2addr v1, v9

    and-long v4, v1, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v12

    shr-long/2addr v1, v9

    const/4 v4, 0x3

    and-long v5, v1, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0, v3}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->write(Ljava/lang/String;[B)V

    goto :goto_1
.end method

.method public SendBytes(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send a list of byte values to the connected Bluetooth device."
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v0, "SendBytes"

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    array-length v2, v1

    new-array v2, v2, [B

    move v3, v6

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    and-int/lit16 v5, v4, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    shr-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_0

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    const/16 v1, 0x202

    new-array v2, v7, [Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    :goto_1
    return-void

    :catch_0
    move-exception v1

    const/16 v1, 0x201

    new-array v2, v7, [Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->write(Ljava/lang/String;[B)V

    goto :goto_1
.end method

.method public SendText(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send text to the connected Bluetooth device."
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->encoding:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    const-string v1, "SendText"

    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->write(Ljava/lang/String;[B)V

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UnsupportedEncodingException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method addBluetoothConnectionListener(Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothConnectionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected varargs bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public onDelete()V
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->prepareToDie()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->prepareToDie()V

    return-void
.end method

.method protected final read(Ljava/lang/String;I)[B
    .locals 9

    const/16 v8, 0x205

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->IsConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x203

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    new-array v0, v5, [B

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-ltz p2, :cond_3

    new-array v1, p2, [B

    move v2, v5

    :goto_1
    if-ge v2, p2, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->inputStream:Ljava/io/InputStream;

    array-length v4, v1

    sub-int/2addr v4, v2

    invoke-virtual {v3, v1, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-ne v3, v6, :cond_2

    const/16 v3, 0x206

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v3, v4}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    invoke-virtual {v0, v1, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :goto_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0

    :cond_2
    add-int/2addr v2, v3

    goto :goto_1

    :catch_0
    move-exception v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v5

    invoke-virtual {p0, p1, v8, v4}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ne v1, v6, :cond_4

    const/16 v1, 0x206

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-virtual {p0, p1, v8, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    :try_start_2
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-byte v2, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->delimiter:B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    if-ne v1, v2, :cond_3

    goto :goto_3
.end method

.method removeBluetoothConnectionListener(Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothConnectionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final setConnection(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->connectedBluetoothSocket:Ljava/lang/Object;

    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->connectedBluetoothSocket:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getInputStream(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->inputStream:Ljava/io/InputStream;

    new-instance v0, Ljava/io/BufferedOutputStream;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->connectedBluetoothSocket:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->getOutputStream(Ljava/lang/Object;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->outputStream:Ljava/io/OutputStream;

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->fireAfterConnectEvent()V

    return-void
.end method

.method protected write(Ljava/lang/String;B)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->IsConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x203

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v1, 0x204

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected write(Ljava/lang/String;[B)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->IsConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x203

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v1, 0x204

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method
