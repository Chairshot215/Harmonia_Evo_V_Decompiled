.class public final enum Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil$LaputaPackageStatus;
.super Ljava/lang/Enum;
.source "HtcLaputaInstallerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LaputaPackageStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil$LaputaPackageStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil$LaputaPackageStatus;

.field public static final enum Available:Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil$LaputaPackageStatus;

.field public static final enum Installing:Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil$LaputaPackageStatus;

.field public static final enum SyncLicense:Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil$LaputaPackageStatus;

.field public static final enum Unavailable:Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil$LaputaPackageStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil$LaputaPackageStatus;

    const-string v1, "Available"

    invoke-direct {v0, v1, v2}, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil$LaputaPackageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil$LaputaPackageStatus;->Available:Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil$LaputaPackageStatus;

    .line 38
    new-instance v0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil$LaputaPackageStatus;

    const-string v1, "Unavailable"

    invoke-direct {v0, v1, v3}, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil$LaputaPackageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil$LaputaPackageStatus;->Unavailable:Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil$LaputaPackageStatus;

    .line 39
    new-instance v0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil$LaputaPackageStatus;

    const-string v1, "Installing"

    invoke-direct {v0, v1, v4}, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil$LaputaPackageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil$LaputaPackageStatus;->Installing:Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil$LaputaPackageStatus;

    .line 40
    new-instance v0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil$LaputaPackageStatus;

    const-string v1, "SyncLicense"

    invoke-direct {v0, v1, v5}, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil$LaputaPackageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil$LaputaPackageStatus;->SyncLicense:Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil$LaputaPackageStatus;

    .line 36
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil$LaputaPackageStatus;

    sget-object v1, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil$LaputaPackageStatus;->Available:Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil$LaputaPackageStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil$LaputaPackageStatus;->Unavailable:Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil$LaputaPackageStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil$LaputaPackageStatus;->Installing:Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil$LaputaPackageStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil$LaputaPackageStatus;->SyncLicense:Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil$LaputaPackageStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil$LaputaPackageStatus;->$VALUES:[Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil$LaputaPackageStatus;

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
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil$LaputaPackageStatus;
    .locals 1
    .parameter "name"

    .prologue
    .line 36
    const-class v0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil$LaputaPackageStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil$LaputaPackageStatus;

    return-object v0
.end method

.method public static values()[Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil$LaputaPackageStatus;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil$LaputaPackageStatus;->$VALUES:[Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil$LaputaPackageStatus;

    invoke-virtual {v0}, [Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil$LaputaPackageStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil$LaputaPackageStatus;

    return-object v0
.end method
