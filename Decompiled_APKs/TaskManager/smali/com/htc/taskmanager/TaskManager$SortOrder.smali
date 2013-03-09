.class public final enum Lcom/htc/taskmanager/TaskManager$SortOrder;
.super Ljava/lang/Enum;
.source "TaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/taskmanager/TaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SortOrder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/taskmanager/TaskManager$SortOrder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/taskmanager/TaskManager$SortOrder;

.field public static final enum SORT_ALPHABETICALLY:Lcom/htc/taskmanager/TaskManager$SortOrder;

.field public static final enum SORT_BY_MEMORY:Lcom/htc/taskmanager/TaskManager$SortOrder;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 456
    new-instance v0, Lcom/htc/taskmanager/TaskManager$SortOrder;

    const-string v1, "SORT_ALPHABETICALLY"

    invoke-direct {v0, v1, v2}, Lcom/htc/taskmanager/TaskManager$SortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/taskmanager/TaskManager$SortOrder;->SORT_ALPHABETICALLY:Lcom/htc/taskmanager/TaskManager$SortOrder;

    .line 457
    new-instance v0, Lcom/htc/taskmanager/TaskManager$SortOrder;

    const-string v1, "SORT_BY_MEMORY"

    invoke-direct {v0, v1, v3}, Lcom/htc/taskmanager/TaskManager$SortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/taskmanager/TaskManager$SortOrder;->SORT_BY_MEMORY:Lcom/htc/taskmanager/TaskManager$SortOrder;

    .line 455
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/taskmanager/TaskManager$SortOrder;

    sget-object v1, Lcom/htc/taskmanager/TaskManager$SortOrder;->SORT_ALPHABETICALLY:Lcom/htc/taskmanager/TaskManager$SortOrder;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/taskmanager/TaskManager$SortOrder;->SORT_BY_MEMORY:Lcom/htc/taskmanager/TaskManager$SortOrder;

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/taskmanager/TaskManager$SortOrder;->$VALUES:[Lcom/htc/taskmanager/TaskManager$SortOrder;

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
    .line 455
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/taskmanager/TaskManager$SortOrder;
    .locals 1
    .parameter "name"

    .prologue
    .line 455
    const-class v0, Lcom/htc/taskmanager/TaskManager$SortOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/taskmanager/TaskManager$SortOrder;

    return-object v0
.end method

.method public static values()[Lcom/htc/taskmanager/TaskManager$SortOrder;
    .locals 1

    .prologue
    .line 455
    sget-object v0, Lcom/htc/taskmanager/TaskManager$SortOrder;->$VALUES:[Lcom/htc/taskmanager/TaskManager$SortOrder;

    invoke-virtual {v0}, [Lcom/htc/taskmanager/TaskManager$SortOrder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/taskmanager/TaskManager$SortOrder;

    return-object v0
.end method
