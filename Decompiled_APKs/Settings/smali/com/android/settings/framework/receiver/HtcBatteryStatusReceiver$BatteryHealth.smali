.class public final enum Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;
.super Ljava/lang/Enum;
.source "HtcBatteryStatusReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BatteryHealth"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;

.field public static final enum DEAD:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;

.field public static final enum GOOD:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;

.field public static final enum OVERHEAT:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;

.field public static final enum OVER_VOLTAGE:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;

.field public static final enum UNKNOWN:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;

.field public static final enum UNSPECIFIED_FAILURE:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 108
    new-instance v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;

    const-string v1, "DEAD"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;->DEAD:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;

    .line 109
    new-instance v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;

    const-string v1, "GOOD"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;->GOOD:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;

    .line 110
    new-instance v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;

    const-string v1, "OVER_VOLTAGE"

    invoke-direct {v0, v1, v5}, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;->OVER_VOLTAGE:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;

    .line 111
    new-instance v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;

    const-string v1, "OVERHEAT"

    invoke-direct {v0, v1, v6}, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;->OVERHEAT:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;

    .line 112
    new-instance v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;

    const-string v1, "UNSPECIFIED_FAILURE"

    invoke-direct {v0, v1, v7}, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;->UNSPECIFIED_FAILURE:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;

    .line 113
    new-instance v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;->UNKNOWN:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;

    .line 107
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;

    sget-object v1, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;->DEAD:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;->GOOD:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;->OVER_VOLTAGE:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;->OVERHEAT:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;->UNSPECIFIED_FAILURE:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;->UNKNOWN:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;->$VALUES:[Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;

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
    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getBatteryHealth(I)Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;
    .locals 1
    .parameter "healthValue"

    .prologue
    .line 117
    packed-switch p0, :pswitch_data_0

    .line 131
    sget-object v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;->UNKNOWN:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;

    :goto_0
    return-object v0

    .line 119
    :pswitch_0
    sget-object v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;->DEAD:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;

    goto :goto_0

    .line 121
    :pswitch_1
    sget-object v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;->GOOD:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;

    goto :goto_0

    .line 123
    :pswitch_2
    sget-object v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;->OVER_VOLTAGE:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;

    goto :goto_0

    .line 125
    :pswitch_3
    sget-object v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;->OVERHEAT:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;

    goto :goto_0

    .line 127
    :pswitch_4
    sget-object v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;->UNSPECIFIED_FAILURE:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;

    goto :goto_0

    .line 129
    :pswitch_5
    sget-object v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;->UNKNOWN:Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;

    goto :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;
    .locals 1
    .parameter "name"

    .prologue
    .line 107
    const-class v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;->$VALUES:[Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;

    invoke-virtual {v0}, [Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/framework/receiver/HtcBatteryStatusReceiver$BatteryHealth;

    return-object v0
.end method
