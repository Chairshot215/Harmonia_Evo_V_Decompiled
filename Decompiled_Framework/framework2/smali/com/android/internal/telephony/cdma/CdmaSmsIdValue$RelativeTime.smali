.class public final enum Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;
.super Ljava/lang/Enum;
.source "CdmaSmsIdValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaSmsIdValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RelativeTime"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

.field public static final enum Fixed:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

.field public static final enum Indefinite:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

.field public static final enum UntilLeavingThisRegistrationArea:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

.field public static final enum UntilMessageDisplayed:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

.field public static final enum UntilMobileInactive:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

.field public static final enum WhenMobileNextActive:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    const-string v1, "Fixed"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;->Fixed:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    const-string v1, "Indefinite"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;->Indefinite:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    const-string v1, "UntilMessageDisplayed"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;->UntilMessageDisplayed:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    const-string v1, "UntilMobileInactive"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;->UntilMobileInactive:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    const-string v1, "UntilLeavingThisRegistrationArea"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;->UntilLeavingThisRegistrationArea:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    const-string v1, "WhenMobileNextActive"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;->WhenMobileNextActive:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;->Fixed:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;->Indefinite:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;->UntilMessageDisplayed:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;->UntilMobileInactive:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;->UntilLeavingThisRegistrationArea:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;->WhenMobileNextActive:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;->$VALUES:[Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;
    .locals 1

    const-class v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;->$VALUES:[Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    return-object v0
.end method
