.class public final enum Lcom/redbend/vdm/MmiConfirmation$ConfirmCommand;
.super Ljava/lang/Enum;
.source "MmiConfirmation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbend/vdm/MmiConfirmation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConfirmCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/redbend/vdm/MmiConfirmation$ConfirmCommand;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/redbend/vdm/MmiConfirmation$ConfirmCommand;

.field public static final enum NO:Lcom/redbend/vdm/MmiConfirmation$ConfirmCommand;

.field public static final enum UNDEFINED:Lcom/redbend/vdm/MmiConfirmation$ConfirmCommand;

.field public static final enum YES:Lcom/redbend/vdm/MmiConfirmation$ConfirmCommand;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/redbend/vdm/MmiConfirmation$ConfirmCommand;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1, v2}, Lcom/redbend/vdm/MmiConfirmation$ConfirmCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/MmiConfirmation$ConfirmCommand;->UNDEFINED:Lcom/redbend/vdm/MmiConfirmation$ConfirmCommand;

    .line 16
    new-instance v0, Lcom/redbend/vdm/MmiConfirmation$ConfirmCommand;

    const-string v1, "NO"

    invoke-direct {v0, v1, v3}, Lcom/redbend/vdm/MmiConfirmation$ConfirmCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/MmiConfirmation$ConfirmCommand;->NO:Lcom/redbend/vdm/MmiConfirmation$ConfirmCommand;

    .line 18
    new-instance v0, Lcom/redbend/vdm/MmiConfirmation$ConfirmCommand;

    const-string v1, "YES"

    invoke-direct {v0, v1, v4}, Lcom/redbend/vdm/MmiConfirmation$ConfirmCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/MmiConfirmation$ConfirmCommand;->YES:Lcom/redbend/vdm/MmiConfirmation$ConfirmCommand;

    .line 12
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/redbend/vdm/MmiConfirmation$ConfirmCommand;

    sget-object v1, Lcom/redbend/vdm/MmiConfirmation$ConfirmCommand;->UNDEFINED:Lcom/redbend/vdm/MmiConfirmation$ConfirmCommand;

    aput-object v1, v0, v2

    sget-object v1, Lcom/redbend/vdm/MmiConfirmation$ConfirmCommand;->NO:Lcom/redbend/vdm/MmiConfirmation$ConfirmCommand;

    aput-object v1, v0, v3

    sget-object v1, Lcom/redbend/vdm/MmiConfirmation$ConfirmCommand;->YES:Lcom/redbend/vdm/MmiConfirmation$ConfirmCommand;

    aput-object v1, v0, v4

    sput-object v0, Lcom/redbend/vdm/MmiConfirmation$ConfirmCommand;->$VALUES:[Lcom/redbend/vdm/MmiConfirmation$ConfirmCommand;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/redbend/vdm/MmiConfirmation$ConfirmCommand;
    .locals 1
    .parameter "name"

    .prologue
    .line 12
    const-class v0, Lcom/redbend/vdm/MmiConfirmation$ConfirmCommand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/redbend/vdm/MmiConfirmation$ConfirmCommand;

    return-object v0
.end method

.method public static values()[Lcom/redbend/vdm/MmiConfirmation$ConfirmCommand;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/redbend/vdm/MmiConfirmation$ConfirmCommand;->$VALUES:[Lcom/redbend/vdm/MmiConfirmation$ConfirmCommand;

    invoke-virtual {v0}, [Lcom/redbend/vdm/MmiConfirmation$ConfirmCommand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/redbend/vdm/MmiConfirmation$ConfirmCommand;

    return-object v0
.end method
