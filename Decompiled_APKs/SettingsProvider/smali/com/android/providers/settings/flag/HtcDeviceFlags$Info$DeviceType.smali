.class public final enum Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;
.super Ljava/lang/Enum;
.source "HtcDeviceFlags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/settings/flag/HtcDeviceFlags$Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;

.field public static final enum PDA_PHONE:Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;

.field public static final enum SMART_PHONE:Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;

.field public static final enum TABLET_PC:Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 351
    new-instance v0, Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;

    const-string v1, "PDA_PHONE"

    invoke-direct {v0, v1, v2}, Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;->PDA_PHONE:Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;

    .line 368
    new-instance v0, Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;

    const-string v1, "SMART_PHONE"

    invoke-direct {v0, v1, v3}, Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;->SMART_PHONE:Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;

    .line 394
    new-instance v0, Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;

    const-string v1, "TABLET_PC"

    invoke-direct {v0, v1, v4}, Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;->TABLET_PC:Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;

    .line 322
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;

    sget-object v1, Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;->PDA_PHONE:Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;->SMART_PHONE:Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;->TABLET_PC:Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;->$VALUES:[Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;

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
    .line 322
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;
    .locals 1
    .parameter "name"

    .prologue
    .line 322
    const-class v0, Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;

    return-object v0
.end method

.method public static values()[Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;
    .locals 1

    .prologue
    .line 322
    sget-object v0, Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;->$VALUES:[Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;

    invoke-virtual {v0}, [Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;

    return-object v0
.end method
