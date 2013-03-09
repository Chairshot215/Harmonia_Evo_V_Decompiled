.class public final enum Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;
.super Ljava/lang/Enum;
.source "HLIServiceUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

.field public static final enum DOWNLOADCANCELED:Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

.field public static final enum DOWNLOADFAILED:Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

.field public static final enum DOWNLOADING:Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

.field public static final enum INSTALLED:Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

.field public static final enum INSTALLFAILED:Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

.field public static final enum INSTALLING:Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

.field public static final enum STANDBY:Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

.field public static final enum SYNC_LICENSE:Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

.field public static final enum UNKNOWN:Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 51
    new-instance v0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;->UNKNOWN:Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

    .line 52
    new-instance v0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

    const-string v1, "STANDBY"

    invoke-direct {v0, v1, v4}, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;->STANDBY:Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

    .line 53
    new-instance v0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

    const-string v1, "DOWNLOADING"

    invoke-direct {v0, v1, v5}, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;->DOWNLOADING:Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

    .line 54
    new-instance v0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

    const-string v1, "DOWNLOADFAILED"

    invoke-direct {v0, v1, v6}, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;->DOWNLOADFAILED:Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

    .line 55
    new-instance v0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

    const-string v1, "DOWNLOADCANCELED"

    invoke-direct {v0, v1, v7}, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;->DOWNLOADCANCELED:Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

    .line 56
    new-instance v0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

    const-string v1, "INSTALLING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;->INSTALLING:Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

    .line 57
    new-instance v0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

    const-string v1, "SYNC_LICENSE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;->SYNC_LICENSE:Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

    .line 58
    new-instance v0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

    const-string v1, "INSTALLED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;->INSTALLED:Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

    .line 59
    new-instance v0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

    const-string v1, "INSTALLFAILED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;->INSTALLFAILED:Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

    .line 50
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

    sget-object v1, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;->UNKNOWN:Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;->STANDBY:Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;->DOWNLOADING:Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;->DOWNLOADFAILED:Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;->DOWNLOADCANCELED:Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;->INSTALLING:Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;->SYNC_LICENSE:Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;->INSTALLED:Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;->INSTALLFAILED:Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;->$VALUES:[Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

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
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;
    .locals 1
    .parameter "name"

    .prologue
    .line 50
    const-class v0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

    return-object v0
.end method

.method public static values()[Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;->$VALUES:[Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

    invoke-virtual {v0}, [Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/laputa/HtcLaputaInstallerUtil/HLIServiceUtil$Status;

    return-object v0
.end method
