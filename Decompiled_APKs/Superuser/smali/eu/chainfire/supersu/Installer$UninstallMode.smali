.class public final enum Leu/chainfire/supersu/Installer$UninstallMode;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Leu/chainfire/supersu/Installer$UninstallMode;

.field public static final enum b:Leu/chainfire/supersu/Installer$UninstallMode;

.field public static final enum c:Leu/chainfire/supersu/Installer$UninstallMode;

.field public static final enum d:Leu/chainfire/supersu/Installer$UninstallMode;

.field private static final synthetic e:[Leu/chainfire/supersu/Installer$UninstallMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Leu/chainfire/supersu/Installer$UninstallMode;

    const-string v1, "UNINSTALL_NORMAL"

    invoke-direct {v0, v1, v2}, Leu/chainfire/supersu/Installer$UninstallMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leu/chainfire/supersu/Installer$UninstallMode;->a:Leu/chainfire/supersu/Installer$UninstallMode;

    new-instance v0, Leu/chainfire/supersu/Installer$UninstallMode;

    const-string v1, "UNINSTALL_FULL_UNROOT"

    invoke-direct {v0, v1, v3}, Leu/chainfire/supersu/Installer$UninstallMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leu/chainfire/supersu/Installer$UninstallMode;->b:Leu/chainfire/supersu/Installer$UninstallMode;

    new-instance v0, Leu/chainfire/supersu/Installer$UninstallMode;

    const-string v1, "UNINSTALL_SWITCH_SU_APP"

    invoke-direct {v0, v1, v4}, Leu/chainfire/supersu/Installer$UninstallMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leu/chainfire/supersu/Installer$UninstallMode;->c:Leu/chainfire/supersu/Installer$UninstallMode;

    new-instance v0, Leu/chainfire/supersu/Installer$UninstallMode;

    const-string v1, "UNINSTALL_MARKET_REINSTALL"

    invoke-direct {v0, v1, v5}, Leu/chainfire/supersu/Installer$UninstallMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leu/chainfire/supersu/Installer$UninstallMode;->d:Leu/chainfire/supersu/Installer$UninstallMode;

    const/4 v0, 0x4

    new-array v0, v0, [Leu/chainfire/supersu/Installer$UninstallMode;

    sget-object v1, Leu/chainfire/supersu/Installer$UninstallMode;->a:Leu/chainfire/supersu/Installer$UninstallMode;

    aput-object v1, v0, v2

    sget-object v1, Leu/chainfire/supersu/Installer$UninstallMode;->b:Leu/chainfire/supersu/Installer$UninstallMode;

    aput-object v1, v0, v3

    sget-object v1, Leu/chainfire/supersu/Installer$UninstallMode;->c:Leu/chainfire/supersu/Installer$UninstallMode;

    aput-object v1, v0, v4

    sget-object v1, Leu/chainfire/supersu/Installer$UninstallMode;->d:Leu/chainfire/supersu/Installer$UninstallMode;

    aput-object v1, v0, v5

    sput-object v0, Leu/chainfire/supersu/Installer$UninstallMode;->e:[Leu/chainfire/supersu/Installer$UninstallMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Leu/chainfire/supersu/Installer$UninstallMode;
    .locals 1

    const-class v0, Leu/chainfire/supersu/Installer$UninstallMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/Installer$UninstallMode;

    return-object v0
.end method

.method public static values()[Leu/chainfire/supersu/Installer$UninstallMode;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Leu/chainfire/supersu/Installer$UninstallMode;->e:[Leu/chainfire/supersu/Installer$UninstallMode;

    array-length v1, v0

    new-array v2, v1, [Leu/chainfire/supersu/Installer$UninstallMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
