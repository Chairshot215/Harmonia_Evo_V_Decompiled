.class public final enum Lcom/redbend/vdm/VdmSessionEnableMode;
.super Ljava/lang/Enum;
.source "VdmSessionEnableMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/redbend/vdm/VdmSessionEnableMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/redbend/vdm/VdmSessionEnableMode;

.field public static final enum allowAll:Lcom/redbend/vdm/VdmSessionEnableMode;

.field public static final enum allowClientInitiatedOnly:Lcom/redbend/vdm/VdmSessionEnableMode;

.field public static final enum allowNone:Lcom/redbend/vdm/VdmSessionEnableMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/redbend/vdm/VdmSessionEnableMode;

    const-string v1, "allowAll"

    invoke-direct {v0, v1, v2}, Lcom/redbend/vdm/VdmSessionEnableMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmSessionEnableMode;->allowAll:Lcom/redbend/vdm/VdmSessionEnableMode;

    .line 13
    new-instance v0, Lcom/redbend/vdm/VdmSessionEnableMode;

    const-string v1, "allowClientInitiatedOnly"

    invoke-direct {v0, v1, v3}, Lcom/redbend/vdm/VdmSessionEnableMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmSessionEnableMode;->allowClientInitiatedOnly:Lcom/redbend/vdm/VdmSessionEnableMode;

    .line 15
    new-instance v0, Lcom/redbend/vdm/VdmSessionEnableMode;

    const-string v1, "allowNone"

    invoke-direct {v0, v1, v4}, Lcom/redbend/vdm/VdmSessionEnableMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmSessionEnableMode;->allowNone:Lcom/redbend/vdm/VdmSessionEnableMode;

    .line 9
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/redbend/vdm/VdmSessionEnableMode;

    sget-object v1, Lcom/redbend/vdm/VdmSessionEnableMode;->allowAll:Lcom/redbend/vdm/VdmSessionEnableMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/redbend/vdm/VdmSessionEnableMode;->allowClientInitiatedOnly:Lcom/redbend/vdm/VdmSessionEnableMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/redbend/vdm/VdmSessionEnableMode;->allowNone:Lcom/redbend/vdm/VdmSessionEnableMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/redbend/vdm/VdmSessionEnableMode;->$VALUES:[Lcom/redbend/vdm/VdmSessionEnableMode;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/redbend/vdm/VdmSessionEnableMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 9
    const-class v0, Lcom/redbend/vdm/VdmSessionEnableMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/redbend/vdm/VdmSessionEnableMode;

    return-object v0
.end method

.method public static values()[Lcom/redbend/vdm/VdmSessionEnableMode;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/redbend/vdm/VdmSessionEnableMode;->$VALUES:[Lcom/redbend/vdm/VdmSessionEnableMode;

    invoke-virtual {v0}, [Lcom/redbend/vdm/VdmSessionEnableMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/redbend/vdm/VdmSessionEnableMode;

    return-object v0
.end method
