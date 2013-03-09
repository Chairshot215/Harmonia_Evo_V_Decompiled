.class public final enum Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;
.super Ljava/lang/Enum;
.source "HtcCdmaCBMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CBMessageClass"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;

.field public static final enum CLASS_0:Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;

.field public static final enum CLASS_1:Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;

.field public static final enum CLASS_2:Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;

.field public static final enum CLASS_3:Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;

.field public static final enum UNKNOWN:Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;->UNKNOWN:Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;

    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;

    const-string v1, "CLASS_0"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;->CLASS_0:Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;

    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;

    const-string v1, "CLASS_1"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;->CLASS_1:Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;

    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;

    const-string v1, "CLASS_2"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;->CLASS_2:Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;

    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;

    const-string v1, "CLASS_3"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;->CLASS_3:Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;

    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;->UNKNOWN:Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;->CLASS_0:Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;->CLASS_1:Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;->CLASS_2:Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;->CLASS_3:Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;->$VALUES:[Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;
    .locals 1

    const-class v0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;->$VALUES:[Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage$CBMessageClass;

    return-object v0
.end method
