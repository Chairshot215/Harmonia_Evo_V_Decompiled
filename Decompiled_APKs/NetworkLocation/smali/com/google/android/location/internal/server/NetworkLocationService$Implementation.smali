.class Lcom/google/android/location/internal/server/NetworkLocationService$Implementation;
.super Lcom/google/android/location/internal/INetworkLocationInternal$Stub;
.source "NetworkLocationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/location/internal/server/NetworkLocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Implementation"
.end annotation


# instance fields
.field private final packageManager:Landroid/content/pm/PackageManager;

.field final synthetic this$0:Lcom/google/android/location/internal/server/NetworkLocationService;


# direct methods
.method private constructor <init>(Lcom/google/android/location/internal/server/NetworkLocationService;)V
    .locals 1
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/android/location/internal/server/NetworkLocationService$Implementation;->this$0:Lcom/google/android/location/internal/server/NetworkLocationService;

    invoke-direct {p0}, Lcom/google/android/location/internal/INetworkLocationInternal$Stub;-><init>()V

    .line 150
    iget-object v0, p0, Lcom/google/android/location/internal/server/NetworkLocationService$Implementation;->this$0:Lcom/google/android/location/internal/server/NetworkLocationService;

    invoke-virtual {v0}, Lcom/google/android/location/internal/server/NetworkLocationService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/internal/server/NetworkLocationService$Implementation;->packageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/internal/server/NetworkLocationService;Lcom/google/android/location/internal/server/NetworkLocationService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/google/android/location/internal/server/NetworkLocationService$Implementation;-><init>(Lcom/google/android/location/internal/server/NetworkLocationService;)V

    return-void
.end method

.method private checkPermissionsAndClearIdentity()V
    .locals 4

    .prologue
    .line 241
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 242
    .local v0, callerUid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 243
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 244
    .local v1, myUid:I
    iget-object v2, p0, Lcom/google/android/location/internal/server/NetworkLocationService$Implementation;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Access is restricted to packages signed with the same certificate."

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 248
    :cond_0
    return-void
.end method

.method private eventLogString(Landroid/location/Location;)Ljava/lang/String;
    .locals 3
    .parameter "location"

    .prologue
    .line 251
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x3e80

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 252
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 253
    .local v1, pw:Ljava/io/PrintWriter;
    if-eqz p1, :cond_0

    .line 254
    const-string v2, "RMI for "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p1}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 256
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 258
    :cond_0
    iget-object v2, p0, Lcom/google/android/location/internal/server/NetworkLocationService$Implementation;->this$0:Lcom/google/android/location/internal/server/NetworkLocationService;

    #calls: Lcom/google/android/location/internal/server/NetworkLocationService;->dump(Ljava/io/PrintWriter;)V
    invoke-static {v2, v1}, Lcom/google/android/location/internal/server/NetworkLocationService;->access$200(Lcom/google/android/location/internal/server/NetworkLocationService;Ljava/io/PrintWriter;)V

    .line 259
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 260
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public cancelLocationUpdates(Lcom/google/android/location/internal/ILocationListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/google/android/location/internal/server/NetworkLocationService$Implementation;->checkPermissionsAndClearIdentity()V

    .line 160
    iget-object v0, p0, Lcom/google/android/location/internal/server/NetworkLocationService$Implementation;->this$0:Lcom/google/android/location/internal/server/NetworkLocationService;

    #getter for: Lcom/google/android/location/internal/server/NetworkLocationService;->serviceThread:Lcom/google/android/location/internal/server/ServiceThread;
    invoke-static {v0}, Lcom/google/android/location/internal/server/NetworkLocationService;->access$100(Lcom/google/android/location/internal/server/NetworkLocationService;)Lcom/google/android/location/internal/server/ServiceThread;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/location/internal/server/ServiceThread;->removeListener(Lcom/google/android/location/internal/ILocationListener;)V

    .line 161
    return-void
.end method

.method public getDebugDump()Ljava/lang/String;
    .locals 3

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/google/android/location/internal/server/NetworkLocationService$Implementation;->checkPermissionsAndClearIdentity()V

    .line 229
    sget-object v0, Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;->ANDROID:Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;

    .line 230
    .local v0, nlpApk:Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/location/internal/server/NetworkLocationService$Implementation;->this$0:Lcom/google/android/location/internal/server/NetworkLocationService;

    invoke-static {v0, v2}, Lcom/google/android/location/internal/NlpVersionInfo;->getNlpVersionInfo(Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;Landroid/content/Context;)Lcom/google/android/location/internal/NlpVersionInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/google/android/location/internal/server/NetworkLocationService$Implementation;->eventLogString(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getRmiInfo(Landroid/location/Location;)[B
    .locals 18
    .parameter "location"

    .prologue
    .line 164
    invoke-direct/range {p0 .. p0}, Lcom/google/android/location/internal/server/NetworkLocationService$Implementation;->checkPermissionsAndClearIdentity()V

    .line 166
    new-instance v9, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v13, Lcom/google/android/location/protocol/LocserverMessageTypes;->GLOC_REQUEST_ELEMENT:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v9, v13}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 167
    .local v9, requestElement:Lcom/google/common/io/protocol/ProtoBuf;
    new-instance v8, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v13, Lcom/google/android/location/protocol/LocserverMessageTypes;->NLP_ELEMENT_APP_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v8, v13}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 170
    .local v8, nlpElement:Lcom/google/common/io/protocol/ProtoBuf;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/location/internal/server/NetworkLocationService$Implementation;->this$0:Lcom/google/android/location/internal/server/NetworkLocationService;

    #getter for: Lcom/google/android/location/internal/server/NetworkLocationService;->serviceThread:Lcom/google/android/location/internal/server/ServiceThread;
    invoke-static {v13}, Lcom/google/android/location/internal/server/NetworkLocationService;->access$100(Lcom/google/android/location/internal/server/NetworkLocationService;)Lcom/google/android/location/internal/server/ServiceThread;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/google/android/location/internal/server/ServiceThread;->getReportedLocation(Landroid/location/Location;)Ljava/lang/Object;

    move-result-object v10

    .line 171
    .local v10, source:Ljava/lang/Object;
    const/4 v13, 0x5

    invoke-direct/range {p0 .. p1}, Lcom/google/android/location/internal/server/NetworkLocationService$Implementation;->eventLogString(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v13, v14}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 174
    new-instance v6, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v13, Lcom/google/android/location/protocol/LocserverMessageTypes;->GLOCATION:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v6, v13}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 175
    .local v6, glocation:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v13, 0x3

    invoke-virtual {v9, v13, v6}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 176
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 177
    const/4 v13, 0x3

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v14

    float-to-int v14, v14

    invoke-virtual {v6, v13, v14}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 179
    :cond_0
    new-instance v5, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v13, Lcom/google/android/location/protocol/LocserverMessageTypes;->GLAT_LNG:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v5, v13}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 180
    .local v5, glatlng:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v13, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v14

    const-wide v16, 0x416312d000000000L

    mul-double v14, v14, v16

    double-to-int v14, v14

    invoke-virtual {v5, v13, v14}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 181
    const/4 v13, 0x2

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v14

    const-wide v16, 0x416312d000000000L

    mul-double v14, v14, v16

    double-to-int v14, v14

    invoke-virtual {v5, v13, v14}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 182
    const/4 v13, 0x1

    invoke-virtual {v6, v13, v5}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 185
    if-nez v10, :cond_2

    .line 186
    const/4 v13, 0x6

    const/4 v14, 0x0

    invoke-virtual {v8, v13, v14}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 218
    :cond_1
    :goto_0
    const/4 v13, 0x7

    :try_start_0
    invoke-virtual {v8}, Lcom/google/common/io/protocol/ProtoBuf;->toByteArray()[B

    move-result-object v14

    invoke-virtual {v9, v13, v14}, Lcom/google/common/io/protocol/ProtoBuf;->addBytes(I[B)V

    .line 219
    const/4 v13, 0x6

    const/4 v14, 0x2

    invoke-virtual {v9, v13, v14}, Lcom/google/common/io/protocol/ProtoBuf;->addInt(II)V

    .line 220
    invoke-virtual {v9}, Lcom/google/common/io/protocol/ProtoBuf;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 223
    :goto_1
    return-object v13

    .line 188
    :cond_2
    instance-of v13, v10, Lcom/google/android/location/data/NetworkLocation;

    if-eqz v13, :cond_6

    move-object v7, v10

    .line 189
    check-cast v7, Lcom/google/android/location/data/NetworkLocation;

    .line 190
    .local v7, networkLocation:Lcom/google/android/location/data/NetworkLocation;
    iget-object v13, v7, Lcom/google/android/location/data/NetworkLocation;->bestResult:Lcom/google/android/location/data/LocatorResult;

    iget-object v14, v7, Lcom/google/android/location/data/NetworkLocation;->cellResult:Lcom/google/android/location/data/CellLocatorResult;

    if-ne v13, v14, :cond_5

    .line 191
    const/4 v13, 0x6

    const/4 v14, 0x1

    invoke-virtual {v8, v13, v14}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 195
    :cond_3
    :goto_2
    invoke-static {}, Lcom/google/android/location/os/real/RealOs;->bootTimeMillis()J

    move-result-wide v1

    .line 196
    .local v1, bootTime:J
    iget-object v13, v7, Lcom/google/android/location/data/NetworkLocation;->cellResult:Lcom/google/android/location/data/CellLocatorResult;

    if-eqz v13, :cond_4

    .line 197
    iget-object v13, v7, Lcom/google/android/location/data/NetworkLocation;->cellResult:Lcom/google/android/location/data/CellLocatorResult;

    iget-object v3, v13, Lcom/google/android/location/data/CellLocatorResult;->cellStatus:Lcom/google/android/location/data/CellStatus;

    .line 198
    .local v3, cellStatus:Lcom/google/android/location/data/CellStatus;
    if-eqz v3, :cond_4

    .line 199
    invoke-virtual {v3, v9, v1, v2}, Lcom/google/android/location/data/CellStatus;->addToRequestElement(Lcom/google/common/io/protocol/ProtoBuf;J)V

    .line 202
    .end local v3           #cellStatus:Lcom/google/android/location/data/CellStatus;
    :cond_4
    iget-object v13, v7, Lcom/google/android/location/data/NetworkLocation;->wifiResult:Lcom/google/android/location/data/WifiLocatorResult;

    if-eqz v13, :cond_1

    .line 203
    iget-object v13, v7, Lcom/google/android/location/data/NetworkLocation;->wifiResult:Lcom/google/android/location/data/WifiLocatorResult;

    iget-object v12, v13, Lcom/google/android/location/data/WifiLocatorResult;->wifiScan:Lcom/google/android/location/data/WifiScan;

    .line 204
    .local v12, wifiScan:Lcom/google/android/location/data/WifiScan;
    if-eqz v12, :cond_1

    .line 205
    invoke-virtual {v12, v1, v2}, Lcom/google/android/location/data/WifiScan;->createWifiProfile(J)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v11

    .line 206
    .local v11, wifiProfile:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v13, 0x2

    invoke-virtual {v9, v13, v11}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    goto :goto_0

    .line 192
    .end local v1           #bootTime:J
    .end local v11           #wifiProfile:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v12           #wifiScan:Lcom/google/android/location/data/WifiScan;
    :cond_5
    iget-object v13, v7, Lcom/google/android/location/data/NetworkLocation;->bestResult:Lcom/google/android/location/data/LocatorResult;

    iget-object v14, v7, Lcom/google/android/location/data/NetworkLocation;->wifiResult:Lcom/google/android/location/data/WifiLocatorResult;

    if-ne v13, v14, :cond_3

    .line 193
    const/4 v13, 0x6

    const/4 v14, 0x2

    invoke-virtual {v8, v13, v14}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    goto :goto_2

    .line 209
    .end local v7           #networkLocation:Lcom/google/android/location/data/NetworkLocation;
    :cond_6
    instance-of v13, v10, Lcom/google/android/location/data/LocatorResult;

    if-eqz v13, :cond_7

    .line 210
    const/4 v13, 0x6

    const/4 v14, 0x3

    invoke-virtual {v8, v13, v14}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    goto :goto_0

    .line 211
    :cond_7
    instance-of v13, v10, Landroid/location/Location;

    if-eqz v13, :cond_1

    .line 212
    const/4 v13, 0x6

    const/4 v14, 0x4

    invoke-virtual {v8, v13, v14}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    goto :goto_0

    .line 221
    :catch_0
    move-exception v4

    .line 222
    .local v4, e:Ljava/io/IOException;
    const-string v13, "androidInternalNlpService"

    const-string v14, "getRmiInfo"

    invoke-static {v13, v14, v4}, Lcom/google/android/location/os/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 223
    const/4 v13, 0x0

    goto :goto_1
.end method

.method public requestLocationUpdates(ILcom/google/android/location/internal/ILocationListener;I)V
    .locals 1
    .parameter "periodSecs"
    .parameter "listener"
    .parameter "maxLastKnownLocationSecs"

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/google/android/location/internal/server/NetworkLocationService$Implementation;->checkPermissionsAndClearIdentity()V

    .line 155
    iget-object v0, p0, Lcom/google/android/location/internal/server/NetworkLocationService$Implementation;->this$0:Lcom/google/android/location/internal/server/NetworkLocationService;

    #getter for: Lcom/google/android/location/internal/server/NetworkLocationService;->serviceThread:Lcom/google/android/location/internal/server/ServiceThread;
    invoke-static {v0}, Lcom/google/android/location/internal/server/NetworkLocationService;->access$100(Lcom/google/android/location/internal/server/NetworkLocationService;)Lcom/google/android/location/internal/server/ServiceThread;

    move-result-object v0

    invoke-virtual {v0, p2, p1, p3}, Lcom/google/android/location/internal/server/ServiceThread;->addListener(Lcom/google/android/location/internal/ILocationListener;II)V

    .line 156
    return-void
.end method
