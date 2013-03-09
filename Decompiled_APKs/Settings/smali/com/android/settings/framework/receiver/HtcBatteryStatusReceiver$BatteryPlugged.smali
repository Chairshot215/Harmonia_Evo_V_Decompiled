.class public final enum Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;
.super Ljava/lang/Enum;
.source "HtcBatteryStatusReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BatteryPlugged"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;

.field public static final enum AC:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;

.field public static final enum ITSELF:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;

.field public static final enum UNKNOWN:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;

.field public static final enum USB:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;

.field public static final enum WIRELESS:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    new-instance v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;

    const-string v1, "ITSELF"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;->ITSELF:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;

    .line 71
    new-instance v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;

    const-string v1, "AC"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;->AC:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;

    .line 74
    new-instance v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;

    const-string v1, "USB"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;->USB:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;

    .line 77
    new-instance v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;

    const-string v1, "WIRELESS"

    invoke-direct {v0, v1, v5}, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;->WIRELESS:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;

    .line 80
    new-instance v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v6}, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;->UNKNOWN:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;

    .line 65
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;

    sget-object v1, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;->ITSELF:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;->AC:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;->USB:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;->WIRELESS:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;->UNKNOWN:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;->$VALUES:[Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;

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
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getBatteryPlugged(I)Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;
    .locals 1
    .parameter "powerSource"

    .prologue
    .line 90
    packed-switch p0, :pswitch_data_0

    .line 100
    :pswitch_0
    sget-object v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;->UNKNOWN:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;

    :goto_0
    return-object v0

    .line 92
    :pswitch_1
    sget-object v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;->ITSELF:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;

    goto :goto_0

    .line 94
    :pswitch_2
    sget-object v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;->AC:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;

    goto :goto_0

    .line 96
    :pswitch_3
    sget-object v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;->USB:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;

    goto :goto_0

    .line 98
    :pswitch_4
    sget-object v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;->WIRELESS:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;
    .locals 1
    .parameter "name"

    .prologue
    .line 65
    const-class v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;->$VALUES:[Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;

    invoke-virtual {v0}, [Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryPlugged;

    return-object v0
.end method
