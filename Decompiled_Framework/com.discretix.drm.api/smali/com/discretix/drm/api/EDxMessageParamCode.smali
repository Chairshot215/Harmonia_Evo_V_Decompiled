.class public final enum Lcom/discretix/drm/api/EDxMessageParamCode;
.super Ljava/lang/Enum;
.source "EDxMessageParamCode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/discretix/drm/api/EDxMessageParamCode$SwigNext;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/discretix/drm/api/EDxMessageParamCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/discretix/drm/api/EDxMessageParamCode;

.field public static final enum DX_MSG_PARAM_CONTENT_FILE_NAME:Lcom/discretix/drm/api/EDxMessageParamCode;

.field public static final enum DX_MSG_PARAM_CONTENT_ID:Lcom/discretix/drm/api/EDxMessageParamCode;

.field public static final enum DX_MSG_PARAM_COUNTS_LEFT:Lcom/discretix/drm/api/EDxMessageParamCode;

.field public static final enum DX_MSG_PARAM_DESCRIPTION:Lcom/discretix/drm/api/EDxMessageParamCode;

.field public static final enum DX_MSG_PARAM_DOMAIN_ALIAS:Lcom/discretix/drm/api/EDxMessageParamCode;

.field public static final enum DX_MSG_PARAM_DOMAIN_ID:Lcom/discretix/drm/api/EDxMessageParamCode;

.field public static final enum DX_MSG_PARAM_DOMAIN_NAME:Lcom/discretix/drm/api/EDxMessageParamCode;

.field public static final enum DX_MSG_PARAM_ICON_URI:Lcom/discretix/drm/api/EDxMessageParamCode;

.field public static final enum DX_MSG_PARAM_INFO_URL:Lcom/discretix/drm/api/EDxMessageParamCode;

.field public static final enum DX_MSG_PARAM_NAME:Lcom/discretix/drm/api/EDxMessageParamCode;

.field public static final enum DX_MSG_PARAM_OBJECT_URI:Lcom/discretix/drm/api/EDxMessageParamCode;

.field public static final enum DX_MSG_PARAM_RI_ALIAS:Lcom/discretix/drm/api/EDxMessageParamCode;

.field public static final enum DX_MSG_PARAM_RI_DOMAIN_NAME:Lcom/discretix/drm/api/EDxMessageParamCode;

.field public static final enum DX_MSG_PARAM_RI_FULL_NAME:Lcom/discretix/drm/api/EDxMessageParamCode;

.field public static final enum DX_MSG_PARAM_ROAP_ERROR_MSG:Lcom/discretix/drm/api/EDxMessageParamCode;

.field public static final enum DX_MSG_PARAM_ROAP_ERROR_REDIRECT_URL:Lcom/discretix/drm/api/EDxMessageParamCode;

.field public static final enum DX_MSG_PARAM_ROAP_STATUS:Lcom/discretix/drm/api/EDxMessageParamCode;

.field public static final enum DX_MSG_PARAM_RO_ALIAS:Lcom/discretix/drm/api/EDxMessageParamCode;

.field public static final enum DX_MSG_PARAM_SIZE:Lcom/discretix/drm/api/EDxMessageParamCode;

.field public static final enum DX_MSG_PARAM_TIME_LEFT:Lcom/discretix/drm/api/EDxMessageParamCode;

.field public static final enum DX_MSG_PARAM_TYPE:Lcom/discretix/drm/api/EDxMessageParamCode;

.field public static final enum DX_MSG_PARAM_VENDOR:Lcom/discretix/drm/api/EDxMessageParamCode;

.field public static final enum DX_NUM_OF_MSG_PARAMS:Lcom/discretix/drm/api/EDxMessageParamCode;


# instance fields
.field private final swigValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/discretix/drm/api/EDxMessageParamCode;

    const-string v1, "DX_MSG_PARAM_RI_DOMAIN_NAME"

    invoke-direct {v0, v1, v3}, Lcom/discretix/drm/api/EDxMessageParamCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxMessageParamCode;->DX_MSG_PARAM_RI_DOMAIN_NAME:Lcom/discretix/drm/api/EDxMessageParamCode;

    new-instance v0, Lcom/discretix/drm/api/EDxMessageParamCode;

    const-string v1, "DX_MSG_PARAM_RI_ALIAS"

    invoke-direct {v0, v1, v4}, Lcom/discretix/drm/api/EDxMessageParamCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxMessageParamCode;->DX_MSG_PARAM_RI_ALIAS:Lcom/discretix/drm/api/EDxMessageParamCode;

    new-instance v0, Lcom/discretix/drm/api/EDxMessageParamCode;

    const-string v1, "DX_MSG_PARAM_RI_FULL_NAME"

    invoke-direct {v0, v1, v5}, Lcom/discretix/drm/api/EDxMessageParamCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxMessageParamCode;->DX_MSG_PARAM_RI_FULL_NAME:Lcom/discretix/drm/api/EDxMessageParamCode;

    new-instance v0, Lcom/discretix/drm/api/EDxMessageParamCode;

    const-string v1, "DX_MSG_PARAM_DOMAIN_ID"

    invoke-direct {v0, v1, v6}, Lcom/discretix/drm/api/EDxMessageParamCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxMessageParamCode;->DX_MSG_PARAM_DOMAIN_ID:Lcom/discretix/drm/api/EDxMessageParamCode;

    new-instance v0, Lcom/discretix/drm/api/EDxMessageParamCode;

    const-string v1, "DX_MSG_PARAM_DOMAIN_ALIAS"

    invoke-direct {v0, v1, v7}, Lcom/discretix/drm/api/EDxMessageParamCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxMessageParamCode;->DX_MSG_PARAM_DOMAIN_ALIAS:Lcom/discretix/drm/api/EDxMessageParamCode;

    new-instance v0, Lcom/discretix/drm/api/EDxMessageParamCode;

    const-string v1, "DX_MSG_PARAM_DOMAIN_NAME"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxMessageParamCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxMessageParamCode;->DX_MSG_PARAM_DOMAIN_NAME:Lcom/discretix/drm/api/EDxMessageParamCode;

    new-instance v0, Lcom/discretix/drm/api/EDxMessageParamCode;

    const-string v1, "DX_MSG_PARAM_RO_ALIAS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxMessageParamCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxMessageParamCode;->DX_MSG_PARAM_RO_ALIAS:Lcom/discretix/drm/api/EDxMessageParamCode;

    new-instance v0, Lcom/discretix/drm/api/EDxMessageParamCode;

    const-string v1, "DX_MSG_PARAM_ROAP_ERROR_MSG"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxMessageParamCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxMessageParamCode;->DX_MSG_PARAM_ROAP_ERROR_MSG:Lcom/discretix/drm/api/EDxMessageParamCode;

    new-instance v0, Lcom/discretix/drm/api/EDxMessageParamCode;

    const-string v1, "DX_MSG_PARAM_ROAP_STATUS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxMessageParamCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxMessageParamCode;->DX_MSG_PARAM_ROAP_STATUS:Lcom/discretix/drm/api/EDxMessageParamCode;

    new-instance v0, Lcom/discretix/drm/api/EDxMessageParamCode;

    const-string v1, "DX_MSG_PARAM_ROAP_ERROR_REDIRECT_URL"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxMessageParamCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxMessageParamCode;->DX_MSG_PARAM_ROAP_ERROR_REDIRECT_URL:Lcom/discretix/drm/api/EDxMessageParamCode;

    new-instance v0, Lcom/discretix/drm/api/EDxMessageParamCode;

    const-string v1, "DX_MSG_PARAM_CONTENT_ID"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxMessageParamCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxMessageParamCode;->DX_MSG_PARAM_CONTENT_ID:Lcom/discretix/drm/api/EDxMessageParamCode;

    new-instance v0, Lcom/discretix/drm/api/EDxMessageParamCode;

    const-string v1, "DX_MSG_PARAM_INFO_URL"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxMessageParamCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxMessageParamCode;->DX_MSG_PARAM_INFO_URL:Lcom/discretix/drm/api/EDxMessageParamCode;

    new-instance v0, Lcom/discretix/drm/api/EDxMessageParamCode;

    const-string v1, "DX_MSG_PARAM_ICON_URI"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxMessageParamCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxMessageParamCode;->DX_MSG_PARAM_ICON_URI:Lcom/discretix/drm/api/EDxMessageParamCode;

    new-instance v0, Lcom/discretix/drm/api/EDxMessageParamCode;

    const-string v1, "DX_MSG_PARAM_NAME"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxMessageParamCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxMessageParamCode;->DX_MSG_PARAM_NAME:Lcom/discretix/drm/api/EDxMessageParamCode;

    new-instance v0, Lcom/discretix/drm/api/EDxMessageParamCode;

    const-string v1, "DX_MSG_PARAM_DESCRIPTION"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxMessageParamCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxMessageParamCode;->DX_MSG_PARAM_DESCRIPTION:Lcom/discretix/drm/api/EDxMessageParamCode;

    new-instance v0, Lcom/discretix/drm/api/EDxMessageParamCode;

    const-string v1, "DX_MSG_PARAM_VENDOR"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxMessageParamCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxMessageParamCode;->DX_MSG_PARAM_VENDOR:Lcom/discretix/drm/api/EDxMessageParamCode;

    new-instance v0, Lcom/discretix/drm/api/EDxMessageParamCode;

    const-string v1, "DX_MSG_PARAM_SIZE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxMessageParamCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxMessageParamCode;->DX_MSG_PARAM_SIZE:Lcom/discretix/drm/api/EDxMessageParamCode;

    new-instance v0, Lcom/discretix/drm/api/EDxMessageParamCode;

    const-string v1, "DX_MSG_PARAM_TYPE"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxMessageParamCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxMessageParamCode;->DX_MSG_PARAM_TYPE:Lcom/discretix/drm/api/EDxMessageParamCode;

    new-instance v0, Lcom/discretix/drm/api/EDxMessageParamCode;

    const-string v1, "DX_MSG_PARAM_OBJECT_URI"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxMessageParamCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxMessageParamCode;->DX_MSG_PARAM_OBJECT_URI:Lcom/discretix/drm/api/EDxMessageParamCode;

    new-instance v0, Lcom/discretix/drm/api/EDxMessageParamCode;

    const-string v1, "DX_MSG_PARAM_CONTENT_FILE_NAME"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxMessageParamCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxMessageParamCode;->DX_MSG_PARAM_CONTENT_FILE_NAME:Lcom/discretix/drm/api/EDxMessageParamCode;

    new-instance v0, Lcom/discretix/drm/api/EDxMessageParamCode;

    const-string v1, "DX_MSG_PARAM_COUNTS_LEFT"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxMessageParamCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxMessageParamCode;->DX_MSG_PARAM_COUNTS_LEFT:Lcom/discretix/drm/api/EDxMessageParamCode;

    new-instance v0, Lcom/discretix/drm/api/EDxMessageParamCode;

    const-string v1, "DX_MSG_PARAM_TIME_LEFT"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxMessageParamCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxMessageParamCode;->DX_MSG_PARAM_TIME_LEFT:Lcom/discretix/drm/api/EDxMessageParamCode;

    new-instance v0, Lcom/discretix/drm/api/EDxMessageParamCode;

    const-string v1, "DX_NUM_OF_MSG_PARAMS"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxMessageParamCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxMessageParamCode;->DX_NUM_OF_MSG_PARAMS:Lcom/discretix/drm/api/EDxMessageParamCode;

    const/16 v0, 0x17

    new-array v0, v0, [Lcom/discretix/drm/api/EDxMessageParamCode;

    sget-object v1, Lcom/discretix/drm/api/EDxMessageParamCode;->DX_MSG_PARAM_RI_DOMAIN_NAME:Lcom/discretix/drm/api/EDxMessageParamCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/discretix/drm/api/EDxMessageParamCode;->DX_MSG_PARAM_RI_ALIAS:Lcom/discretix/drm/api/EDxMessageParamCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/discretix/drm/api/EDxMessageParamCode;->DX_MSG_PARAM_RI_FULL_NAME:Lcom/discretix/drm/api/EDxMessageParamCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/discretix/drm/api/EDxMessageParamCode;->DX_MSG_PARAM_DOMAIN_ID:Lcom/discretix/drm/api/EDxMessageParamCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/discretix/drm/api/EDxMessageParamCode;->DX_MSG_PARAM_DOMAIN_ALIAS:Lcom/discretix/drm/api/EDxMessageParamCode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/discretix/drm/api/EDxMessageParamCode;->DX_MSG_PARAM_DOMAIN_NAME:Lcom/discretix/drm/api/EDxMessageParamCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/discretix/drm/api/EDxMessageParamCode;->DX_MSG_PARAM_RO_ALIAS:Lcom/discretix/drm/api/EDxMessageParamCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/discretix/drm/api/EDxMessageParamCode;->DX_MSG_PARAM_ROAP_ERROR_MSG:Lcom/discretix/drm/api/EDxMessageParamCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/discretix/drm/api/EDxMessageParamCode;->DX_MSG_PARAM_ROAP_STATUS:Lcom/discretix/drm/api/EDxMessageParamCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/discretix/drm/api/EDxMessageParamCode;->DX_MSG_PARAM_ROAP_ERROR_REDIRECT_URL:Lcom/discretix/drm/api/EDxMessageParamCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/discretix/drm/api/EDxMessageParamCode;->DX_MSG_PARAM_CONTENT_ID:Lcom/discretix/drm/api/EDxMessageParamCode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/discretix/drm/api/EDxMessageParamCode;->DX_MSG_PARAM_INFO_URL:Lcom/discretix/drm/api/EDxMessageParamCode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/discretix/drm/api/EDxMessageParamCode;->DX_MSG_PARAM_ICON_URI:Lcom/discretix/drm/api/EDxMessageParamCode;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/discretix/drm/api/EDxMessageParamCode;->DX_MSG_PARAM_NAME:Lcom/discretix/drm/api/EDxMessageParamCode;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/discretix/drm/api/EDxMessageParamCode;->DX_MSG_PARAM_DESCRIPTION:Lcom/discretix/drm/api/EDxMessageParamCode;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/discretix/drm/api/EDxMessageParamCode;->DX_MSG_PARAM_VENDOR:Lcom/discretix/drm/api/EDxMessageParamCode;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/discretix/drm/api/EDxMessageParamCode;->DX_MSG_PARAM_SIZE:Lcom/discretix/drm/api/EDxMessageParamCode;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/discretix/drm/api/EDxMessageParamCode;->DX_MSG_PARAM_TYPE:Lcom/discretix/drm/api/EDxMessageParamCode;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/discretix/drm/api/EDxMessageParamCode;->DX_MSG_PARAM_OBJECT_URI:Lcom/discretix/drm/api/EDxMessageParamCode;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/discretix/drm/api/EDxMessageParamCode;->DX_MSG_PARAM_CONTENT_FILE_NAME:Lcom/discretix/drm/api/EDxMessageParamCode;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/discretix/drm/api/EDxMessageParamCode;->DX_MSG_PARAM_COUNTS_LEFT:Lcom/discretix/drm/api/EDxMessageParamCode;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/discretix/drm/api/EDxMessageParamCode;->DX_MSG_PARAM_TIME_LEFT:Lcom/discretix/drm/api/EDxMessageParamCode;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/discretix/drm/api/EDxMessageParamCode;->DX_NUM_OF_MSG_PARAMS:Lcom/discretix/drm/api/EDxMessageParamCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/discretix/drm/api/EDxMessageParamCode;->$VALUES:[Lcom/discretix/drm/api/EDxMessageParamCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-static {}, Lcom/discretix/drm/api/EDxMessageParamCode$SwigNext;->access$008()I

    move-result v0

    iput v0, p0, Lcom/discretix/drm/api/EDxMessageParamCode;->swigValue:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/discretix/drm/api/EDxMessageParamCode;->swigValue:I

    add-int/lit8 v0, p3, 0x1

    invoke-static {v0}, Lcom/discretix/drm/api/EDxMessageParamCode$SwigNext;->access$002(I)I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/discretix/drm/api/EDxMessageParamCode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/discretix/drm/api/EDxMessageParamCode;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iget v0, p3, Lcom/discretix/drm/api/EDxMessageParamCode;->swigValue:I

    iput v0, p0, Lcom/discretix/drm/api/EDxMessageParamCode;->swigValue:I

    iget v0, p0, Lcom/discretix/drm/api/EDxMessageParamCode;->swigValue:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/discretix/drm/api/EDxMessageParamCode$SwigNext;->access$002(I)I

    return-void
.end method

.method public static swigToEnum(I)Lcom/discretix/drm/api/EDxMessageParamCode;
    .locals 8

    const-class v5, Lcom/discretix/drm/api/EDxMessageParamCode;

    invoke-virtual {v5}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/discretix/drm/api/EDxMessageParamCode;

    array-length v5, v4

    if-ge p0, v5, :cond_1

    if-ltz p0, :cond_1

    aget-object v5, v4, p0

    iget v5, v5, Lcom/discretix/drm/api/EDxMessageParamCode;->swigValue:I

    if-ne v5, p0, :cond_1

    aget-object v3, v4, p0

    :cond_0
    return-object v3

    :cond_1
    move-object v0, v4

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    iget v5, v3, Lcom/discretix/drm/api/EDxMessageParamCode;->swigValue:I

    if-eq v5, p0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No enum "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-class v7, Lcom/discretix/drm/api/EDxMessageParamCode;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with value "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/discretix/drm/api/EDxMessageParamCode;
    .locals 1

    const-class v0, Lcom/discretix/drm/api/EDxMessageParamCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/discretix/drm/api/EDxMessageParamCode;

    return-object v0
.end method

.method public static values()[Lcom/discretix/drm/api/EDxMessageParamCode;
    .locals 1

    sget-object v0, Lcom/discretix/drm/api/EDxMessageParamCode;->$VALUES:[Lcom/discretix/drm/api/EDxMessageParamCode;

    invoke-virtual {v0}, [Lcom/discretix/drm/api/EDxMessageParamCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/discretix/drm/api/EDxMessageParamCode;

    return-object v0
.end method


# virtual methods
.method public final swigValue()I
    .locals 1

    iget v0, p0, Lcom/discretix/drm/api/EDxMessageParamCode;->swigValue:I

    return v0
.end method
