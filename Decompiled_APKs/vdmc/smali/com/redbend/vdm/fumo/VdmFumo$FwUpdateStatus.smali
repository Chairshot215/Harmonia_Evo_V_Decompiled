.class public final enum Lcom/redbend/vdm/fumo/VdmFumo$FwUpdateStatus;
.super Ljava/lang/Enum;
.source "VdmFumo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbend/vdm/fumo/VdmFumo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FwUpdateStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/redbend/vdm/fumo/VdmFumo$FwUpdateStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/redbend/vdm/fumo/VdmFumo$FwUpdateStatus;

.field public static final enum DONE:Lcom/redbend/vdm/fumo/VdmFumo$FwUpdateStatus;

.field public static final enum STARTED:Lcom/redbend/vdm/fumo/VdmFumo$FwUpdateStatus;

.field public static final enum START_POSTPONED:Lcom/redbend/vdm/fumo/VdmFumo$FwUpdateStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/redbend/vdm/fumo/VdmFumo$FwUpdateStatus;

    const-string v1, "DONE"

    invoke-direct {v0, v1, v2}, Lcom/redbend/vdm/fumo/VdmFumo$FwUpdateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/fumo/VdmFumo$FwUpdateStatus;->DONE:Lcom/redbend/vdm/fumo/VdmFumo$FwUpdateStatus;

    .line 28
    new-instance v0, Lcom/redbend/vdm/fumo/VdmFumo$FwUpdateStatus;

    const-string v1, "START_POSTPONED"

    invoke-direct {v0, v1, v3}, Lcom/redbend/vdm/fumo/VdmFumo$FwUpdateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/fumo/VdmFumo$FwUpdateStatus;->START_POSTPONED:Lcom/redbend/vdm/fumo/VdmFumo$FwUpdateStatus;

    .line 30
    new-instance v0, Lcom/redbend/vdm/fumo/VdmFumo$FwUpdateStatus;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v4}, Lcom/redbend/vdm/fumo/VdmFumo$FwUpdateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/fumo/VdmFumo$FwUpdateStatus;->STARTED:Lcom/redbend/vdm/fumo/VdmFumo$FwUpdateStatus;

    .line 24
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/redbend/vdm/fumo/VdmFumo$FwUpdateStatus;

    sget-object v1, Lcom/redbend/vdm/fumo/VdmFumo$FwUpdateStatus;->DONE:Lcom/redbend/vdm/fumo/VdmFumo$FwUpdateStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/redbend/vdm/fumo/VdmFumo$FwUpdateStatus;->START_POSTPONED:Lcom/redbend/vdm/fumo/VdmFumo$FwUpdateStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/redbend/vdm/fumo/VdmFumo$FwUpdateStatus;->STARTED:Lcom/redbend/vdm/fumo/VdmFumo$FwUpdateStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/redbend/vdm/fumo/VdmFumo$FwUpdateStatus;->$VALUES:[Lcom/redbend/vdm/fumo/VdmFumo$FwUpdateStatus;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/redbend/vdm/fumo/VdmFumo$FwUpdateStatus;
    .locals 1
    .parameter "name"

    .prologue
    .line 24
    const-class v0, Lcom/redbend/vdm/fumo/VdmFumo$FwUpdateStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/redbend/vdm/fumo/VdmFumo$FwUpdateStatus;

    return-object v0
.end method

.method public static values()[Lcom/redbend/vdm/fumo/VdmFumo$FwUpdateStatus;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/redbend/vdm/fumo/VdmFumo$FwUpdateStatus;->$VALUES:[Lcom/redbend/vdm/fumo/VdmFumo$FwUpdateStatus;

    invoke-virtual {v0}, [Lcom/redbend/vdm/fumo/VdmFumo$FwUpdateStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/redbend/vdm/fumo/VdmFumo$FwUpdateStatus;

    return-object v0
.end method
