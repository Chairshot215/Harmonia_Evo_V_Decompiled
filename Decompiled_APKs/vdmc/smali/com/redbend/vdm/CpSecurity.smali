.class public final enum Lcom/redbend/vdm/CpSecurity;
.super Ljava/lang/Enum;
.source "CpSecurity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/redbend/vdm/CpSecurity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/redbend/vdm/CpSecurity;

.field public static final enum NETWPIN:Lcom/redbend/vdm/CpSecurity;

.field public static final enum NONE:Lcom/redbend/vdm/CpSecurity;

.field public static final enum USERNETWPIN:Lcom/redbend/vdm/CpSecurity;

.field public static final enum USERPIN:Lcom/redbend/vdm/CpSecurity;

.field public static final enum USERPINMAC:Lcom/redbend/vdm/CpSecurity;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/redbend/vdm/CpSecurity;

    const-string v1, "NETWPIN"

    invoke-direct {v0, v1, v2}, Lcom/redbend/vdm/CpSecurity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/CpSecurity;->NETWPIN:Lcom/redbend/vdm/CpSecurity;

    .line 11
    new-instance v0, Lcom/redbend/vdm/CpSecurity;

    const-string v1, "USERPIN"

    invoke-direct {v0, v1, v3}, Lcom/redbend/vdm/CpSecurity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/CpSecurity;->USERPIN:Lcom/redbend/vdm/CpSecurity;

    .line 13
    new-instance v0, Lcom/redbend/vdm/CpSecurity;

    const-string v1, "USERNETWPIN"

    invoke-direct {v0, v1, v4}, Lcom/redbend/vdm/CpSecurity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/CpSecurity;->USERNETWPIN:Lcom/redbend/vdm/CpSecurity;

    .line 15
    new-instance v0, Lcom/redbend/vdm/CpSecurity;

    const-string v1, "USERPINMAC"

    invoke-direct {v0, v1, v5}, Lcom/redbend/vdm/CpSecurity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/CpSecurity;->USERPINMAC:Lcom/redbend/vdm/CpSecurity;

    .line 17
    new-instance v0, Lcom/redbend/vdm/CpSecurity;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v6}, Lcom/redbend/vdm/CpSecurity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/CpSecurity;->NONE:Lcom/redbend/vdm/CpSecurity;

    .line 7
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/redbend/vdm/CpSecurity;

    sget-object v1, Lcom/redbend/vdm/CpSecurity;->NETWPIN:Lcom/redbend/vdm/CpSecurity;

    aput-object v1, v0, v2

    sget-object v1, Lcom/redbend/vdm/CpSecurity;->USERPIN:Lcom/redbend/vdm/CpSecurity;

    aput-object v1, v0, v3

    sget-object v1, Lcom/redbend/vdm/CpSecurity;->USERNETWPIN:Lcom/redbend/vdm/CpSecurity;

    aput-object v1, v0, v4

    sget-object v1, Lcom/redbend/vdm/CpSecurity;->USERPINMAC:Lcom/redbend/vdm/CpSecurity;

    aput-object v1, v0, v5

    sget-object v1, Lcom/redbend/vdm/CpSecurity;->NONE:Lcom/redbend/vdm/CpSecurity;

    aput-object v1, v0, v6

    sput-object v0, Lcom/redbend/vdm/CpSecurity;->$VALUES:[Lcom/redbend/vdm/CpSecurity;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/redbend/vdm/CpSecurity;
    .locals 1
    .parameter "name"

    .prologue
    .line 7
    const-class v0, Lcom/redbend/vdm/CpSecurity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/redbend/vdm/CpSecurity;

    return-object v0
.end method

.method public static values()[Lcom/redbend/vdm/CpSecurity;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/redbend/vdm/CpSecurity;->$VALUES:[Lcom/redbend/vdm/CpSecurity;

    invoke-virtual {v0}, [Lcom/redbend/vdm/CpSecurity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/redbend/vdm/CpSecurity;

    return-object v0
.end method
