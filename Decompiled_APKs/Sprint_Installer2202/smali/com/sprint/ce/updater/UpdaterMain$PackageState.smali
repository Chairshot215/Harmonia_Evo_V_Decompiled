.class final enum Lcom/sprint/ce/updater/UpdaterMain$PackageState;
.super Ljava/lang/Enum;
.source "UpdaterMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/ce/updater/UpdaterMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PackageState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sprint/ce/updater/UpdaterMain$PackageState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/sprint/ce/updater/UpdaterMain$PackageState;

.field public static final enum INVALID_VERSION:Lcom/sprint/ce/updater/UpdaterMain$PackageState;

.field public static final enum NEWER_VERSION_INSTALLED:Lcom/sprint/ce/updater/UpdaterMain$PackageState;

.field public static final enum NOT_INSTALLED:Lcom/sprint/ce/updater/UpdaterMain$PackageState;

.field public static final enum OLDER_VERSION_INSTALLED:Lcom/sprint/ce/updater/UpdaterMain$PackageState;

.field public static final enum SAME_VERSION_INSTALLED:Lcom/sprint/ce/updater/UpdaterMain$PackageState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 112
    new-instance v0, Lcom/sprint/ce/updater/UpdaterMain$PackageState;

    const-string v1, "NOT_INSTALLED"

    invoke-direct {v0, v1, v2}, Lcom/sprint/ce/updater/UpdaterMain$PackageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/ce/updater/UpdaterMain$PackageState;->NOT_INSTALLED:Lcom/sprint/ce/updater/UpdaterMain$PackageState;

    .line 113
    new-instance v0, Lcom/sprint/ce/updater/UpdaterMain$PackageState;

    const-string v1, "OLDER_VERSION_INSTALLED"

    invoke-direct {v0, v1, v3}, Lcom/sprint/ce/updater/UpdaterMain$PackageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/ce/updater/UpdaterMain$PackageState;->OLDER_VERSION_INSTALLED:Lcom/sprint/ce/updater/UpdaterMain$PackageState;

    .line 114
    new-instance v0, Lcom/sprint/ce/updater/UpdaterMain$PackageState;

    const-string v1, "SAME_VERSION_INSTALLED"

    invoke-direct {v0, v1, v4}, Lcom/sprint/ce/updater/UpdaterMain$PackageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/ce/updater/UpdaterMain$PackageState;->SAME_VERSION_INSTALLED:Lcom/sprint/ce/updater/UpdaterMain$PackageState;

    .line 115
    new-instance v0, Lcom/sprint/ce/updater/UpdaterMain$PackageState;

    const-string v1, "NEWER_VERSION_INSTALLED"

    invoke-direct {v0, v1, v5}, Lcom/sprint/ce/updater/UpdaterMain$PackageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/ce/updater/UpdaterMain$PackageState;->NEWER_VERSION_INSTALLED:Lcom/sprint/ce/updater/UpdaterMain$PackageState;

    .line 116
    new-instance v0, Lcom/sprint/ce/updater/UpdaterMain$PackageState;

    const-string v1, "INVALID_VERSION"

    invoke-direct {v0, v1, v6}, Lcom/sprint/ce/updater/UpdaterMain$PackageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/ce/updater/UpdaterMain$PackageState;->INVALID_VERSION:Lcom/sprint/ce/updater/UpdaterMain$PackageState;

    .line 111
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sprint/ce/updater/UpdaterMain$PackageState;

    sget-object v1, Lcom/sprint/ce/updater/UpdaterMain$PackageState;->NOT_INSTALLED:Lcom/sprint/ce/updater/UpdaterMain$PackageState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sprint/ce/updater/UpdaterMain$PackageState;->OLDER_VERSION_INSTALLED:Lcom/sprint/ce/updater/UpdaterMain$PackageState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sprint/ce/updater/UpdaterMain$PackageState;->SAME_VERSION_INSTALLED:Lcom/sprint/ce/updater/UpdaterMain$PackageState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sprint/ce/updater/UpdaterMain$PackageState;->NEWER_VERSION_INSTALLED:Lcom/sprint/ce/updater/UpdaterMain$PackageState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sprint/ce/updater/UpdaterMain$PackageState;->INVALID_VERSION:Lcom/sprint/ce/updater/UpdaterMain$PackageState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sprint/ce/updater/UpdaterMain$PackageState;->ENUM$VALUES:[Lcom/sprint/ce/updater/UpdaterMain$PackageState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sprint/ce/updater/UpdaterMain$PackageState;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/sprint/ce/updater/UpdaterMain$PackageState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sprint/ce/updater/UpdaterMain$PackageState;

    return-object v0
.end method

.method public static values()[Lcom/sprint/ce/updater/UpdaterMain$PackageState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/sprint/ce/updater/UpdaterMain$PackageState;->ENUM$VALUES:[Lcom/sprint/ce/updater/UpdaterMain$PackageState;

    array-length v1, v0

    new-array v2, v1, [Lcom/sprint/ce/updater/UpdaterMain$PackageState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
