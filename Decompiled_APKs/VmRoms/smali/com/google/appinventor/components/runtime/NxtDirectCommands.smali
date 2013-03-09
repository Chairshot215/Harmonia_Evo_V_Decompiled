.class public Lcom/google/appinventor/components/runtime/NxtDirectCommands;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides a low-level interface to a LEGO MINDSTORMS NXT robot, with functions to send NXT Direct Commands."
    iconName = "images/legoMindstormsNxt.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    const-string v0, "NxtDirectCommands"

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    return-void
.end method

.method private closeHandle(Ljava/lang/String;I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x3

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v2, v0, v1

    const/16 v1, -0x7c

    aput-byte v1, v0, v2

    const/4 v1, 0x2

    invoke-virtual {p0, p2, v0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v1

    aget-byte v0, v0, v2

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    return-void
.end method

.method private getOutputState(Ljava/lang/String;I)[B
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x3

    new-array v0, v0, [B

    aput-byte v1, v0, v1

    const/4 v1, 0x6

    aput-byte v1, v0, v2

    const/4 v1, 0x2

    invoke-virtual {p0, p2, v0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v1

    aget-byte v0, v0, v2

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v0

    if-eqz v0, :cond_1

    array-length v0, v1

    const/16 v2, 0x19

    if-ne v0, v2, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": unexpected return package length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected 25)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openWrite(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/Integer;
    .locals 4

    const/4 v3, 0x1

    const/16 v0, 0x1a

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v3, v0, v1

    const/16 v1, -0x7f

    aput-byte v1, v0, v3

    const/4 v1, 0x2

    const/16 v2, 0x13

    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    const/16 v1, 0x16

    invoke-virtual {p0, p3, p4, v0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyULONGValueToBytes(J[BI)V

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v1

    aget-byte v0, v0, v3

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v0

    if-eqz v0, :cond_1

    array-length v0, v1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": unexpected return package length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected 4)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openWriteLinear(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/Integer;
    .locals 4

    const/4 v3, 0x1

    const/16 v0, 0x1a

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v3, v0, v1

    const/16 v1, -0x77

    aput-byte v1, v0, v3

    const/4 v1, 0x2

    const/16 v2, 0x13

    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    const/16 v1, 0x16

    invoke-virtual {p0, p3, p4, v0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyULONGValueToBytes(J[BI)V

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v1

    aget-byte v0, v0, v3

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v0

    if-eqz v0, :cond_1

    array-length v0, v1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": unexpected return package length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected 4)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeChunk(Ljava/lang/String;I[BI)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/16 v0, 0x20

    if-le p4, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length must be <= 32"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/lit8 v0, p4, 0x3

    new-array v0, v0, [B

    aput-byte v2, v0, v4

    const/16 v1, -0x7d

    aput-byte v1, v0, v2

    const/4 v1, 0x2

    invoke-virtual {p0, p2, v0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    const/4 v1, 0x3

    invoke-static {p3, v4, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v1

    aget-byte v0, v0, v2

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v0

    if-eqz v0, :cond_2

    array-length v0, v1

    const/4 v2, 0x6

    if-ne v0, v2, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUWORDValueFromBytes([BI)I

    move-result v0

    if-eq v0, p4, :cond_3

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": only "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes were written "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "(expected "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to write file on robot"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": unexpected return package length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected 6)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v0, v4

    :cond_3
    return v0
.end method


# virtual methods
.method public DeleteFile(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Delete a file on the robot."
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v0, "DeleteFile"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0x196

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x16

    new-array v1, v1, [B

    aput-byte v4, v1, v3

    const/16 v2, -0x7b

    aput-byte v2, v1, v4

    const/4 v2, 0x2

    const/16 v3, 0x13

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v2

    aget-byte v1, v1, v4

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    goto :goto_0
.end method

.method public DownloadFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Download a file to the robot."
    .end annotation

    const-string v0, "DownloadFile"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0x19e

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0x19f

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v1, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->copyMediaToTempFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v4, 0x400

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-string v5, ".rxe"

    invoke-virtual {p2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, ".ric"

    invoke-virtual {p2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    invoke-direct {p0, v0, p2, v3, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->openWriteLinear(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/Integer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v5

    :goto_1
    if-nez v5, :cond_5

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0x1a0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-virtual {v2, p0, v0, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    :try_start_5
    invoke-direct {p0, v0, p2, v3, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->openWrite(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/Integer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v5

    goto :goto_1

    :cond_5
    const/16 v6, 0x20

    :try_start_6
    new-array v6, v6, [B

    const-wide/16 v7, 0x0

    :goto_2
    cmp-long v9, v7, v3

    if-gez v9, :cond_6

    const-wide/16 v9, 0x20

    sub-long v11, v3, v7

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    long-to-int v9, v9

    const/4 v10, 0x0

    invoke-virtual {v2, v6, v10, v9}, Ljava/io/InputStream;->read([BII)I

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v0, v10, v6, v9}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->writeChunk(Ljava/lang/String;I[BI)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v9

    int-to-long v9, v9

    add-long/2addr v7, v9

    goto :goto_2

    :cond_6
    :try_start_7
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->closeHandle(Ljava/lang/String;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    :try_start_a
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v0, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->closeHandle(Ljava/lang/String;I)V

    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_1
    move-exception v3

    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :catchall_2
    move-exception v2

    :try_start_c
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    throw v2
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
.end method

.method public GetBatteryLevel()I
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the battery level for the robot. Returns the voltage in millivolts."
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v0, "GetBatteryLevel"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [B

    aput-byte v4, v1, v4

    const/16 v2, 0xb

    aput-byte v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v2

    aget-byte v1, v1, v3

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v0

    if-eqz v0, :cond_2

    array-length v0, v2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    invoke-virtual {p0, v2, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUWORDValueFromBytes([BI)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetBatteryLevel: unexpected return package length "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected 5)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v0, v4

    goto :goto_0
.end method

.method public GetBrickName()Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the brick name of the robot."
    .end annotation

    const/4 v3, 0x1

    const-string v0, "GetBrickName"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v3, v1, v2

    const/16 v2, -0x65

    aput-byte v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v2

    aget-byte v1, v1, v3

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    invoke-virtual {p0, v2, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getStringValueFromBytes([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public GetCurrentProgramName()Ljava/lang/String;
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the name of currently running program on the robot."
    .end annotation

    const/4 v2, 0x0

    const/4 v5, 0x1

    const-string v0, "GetCurrentProgramName"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [B

    aput-byte v2, v1, v2

    const/16 v2, 0x11

    aput-byte v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v2

    aget-byte v3, v1, v5

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getStatus(Ljava/lang/String;[BB)I

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x3

    invoke-virtual {p0, v2, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getStringValueFromBytes([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v4, 0xec

    if-ne v3, v4, :cond_2

    const-string v0, ""

    goto :goto_0

    :cond_2
    aget-byte v1, v1, v5

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    const-string v0, ""

    goto :goto_0
.end method

.method public GetFirmwareVersion()Ljava/util/List;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the firmware and protocol version numbers for the robot as a list where the first element is the firmware version number and the second element is the protocol version number."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x1

    const-string v0, "GetFirmwareVersion"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v3, v1, v2

    const/16 v2, -0x78

    aput-byte v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v2

    aget-byte v1, v1, v3

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x6

    aget-byte v3, v2, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x5

    aget-byte v3, v2, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x4

    aget-byte v3, v2, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public GetInputValues(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reads the values of an input sensor on the robot. Assumes sensor type has been configured via SetInputMode."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "GetInputValues"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->convertSensorPortLetterToNumber(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getInputValues(Ljava/lang/String;I)[B

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getBooleanValueFromBytes([BI)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getBooleanValueFromBytes([BI)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x6

    invoke-virtual {p0, v0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x7

    invoke-virtual {p0, v0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUWORDValueFromBytes([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v2, 0xa

    invoke-virtual {p0, v0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUWORDValueFromBytes([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v2, 0xc

    invoke-virtual {p0, v0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getSWORDValueFromBytes([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v2, 0xe

    invoke-virtual {p0, v0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getSWORDValueFromBytes([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0x198

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, p0, v0, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_0
.end method

.method public GetOutputState(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reads the output state of a motor on the robot."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    const-string v0, "GetOutputState"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->convertMotorPortLetterToNumber(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getOutputState(Ljava/lang/String;I)[B

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getSBYTEValueFromBytes([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x6

    invoke-virtual {p0, v0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x7

    invoke-virtual {p0, v0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getSBYTEValueFromBytes([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x9

    invoke-virtual {p0, v0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getULONGValueFromBytes([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v2, 0xd

    invoke-virtual {p0, v0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getSLONGValueFromBytes([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x11

    invoke-virtual {p0, v0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getSLONGValueFromBytes([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x15

    invoke-virtual {p0, v0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getSLONGValueFromBytes([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0x197

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, p0, v0, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_0
.end method

.method public KeepAlive()J
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Keep Alive. Returns the current sleep time limit in milliseconds."
    .end annotation

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "KeepAlive"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move-wide v0, v4

    :goto_0
    return-wide v0

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [B

    aput-byte v2, v1, v2

    const/16 v2, 0xd

    aput-byte v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v2

    aget-byte v1, v1, v3

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v0

    if-eqz v0, :cond_2

    array-length v0, v2

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    invoke-virtual {p0, v2, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getULONGValueFromBytes([BI)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeepAlive: unexpected return package length "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected 7)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-wide v0, v4

    goto :goto_0
.end method

.method public ListFiles(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns a list containing the names of matching files found on the robot."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v0, "ListFiles"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "*.*"

    :goto_1
    const/16 v3, 0x16

    new-array v3, v3, [B

    aput-byte v5, v3, v6

    const/16 v4, -0x7a

    aput-byte v4, v3, v5

    const/16 v4, 0x13

    invoke-virtual {p0, v2, v3, v7, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    invoke-virtual {p0, v0, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v2

    aget-byte v3, v3, v5

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getStatus(Ljava/lang/String;[BB)I

    move-result v3

    move v9, v3

    move-object v3, v2

    move v2, v9

    :goto_2
    if-nez v2, :cond_1

    invoke-virtual {p0, v3, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v2

    const/4 v4, 0x4

    invoke-virtual {p0, v3, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getStringValueFromBytes([BI)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v3, v8, [B

    aput-byte v5, v3, v6

    const/16 v4, -0x79

    aput-byte v4, v3, v5

    invoke-virtual {p0, v2, v3, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    invoke-virtual {p0, v0, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v2

    aget-byte v3, v3, v5

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getStatus(Ljava/lang/String;[BB)I

    move-result v3

    move v9, v3

    move-object v3, v2

    move v2, v9

    goto :goto_2

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v2, p1

    goto :goto_1
.end method

.method public LsGetStatus(Ljava/lang/String;)I
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the count of available bytes to read."
    .end annotation

    const/4 v4, 0x0

    const-string v0, "LsGetStatus"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->convertSensorPortLetterToNumber(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->lsGetStatus(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0x198

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v1, p0, v0, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    move v0, v4

    goto :goto_0
.end method

.method public LsRead(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reads unsigned low speed data from an input sensor on the robot. Assumes sensor type has been configured via SetInputMode."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const-string v0, "LsRead"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->convertSensorPortLetterToNumber(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->lsRead(Ljava/lang/String;I)[B

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v2

    move v3, v4

    :goto_1
    if-ge v3, v2, :cond_1

    add-int/lit8 v4, v3, 0x4

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0x198

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v1, p0, v0, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public LsWrite(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;I)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Writes low speed data to an input sensor on the robot. Assumes sensor type has been configured via SetInputMode."
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v0, "LsWrite"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->convertSensorPortLetterToNumber(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v2

    const/16 v3, 0x10

    if-le v2, v3, :cond_1

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0x19b

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0x198

    new-array v3, v8, [Ljava/lang/Object;

    aput-object p1, v3, v7

    invoke-virtual {v1, p0, v0, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    array-length v3, v2

    new-array v3, v3, [B

    move v4, v7

    :goto_1
    array-length v5, v2

    if-ge v4, v5, :cond_3

    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    and-int/lit16 v6, v5, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v4

    shr-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_2

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0x19d

    new-array v3, v8, [Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, p0, v0, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v1

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0x19c

    new-array v3, v8, [Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, p0, v0, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0, v1, v3, p3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->lsWrite(Ljava/lang/String;I[BI)V

    goto :goto_0
.end method

.method public MessageRead(I)Ljava/lang/String;
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Read a message from a mailbox (1-10) on the robot."
    .end annotation

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v0, "MessageRead"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    if-lt p1, v6, :cond_1

    const/16 v1, 0xa

    if-le p1, v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0x199

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, p0, v0, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    const-string v0, ""

    goto :goto_0

    :cond_2
    add-int/lit8 v1, p1, -0x1

    new-array v2, v8, [B

    aput-byte v5, v2, v5

    const/16 v3, 0x13

    aput-byte v3, v2, v6

    const/4 v3, 0x2

    invoke-virtual {p0, v5, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    invoke-virtual {p0, v1, v2, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    invoke-virtual {p0, v6, v2, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyBooleanValueToBytes(Z[BI)V

    invoke-virtual {p0, v0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v3

    aget-byte v2, v2, v6

    invoke-virtual {p0, v0, v3, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v0

    if-eqz v0, :cond_5

    array-length v0, v3

    const/16 v2, 0x40

    if-ne v0, v2, :cond_4

    invoke-virtual {p0, v3, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v0

    if-eq v0, v1, :cond_3

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MessageRead: unexpected return mailbox: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " (expected "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p0, v3, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v0

    sub-int/2addr v0, v6

    invoke-virtual {p0, v3, v8, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getStringValueFromBytes([BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MessageRead: unexpected return package length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected 64)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string v0, ""

    goto/16 :goto_0
.end method

.method public MessageWrite(ILjava/lang/String;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Write a message to a mailbox (1-10) on the robot."
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v0, "MessageWrite"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-lt p1, v6, :cond_1

    const/16 v1, 0xa

    if-le p1, v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0x199

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, p0, v0, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x3a

    if-le v1, v2, :cond_3

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0x19a

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    add-int/lit8 v2, p1, -0x1

    add-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [B

    const/16 v4, -0x80

    aput-byte v4, v3, v5

    const/16 v4, 0x9

    aput-byte v4, v3, v6

    const/4 v4, 0x2

    invoke-virtual {p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    add-int/lit8 v2, v1, 0x1

    const/4 v4, 0x3

    invoke-virtual {p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    const/4 v2, 0x4

    invoke-virtual {p0, p2, v3, v2, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    invoke-virtual {p0, v0, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public PlaySoundFile(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Play a sound file on the robot."
    .end annotation

    const/4 v5, 0x2

    const/4 v4, 0x0

    const-string v0, "PlaySoundFile"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0x196

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".rso"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    const/16 v2, 0x17

    new-array v2, v2, [B

    const/16 v3, -0x80

    aput-byte v3, v2, v4

    const/4 v3, 0x1

    aput-byte v5, v2, v3

    invoke-virtual {p0, v4, v2, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyBooleanValueToBytes(Z[BI)V

    const/4 v3, 0x3

    const/16 v4, 0x13

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    invoke-virtual {p0, v0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    goto :goto_0

    :cond_2
    move-object v1, p1

    goto :goto_1
.end method

.method public PlayTone(II)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Make the robot play a tone."
    .end annotation

    const/16 v5, 0x36b0

    const/16 v4, 0xc8

    const-string v0, "PlayTone"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-ge p1, v4, :cond_2

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "frequencyHz "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is invalid, using 200."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    :goto_1
    if-le v1, v5, :cond_1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "frequencyHz "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is invalid, using 14000."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v5

    :cond_1
    const/4 v2, 0x6

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/16 v4, -0x80

    aput-byte v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x3

    aput-byte v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUWORDValueToBytes(I[BI)V

    const/4 v1, 0x4

    invoke-virtual {p0, p2, v2, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUWORDValueToBytes(I[BI)V

    invoke-virtual {p0, v0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    goto :goto_0

    :cond_2
    move v1, p1

    goto :goto_1
.end method

.method public ResetInputScaledValue(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reset the scaled value of an input sensor on the robot."
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "ResetInputScaledValue"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->convertSensorPortLetterToNumber(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->resetInputScaledValue(Ljava/lang/String;I)V

    const/4 v2, 0x3

    new-array v2, v2, [B

    const/16 v3, -0x80

    aput-byte v3, v2, v4

    const/16 v3, 0x8

    aput-byte v3, v2, v5

    const/4 v3, 0x2

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    invoke-virtual {p0, v0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0x198

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v1, p0, v0, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public ResetMotorPosition(Ljava/lang/String;Z)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reset motor position."
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "ResetMotorPosition"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->convertMotorPortLetterToNumber(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v2, 0x4

    new-array v2, v2, [B

    const/16 v3, -0x80

    aput-byte v3, v2, v4

    const/16 v3, 0xa

    aput-byte v3, v2, v5

    const/4 v3, 0x2

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    const/4 v1, 0x3

    invoke-virtual {p0, p2, v2, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyBooleanValueToBytes(Z[BI)V

    invoke-virtual {p0, v0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0x197

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v1, p0, v0, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public SetBrickName(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the brick name of the robot."
    .end annotation

    const/4 v4, 0x1

    const-string v0, "SetBrickName"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x12

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v4, v1, v2

    const/16 v2, -0x68

    aput-byte v2, v1, v4

    const/4 v2, 0x2

    const/16 v3, 0xf

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v2

    aget-byte v1, v1, v4

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    goto :goto_0
.end method

.method public SetInputMode(Ljava/lang/String;II)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Configure an input sensor on the robot."
    .end annotation

    const-string v0, "SetInputMode"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->convertSensorPortLetterToNumber(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->setInputMode(Ljava/lang/String;III)V

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0x198

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, p0, v0, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public SetOutputState(Ljava/lang/String;IIIIIJ)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets the output state of a motor on the robot."
    .end annotation

    const-string v1, "SetOutputState"

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->convertMotorPortLetterToNumber(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    invoke-virtual {p0, p5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sanitizeTurnRatio(I)I

    move-result v6

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-virtual/range {v0 .. v9}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->setOutputState(Ljava/lang/String;IIIIIIJ)V

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0x197

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public StartProgram(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start execution of a previously downloaded program on the robot."
    .end annotation

    const/4 v4, 0x0

    const-string v0, "StartProgram"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0x195

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".rxe"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    const/16 v2, 0x16

    new-array v2, v2, [B

    const/16 v3, -0x80

    aput-byte v3, v2, v4

    const/4 v3, 0x1

    aput-byte v4, v2, v3

    const/4 v3, 0x2

    const/16 v4, 0x13

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    invoke-virtual {p0, v0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    goto :goto_0

    :cond_2
    move-object v1, p1

    goto :goto_1
.end method

.method public StopProgram()V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stop execution of the currently running program on the robot."
    .end annotation

    const/4 v4, 0x1

    const-string v0, "StopProgram"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, -0x80

    aput-byte v3, v1, v2

    aput-byte v4, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public StopSoundPlayback()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stop sound playback."
    .end annotation

    const-string v0, "StopSoundPlayback"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, -0x80

    aput-byte v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0xc

    aput-byte v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    goto :goto_0
.end method
