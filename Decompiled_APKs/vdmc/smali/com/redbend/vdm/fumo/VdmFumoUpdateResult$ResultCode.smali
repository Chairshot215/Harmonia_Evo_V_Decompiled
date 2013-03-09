.class public final enum Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;
.super Ljava/lang/Enum;
.source "VdmFumoUpdateResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbend/vdm/fumo/VdmFumoUpdateResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResultCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

.field public static final enum AUTH_FAILED:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

.field public static final enum BAD_URL:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

.field public static final enum CLIENT_ERROR:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

.field public static final enum DL_SERVER_ERROR:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

.field public static final enum DL_SERVER_UNAVAILABLE:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

.field public static final enum DOWNLOAD_CANCELED:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

.field public static final enum FW_UP_CORRUPT:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

.field public static final enum NETWORK:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

.field public static final enum NOT_ACCEPTABLE:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

.field public static final enum NOT_IMPLEMENTED:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

.field public static final enum OUT_OF_MEMORY_FOR_DOWNLOAD:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

.field public static final enum OUT_OF_MEMORY_FOR_UPDATE:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

.field public static final enum PACKAGE_MISMATCH:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

.field public static final enum REQUEST_TIMEOUT:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

.field public static final enum SIGNATURE_FAILED:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

.field public static final enum SUCCESSFUL:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

.field public static final enum UNDEFINED_ERROR:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

.field public static final enum UPDATE_FAILED:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

.field public static final enum USER_CANCELED:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;


# instance fields
.field private val:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 31
    new-instance v0, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    const-string v1, "SUCCESSFUL"

    const/16 v2, 0xc8

    invoke-direct {v0, v1, v4, v2}, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->SUCCESSFUL:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 34
    new-instance v0, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    const-string v1, "CLIENT_ERROR"

    const/16 v2, 0x190

    invoke-direct {v0, v1, v5, v2}, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->CLIENT_ERROR:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 37
    new-instance v0, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    const-string v1, "DOWNLOAD_CANCELED"

    const/16 v2, 0x191

    invoke-direct {v0, v1, v6, v2}, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->DOWNLOAD_CANCELED:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 38
    new-instance v0, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    const-string v1, "USER_CANCELED"

    const/16 v2, 0x191

    invoke-direct {v0, v1, v7, v2}, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->USER_CANCELED:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 44
    new-instance v0, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    const-string v1, "FW_UP_CORRUPT"

    const/16 v2, 0x192

    invoke-direct {v0, v1, v8, v2}, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->FW_UP_CORRUPT:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 47
    new-instance v0, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    const-string v1, "PACKAGE_MISMATCH"

    const/4 v2, 0x5

    const/16 v3, 0x193

    invoke-direct {v0, v1, v2, v3}, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->PACKAGE_MISMATCH:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 50
    new-instance v0, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    const-string v1, "SIGNATURE_FAILED"

    const/4 v2, 0x6

    const/16 v3, 0x194

    invoke-direct {v0, v1, v2, v3}, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->SIGNATURE_FAILED:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 53
    new-instance v0, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    const-string v1, "NOT_ACCEPTABLE"

    const/4 v2, 0x7

    const/16 v3, 0x195

    invoke-direct {v0, v1, v2, v3}, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->NOT_ACCEPTABLE:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 56
    new-instance v0, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    const-string v1, "AUTH_FAILED"

    const/16 v2, 0x8

    const/16 v3, 0x196

    invoke-direct {v0, v1, v2, v3}, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->AUTH_FAILED:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 59
    new-instance v0, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    const-string v1, "REQUEST_TIMEOUT"

    const/16 v2, 0x9

    const/16 v3, 0x197

    invoke-direct {v0, v1, v2, v3}, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->REQUEST_TIMEOUT:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 62
    new-instance v0, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    const-string v1, "NOT_IMPLEMENTED"

    const/16 v2, 0xa

    const/16 v3, 0x198

    invoke-direct {v0, v1, v2, v3}, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->NOT_IMPLEMENTED:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 65
    new-instance v0, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    const-string v1, "UNDEFINED_ERROR"

    const/16 v2, 0xb

    const/16 v3, 0x199

    invoke-direct {v0, v1, v2, v3}, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->UNDEFINED_ERROR:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 68
    new-instance v0, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    const-string v1, "UPDATE_FAILED"

    const/16 v2, 0xc

    const/16 v3, 0x19a

    invoke-direct {v0, v1, v2, v3}, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->UPDATE_FAILED:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 71
    new-instance v0, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    const-string v1, "BAD_URL"

    const/16 v2, 0xd

    const/16 v3, 0x19b

    invoke-direct {v0, v1, v2, v3}, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->BAD_URL:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 74
    new-instance v0, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    const-string v1, "DL_SERVER_UNAVAILABLE"

    const/16 v2, 0xe

    const/16 v3, 0x19c

    invoke-direct {v0, v1, v2, v3}, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->DL_SERVER_UNAVAILABLE:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 77
    new-instance v0, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    const-string v1, "DL_SERVER_ERROR"

    const/16 v2, 0xf

    const/16 v3, 0x1f4

    invoke-direct {v0, v1, v2, v3}, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->DL_SERVER_ERROR:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 80
    new-instance v0, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    const-string v1, "OUT_OF_MEMORY_FOR_DOWNLOAD"

    const/16 v2, 0x10

    const/16 v3, 0x1f5

    invoke-direct {v0, v1, v2, v3}, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->OUT_OF_MEMORY_FOR_DOWNLOAD:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 83
    new-instance v0, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    const-string v1, "OUT_OF_MEMORY_FOR_UPDATE"

    const/16 v2, 0x11

    const/16 v3, 0x1f6

    invoke-direct {v0, v1, v2, v3}, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->OUT_OF_MEMORY_FOR_UPDATE:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 86
    new-instance v0, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    const-string v1, "NETWORK"

    const/16 v2, 0x12

    const/16 v3, 0x1f7

    invoke-direct {v0, v1, v2, v3}, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->NETWORK:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 28
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    sget-object v1, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->SUCCESSFUL:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->CLIENT_ERROR:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->DOWNLOAD_CANCELED:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->USER_CANCELED:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->FW_UP_CORRUPT:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->PACKAGE_MISMATCH:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->SIGNATURE_FAILED:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->NOT_ACCEPTABLE:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->AUTH_FAILED:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->REQUEST_TIMEOUT:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->NOT_IMPLEMENTED:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->UNDEFINED_ERROR:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->UPDATE_FAILED:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->BAD_URL:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->DL_SERVER_UNAVAILABLE:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->DL_SERVER_ERROR:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->OUT_OF_MEMORY_FOR_DOWNLOAD:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->OUT_OF_MEMORY_FOR_UPDATE:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->NETWORK:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->$VALUES:[Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "v"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->val:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;
    .locals 1
    .parameter "name"

    .prologue
    .line 28
    const-class v0, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    return-object v0
.end method

.method public static values()[Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->$VALUES:[Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    invoke-virtual {v0}, [Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    return-object v0
.end method


# virtual methods
.method val()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->val:I

    return v0
.end method
