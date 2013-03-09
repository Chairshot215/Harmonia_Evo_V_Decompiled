.class public Lcom/futuredial/obex/OBEX_FD_ANDROID;
.super Lcom/futuredial/obex/OBEX_PBAP;
.source "OBEX_FD_ANDROID.java"


# static fields
.field private static final FD_TARGET:[B


# instance fields
.field private iType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/futuredial/obex/OBEX_FD_ANDROID;->FD_TARGET:[B

    return-void

    :array_0
    .array-data 0x1
        0x66t
        0x75t
        0x74t
        0x75t
        0x72t
        0x65t
        0x64t
        0x69t
        0x61t
        0x6ct
        0x2et
        0x20t
        0x6ft
        0x62t
        0x65t
        0x78t
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/futuredial/obex/OBEX_PBAP;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/futuredial/obex/OBEX_FD_ANDROID;->iType:I

    .line 16
    iput p1, p0, Lcom/futuredial/obex/OBEX_FD_ANDROID;->iType:I

    .line 17
    return-void
.end method


# virtual methods
.method protected StringToByteArray(Ljava/lang/String;)[B
    .locals 7
    .parameter "strValue"

    .prologue
    const/4 v6, 0x0

    .line 21
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 22
    :cond_0
    const-string v4, "OBEX_FD_ANDROID"

    const-string v5, "strValue is empty"

    invoke-static {v4, v5}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    new-array v3, v6, [B

    .line 33
    :goto_0
    return-object v3

    .line 25
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 26
    .local v2, nLen:I
    add-int/lit8 v4, v2, 0x1

    new-array v3, v4, [B

    .line 27
    .local v3, ret:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 29
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 30
    .local v0, c:I
    and-int/lit16 v4, v0, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 27
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 32
    .end local v0           #c:I
    :cond_2
    aput-byte v6, v3, v2

    goto :goto_0
.end method

.method public getConnectStream()[B
    .locals 4

    .prologue
    .line 68
    iget-object v1, p0, Lcom/futuredial/obex/OBEX_FD_ANDROID;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-virtual {v1}, Lcom/futuredial/obex/OBEX_CON_PKG;->freeHeader()V

    .line 69
    iget-object v1, p0, Lcom/futuredial/obex/OBEX_FD_ANDROID;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    const/16 v2, 0x2800

    invoke-virtual {v1, v2}, Lcom/futuredial/obex/OBEX_CON_PKG;->setMaxPkgSizeForce(I)V

    .line 70
    iget-object v1, p0, Lcom/futuredial/obex/OBEX_FD_ANDROID;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/futuredial/obex/OBEX_CON_PKG;->setVersion(B)V

    .line 71
    const/4 v1, 0x0

    new-array v0, v1, [B

    .line 72
    .local v0, ret:[B
    iget-object v1, p0, Lcom/futuredial/obex/OBEX_FD_ANDROID;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    const/16 v2, 0x46

    sget-object v3, Lcom/futuredial/obex/OBEX_FD_ANDROID;->FD_TARGET:[B

    invoke-virtual {v1, v2, v3}, Lcom/futuredial/obex/OBEX_CON_PKG;->addHeader(B[B)V

    .line 73
    iget-object v1, p0, Lcom/futuredial/obex/OBEX_FD_ANDROID;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/futuredial/obex/OBEX_CON_PKG;->getObexPkgStream(Z)[B

    move-result-object v0

    .line 74
    const-string v1, "getConnectStream"

    invoke-static {v1, v0}, Lcom/futuredial/xmlbuild/XmlCDATA;->LogBinData(Ljava/lang/String;[B)V

    .line 75
    return-object v0
.end method

.method public getTargetName()[B
    .locals 2

    .prologue
    .line 38
    const/16 v1, 0x18

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    .line 39
    .local v0, name:[B
    return-object v0

    .line 38
    :array_0
    .array-data 0x1
        0x0t
        0x74t
        0x0t
        0x65t
        0x0t
        0x78t
        0x0t
        0x74t
        0x0t
        0x2ft
        0x0t
        0x78t
        0x0t
        0x2dt
        0x0t
        0x6at
        0x0t
        0x73t
        0x0t
        0x6ft
        0x0t
        0x6et
        0x0t
        0x0t
    .end array-data
.end method

.method public getType()[B
    .locals 2

    .prologue
    .line 43
    const/4 v0, 0x0

    .line 44
    .local v0, name:[B
    iget v1, p0, Lcom/futuredial/obex/OBEX_FD_ANDROID;->iType:I

    packed-switch v1, :pswitch_data_0

    .line 63
    :goto_0
    :pswitch_0
    return-object v0

    .line 46
    :pswitch_1
    const-string v1, "x-bt/phonebook"

    invoke-virtual {p0, v1}, Lcom/futuredial/obex/OBEX_FD_ANDROID;->StringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 47
    goto :goto_0

    .line 49
    :pswitch_2
    const-string v1, "x-bt/calendar"

    invoke-virtual {p0, v1}, Lcom/futuredial/obex/OBEX_FD_ANDROID;->StringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 50
    goto :goto_0

    .line 52
    :pswitch_3
    const-string v1, "x-bt/sms"

    invoke-virtual {p0, v1}, Lcom/futuredial/obex/OBEX_FD_ANDROID;->StringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 53
    goto :goto_0

    .line 55
    :pswitch_4
    const-string v1, "x-bt/bookmark"

    invoke-virtual {p0, v1}, Lcom/futuredial/obex/OBEX_FD_ANDROID;->StringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 56
    goto :goto_0

    .line 58
    :pswitch_5
    const-string v1, "x-bt/task"

    invoke-virtual {p0, v1}, Lcom/futuredial/obex/OBEX_FD_ANDROID;->StringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 59
    goto :goto_0

    .line 44
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public initGetObject()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/16 v5, -0x35

    .line 80
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/futuredial/obex/OBEX_FD_ANDROID;->m_bFinished:Z

    .line 82
    iget-object v3, p0, Lcom/futuredial/obex/OBEX_FD_ANDROID;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v3}, Lcom/futuredial/obex/OBEX_PKG;->freeHeader()V

    .line 84
    iget-object v3, p0, Lcom/futuredial/obex/OBEX_FD_ANDROID;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/futuredial/obex/OBEX_PKG;->setCommand(B)V

    .line 86
    iget-object v3, p0, Lcom/futuredial/obex/OBEX_FD_ANDROID;->m_ObexConPkg:Lcom/futuredial/obex/OBEX_CON_PKG;

    invoke-virtual {v3, v5}, Lcom/futuredial/obex/OBEX_CON_PKG;->getHeader(B)Lcom/futuredial/obex/OBEX_HEADER;

    move-result-object v3

    check-cast v3, Lcom/futuredial/obex/OBEX_HEADER_D;

    move-object v0, v3

    check-cast v0, Lcom/futuredial/obex/OBEX_HEADER_D;

    .line 87
    .local v0, conid:Lcom/futuredial/obex/OBEX_HEADER_D;
    iget-object v3, p0, Lcom/futuredial/obex/OBEX_FD_ANDROID;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v0}, Lcom/futuredial/obex/OBEX_HEADER_D;->getValue()I

    move-result v4

    invoke-virtual {v3, v5, v4}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(BI)V

    .line 89
    invoke-virtual {p0}, Lcom/futuredial/obex/OBEX_FD_ANDROID;->getTargetName()[B

    move-result-object v1

    .line 90
    .local v1, name:[B
    iget-object v3, p0, Lcom/futuredial/obex/OBEX_FD_ANDROID;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    invoke-virtual {v3, v6, v1}, Lcom/futuredial/obex/OBEX_PKG;->addUStrHeader(B[B)V

    .line 92
    invoke-virtual {p0}, Lcom/futuredial/obex/OBEX_FD_ANDROID;->getType()[B

    move-result-object v2

    .line 93
    .local v2, type:[B
    iget-object v3, p0, Lcom/futuredial/obex/OBEX_FD_ANDROID;->m_ObexPkg:Lcom/futuredial/obex/OBEX_PKG;

    const/16 v4, 0x42

    invoke-virtual {v3, v4, v2}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(B[B)V

    .line 98
    return v6
.end method
