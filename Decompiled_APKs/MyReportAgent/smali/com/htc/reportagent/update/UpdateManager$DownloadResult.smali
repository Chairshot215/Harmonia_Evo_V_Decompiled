.class final enum Lcom/htc/reportagent/update/UpdateManager$DownloadResult;
.super Ljava/lang/Enum;
.source "UpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/reportagent/update/UpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DownloadResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/reportagent/update/UpdateManager$DownloadResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/reportagent/update/UpdateManager$DownloadResult;

.field public static final enum FAIL_ALL_NO_BUDGET:Lcom/htc/reportagent/update/UpdateManager$DownloadResult;

.field public static final enum FAIL_CURRENT_NETWORK_NO_BUDGET:Lcom/htc/reportagent/update/UpdateManager$DownloadResult;

.field public static final enum FAIL_GENERIC:Lcom/htc/reportagent/update/UpdateManager$DownloadResult;

.field public static final enum SUCC:Lcom/htc/reportagent/update/UpdateManager$DownloadResult;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    new-instance v0, Lcom/htc/reportagent/update/UpdateManager$DownloadResult;

    const-string v1, "FAIL_GENERIC"

    invoke-direct {v0, v1, v2}, Lcom/htc/reportagent/update/UpdateManager$DownloadResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/reportagent/update/UpdateManager$DownloadResult;->FAIL_GENERIC:Lcom/htc/reportagent/update/UpdateManager$DownloadResult;

    .line 56
    new-instance v0, Lcom/htc/reportagent/update/UpdateManager$DownloadResult;

    const-string v1, "FAIL_ALL_NO_BUDGET"

    invoke-direct {v0, v1, v3}, Lcom/htc/reportagent/update/UpdateManager$DownloadResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/reportagent/update/UpdateManager$DownloadResult;->FAIL_ALL_NO_BUDGET:Lcom/htc/reportagent/update/UpdateManager$DownloadResult;

    .line 57
    new-instance v0, Lcom/htc/reportagent/update/UpdateManager$DownloadResult;

    const-string v1, "FAIL_CURRENT_NETWORK_NO_BUDGET"

    invoke-direct {v0, v1, v4}, Lcom/htc/reportagent/update/UpdateManager$DownloadResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/reportagent/update/UpdateManager$DownloadResult;->FAIL_CURRENT_NETWORK_NO_BUDGET:Lcom/htc/reportagent/update/UpdateManager$DownloadResult;

    .line 58
    new-instance v0, Lcom/htc/reportagent/update/UpdateManager$DownloadResult;

    const-string v1, "SUCC"

    invoke-direct {v0, v1, v5}, Lcom/htc/reportagent/update/UpdateManager$DownloadResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/reportagent/update/UpdateManager$DownloadResult;->SUCC:Lcom/htc/reportagent/update/UpdateManager$DownloadResult;

    .line 54
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/reportagent/update/UpdateManager$DownloadResult;

    sget-object v1, Lcom/htc/reportagent/update/UpdateManager$DownloadResult;->FAIL_GENERIC:Lcom/htc/reportagent/update/UpdateManager$DownloadResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/reportagent/update/UpdateManager$DownloadResult;->FAIL_ALL_NO_BUDGET:Lcom/htc/reportagent/update/UpdateManager$DownloadResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/reportagent/update/UpdateManager$DownloadResult;->FAIL_CURRENT_NETWORK_NO_BUDGET:Lcom/htc/reportagent/update/UpdateManager$DownloadResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/reportagent/update/UpdateManager$DownloadResult;->SUCC:Lcom/htc/reportagent/update/UpdateManager$DownloadResult;

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/reportagent/update/UpdateManager$DownloadResult;->$VALUES:[Lcom/htc/reportagent/update/UpdateManager$DownloadResult;

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
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/reportagent/update/UpdateManager$DownloadResult;
    .locals 1
    .parameter "name"

    .prologue
    .line 54
    const-class v0, Lcom/htc/reportagent/update/UpdateManager$DownloadResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/reportagent/update/UpdateManager$DownloadResult;

    return-object v0
.end method

.method public static values()[Lcom/htc/reportagent/update/UpdateManager$DownloadResult;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/htc/reportagent/update/UpdateManager$DownloadResult;->$VALUES:[Lcom/htc/reportagent/update/UpdateManager$DownloadResult;

    invoke-virtual {v0}, [Lcom/htc/reportagent/update/UpdateManager$DownloadResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/reportagent/update/UpdateManager$DownloadResult;

    return-object v0
.end method
