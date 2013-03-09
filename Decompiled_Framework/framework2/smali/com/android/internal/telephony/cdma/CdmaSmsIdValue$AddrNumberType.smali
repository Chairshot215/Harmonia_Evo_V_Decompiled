.class public final enum Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;
.super Ljava/lang/Enum;
.source "CdmaSmsIdValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaSmsIdValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AddrNumberType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

.field public static final enum TYPE_ABBREVIATED:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

.field public static final enum TYPE_INTERNATIONAL:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

.field public static final enum TYPE_INTERNET_EMAIL_ADDRESS:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

.field public static final enum TYPE_INTERNET_PROTOCOL:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

.field public static final enum TYPE_NATIONAL:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

.field public static final enum TYPE_NETWORK_SPECIFIC:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

.field public static final enum TYPE_RESERVED:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

.field public static final enum TYPE_SUBSCRIBER:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

.field public static final enum TYPE_UNKNOWN:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

.field public static final enum TYPE_UNKNOWN_DATA_NETWORK:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    const-string v1, "TYPE_UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_UNKNOWN:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    const-string v1, "TYPE_INTERNATIONAL"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_INTERNATIONAL:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    const-string v1, "TYPE_NATIONAL"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_NATIONAL:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    const-string v1, "TYPE_NETWORK_SPECIFIC"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_NETWORK_SPECIFIC:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    const-string v1, "TYPE_SUBSCRIBER"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_SUBSCRIBER:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    const-string v1, "TYPE_ABBREVIATED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_ABBREVIATED:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    const-string v1, "TYPE_UNKNOWN_DATA_NETWORK"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_UNKNOWN_DATA_NETWORK:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    const-string v1, "TYPE_INTERNET_PROTOCOL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_INTERNET_PROTOCOL:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    const-string v1, "TYPE_INTERNET_EMAIL_ADDRESS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_INTERNET_EMAIL_ADDRESS:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    const-string v1, "TYPE_RESERVED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_RESERVED:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_UNKNOWN:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_INTERNATIONAL:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_NATIONAL:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_NETWORK_SPECIFIC:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_SUBSCRIBER:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_ABBREVIATED:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_UNKNOWN_DATA_NETWORK:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_INTERNET_PROTOCOL:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_INTERNET_EMAIL_ADDRESS:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_RESERVED:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->$VALUES:[Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;
    .locals 1

    const-class v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->$VALUES:[Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    return-object v0
.end method
