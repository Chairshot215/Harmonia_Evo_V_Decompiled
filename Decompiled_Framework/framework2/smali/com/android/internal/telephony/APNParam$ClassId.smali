.class public final enum Lcom/android/internal/telephony/APNParam$ClassId;
.super Ljava/lang/Enum;
.source "APNParam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/APNParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClassId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/APNParam$ClassId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/APNParam$ClassId;

.field public static final enum CLASS_ADMIN:Lcom/android/internal/telephony/APNParam$ClassId;

.field public static final enum CLASS_APP:Lcom/android/internal/telephony/APNParam$ClassId;

.field public static final enum CLASS_CUSTOMIZE1:Lcom/android/internal/telephony/APNParam$ClassId;

.field public static final enum CLASS_IMS:Lcom/android/internal/telephony/APNParam$ClassId;

.field public static final enum CLASS_INTERNET:Lcom/android/internal/telephony/APNParam$ClassId;

.field public static final enum CLASS_NONE:Lcom/android/internal/telephony/APNParam$ClassId;

.field public static final enum CLASS_TETHERING:Lcom/android/internal/telephony/APNParam$ClassId;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/internal/telephony/APNParam$ClassId;

    const-string v1, "CLASS_NONE"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/APNParam$ClassId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_NONE:Lcom/android/internal/telephony/APNParam$ClassId;

    new-instance v0, Lcom/android/internal/telephony/APNParam$ClassId;

    const-string v1, "CLASS_IMS"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/APNParam$ClassId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_IMS:Lcom/android/internal/telephony/APNParam$ClassId;

    new-instance v0, Lcom/android/internal/telephony/APNParam$ClassId;

    const-string v1, "CLASS_ADMIN"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/APNParam$ClassId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_ADMIN:Lcom/android/internal/telephony/APNParam$ClassId;

    new-instance v0, Lcom/android/internal/telephony/APNParam$ClassId;

    const-string v1, "CLASS_INTERNET"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/APNParam$ClassId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/APNParam$ClassId;

    new-instance v0, Lcom/android/internal/telephony/APNParam$ClassId;

    const-string v1, "CLASS_APP"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/APNParam$ClassId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_APP:Lcom/android/internal/telephony/APNParam$ClassId;

    new-instance v0, Lcom/android/internal/telephony/APNParam$ClassId;

    const-string v1, "CLASS_TETHERING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/APNParam$ClassId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_TETHERING:Lcom/android/internal/telephony/APNParam$ClassId;

    new-instance v0, Lcom/android/internal/telephony/APNParam$ClassId;

    const-string v1, "CLASS_CUSTOMIZE1"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/APNParam$ClassId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_CUSTOMIZE1:Lcom/android/internal/telephony/APNParam$ClassId;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/internal/telephony/APNParam$ClassId;

    sget-object v1, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_NONE:Lcom/android/internal/telephony/APNParam$ClassId;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_IMS:Lcom/android/internal/telephony/APNParam$ClassId;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_ADMIN:Lcom/android/internal/telephony/APNParam$ClassId;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/APNParam$ClassId;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_APP:Lcom/android/internal/telephony/APNParam$ClassId;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_TETHERING:Lcom/android/internal/telephony/APNParam$ClassId;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_CUSTOMIZE1:Lcom/android/internal/telephony/APNParam$ClassId;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/APNParam$ClassId;->$VALUES:[Lcom/android/internal/telephony/APNParam$ClassId;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/APNParam$ClassId;
    .locals 1

    const-class v0, Lcom/android/internal/telephony/APNParam$ClassId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/APNParam$ClassId;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/APNParam$ClassId;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/APNParam$ClassId;->$VALUES:[Lcom/android/internal/telephony/APNParam$ClassId;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/APNParam$ClassId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/APNParam$ClassId;

    return-object v0
.end method
