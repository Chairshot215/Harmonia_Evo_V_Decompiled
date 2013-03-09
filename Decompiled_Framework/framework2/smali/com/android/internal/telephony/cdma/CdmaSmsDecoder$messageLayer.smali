.class final enum Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;
.super Ljava/lang/Enum;
.source "CdmaSmsDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "messageLayer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;

.field public static final enum TELESERVICE:Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;

.field public static final enum TRANSPORT:Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;

    const-string v1, "TRANSPORT"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;->TRANSPORT:Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;

    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;

    const-string v1, "TELESERVICE"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;->TELESERVICE:Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;->TRANSPORT:Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;->TELESERVICE:Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;->$VALUES:[Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;
    .locals 1

    const-class v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;->$VALUES:[Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;

    return-object v0
.end method
