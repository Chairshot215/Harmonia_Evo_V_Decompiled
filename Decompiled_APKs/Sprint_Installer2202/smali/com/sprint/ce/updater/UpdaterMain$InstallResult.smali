.class final enum Lcom/sprint/ce/updater/UpdaterMain$InstallResult;
.super Ljava/lang/Enum;
.source "UpdaterMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/ce/updater/UpdaterMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "InstallResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sprint/ce/updater/UpdaterMain$InstallResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/sprint/ce/updater/UpdaterMain$InstallResult;

.field public static final enum FAILED:Lcom/sprint/ce/updater/UpdaterMain$InstallResult;

.field public static final enum NOT_OVERRIDDEN:Lcom/sprint/ce/updater/UpdaterMain$InstallResult;

.field public static final enum SUCCESS:Lcom/sprint/ce/updater/UpdaterMain$InstallResult;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 120
    new-instance v0, Lcom/sprint/ce/updater/UpdaterMain$InstallResult;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v2}, Lcom/sprint/ce/updater/UpdaterMain$InstallResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/ce/updater/UpdaterMain$InstallResult;->FAILED:Lcom/sprint/ce/updater/UpdaterMain$InstallResult;

    .line 121
    new-instance v0, Lcom/sprint/ce/updater/UpdaterMain$InstallResult;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/sprint/ce/updater/UpdaterMain$InstallResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/ce/updater/UpdaterMain$InstallResult;->SUCCESS:Lcom/sprint/ce/updater/UpdaterMain$InstallResult;

    .line 122
    new-instance v0, Lcom/sprint/ce/updater/UpdaterMain$InstallResult;

    const-string v1, "NOT_OVERRIDDEN"

    invoke-direct {v0, v1, v4}, Lcom/sprint/ce/updater/UpdaterMain$InstallResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/ce/updater/UpdaterMain$InstallResult;->NOT_OVERRIDDEN:Lcom/sprint/ce/updater/UpdaterMain$InstallResult;

    .line 119
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sprint/ce/updater/UpdaterMain$InstallResult;

    sget-object v1, Lcom/sprint/ce/updater/UpdaterMain$InstallResult;->FAILED:Lcom/sprint/ce/updater/UpdaterMain$InstallResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sprint/ce/updater/UpdaterMain$InstallResult;->SUCCESS:Lcom/sprint/ce/updater/UpdaterMain$InstallResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sprint/ce/updater/UpdaterMain$InstallResult;->NOT_OVERRIDDEN:Lcom/sprint/ce/updater/UpdaterMain$InstallResult;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sprint/ce/updater/UpdaterMain$InstallResult;->ENUM$VALUES:[Lcom/sprint/ce/updater/UpdaterMain$InstallResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sprint/ce/updater/UpdaterMain$InstallResult;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/sprint/ce/updater/UpdaterMain$InstallResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sprint/ce/updater/UpdaterMain$InstallResult;

    return-object v0
.end method

.method public static values()[Lcom/sprint/ce/updater/UpdaterMain$InstallResult;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/sprint/ce/updater/UpdaterMain$InstallResult;->ENUM$VALUES:[Lcom/sprint/ce/updater/UpdaterMain$InstallResult;

    array-length v1, v0

    new-array v2, v1, [Lcom/sprint/ce/updater/UpdaterMain$InstallResult;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
