.class public final enum Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;
.super Ljava/lang/Enum;
.source "VdmConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbend/vdm/VdmConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HttpAuthLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;

.field public static final enum BASIC:Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;

.field public static final enum MD5:Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;

.field public static final enum NONE:Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 99
    new-instance v0, Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;->NONE:Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;

    .line 101
    new-instance v0, Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;

    const-string v1, "BASIC"

    invoke-direct {v0, v1, v3}, Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;->BASIC:Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;

    .line 103
    new-instance v0, Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;

    const-string v1, "MD5"

    invoke-direct {v0, v1, v4}, Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;->MD5:Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;

    .line 97
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;

    sget-object v1, Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;->NONE:Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;->BASIC:Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;->MD5:Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;

    aput-object v1, v0, v4

    sput-object v0, Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;->$VALUES:[Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;

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
    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;
    .locals 1
    .parameter "name"

    .prologue
    .line 97
    const-class v0, Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;

    return-object v0
.end method

.method public static values()[Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;->$VALUES:[Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;

    invoke-virtual {v0}, [Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;

    return-object v0
.end method
