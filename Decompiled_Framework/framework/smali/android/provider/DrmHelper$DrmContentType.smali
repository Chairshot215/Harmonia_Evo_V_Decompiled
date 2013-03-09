.class public final enum Landroid/provider/DrmHelper$DrmContentType;
.super Ljava/lang/Enum;
.source "DrmHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/DrmHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DrmContentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/provider/DrmHelper$DrmContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/provider/DrmHelper$DrmContentType;

.field public static final enum COMBINED_DELIVERY:Landroid/provider/DrmHelper$DrmContentType;

.field public static final enum FORWARD_LOCK:Landroid/provider/DrmHelper$DrmContentType;

.field public static final enum SEPARATE_DELIVERY:Landroid/provider/DrmHelper$DrmContentType;

.field public static final enum UNKNOWN:Landroid/provider/DrmHelper$DrmContentType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/provider/DrmHelper$DrmContentType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Landroid/provider/DrmHelper$DrmContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/DrmHelper$DrmContentType;->UNKNOWN:Landroid/provider/DrmHelper$DrmContentType;

    new-instance v0, Landroid/provider/DrmHelper$DrmContentType;

    const-string v1, "FORWARD_LOCK"

    invoke-direct {v0, v1, v3}, Landroid/provider/DrmHelper$DrmContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/DrmHelper$DrmContentType;->FORWARD_LOCK:Landroid/provider/DrmHelper$DrmContentType;

    new-instance v0, Landroid/provider/DrmHelper$DrmContentType;

    const-string v1, "COMBINED_DELIVERY"

    invoke-direct {v0, v1, v4}, Landroid/provider/DrmHelper$DrmContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/DrmHelper$DrmContentType;->COMBINED_DELIVERY:Landroid/provider/DrmHelper$DrmContentType;

    new-instance v0, Landroid/provider/DrmHelper$DrmContentType;

    const-string v1, "SEPARATE_DELIVERY"

    invoke-direct {v0, v1, v5}, Landroid/provider/DrmHelper$DrmContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/DrmHelper$DrmContentType;->SEPARATE_DELIVERY:Landroid/provider/DrmHelper$DrmContentType;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/provider/DrmHelper$DrmContentType;

    sget-object v1, Landroid/provider/DrmHelper$DrmContentType;->UNKNOWN:Landroid/provider/DrmHelper$DrmContentType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/provider/DrmHelper$DrmContentType;->FORWARD_LOCK:Landroid/provider/DrmHelper$DrmContentType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/provider/DrmHelper$DrmContentType;->COMBINED_DELIVERY:Landroid/provider/DrmHelper$DrmContentType;

    aput-object v1, v0, v4

    sget-object v1, Landroid/provider/DrmHelper$DrmContentType;->SEPARATE_DELIVERY:Landroid/provider/DrmHelper$DrmContentType;

    aput-object v1, v0, v5

    sput-object v0, Landroid/provider/DrmHelper$DrmContentType;->$VALUES:[Landroid/provider/DrmHelper$DrmContentType;

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

.method public static valueOf(Ljava/lang/String;)Landroid/provider/DrmHelper$DrmContentType;
    .locals 1

    const-class v0, Landroid/provider/DrmHelper$DrmContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/provider/DrmHelper$DrmContentType;

    return-object v0
.end method

.method public static values()[Landroid/provider/DrmHelper$DrmContentType;
    .locals 1

    sget-object v0, Landroid/provider/DrmHelper$DrmContentType;->$VALUES:[Landroid/provider/DrmHelper$DrmContentType;

    invoke-virtual {v0}, [Landroid/provider/DrmHelper$DrmContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/provider/DrmHelper$DrmContentType;

    return-object v0
.end method
