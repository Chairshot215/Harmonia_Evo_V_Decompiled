.class public final enum Lcom/htc/util/backup/BackupRestoreService$ActionType;
.super Ljava/lang/Enum;
.source "BackupRestoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/backup/BackupRestoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "ActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/util/backup/BackupRestoreService$ActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/util/backup/BackupRestoreService$ActionType;

.field public static final enum CONVERT:Lcom/htc/util/backup/BackupRestoreService$ActionType;

.field public static final enum INHIBIT:Lcom/htc/util/backup/BackupRestoreService$ActionType;

.field public static final enum OVERWRITE:Lcom/htc/util/backup/BackupRestoreService$ActionType;

.field public static final enum SKIP:Lcom/htc/util/backup/BackupRestoreService$ActionType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-instance v0, Lcom/htc/util/backup/BackupRestoreService$ActionType;

    const-string v1, "CONVERT"

    invoke-direct {v0, v1, v2}, Lcom/htc/util/backup/BackupRestoreService$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/util/backup/BackupRestoreService$ActionType;->CONVERT:Lcom/htc/util/backup/BackupRestoreService$ActionType;

    new-instance v0, Lcom/htc/util/backup/BackupRestoreService$ActionType;

    const-string v1, "OVERWRITE"

    invoke-direct {v0, v1, v3}, Lcom/htc/util/backup/BackupRestoreService$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/util/backup/BackupRestoreService$ActionType;->OVERWRITE:Lcom/htc/util/backup/BackupRestoreService$ActionType;

    new-instance v0, Lcom/htc/util/backup/BackupRestoreService$ActionType;

    const-string v1, "SKIP"

    invoke-direct {v0, v1, v4}, Lcom/htc/util/backup/BackupRestoreService$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/util/backup/BackupRestoreService$ActionType;->SKIP:Lcom/htc/util/backup/BackupRestoreService$ActionType;

    new-instance v0, Lcom/htc/util/backup/BackupRestoreService$ActionType;

    const-string v1, "INHIBIT"

    invoke-direct {v0, v1, v5}, Lcom/htc/util/backup/BackupRestoreService$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/util/backup/BackupRestoreService$ActionType;->INHIBIT:Lcom/htc/util/backup/BackupRestoreService$ActionType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/util/backup/BackupRestoreService$ActionType;

    sget-object v1, Lcom/htc/util/backup/BackupRestoreService$ActionType;->CONVERT:Lcom/htc/util/backup/BackupRestoreService$ActionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/util/backup/BackupRestoreService$ActionType;->OVERWRITE:Lcom/htc/util/backup/BackupRestoreService$ActionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/util/backup/BackupRestoreService$ActionType;->SKIP:Lcom/htc/util/backup/BackupRestoreService$ActionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/util/backup/BackupRestoreService$ActionType;->INHIBIT:Lcom/htc/util/backup/BackupRestoreService$ActionType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/util/backup/BackupRestoreService$ActionType;->$VALUES:[Lcom/htc/util/backup/BackupRestoreService$ActionType;

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
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/util/backup/BackupRestoreService$ActionType;
    .locals 1
    .parameter "name"

    .prologue
    .line 53
    const-class v0, Lcom/htc/util/backup/BackupRestoreService$ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/util/backup/BackupRestoreService$ActionType;

    return-object v0
.end method

.method public static values()[Lcom/htc/util/backup/BackupRestoreService$ActionType;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/htc/util/backup/BackupRestoreService$ActionType;->$VALUES:[Lcom/htc/util/backup/BackupRestoreService$ActionType;

    invoke-virtual {v0}, [Lcom/htc/util/backup/BackupRestoreService$ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/util/backup/BackupRestoreService$ActionType;

    return-object v0
.end method
