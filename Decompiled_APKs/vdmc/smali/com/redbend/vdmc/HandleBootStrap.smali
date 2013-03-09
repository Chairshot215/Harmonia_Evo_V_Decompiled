.class public Lcom/redbend/vdmc/HandleBootStrap;
.super Ljava/lang/Object;
.source "HandleBootStrap.java"

# interfaces
.implements Lcom/redbend/vdm/BootMsgHandler;
.implements Lcom/redbend/vdm/SessionInitiator;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HandleBootStrap"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private hexDecode([B[B)I
    .locals 7
    .parameter "hex"
    .parameter "bin"

    .prologue
    .line 100
    const/4 v4, 0x0

    .line 101
    .local v4, nbl:B
    const/4 v0, 0x0

    .line 102
    .local v0, i:I
    const/4 v3, 0x0

    .line 103
    .local v3, icp:I
    const/4 v1, 0x0

    .line 104
    .local v1, iba:I
    array-length v5, p2

    array-length v6, p1

    div-int/lit8 v6, v6, 0x2

    if-ge v5, v6, :cond_0

    .line 105
    const/4 v5, -0x1

    .line 119
    :goto_0
    return v5

    .line 106
    :cond_0
    :goto_1
    array-length v5, p1

    if-ge v0, v5, :cond_5

    .line 108
    aget-byte v5, p1, v3

    const/16 v6, 0x30

    if-lt v5, v6, :cond_2

    aget-byte v5, p1, v3

    const/16 v6, 0x39

    if-gt v5, v6, :cond_2

    .line 109
    aget-byte v5, p1, v3

    add-int/lit8 v5, v5, -0x30

    int-to-byte v4, v5

    .line 114
    :cond_1
    :goto_2
    and-int/lit8 v5, v0, 0x1

    if-nez v5, :cond_4

    .line 115
    shl-int/lit8 v5, v4, 0x4

    int-to-byte v5, v5

    aput-byte v5, p2, v1

    .line 106
    :goto_3
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 110
    :cond_2
    aget-byte v5, p1, v3

    const/16 v6, 0x41

    if-lt v5, v6, :cond_3

    aget-byte v5, p1, v3

    const/16 v6, 0x46

    if-gt v5, v6, :cond_3

    .line 111
    aget-byte v5, p1, v3

    add-int/lit8 v5, v5, -0x41

    add-int/lit8 v5, v5, 0xa

    int-to-byte v4, v5

    goto :goto_2

    .line 112
    :cond_3
    aget-byte v5, p1, v3

    const/16 v6, 0x61

    if-lt v5, v6, :cond_1

    aget-byte v5, p1, v3

    const/16 v6, 0x66

    if-gt v5, v6, :cond_1

    .line 113
    aget-byte v5, p1, v3

    add-int/lit8 v5, v5, -0x61

    add-int/lit8 v5, v5, 0xa

    int-to-byte v4, v5

    goto :goto_2

    .line 117
    :cond_4
    add-int/lit8 v2, v1, 0x1

    .end local v1           #iba:I
    .local v2, iba:I
    aget-byte v5, p2, v1

    or-int/2addr v5, v4

    int-to-byte v5, v5

    aput-byte v5, p2, v1

    move v1, v2

    .end local v2           #iba:I
    .restart local v1       #iba:I
    goto :goto_3

    .line 119
    :cond_5
    array-length v5, p1

    div-int/lit8 v5, v5, 0x2

    goto :goto_0
.end method

.method private hexDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "hex"

    .prologue
    .line 72
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    new-array v0, v8, [B

    .line 73
    .local v0, bin:[B
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 74
    .local v1, cp:[C
    const/4 v6, 0x0

    .line 75
    .local v6, nbl:B
    const/4 v2, 0x0

    .line 76
    .local v2, i:I
    const/4 v5, 0x0

    .line 77
    .local v5, icp:I
    const/4 v3, 0x0

    .line 79
    .local v3, iba:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v2, v8, :cond_4

    .line 80
    aget-char v8, v1, v5

    const/16 v9, 0x30

    if-lt v8, v9, :cond_1

    aget-char v8, v1, v5

    const/16 v9, 0x39

    if-gt v8, v9, :cond_1

    .line 81
    aget-char v8, v1, v5

    add-int/lit8 v8, v8, -0x30

    int-to-byte v6, v8

    .line 88
    :cond_0
    :goto_1
    and-int/lit8 v8, v2, 0x1

    if-nez v8, :cond_3

    .line 89
    shl-int/lit8 v8, v6, 0x4

    int-to-byte v8, v8

    aput-byte v8, v0, v3

    .line 79
    :goto_2
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 82
    :cond_1
    aget-char v8, v1, v5

    const/16 v9, 0x41

    if-lt v8, v9, :cond_2

    aget-char v8, v1, v5

    const/16 v9, 0x46

    if-gt v8, v9, :cond_2

    .line 83
    aget-char v8, v1, v5

    add-int/lit8 v8, v8, -0x41

    add-int/lit8 v8, v8, 0xa

    int-to-byte v6, v8

    goto :goto_1

    .line 84
    :cond_2
    aget-char v8, v1, v5

    const/16 v9, 0x61

    if-lt v8, v9, :cond_0

    aget-char v8, v1, v5

    const/16 v9, 0x66

    if-gt v8, v9, :cond_0

    .line 85
    aget-char v8, v1, v5

    add-int/lit8 v8, v8, -0x61

    add-int/lit8 v8, v8, 0xa

    int-to-byte v6, v8

    goto :goto_1

    .line 91
    :cond_3
    add-int/lit8 v4, v3, 0x1

    .end local v3           #iba:I
    .local v4, iba:I
    aget-byte v8, v0, v3

    or-int/2addr v8, v6

    int-to-byte v8, v8

    aput-byte v8, v0, v3

    move v3, v4

    .end local v4           #iba:I
    .restart local v3       #iba:I
    goto :goto_2

    .line 94
    :cond_4
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([B)V

    .line 95
    .local v7, nss:Ljava/lang/String;
    return-object v7
.end method

.method private logInitiator(Ljava/lang/String;Lcom/redbend/vdm/SessionInitiator;)V
    .locals 3
    .parameter "prefix"
    .parameter "initiator"

    .prologue
    .line 19
    const-string v1, "HandleBootStrap"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - initiator is: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p2, :cond_0

    const-string v0, "NULL"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    return-void

    .line 19
    :cond_0
    invoke-interface {p2}, Lcom/redbend/vdm/SessionInitiator;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public BootPin(Ljava/lang/String;)V
    .locals 3
    .parameter "szPin"

    .prologue
    .line 24
    const/4 v0, 0x1

    .line 25
    .local v0, bFlag:Z
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 27
    :cond_0
    invoke-static {}, Lcom/redbend/vdmc/Vdmc;->getEngine()Lcom/redbend/vdm/VdmEngine;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/redbend/vdm/VdmEngine;->notifyUserPinSet(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lcom/redbend/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v1

    .line 29
    .local v1, e:Lcom/redbend/vdm/VdmException;
    invoke-virtual {v1}, Lcom/redbend/vdm/VdmException;->printStackTrace()V

    goto :goto_0
.end method

.method public getAddrType(Ljava/lang/String;)I
    .locals 5
    .parameter "addr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 47
    const-string v0, "http://"

    .line 48
    .local v0, httpPrefix:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    const/4 v1, 0x1

    .line 54
    .local v1, result:I
    return v1

    .line 52
    .end local v1           #result:I
    :cond_0
    new-instance v2, Lcom/redbend/vdm/VdmException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid Address Type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/redbend/vdm/VdmException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    const-string v0, "HandleBootStrap"

    return-object v0
.end method

.method public getNss([B)I
    .locals 2
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 64
    const/16 v1, 0x10

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    .line 65
    .local v0, defaultNss:[B
    invoke-direct {p0, v0, p1}, Lcom/redbend/vdmc/HandleBootStrap;->hexDecode([B[B)I

    move-result v1

    return v1

    .line 64
    :array_0
    .array-data 0x1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public getPin()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 69
    return-void
.end method
