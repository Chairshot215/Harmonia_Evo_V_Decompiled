.class public final enum Lcom/discretix/drm/api/EDxStoreAsset;
.super Ljava/lang/Enum;
.source "EDxStoreAsset.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/discretix/drm/api/EDxStoreAsset$SwigNext;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/discretix/drm/api/EDxStoreAsset;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/discretix/drm/api/EDxStoreAsset;

.field public static final enum DX_STORE_OMA_V2_CERTIFICATE:Lcom/discretix/drm/api/EDxStoreAsset;

.field public static final enum DX_STORE_OMA_V2_PROVISION_PACKAGE:Lcom/discretix/drm/api/EDxStoreAsset;

.field public static final enum DX_STORE_PLAYREADY_CERTIFICATE:Lcom/discretix/drm/api/EDxStoreAsset;

.field public static final enum DX_STORE_PLAYREADY_CERTIFICATE_TEMPLATE:Lcom/discretix/drm/api/EDxStoreAsset;

.field public static final enum DX_STORE_PLAYREADY_DEVICE_ENCRYPT:Lcom/discretix/drm/api/EDxStoreAsset;

.field public static final enum DX_STORE_PLAYREADY_DEVICE_SIGN:Lcom/discretix/drm/api/EDxStoreAsset;

.field public static final enum DX_STORE_PLAYREADY_MODEL:Lcom/discretix/drm/api/EDxStoreAsset;

.field public static final enum DX_STORE_PLAYREADY_PROVISION_PACKAGE:Lcom/discretix/drm/api/EDxStoreAsset;

.field public static final enum DX_STORE_WM_CERTIFICATE:Lcom/discretix/drm/api/EDxStoreAsset;

.field public static final enum DX_STORE_WM_CERTIFICATE_TEMPLATE:Lcom/discretix/drm/api/EDxStoreAsset;

.field public static final enum DX_STORE_WM_FALLBACK_KEY:Lcom/discretix/drm/api/EDxStoreAsset;

.field public static final enum DX_STORE_WM_GROUP_PRIVATE_KEY:Lcom/discretix/drm/api/EDxStoreAsset;


# instance fields
.field private final swigValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/discretix/drm/api/EDxStoreAsset;

    const-string v1, "DX_STORE_OMA_V2_CERTIFICATE"

    const/16 v2, 0x200

    invoke-direct {v0, v1, v4, v2}, Lcom/discretix/drm/api/EDxStoreAsset;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/discretix/drm/api/EDxStoreAsset;->DX_STORE_OMA_V2_CERTIFICATE:Lcom/discretix/drm/api/EDxStoreAsset;

    new-instance v0, Lcom/discretix/drm/api/EDxStoreAsset;

    const-string v1, "DX_STORE_OMA_V2_PROVISION_PACKAGE"

    invoke-direct {v0, v1, v5}, Lcom/discretix/drm/api/EDxStoreAsset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxStoreAsset;->DX_STORE_OMA_V2_PROVISION_PACKAGE:Lcom/discretix/drm/api/EDxStoreAsset;

    new-instance v0, Lcom/discretix/drm/api/EDxStoreAsset;

    const-string v1, "DX_STORE_WM_CERTIFICATE_TEMPLATE"

    const/16 v2, 0x300

    invoke-direct {v0, v1, v6, v2}, Lcom/discretix/drm/api/EDxStoreAsset;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/discretix/drm/api/EDxStoreAsset;->DX_STORE_WM_CERTIFICATE_TEMPLATE:Lcom/discretix/drm/api/EDxStoreAsset;

    new-instance v0, Lcom/discretix/drm/api/EDxStoreAsset;

    const-string v1, "DX_STORE_WM_CERTIFICATE"

    invoke-direct {v0, v1, v7}, Lcom/discretix/drm/api/EDxStoreAsset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxStoreAsset;->DX_STORE_WM_CERTIFICATE:Lcom/discretix/drm/api/EDxStoreAsset;

    new-instance v0, Lcom/discretix/drm/api/EDxStoreAsset;

    const-string v1, "DX_STORE_WM_GROUP_PRIVATE_KEY"

    invoke-direct {v0, v1, v8}, Lcom/discretix/drm/api/EDxStoreAsset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxStoreAsset;->DX_STORE_WM_GROUP_PRIVATE_KEY:Lcom/discretix/drm/api/EDxStoreAsset;

    new-instance v0, Lcom/discretix/drm/api/EDxStoreAsset;

    const-string v1, "DX_STORE_WM_FALLBACK_KEY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxStoreAsset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxStoreAsset;->DX_STORE_WM_FALLBACK_KEY:Lcom/discretix/drm/api/EDxStoreAsset;

    new-instance v0, Lcom/discretix/drm/api/EDxStoreAsset;

    const-string v1, "DX_STORE_PLAYREADY_CERTIFICATE_TEMPLATE"

    const/4 v2, 0x6

    const/16 v3, 0x400

    invoke-direct {v0, v1, v2, v3}, Lcom/discretix/drm/api/EDxStoreAsset;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/discretix/drm/api/EDxStoreAsset;->DX_STORE_PLAYREADY_CERTIFICATE_TEMPLATE:Lcom/discretix/drm/api/EDxStoreAsset;

    new-instance v0, Lcom/discretix/drm/api/EDxStoreAsset;

    const-string v1, "DX_STORE_PLAYREADY_CERTIFICATE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxStoreAsset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxStoreAsset;->DX_STORE_PLAYREADY_CERTIFICATE:Lcom/discretix/drm/api/EDxStoreAsset;

    new-instance v0, Lcom/discretix/drm/api/EDxStoreAsset;

    const-string v1, "DX_STORE_PLAYREADY_MODEL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxStoreAsset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxStoreAsset;->DX_STORE_PLAYREADY_MODEL:Lcom/discretix/drm/api/EDxStoreAsset;

    new-instance v0, Lcom/discretix/drm/api/EDxStoreAsset;

    const-string v1, "DX_STORE_PLAYREADY_DEVICE_SIGN"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxStoreAsset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxStoreAsset;->DX_STORE_PLAYREADY_DEVICE_SIGN:Lcom/discretix/drm/api/EDxStoreAsset;

    new-instance v0, Lcom/discretix/drm/api/EDxStoreAsset;

    const-string v1, "DX_STORE_PLAYREADY_DEVICE_ENCRYPT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxStoreAsset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxStoreAsset;->DX_STORE_PLAYREADY_DEVICE_ENCRYPT:Lcom/discretix/drm/api/EDxStoreAsset;

    new-instance v0, Lcom/discretix/drm/api/EDxStoreAsset;

    const-string v1, "DX_STORE_PLAYREADY_PROVISION_PACKAGE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxStoreAsset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxStoreAsset;->DX_STORE_PLAYREADY_PROVISION_PACKAGE:Lcom/discretix/drm/api/EDxStoreAsset;

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/discretix/drm/api/EDxStoreAsset;

    sget-object v1, Lcom/discretix/drm/api/EDxStoreAsset;->DX_STORE_OMA_V2_CERTIFICATE:Lcom/discretix/drm/api/EDxStoreAsset;

    aput-object v1, v0, v4

    sget-object v1, Lcom/discretix/drm/api/EDxStoreAsset;->DX_STORE_OMA_V2_PROVISION_PACKAGE:Lcom/discretix/drm/api/EDxStoreAsset;

    aput-object v1, v0, v5

    sget-object v1, Lcom/discretix/drm/api/EDxStoreAsset;->DX_STORE_WM_CERTIFICATE_TEMPLATE:Lcom/discretix/drm/api/EDxStoreAsset;

    aput-object v1, v0, v6

    sget-object v1, Lcom/discretix/drm/api/EDxStoreAsset;->DX_STORE_WM_CERTIFICATE:Lcom/discretix/drm/api/EDxStoreAsset;

    aput-object v1, v0, v7

    sget-object v1, Lcom/discretix/drm/api/EDxStoreAsset;->DX_STORE_WM_GROUP_PRIVATE_KEY:Lcom/discretix/drm/api/EDxStoreAsset;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/discretix/drm/api/EDxStoreAsset;->DX_STORE_WM_FALLBACK_KEY:Lcom/discretix/drm/api/EDxStoreAsset;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/discretix/drm/api/EDxStoreAsset;->DX_STORE_PLAYREADY_CERTIFICATE_TEMPLATE:Lcom/discretix/drm/api/EDxStoreAsset;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/discretix/drm/api/EDxStoreAsset;->DX_STORE_PLAYREADY_CERTIFICATE:Lcom/discretix/drm/api/EDxStoreAsset;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/discretix/drm/api/EDxStoreAsset;->DX_STORE_PLAYREADY_MODEL:Lcom/discretix/drm/api/EDxStoreAsset;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/discretix/drm/api/EDxStoreAsset;->DX_STORE_PLAYREADY_DEVICE_SIGN:Lcom/discretix/drm/api/EDxStoreAsset;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/discretix/drm/api/EDxStoreAsset;->DX_STORE_PLAYREADY_DEVICE_ENCRYPT:Lcom/discretix/drm/api/EDxStoreAsset;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/discretix/drm/api/EDxStoreAsset;->DX_STORE_PLAYREADY_PROVISION_PACKAGE:Lcom/discretix/drm/api/EDxStoreAsset;

    aput-object v2, v0, v1

    sput-object v0, Lcom/discretix/drm/api/EDxStoreAsset;->$VALUES:[Lcom/discretix/drm/api/EDxStoreAsset;

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

    invoke-static {}, Lcom/discretix/drm/api/EDxStoreAsset$SwigNext;->access$008()I

    move-result v0

    iput v0, p0, Lcom/discretix/drm/api/EDxStoreAsset;->swigValue:I

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

    iput p3, p0, Lcom/discretix/drm/api/EDxStoreAsset;->swigValue:I

    add-int/lit8 v0, p3, 0x1

    invoke-static {v0}, Lcom/discretix/drm/api/EDxStoreAsset$SwigNext;->access$002(I)I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/discretix/drm/api/EDxStoreAsset;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/discretix/drm/api/EDxStoreAsset;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iget v0, p3, Lcom/discretix/drm/api/EDxStoreAsset;->swigValue:I

    iput v0, p0, Lcom/discretix/drm/api/EDxStoreAsset;->swigValue:I

    iget v0, p0, Lcom/discretix/drm/api/EDxStoreAsset;->swigValue:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/discretix/drm/api/EDxStoreAsset$SwigNext;->access$002(I)I

    return-void
.end method

.method public static swigToEnum(I)Lcom/discretix/drm/api/EDxStoreAsset;
    .locals 8

    const-class v5, Lcom/discretix/drm/api/EDxStoreAsset;

    invoke-virtual {v5}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/discretix/drm/api/EDxStoreAsset;

    array-length v5, v4

    if-ge p0, v5, :cond_1

    if-ltz p0, :cond_1

    aget-object v5, v4, p0

    iget v5, v5, Lcom/discretix/drm/api/EDxStoreAsset;->swigValue:I

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

    iget v5, v3, Lcom/discretix/drm/api/EDxStoreAsset;->swigValue:I

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

    const-class v7, Lcom/discretix/drm/api/EDxStoreAsset;

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

.method public static valueOf(Ljava/lang/String;)Lcom/discretix/drm/api/EDxStoreAsset;
    .locals 1

    const-class v0, Lcom/discretix/drm/api/EDxStoreAsset;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/discretix/drm/api/EDxStoreAsset;

    return-object v0
.end method

.method public static values()[Lcom/discretix/drm/api/EDxStoreAsset;
    .locals 1

    sget-object v0, Lcom/discretix/drm/api/EDxStoreAsset;->$VALUES:[Lcom/discretix/drm/api/EDxStoreAsset;

    invoke-virtual {v0}, [Lcom/discretix/drm/api/EDxStoreAsset;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/discretix/drm/api/EDxStoreAsset;

    return-object v0
.end method


# virtual methods
.method public final swigValue()I
    .locals 1

    iget v0, p0, Lcom/discretix/drm/api/EDxStoreAsset;->swigValue:I

    return v0
.end method
