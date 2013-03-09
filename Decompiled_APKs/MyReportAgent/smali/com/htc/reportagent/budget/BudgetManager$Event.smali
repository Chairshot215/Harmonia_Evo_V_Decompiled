.class public final enum Lcom/htc/reportagent/budget/BudgetManager$Event;
.super Ljava/lang/Enum;
.source "BudgetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/reportagent/budget/BudgetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/reportagent/budget/BudgetManager$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/reportagent/budget/BudgetManager$Event;

.field public static final enum ALARM_WAKEUP:Lcom/htc/reportagent/budget/BudgetManager$Event;

.field public static final enum BOOT_COMPLETE:Lcom/htc/reportagent/budget/BudgetManager$Event;

.field public static final enum NEW_POLICY:Lcom/htc/reportagent/budget/BudgetManager$Event;

.field public static final enum SYSTEM_TRAFFIC_UPDATED:Lcom/htc/reportagent/budget/BudgetManager$Event;

.field public static final enum TIME_SET:Lcom/htc/reportagent/budget/BudgetManager$Event;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcom/htc/reportagent/budget/BudgetManager$Event;

    const-string v1, "BOOT_COMPLETE"

    invoke-direct {v0, v1, v2}, Lcom/htc/reportagent/budget/BudgetManager$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/reportagent/budget/BudgetManager$Event;->BOOT_COMPLETE:Lcom/htc/reportagent/budget/BudgetManager$Event;

    .line 41
    new-instance v0, Lcom/htc/reportagent/budget/BudgetManager$Event;

    const-string v1, "NEW_POLICY"

    invoke-direct {v0, v1, v3}, Lcom/htc/reportagent/budget/BudgetManager$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/reportagent/budget/BudgetManager$Event;->NEW_POLICY:Lcom/htc/reportagent/budget/BudgetManager$Event;

    .line 42
    new-instance v0, Lcom/htc/reportagent/budget/BudgetManager$Event;

    const-string v1, "TIME_SET"

    invoke-direct {v0, v1, v4}, Lcom/htc/reportagent/budget/BudgetManager$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/reportagent/budget/BudgetManager$Event;->TIME_SET:Lcom/htc/reportagent/budget/BudgetManager$Event;

    .line 43
    new-instance v0, Lcom/htc/reportagent/budget/BudgetManager$Event;

    const-string v1, "ALARM_WAKEUP"

    invoke-direct {v0, v1, v5}, Lcom/htc/reportagent/budget/BudgetManager$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/reportagent/budget/BudgetManager$Event;->ALARM_WAKEUP:Lcom/htc/reportagent/budget/BudgetManager$Event;

    .line 44
    new-instance v0, Lcom/htc/reportagent/budget/BudgetManager$Event;

    const-string v1, "SYSTEM_TRAFFIC_UPDATED"

    invoke-direct {v0, v1, v6}, Lcom/htc/reportagent/budget/BudgetManager$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/reportagent/budget/BudgetManager$Event;->SYSTEM_TRAFFIC_UPDATED:Lcom/htc/reportagent/budget/BudgetManager$Event;

    .line 39
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/htc/reportagent/budget/BudgetManager$Event;

    sget-object v1, Lcom/htc/reportagent/budget/BudgetManager$Event;->BOOT_COMPLETE:Lcom/htc/reportagent/budget/BudgetManager$Event;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/reportagent/budget/BudgetManager$Event;->NEW_POLICY:Lcom/htc/reportagent/budget/BudgetManager$Event;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/reportagent/budget/BudgetManager$Event;->TIME_SET:Lcom/htc/reportagent/budget/BudgetManager$Event;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/reportagent/budget/BudgetManager$Event;->ALARM_WAKEUP:Lcom/htc/reportagent/budget/BudgetManager$Event;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/reportagent/budget/BudgetManager$Event;->SYSTEM_TRAFFIC_UPDATED:Lcom/htc/reportagent/budget/BudgetManager$Event;

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/reportagent/budget/BudgetManager$Event;->$VALUES:[Lcom/htc/reportagent/budget/BudgetManager$Event;

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
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/reportagent/budget/BudgetManager$Event;
    .locals 1
    .parameter "name"

    .prologue
    .line 39
    const-class v0, Lcom/htc/reportagent/budget/BudgetManager$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/reportagent/budget/BudgetManager$Event;

    return-object v0
.end method

.method public static values()[Lcom/htc/reportagent/budget/BudgetManager$Event;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/htc/reportagent/budget/BudgetManager$Event;->$VALUES:[Lcom/htc/reportagent/budget/BudgetManager$Event;

    invoke-virtual {v0}, [Lcom/htc/reportagent/budget/BudgetManager$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/reportagent/budget/BudgetManager$Event;

    return-object v0
.end method
