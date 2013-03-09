.class public final enum Lcom/redbend/vdm/VdmComponent;
.super Ljava/lang/Enum;
.source "VdmComponent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/redbend/vdm/VdmComponent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/redbend/vdm/VdmComponent;

.field public static final enum AUTH:Lcom/redbend/vdm/VdmComponent;

.field public static final enum BOOTSTRAP:Lcom/redbend/vdm/VdmComponent;

.field public static final enum CLIENT:Lcom/redbend/vdm/VdmComponent;

.field public static final enum COMM:Lcom/redbend/vdm/VdmComponent;

.field public static final enum CONNMO:Lcom/redbend/vdm/VdmComponent;

.field public static final enum CORE:Lcom/redbend/vdm/VdmComponent;

.field public static final enum DDL:Lcom/redbend/vdm/VdmComponent;

.field public static final enum DEVICE:Lcom/redbend/vdm/VdmComponent;

.field public static final enum DL:Lcom/redbend/vdm/VdmComponent;

.field public static final enum DS:Lcom/redbend/vdm/VdmComponent;

.field public static final enum FUMO:Lcom/redbend/vdm/VdmComponent;

.field public static final enum HTTP:Lcom/redbend/vdm/VdmComponent;

.field public static final enum LAWMO:Lcom/redbend/vdm/VdmComponent;

.field public static final enum MMI:Lcom/redbend/vdm/VdmComponent;

.field public static final enum RDM:Lcom/redbend/vdm/VdmComponent;

.field public static final enum SCOMO:Lcom/redbend/vdm/VdmComponent;

.field public static final enum SESS:Lcom/redbend/vdm/VdmComponent;

.field public static final enum SESSCOMM:Lcom/redbend/vdm/VdmComponent;

.field public static final enum SESSQ:Lcom/redbend/vdm/VdmComponent;

.field public static final enum SYNCML:Lcom/redbend/vdm/VdmComponent;

.field public static final enum TREE:Lcom/redbend/vdm/VdmComponent;

.field public static final enum TRG:Lcom/redbend/vdm/VdmComponent;

.field public static final enum UDP:Lcom/redbend/vdm/VdmComponent;

.field public static final enum UTIL:Lcom/redbend/vdm/VdmComponent;

.field public static final enum WBXML:Lcom/redbend/vdm/VdmComponent;

.field public static final enum WIB:Lcom/redbend/vdm/VdmComponent;

.field public static final enum WIMAX:Lcom/redbend/vdm/VdmComponent;

.field public static final enum WSP:Lcom/redbend/vdm/VdmComponent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-instance v0, Lcom/redbend/vdm/VdmComponent;

    const-string v1, "CORE"

    invoke-direct {v0, v1, v3}, Lcom/redbend/vdm/VdmComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmComponent;->CORE:Lcom/redbend/vdm/VdmComponent;

    .line 14
    new-instance v0, Lcom/redbend/vdm/VdmComponent;

    const-string v1, "UTIL"

    invoke-direct {v0, v1, v4}, Lcom/redbend/vdm/VdmComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmComponent;->UTIL:Lcom/redbend/vdm/VdmComponent;

    .line 20
    new-instance v0, Lcom/redbend/vdm/VdmComponent;

    const-string v1, "MMI"

    invoke-direct {v0, v1, v5}, Lcom/redbend/vdm/VdmComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmComponent;->MMI:Lcom/redbend/vdm/VdmComponent;

    .line 22
    new-instance v0, Lcom/redbend/vdm/VdmComponent;

    const-string v1, "COMM"

    invoke-direct {v0, v1, v6}, Lcom/redbend/vdm/VdmComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmComponent;->COMM:Lcom/redbend/vdm/VdmComponent;

    .line 24
    new-instance v0, Lcom/redbend/vdm/VdmComponent;

    const-string v1, "DEVICE"

    invoke-direct {v0, v1, v7}, Lcom/redbend/vdm/VdmComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmComponent;->DEVICE:Lcom/redbend/vdm/VdmComponent;

    .line 31
    new-instance v0, Lcom/redbend/vdm/VdmComponent;

    const-string v1, "RDM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/redbend/vdm/VdmComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmComponent;->RDM:Lcom/redbend/vdm/VdmComponent;

    .line 33
    new-instance v0, Lcom/redbend/vdm/VdmComponent;

    const-string v1, "TRG"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/redbend/vdm/VdmComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmComponent;->TRG:Lcom/redbend/vdm/VdmComponent;

    .line 35
    new-instance v0, Lcom/redbend/vdm/VdmComponent;

    const-string v1, "SESS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/redbend/vdm/VdmComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmComponent;->SESS:Lcom/redbend/vdm/VdmComponent;

    .line 37
    new-instance v0, Lcom/redbend/vdm/VdmComponent;

    const-string v1, "SESSQ"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/redbend/vdm/VdmComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmComponent;->SESSQ:Lcom/redbend/vdm/VdmComponent;

    .line 39
    new-instance v0, Lcom/redbend/vdm/VdmComponent;

    const-string v1, "SESSCOMM"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/redbend/vdm/VdmComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmComponent;->SESSCOMM:Lcom/redbend/vdm/VdmComponent;

    .line 41
    new-instance v0, Lcom/redbend/vdm/VdmComponent;

    const-string v1, "SYNCML"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/redbend/vdm/VdmComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmComponent;->SYNCML:Lcom/redbend/vdm/VdmComponent;

    .line 43
    new-instance v0, Lcom/redbend/vdm/VdmComponent;

    const-string v1, "TREE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/redbend/vdm/VdmComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmComponent;->TREE:Lcom/redbend/vdm/VdmComponent;

    .line 45
    new-instance v0, Lcom/redbend/vdm/VdmComponent;

    const-string v1, "AUTH"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/redbend/vdm/VdmComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmComponent;->AUTH:Lcom/redbend/vdm/VdmComponent;

    .line 47
    new-instance v0, Lcom/redbend/vdm/VdmComponent;

    const-string v1, "WBXML"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/redbend/vdm/VdmComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmComponent;->WBXML:Lcom/redbend/vdm/VdmComponent;

    .line 49
    new-instance v0, Lcom/redbend/vdm/VdmComponent;

    const-string v1, "DL"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/redbend/vdm/VdmComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmComponent;->DL:Lcom/redbend/vdm/VdmComponent;

    .line 56
    new-instance v0, Lcom/redbend/vdm/VdmComponent;

    const-string v1, "HTTP"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/redbend/vdm/VdmComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmComponent;->HTTP:Lcom/redbend/vdm/VdmComponent;

    .line 58
    new-instance v0, Lcom/redbend/vdm/VdmComponent;

    const-string v1, "CLIENT"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/redbend/vdm/VdmComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmComponent;->CLIENT:Lcom/redbend/vdm/VdmComponent;

    .line 60
    new-instance v0, Lcom/redbend/vdm/VdmComponent;

    const-string v1, "FUMO"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/redbend/vdm/VdmComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmComponent;->FUMO:Lcom/redbend/vdm/VdmComponent;

    .line 62
    new-instance v0, Lcom/redbend/vdm/VdmComponent;

    const-string v1, "SCOMO"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/redbend/vdm/VdmComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmComponent;->SCOMO:Lcom/redbend/vdm/VdmComponent;

    .line 64
    new-instance v0, Lcom/redbend/vdm/VdmComponent;

    const-string v1, "BOOTSTRAP"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/redbend/vdm/VdmComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmComponent;->BOOTSTRAP:Lcom/redbend/vdm/VdmComponent;

    .line 66
    new-instance v0, Lcom/redbend/vdm/VdmComponent;

    const-string v1, "WIMAX"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/redbend/vdm/VdmComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmComponent;->WIMAX:Lcom/redbend/vdm/VdmComponent;

    .line 68
    new-instance v0, Lcom/redbend/vdm/VdmComponent;

    const-string v1, "DS"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/redbend/vdm/VdmComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmComponent;->DS:Lcom/redbend/vdm/VdmComponent;

    .line 70
    new-instance v0, Lcom/redbend/vdm/VdmComponent;

    const-string v1, "CONNMO"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/redbend/vdm/VdmComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmComponent;->CONNMO:Lcom/redbend/vdm/VdmComponent;

    .line 72
    new-instance v0, Lcom/redbend/vdm/VdmComponent;

    const-string v1, "WSP"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/redbend/vdm/VdmComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmComponent;->WSP:Lcom/redbend/vdm/VdmComponent;

    .line 74
    new-instance v0, Lcom/redbend/vdm/VdmComponent;

    const-string v1, "UDP"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/redbend/vdm/VdmComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmComponent;->UDP:Lcom/redbend/vdm/VdmComponent;

    .line 76
    new-instance v0, Lcom/redbend/vdm/VdmComponent;

    const-string v1, "WIB"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/redbend/vdm/VdmComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmComponent;->WIB:Lcom/redbend/vdm/VdmComponent;

    .line 78
    new-instance v0, Lcom/redbend/vdm/VdmComponent;

    const-string v1, "LAWMO"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/redbend/vdm/VdmComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmComponent;->LAWMO:Lcom/redbend/vdm/VdmComponent;

    .line 80
    new-instance v0, Lcom/redbend/vdm/VdmComponent;

    const-string v1, "DDL"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/redbend/vdm/VdmComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmComponent;->DDL:Lcom/redbend/vdm/VdmComponent;

    .line 9
    const/16 v0, 0x1c

    new-array v0, v0, [Lcom/redbend/vdm/VdmComponent;

    sget-object v1, Lcom/redbend/vdm/VdmComponent;->CORE:Lcom/redbend/vdm/VdmComponent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/redbend/vdm/VdmComponent;->UTIL:Lcom/redbend/vdm/VdmComponent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/redbend/vdm/VdmComponent;->MMI:Lcom/redbend/vdm/VdmComponent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/redbend/vdm/VdmComponent;->COMM:Lcom/redbend/vdm/VdmComponent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/redbend/vdm/VdmComponent;->DEVICE:Lcom/redbend/vdm/VdmComponent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/redbend/vdm/VdmComponent;->RDM:Lcom/redbend/vdm/VdmComponent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/redbend/vdm/VdmComponent;->TRG:Lcom/redbend/vdm/VdmComponent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/redbend/vdm/VdmComponent;->SESS:Lcom/redbend/vdm/VdmComponent;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/redbend/vdm/VdmComponent;->SESSQ:Lcom/redbend/vdm/VdmComponent;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/redbend/vdm/VdmComponent;->SESSCOMM:Lcom/redbend/vdm/VdmComponent;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/redbend/vdm/VdmComponent;->SYNCML:Lcom/redbend/vdm/VdmComponent;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/redbend/vdm/VdmComponent;->TREE:Lcom/redbend/vdm/VdmComponent;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/redbend/vdm/VdmComponent;->AUTH:Lcom/redbend/vdm/VdmComponent;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/redbend/vdm/VdmComponent;->WBXML:Lcom/redbend/vdm/VdmComponent;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/redbend/vdm/VdmComponent;->DL:Lcom/redbend/vdm/VdmComponent;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/redbend/vdm/VdmComponent;->HTTP:Lcom/redbend/vdm/VdmComponent;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/redbend/vdm/VdmComponent;->CLIENT:Lcom/redbend/vdm/VdmComponent;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/redbend/vdm/VdmComponent;->FUMO:Lcom/redbend/vdm/VdmComponent;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/redbend/vdm/VdmComponent;->SCOMO:Lcom/redbend/vdm/VdmComponent;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/redbend/vdm/VdmComponent;->BOOTSTRAP:Lcom/redbend/vdm/VdmComponent;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/redbend/vdm/VdmComponent;->WIMAX:Lcom/redbend/vdm/VdmComponent;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/redbend/vdm/VdmComponent;->DS:Lcom/redbend/vdm/VdmComponent;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/redbend/vdm/VdmComponent;->CONNMO:Lcom/redbend/vdm/VdmComponent;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/redbend/vdm/VdmComponent;->WSP:Lcom/redbend/vdm/VdmComponent;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/redbend/vdm/VdmComponent;->UDP:Lcom/redbend/vdm/VdmComponent;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/redbend/vdm/VdmComponent;->WIB:Lcom/redbend/vdm/VdmComponent;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/redbend/vdm/VdmComponent;->LAWMO:Lcom/redbend/vdm/VdmComponent;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/redbend/vdm/VdmComponent;->DDL:Lcom/redbend/vdm/VdmComponent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/redbend/vdm/VdmComponent;->$VALUES:[Lcom/redbend/vdm/VdmComponent;

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

.method public static valueOf(Ljava/lang/String;)Lcom/redbend/vdm/VdmComponent;
    .locals 1
    .parameter "name"

    .prologue
    .line 9
    const-class v0, Lcom/redbend/vdm/VdmComponent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/redbend/vdm/VdmComponent;

    return-object v0
.end method

.method public static values()[Lcom/redbend/vdm/VdmComponent;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/redbend/vdm/VdmComponent;->$VALUES:[Lcom/redbend/vdm/VdmComponent;

    invoke-virtual {v0}, [Lcom/redbend/vdm/VdmComponent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/redbend/vdm/VdmComponent;

    return-object v0
.end method
