.class public final enum Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;
.super Ljava/lang/Enum;
.source "RegisterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/pluginmanager/RegisterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionCmd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;

.field public static final enum BOOT_COMPLETED:Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;

.field public static final enum PACKAGE_ADDED:Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;

.field public static final enum PACKAGE_INSTALL:Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;

.field public static final enum PACKAGE_REMOVED:Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;

.field public static final enum PACKAGE_REPLACED:Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 432
    new-instance v0, Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;

    const-string v1, "PACKAGE_ADDED"

    invoke-direct {v0, v1, v2}, Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;->PACKAGE_ADDED:Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;

    new-instance v0, Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;

    const-string v1, "PACKAGE_INSTALL"

    invoke-direct {v0, v1, v3}, Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;->PACKAGE_INSTALL:Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;

    new-instance v0, Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;

    const-string v1, "PACKAGE_REMOVED"

    invoke-direct {v0, v1, v4}, Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;->PACKAGE_REMOVED:Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;

    new-instance v0, Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;

    const-string v1, "PACKAGE_REPLACED"

    invoke-direct {v0, v1, v5}, Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;->PACKAGE_REPLACED:Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;

    new-instance v0, Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;

    const-string v1, "BOOT_COMPLETED"

    invoke-direct {v0, v1, v6}, Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;->BOOT_COMPLETED:Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;

    .line 431
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;

    sget-object v1, Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;->PACKAGE_ADDED:Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;->PACKAGE_INSTALL:Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;->PACKAGE_REMOVED:Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;->PACKAGE_REPLACED:Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;->BOOT_COMPLETED:Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;->$VALUES:[Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;

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
    .line 431
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;
    .locals 1
    .parameter "name"

    .prologue
    .line 431
    const-class v0, Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;

    return-object v0
.end method

.method public static values()[Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;
    .locals 1

    .prologue
    .line 431
    sget-object v0, Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;->$VALUES:[Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;

    invoke-virtual {v0}, [Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/opensense/pluginmanager/RegisterService$ActionCmd;

    return-object v0
.end method
