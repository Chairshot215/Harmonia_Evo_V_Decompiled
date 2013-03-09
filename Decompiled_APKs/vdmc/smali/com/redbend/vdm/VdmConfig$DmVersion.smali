.class public final enum Lcom/redbend/vdm/VdmConfig$DmVersion;
.super Ljava/lang/Enum;
.source "VdmConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbend/vdm/VdmConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DmVersion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/redbend/vdm/VdmConfig$DmVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/redbend/vdm/VdmConfig$DmVersion;

.field public static final enum DM_1_1_2:Lcom/redbend/vdm/VdmConfig$DmVersion;

.field public static final enum DM_1_2:Lcom/redbend/vdm/VdmConfig$DmVersion;

.field public static final enum INVALID:Lcom/redbend/vdm/VdmConfig$DmVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 64
    new-instance v0, Lcom/redbend/vdm/VdmConfig$DmVersion;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v2}, Lcom/redbend/vdm/VdmConfig$DmVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmConfig$DmVersion;->INVALID:Lcom/redbend/vdm/VdmConfig$DmVersion;

    .line 65
    new-instance v0, Lcom/redbend/vdm/VdmConfig$DmVersion;

    const-string v1, "DM_1_1_2"

    invoke-direct {v0, v1, v3}, Lcom/redbend/vdm/VdmConfig$DmVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmConfig$DmVersion;->DM_1_1_2:Lcom/redbend/vdm/VdmConfig$DmVersion;

    .line 66
    new-instance v0, Lcom/redbend/vdm/VdmConfig$DmVersion;

    const-string v1, "DM_1_2"

    invoke-direct {v0, v1, v4}, Lcom/redbend/vdm/VdmConfig$DmVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmConfig$DmVersion;->DM_1_2:Lcom/redbend/vdm/VdmConfig$DmVersion;

    .line 63
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/redbend/vdm/VdmConfig$DmVersion;

    sget-object v1, Lcom/redbend/vdm/VdmConfig$DmVersion;->INVALID:Lcom/redbend/vdm/VdmConfig$DmVersion;

    aput-object v1, v0, v2

    sget-object v1, Lcom/redbend/vdm/VdmConfig$DmVersion;->DM_1_1_2:Lcom/redbend/vdm/VdmConfig$DmVersion;

    aput-object v1, v0, v3

    sget-object v1, Lcom/redbend/vdm/VdmConfig$DmVersion;->DM_1_2:Lcom/redbend/vdm/VdmConfig$DmVersion;

    aput-object v1, v0, v4

    sput-object v0, Lcom/redbend/vdm/VdmConfig$DmVersion;->$VALUES:[Lcom/redbend/vdm/VdmConfig$DmVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/redbend/vdm/VdmConfig$DmVersion;
    .locals 1
    .parameter "name"

    .prologue
    .line 63
    const-class v0, Lcom/redbend/vdm/VdmConfig$DmVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/redbend/vdm/VdmConfig$DmVersion;

    return-object v0
.end method

.method public static values()[Lcom/redbend/vdm/VdmConfig$DmVersion;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/redbend/vdm/VdmConfig$DmVersion;->$VALUES:[Lcom/redbend/vdm/VdmConfig$DmVersion;

    invoke-virtual {v0}, [Lcom/redbend/vdm/VdmConfig$DmVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/redbend/vdm/VdmConfig$DmVersion;

    return-object v0
.end method
