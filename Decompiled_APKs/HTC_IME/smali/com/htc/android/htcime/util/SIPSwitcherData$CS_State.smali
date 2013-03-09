.class public final enum Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;
.super Ljava/lang/Enum;
.source "SIPSwitcherData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/util/SIPSwitcherData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CS_State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;

.field public static final enum CS_OFF:Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;

.field public static final enum CS_ON:Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;

.field public static final enum CS_UNKONWN:Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 216
    new-instance v0, Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;

    const-string v1, "CS_OFF"

    invoke-direct {v0, v1, v2}, Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;->CS_OFF:Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;

    .line 217
    new-instance v0, Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;

    const-string v1, "CS_ON"

    invoke-direct {v0, v1, v3}, Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;->CS_ON:Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;

    .line 218
    new-instance v0, Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;

    const-string v1, "CS_UNKONWN"

    invoke-direct {v0, v1, v4}, Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;->CS_UNKONWN:Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;

    .line 215
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;

    sget-object v1, Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;->CS_OFF:Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;->CS_ON:Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;->CS_UNKONWN:Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;->$VALUES:[Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;

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
    .line 215
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;
    .locals 1
    .parameter "name"

    .prologue
    .line 215
    const-class v0, Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;

    return-object v0
.end method

.method public static values()[Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;
    .locals 1

    .prologue
    .line 215
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;->$VALUES:[Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;

    invoke-virtual {v0}, [Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;

    return-object v0
.end method
