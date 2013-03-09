.class public final enum Lcom/htc/music/util/DrmUtils$DRMV2_EDxRightsStatus;
.super Ljava/lang/Enum;
.source "DrmUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/util/DrmUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DRMV2_EDxRightsStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/music/util/DrmUtils$DRMV2_EDxRightsStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/music/util/DrmUtils$DRMV2_EDxRightsStatus;

.field public static final enum DX_RIGHTS_STATUS_FORWARD_LOCK:Lcom/htc/music/util/DrmUtils$DRMV2_EDxRightsStatus;

.field public static final enum DX_RIGHTS_STATUS_NOT_PROTECTED:Lcom/htc/music/util/DrmUtils$DRMV2_EDxRightsStatus;

.field public static final enum DX_RIGHTS_STATUS_NOT_VALID:Lcom/htc/music/util/DrmUtils$DRMV2_EDxRightsStatus;

.field public static final enum DX_RIGHTS_STATUS_UNKNOWN:Lcom/htc/music/util/DrmUtils$DRMV2_EDxRightsStatus;

.field public static final enum DX_RIGHTS_STATUS_VALID:Lcom/htc/music/util/DrmUtils$DRMV2_EDxRightsStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/htc/music/util/DrmUtils$DRMV2_EDxRightsStatus;

    const-string v1, "DX_RIGHTS_STATUS_NOT_PROTECTED"

    invoke-direct {v0, v1, v2}, Lcom/htc/music/util/DrmUtils$DRMV2_EDxRightsStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/music/util/DrmUtils$DRMV2_EDxRightsStatus;->DX_RIGHTS_STATUS_NOT_PROTECTED:Lcom/htc/music/util/DrmUtils$DRMV2_EDxRightsStatus;

    new-instance v0, Lcom/htc/music/util/DrmUtils$DRMV2_EDxRightsStatus;

    const-string v1, "DX_RIGHTS_STATUS_NOT_VALID"

    invoke-direct {v0, v1, v3}, Lcom/htc/music/util/DrmUtils$DRMV2_EDxRightsStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/music/util/DrmUtils$DRMV2_EDxRightsStatus;->DX_RIGHTS_STATUS_NOT_VALID:Lcom/htc/music/util/DrmUtils$DRMV2_EDxRightsStatus;

    new-instance v0, Lcom/htc/music/util/DrmUtils$DRMV2_EDxRightsStatus;

    const-string v1, "DX_RIGHTS_STATUS_VALID"

    invoke-direct {v0, v1, v4}, Lcom/htc/music/util/DrmUtils$DRMV2_EDxRightsStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/music/util/DrmUtils$DRMV2_EDxRightsStatus;->DX_RIGHTS_STATUS_VALID:Lcom/htc/music/util/DrmUtils$DRMV2_EDxRightsStatus;

    new-instance v0, Lcom/htc/music/util/DrmUtils$DRMV2_EDxRightsStatus;

    const-string v1, "DX_RIGHTS_STATUS_FORWARD_LOCK"

    invoke-direct {v0, v1, v5}, Lcom/htc/music/util/DrmUtils$DRMV2_EDxRightsStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/music/util/DrmUtils$DRMV2_EDxRightsStatus;->DX_RIGHTS_STATUS_FORWARD_LOCK:Lcom/htc/music/util/DrmUtils$DRMV2_EDxRightsStatus;

    new-instance v0, Lcom/htc/music/util/DrmUtils$DRMV2_EDxRightsStatus;

    const-string v1, "DX_RIGHTS_STATUS_UNKNOWN"

    invoke-direct {v0, v1, v6}, Lcom/htc/music/util/DrmUtils$DRMV2_EDxRightsStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/music/util/DrmUtils$DRMV2_EDxRightsStatus;->DX_RIGHTS_STATUS_UNKNOWN:Lcom/htc/music/util/DrmUtils$DRMV2_EDxRightsStatus;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/htc/music/util/DrmUtils$DRMV2_EDxRightsStatus;

    sget-object v1, Lcom/htc/music/util/DrmUtils$DRMV2_EDxRightsStatus;->DX_RIGHTS_STATUS_NOT_PROTECTED:Lcom/htc/music/util/DrmUtils$DRMV2_EDxRightsStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/music/util/DrmUtils$DRMV2_EDxRightsStatus;->DX_RIGHTS_STATUS_NOT_VALID:Lcom/htc/music/util/DrmUtils$DRMV2_EDxRightsStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/music/util/DrmUtils$DRMV2_EDxRightsStatus;->DX_RIGHTS_STATUS_VALID:Lcom/htc/music/util/DrmUtils$DRMV2_EDxRightsStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/music/util/DrmUtils$DRMV2_EDxRightsStatus;->DX_RIGHTS_STATUS_FORWARD_LOCK:Lcom/htc/music/util/DrmUtils$DRMV2_EDxRightsStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/music/util/DrmUtils$DRMV2_EDxRightsStatus;->DX_RIGHTS_STATUS_UNKNOWN:Lcom/htc/music/util/DrmUtils$DRMV2_EDxRightsStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/music/util/DrmUtils$DRMV2_EDxRightsStatus;->$VALUES:[Lcom/htc/music/util/DrmUtils$DRMV2_EDxRightsStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/htc/music/util/DrmUtils$DRMV2_EDxRightsStatus;
    .locals 1

    const-class v0, Lcom/htc/music/util/DrmUtils$DRMV2_EDxRightsStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/music/util/DrmUtils$DRMV2_EDxRightsStatus;

    return-object v0
.end method

.method public static values()[Lcom/htc/music/util/DrmUtils$DRMV2_EDxRightsStatus;
    .locals 1

    sget-object v0, Lcom/htc/music/util/DrmUtils$DRMV2_EDxRightsStatus;->$VALUES:[Lcom/htc/music/util/DrmUtils$DRMV2_EDxRightsStatus;

    invoke-virtual {v0}, [Lcom/htc/music/util/DrmUtils$DRMV2_EDxRightsStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/music/util/DrmUtils$DRMV2_EDxRightsStatus;

    return-object v0
.end method
