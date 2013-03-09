.class public final enum Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;
.super Ljava/lang/Enum;
.source "VdmCommException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbend/vdm/comm/VdmCommException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VdmCommError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

.field public static final enum BAD_URL:Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

.field public static final enum COMMS_BAD_PROTOCOL:Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

.field public static final enum COMMS_FATAL:Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

.field public static final enum COMMS_HTTP_ERROR:Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

.field public static final enum COMMS_MIME_MISMATCH:Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

.field public static final enum COMMS_NON_FATAL:Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

.field public static final enum COMMS_SOCKET_ERROR:Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

.field public static final enum COMMS_SOCKET_TIMEOUT:Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

.field public static final enum INVALID_INPUT_PARAM:Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

.field public static final enum UNSPECIFIC:Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;


# instance fields
.field public string:Ljava/lang/String;

.field public val:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 30
    new-instance v0, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    const-string v1, "INVALID_INPUT_PARAM"

    const-string v2, "VDM_ERR_INVALID_INPUT_PARAM"

    invoke-direct {v0, v1, v6, v2, v5}, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->INVALID_INPUT_PARAM:Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    .line 33
    new-instance v0, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    const-string v1, "UNSPECIFIC"

    const-string v2, "VDM_ERR_UNSPECIFIC"

    const/16 v3, 0x10

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->UNSPECIFIC:Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    .line 36
    new-instance v0, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    const-string v1, "COMMS_BAD_PROTOCOL"

    const-string v2, "VDM_ERR_COMMS_BAD_PROTOCOL"

    const/16 v3, 0x6300

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->COMMS_BAD_PROTOCOL:Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    .line 39
    new-instance v0, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    const-string v1, "COMMS_MIME_MISMATCH"

    const-string v2, "VDM_ERR_COMMS_MIME_MISMATCH"

    const/16 v3, 0x6301

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->COMMS_MIME_MISMATCH:Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    .line 42
    new-instance v0, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    const-string v1, "COMMS_FATAL"

    const-string v2, "VDM_ERR_COMMS_FATAL"

    const/16 v3, 0x6302

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->COMMS_FATAL:Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    .line 47
    new-instance v0, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    const-string v1, "COMMS_NON_FATAL"

    const/4 v2, 0x5

    const-string v3, "VDM_ERR_COMMS_NON_FATAL"

    const/16 v4, 0x6303

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->COMMS_NON_FATAL:Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    .line 50
    new-instance v0, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    const-string v1, "COMMS_SOCKET_TIMEOUT"

    const/4 v2, 0x6

    const-string v3, "VDM_ERR_COMMS_SOCKET_TIMEOUT"

    const/16 v4, 0x6304

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->COMMS_SOCKET_TIMEOUT:Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    .line 53
    new-instance v0, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    const-string v1, "COMMS_SOCKET_ERROR"

    const/4 v2, 0x7

    const-string v3, "VDM_ERR_COMMS_SOCKET_ERROR"

    const/16 v4, 0x6305

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->COMMS_SOCKET_ERROR:Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    .line 58
    new-instance v0, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    const-string v1, "COMMS_HTTP_ERROR"

    const/16 v2, 0x8

    const-string v3, "VDM_ERR_COMMS_HTTP_ERROR"

    const/16 v4, 0x6340

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->COMMS_HTTP_ERROR:Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    .line 61
    new-instance v0, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    const-string v1, "BAD_URL"

    const/16 v2, 0x9

    const-string v3, "VDM_ERR_BAD_URL"

    const/16 v4, 0x6406

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->BAD_URL:Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    .line 27
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    sget-object v1, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->INVALID_INPUT_PARAM:Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->UNSPECIFIC:Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    aput-object v1, v0, v7

    sget-object v1, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->COMMS_BAD_PROTOCOL:Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->COMMS_MIME_MISMATCH:Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    aput-object v1, v0, v8

    sget-object v1, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->COMMS_FATAL:Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->COMMS_NON_FATAL:Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->COMMS_SOCKET_TIMEOUT:Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->COMMS_SOCKET_ERROR:Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->COMMS_HTTP_ERROR:Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->BAD_URL:Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->$VALUES:[Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter "str"
    .parameter "v"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    iput-object p3, p0, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->string:Ljava/lang/String;

    .line 65
    iput p4, p0, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->val:I

    .line 66
    return-void
.end method

.method public static fromInt(I)Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;
    .locals 5
    .parameter "errNum"

    .prologue
    .line 76
    invoke-static {}, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->values()[Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    move-result-object v0

    .local v0, arr$:[Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 77
    .local v1, err:Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;
    iget v4, v1, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->val:I

    if-ne v4, p0, :cond_0

    .line 80
    .end local v1           #err:Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;
    :goto_1
    return-object v1

    .line 76
    .restart local v1       #err:Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    .end local v1           #err:Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;
    :cond_1
    sget-object v1, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->UNSPECIFIC:Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;
    .locals 1
    .parameter "name"

    .prologue
    .line 27
    const-class v0, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    return-object v0
.end method

.method public static values()[Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->$VALUES:[Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    invoke-virtual {v0}, [Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/redbend/vdm/comm/VdmCommException$VdmCommError;

    return-object v0
.end method
