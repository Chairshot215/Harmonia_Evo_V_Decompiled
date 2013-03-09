.class final enum Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;
.super Ljava/lang/Enum;
.source "HtcDataConnectionPowerSave.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ConnectionRequestState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

.field public static final enum External:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

.field public static final enum ExternalDisconnect:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

.field public static final enum InternalOnly:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

.field public static final enum None:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;->None:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    new-instance v0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    const-string v1, "InternalOnly"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;->InternalOnly:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    new-instance v0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    const-string v1, "External"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;->External:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    new-instance v0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    const-string v1, "ExternalDisconnect"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;->ExternalDisconnect:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    sget-object v1, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;->None:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;->InternalOnly:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;->External:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;->ExternalDisconnect:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;->$VALUES:[Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;
    .locals 1

    const-class v0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;->$VALUES:[Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    return-object v0
.end method
