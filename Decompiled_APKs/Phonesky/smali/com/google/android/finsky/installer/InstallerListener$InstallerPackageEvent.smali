.class public final enum Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;
.super Ljava/lang/Enum;
.source "InstallerListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/installer/InstallerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InstallerPackageEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

.field public static final enum DOWNLOADING:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

.field public static final enum DOWNLOAD_CANCELLED:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

.field public static final enum DOWNLOAD_ERROR:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

.field public static final enum DOWNLOAD_PENDING:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

.field public static final enum INSTALLED:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

.field public static final enum INSTALLING:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

.field public static final enum INSTALL_ERROR:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

.field public static final enum UNINSTALLED:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

.field public static final enum UNINSTALLING:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-instance v0, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    const-string v1, "DOWNLOAD_PENDING"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOAD_PENDING:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    .line 13
    new-instance v0, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    const-string v1, "DOWNLOADING"

    invoke-direct {v0, v1, v4}, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOADING:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    .line 14
    new-instance v0, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    const-string v1, "DOWNLOAD_CANCELLED"

    invoke-direct {v0, v1, v5}, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOAD_CANCELLED:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    .line 15
    new-instance v0, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    const-string v1, "DOWNLOAD_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOAD_ERROR:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    .line 16
    new-instance v0, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    const-string v1, "INSTALLING"

    invoke-direct {v0, v1, v7}, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->INSTALLING:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    .line 17
    new-instance v0, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    const-string v1, "INSTALL_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->INSTALL_ERROR:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    .line 18
    new-instance v0, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    const-string v1, "INSTALLED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->INSTALLED:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    .line 19
    new-instance v0, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    const-string v1, "UNINSTALLING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->UNINSTALLING:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    .line 20
    new-instance v0, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    const-string v1, "UNINSTALLED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->UNINSTALLED:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    .line 11
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    sget-object v1, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOAD_PENDING:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOADING:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOAD_CANCELLED:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOAD_ERROR:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->INSTALLING:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->INSTALL_ERROR:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->INSTALLED:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->UNINSTALLING:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->UNINSTALLED:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->$VALUES:[Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;
    .locals 1
    .parameter

    .prologue
    .line 11
    const-class v0, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->$VALUES:[Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    invoke-virtual {v0}, [Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    return-object v0
.end method
