.class public final enum Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;
.super Ljava/lang/Enum;
.source "HtcBatteryStatusReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BatteryStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;

.field public static final enum CHARGING:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;

.field public static final enum DISCHARGING:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;

.field public static final enum FULL:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;

.field public static final enum NOT_CHARGING:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;

.field public static final enum UNKNOWN:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;

    const-string v1, "CHARGING"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;->CHARGING:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;

    .line 39
    new-instance v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;

    const-string v1, "DISCHARGING"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;->DISCHARGING:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;

    .line 40
    new-instance v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;

    const-string v1, "FULL"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;->FULL:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;

    .line 41
    new-instance v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;

    const-string v1, "NOT_CHARGING"

    invoke-direct {v0, v1, v5}, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;->NOT_CHARGING:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;

    .line 42
    new-instance v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v6}, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;->UNKNOWN:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;

    .line 37
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;

    sget-object v1, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;->CHARGING:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;->DISCHARGING:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;->FULL:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;->NOT_CHARGING:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;->UNKNOWN:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;->$VALUES:[Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getBatteryStatus(I)Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;
    .locals 1
    .parameter "status"

    .prologue
    .line 46
    packed-switch p0, :pswitch_data_0

    .line 58
    sget-object v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;->UNKNOWN:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;

    :goto_0
    return-object v0

    .line 48
    :pswitch_0
    sget-object v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;->CHARGING:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;

    goto :goto_0

    .line 50
    :pswitch_1
    sget-object v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;->DISCHARGING:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;

    goto :goto_0

    .line 52
    :pswitch_2
    sget-object v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;->FULL:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;

    goto :goto_0

    .line 54
    :pswitch_3
    sget-object v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;->NOT_CHARGING:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;

    goto :goto_0

    .line 56
    :pswitch_4
    sget-object v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;->UNKNOWN:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;

    goto :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;
    .locals 1
    .parameter "name"

    .prologue
    .line 37
    const-class v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;->$VALUES:[Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;

    invoke-virtual {v0}, [Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryStatus;

    return-object v0
.end method
