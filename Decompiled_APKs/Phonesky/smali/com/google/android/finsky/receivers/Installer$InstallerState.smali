.class public final enum Lcom/google/android/finsky/receivers/Installer$InstallerState;
.super Ljava/lang/Enum;
.source "Installer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/receivers/Installer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InstallerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/receivers/Installer$InstallerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/receivers/Installer$InstallerState;

.field public static final enum DOWNLOADING:Lcom/google/android/finsky/receivers/Installer$InstallerState;

.field public static final enum DOWNLOAD_PENDING:Lcom/google/android/finsky/receivers/Installer$InstallerState;

.field public static final enum INSTALLING:Lcom/google/android/finsky/receivers/Installer$InstallerState;

.field public static final enum NOT_TRACKED:Lcom/google/android/finsky/receivers/Installer$InstallerState;

.field public static final enum UNINSTALLING:Lcom/google/android/finsky/receivers/Installer$InstallerState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 116
    new-instance v0, Lcom/google/android/finsky/receivers/Installer$InstallerState;

    const-string v1, "NOT_TRACKED"

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/receivers/Installer$InstallerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/receivers/Installer$InstallerState;->NOT_TRACKED:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    .line 117
    new-instance v0, Lcom/google/android/finsky/receivers/Installer$InstallerState;

    const-string v1, "DOWNLOAD_PENDING"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/receivers/Installer$InstallerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/receivers/Installer$InstallerState;->DOWNLOAD_PENDING:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    .line 118
    new-instance v0, Lcom/google/android/finsky/receivers/Installer$InstallerState;

    const-string v1, "DOWNLOADING"

    invoke-direct {v0, v1, v4}, Lcom/google/android/finsky/receivers/Installer$InstallerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/receivers/Installer$InstallerState;->DOWNLOADING:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    .line 119
    new-instance v0, Lcom/google/android/finsky/receivers/Installer$InstallerState;

    const-string v1, "INSTALLING"

    invoke-direct {v0, v1, v5}, Lcom/google/android/finsky/receivers/Installer$InstallerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/receivers/Installer$InstallerState;->INSTALLING:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    .line 120
    new-instance v0, Lcom/google/android/finsky/receivers/Installer$InstallerState;

    const-string v1, "UNINSTALLING"

    invoke-direct {v0, v1, v6}, Lcom/google/android/finsky/receivers/Installer$InstallerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/receivers/Installer$InstallerState;->UNINSTALLING:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    .line 115
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/finsky/receivers/Installer$InstallerState;

    sget-object v1, Lcom/google/android/finsky/receivers/Installer$InstallerState;->NOT_TRACKED:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/finsky/receivers/Installer$InstallerState;->DOWNLOAD_PENDING:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/receivers/Installer$InstallerState;->DOWNLOADING:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/finsky/receivers/Installer$InstallerState;->INSTALLING:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/finsky/receivers/Installer$InstallerState;->UNINSTALLING:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/finsky/receivers/Installer$InstallerState;->$VALUES:[Lcom/google/android/finsky/receivers/Installer$InstallerState;

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
    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/receivers/Installer$InstallerState;
    .locals 1
    .parameter

    .prologue
    .line 115
    const-class v0, Lcom/google/android/finsky/receivers/Installer$InstallerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/receivers/Installer$InstallerState;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/receivers/Installer$InstallerState;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/google/android/finsky/receivers/Installer$InstallerState;->$VALUES:[Lcom/google/android/finsky/receivers/Installer$InstallerState;

    invoke-virtual {v0}, [Lcom/google/android/finsky/receivers/Installer$InstallerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/receivers/Installer$InstallerState;

    return-object v0
.end method


# virtual methods
.method public isDownloadingOrInstalling()Z
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/google/android/finsky/receivers/Installer$InstallerState;->DOWNLOAD_PENDING:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/google/android/finsky/receivers/Installer$InstallerState;->DOWNLOADING:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/google/android/finsky/receivers/Installer$InstallerState;->INSTALLING:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
