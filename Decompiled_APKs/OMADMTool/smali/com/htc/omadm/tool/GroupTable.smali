.class public Lcom/htc/omadm/tool/GroupTable;
.super Ljava/lang/Object;
.source "GroupTable.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String; = null

.field public static final OMADMToolT_VOCODE:I = 0x2

.field public static final OMADMTool_AKEY:I = 0x3

.field public static final OMADMTool_COUNT:I = 0xf

.field public static final OMADMTool_DATA:I = 0x5

.field public static final OMADMTool_ERI:I = 0xe

.field public static final OMADMTool_GPSCLRX:I = 0x9

.field private static OMADMTool_GROUP_CODE:[Ljava/lang/String; = null

.field private static OMADMTool_GROUP_MODE:[I = null

.field private static OMADMTool_GROUP_OPERATORID:[I = null

.field private static OMADMTool_GROUP_XML:[Ljava/lang/String; = null

.field public static final OMADMTool_HELP:I = 0xb

.field public static final OMADMTool_MSL:I = 0x7

.field public static final OMADMTool_NVMFG:I = 0xd

.field public static final OMADMTool_OTKSL:I = 0x8

.field public static final OMADMTool_PREV:I = 0x4

.field public static final OMADMTool_PRL:I = 0x6

.field public static final OMADMTool_PROGRAM:I = 0xc

.field public static final OMADMTool_PST:I = 0x0

.field public static final OMADMTool_RTN:I = 0x1

.field public static final OMADMTool_SCRTN:I = 0xa

.field private static mCurrentIndex:I

.field private static mPassword:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0xf

    .line 6
    const-string v0, "GroupTableOMADM"

    sput-object v0, Lcom/htc/omadm/tool/GroupTable;->LOG_TAG:Ljava/lang/String;

    .line 24
    const/4 v0, -0x1

    sput v0, Lcom/htc/omadm/tool/GroupTable;->mCurrentIndex:I

    .line 25
    const-string v0, ""

    sput-object v0, Lcom/htc/omadm/tool/GroupTable;->mPassword:Ljava/lang/String;

    .line 27
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "66236"

    aput-object v1, v0, v4

    const-string v1, "786"

    aput-object v1, v0, v5

    const-string v1, "8626337"

    aput-object v1, v0, v6

    const-string v1, "2539"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "7738"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "3282"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "775"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "MSL"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "OTKSL"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "4772579"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "72786"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "4357"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "7764726"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "68634"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "374"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/omadm/tool/GroupTable;->OMADMTool_GROUP_CODE:[Ljava/lang/String;

    .line 33
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "omadmtool_pst"

    aput-object v1, v0, v4

    const-string v1, "omadmtool_rtn"

    aput-object v1, v0, v5

    const-string v1, "omadmtool_vocode"

    aput-object v1, v0, v6

    const-string v1, "omadmtool_akey"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "omadmtool_prev"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "group_data"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "omadmtoolz_prl"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "omadmtool_msl"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "omadmtool_otksl"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "omadmtool_scrtn"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "omadmtool_help"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "group_program"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "omadmtool_nvmfg"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "omadmtool _eri"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/omadm/tool/GroupTable;->OMADMTool_GROUP_XML:[Ljava/lang/String;

    .line 39
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/omadm/tool/GroupTable;->OMADMTool_GROUP_MODE:[I

    .line 45
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/omadm/tool/GroupTable;->OMADMTool_GROUP_OPERATORID:[I

    return-void

    .line 39
    :array_0
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    .line 45
    :array_1
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCode(I)Ljava/lang/String;
    .locals 3
    .parameter "iGroupIndex"

    .prologue
    .line 64
    if-ltz p0, :cond_0

    const/16 v0, 0xf

    if-lt p0, v0, :cond_1

    .line 65
    :cond_0
    sget-object v0, Lcom/htc/omadm/tool/GroupTable;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCode>index is outofboundary:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_1
    sget-object v0, Lcom/htc/omadm/tool/GroupTable;->OMADMTool_GROUP_CODE:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static getCodeIndex(Ljava/lang/String;)I
    .locals 4
    .parameter "iCode"

    .prologue
    .line 53
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xf

    if-ge v0, v1, :cond_1

    .line 54
    sget-object v1, Lcom/htc/omadm/tool/GroupTable;->OMADMTool_GROUP_CODE:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    .end local v0           #i:I
    :goto_1
    return v0

    .line 53
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_1
    sget-object v1, Lcom/htc/omadm/tool/GroupTable;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getCurrentIndex()I
    .locals 3

    .prologue
    .line 97
    sget-object v0, Lcom/htc/omadm/tool/GroupTable;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/omadm/tool/GroupTable;->mCurrentIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    sget v0, Lcom/htc/omadm/tool/GroupTable;->mCurrentIndex:I

    return v0
.end method

.method public static getMode(I)I
    .locals 3
    .parameter "iGroupIndex"

    .prologue
    .line 78
    if-ltz p0, :cond_0

    const/16 v0, 0xf

    if-lt p0, v0, :cond_1

    .line 79
    :cond_0
    sget-object v0, Lcom/htc/omadm/tool/GroupTable;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMode>index is outofboundary:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_1
    sget-object v0, Lcom/htc/omadm/tool/GroupTable;->OMADMTool_GROUP_MODE:[I

    aget v0, v0, p0

    return v0
.end method

.method public static getOperator(I)I
    .locals 3
    .parameter "iGroupIndex"

    .prologue
    .line 85
    if-ltz p0, :cond_0

    const/16 v0, 0xf

    if-lt p0, v0, :cond_1

    .line 86
    :cond_0
    sget-object v0, Lcom/htc/omadm/tool/GroupTable;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOperator>index is outofboundary:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_1
    sget-object v0, Lcom/htc/omadm/tool/GroupTable;->OMADMTool_GROUP_OPERATORID:[I

    aget v0, v0, p0

    return v0
.end method

.method public static getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/htc/omadm/tool/GroupTable;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public static getXML(I)Ljava/lang/String;
    .locals 3
    .parameter "iGroupIndex"

    .prologue
    .line 71
    if-ltz p0, :cond_0

    const/16 v0, 0xf

    if-lt p0, v0, :cond_1

    .line 72
    :cond_0
    sget-object v0, Lcom/htc/omadm/tool/GroupTable;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getXML>index is outofboundary:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_1
    sget-object v0, Lcom/htc/omadm/tool/GroupTable;->OMADMTool_GROUP_XML:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static setCurrentIndex(I)V
    .locals 3
    .parameter "iGroupIndex"

    .prologue
    .line 92
    sget-object v0, Lcom/htc/omadm/tool/GroupTable;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    sput p0, Lcom/htc/omadm/tool/GroupTable;->mCurrentIndex:I

    .line 94
    return-void
.end method

.method public static setPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "iPW"

    .prologue
    .line 102
    sput-object p0, Lcom/htc/omadm/tool/GroupTable;->mPassword:Ljava/lang/String;

    .line 103
    return-void
.end method
