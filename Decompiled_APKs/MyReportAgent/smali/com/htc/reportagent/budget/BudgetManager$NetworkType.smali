.class public final enum Lcom/htc/reportagent/budget/BudgetManager$NetworkType;
.super Ljava/lang/Enum;
.source "BudgetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/reportagent/budget/BudgetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetworkType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/reportagent/budget/BudgetManager$NetworkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/reportagent/budget/BudgetManager$NetworkType;

.field public static final enum TYPE_MOBILE:Lcom/htc/reportagent/budget/BudgetManager$NetworkType;

.field public static final enum TYPE_NONE:Lcom/htc/reportagent/budget/BudgetManager$NetworkType;

.field public static final enum TYPE_OTHER:Lcom/htc/reportagent/budget/BudgetManager$NetworkType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/htc/reportagent/budget/BudgetManager$NetworkType;

    const-string v1, "TYPE_MOBILE"

    invoke-direct {v0, v1, v2}, Lcom/htc/reportagent/budget/BudgetManager$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/reportagent/budget/BudgetManager$NetworkType;->TYPE_MOBILE:Lcom/htc/reportagent/budget/BudgetManager$NetworkType;

    .line 26
    new-instance v0, Lcom/htc/reportagent/budget/BudgetManager$NetworkType;

    const-string v1, "TYPE_OTHER"

    invoke-direct {v0, v1, v3}, Lcom/htc/reportagent/budget/BudgetManager$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/reportagent/budget/BudgetManager$NetworkType;->TYPE_OTHER:Lcom/htc/reportagent/budget/BudgetManager$NetworkType;

    .line 27
    new-instance v0, Lcom/htc/reportagent/budget/BudgetManager$NetworkType;

    const-string v1, "TYPE_NONE"

    invoke-direct {v0, v1, v4}, Lcom/htc/reportagent/budget/BudgetManager$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/reportagent/budget/BudgetManager$NetworkType;->TYPE_NONE:Lcom/htc/reportagent/budget/BudgetManager$NetworkType;

    .line 24
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/reportagent/budget/BudgetManager$NetworkType;

    sget-object v1, Lcom/htc/reportagent/budget/BudgetManager$NetworkType;->TYPE_MOBILE:Lcom/htc/reportagent/budget/BudgetManager$NetworkType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/reportagent/budget/BudgetManager$NetworkType;->TYPE_OTHER:Lcom/htc/reportagent/budget/BudgetManager$NetworkType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/reportagent/budget/BudgetManager$NetworkType;->TYPE_NONE:Lcom/htc/reportagent/budget/BudgetManager$NetworkType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/reportagent/budget/BudgetManager$NetworkType;->$VALUES:[Lcom/htc/reportagent/budget/BudgetManager$NetworkType;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static toString(Lcom/htc/reportagent/budget/BudgetManager$NetworkType;)Ljava/lang/String;
    .locals 2
    .parameter "type"

    .prologue
    .line 30
    sget-object v0, Lcom/htc/reportagent/budget/BudgetManager$1;->$SwitchMap$com$htc$reportagent$budget$BudgetManager$NetworkType:[I

    invoke-virtual {p0}, Lcom/htc/reportagent/budget/BudgetManager$NetworkType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 35
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 31
    :pswitch_0
    const-string v0, "MOBILE"

    goto :goto_0

    .line 32
    :pswitch_1
    const-string v0, "OTHER"

    goto :goto_0

    .line 33
    :pswitch_2
    const-string v0, "NONE"

    goto :goto_0

    .line 30
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/reportagent/budget/BudgetManager$NetworkType;
    .locals 1
    .parameter "name"

    .prologue
    .line 24
    const-class v0, Lcom/htc/reportagent/budget/BudgetManager$NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/reportagent/budget/BudgetManager$NetworkType;

    return-object v0
.end method

.method public static values()[Lcom/htc/reportagent/budget/BudgetManager$NetworkType;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/htc/reportagent/budget/BudgetManager$NetworkType;->$VALUES:[Lcom/htc/reportagent/budget/BudgetManager$NetworkType;

    invoke-virtual {v0}, [Lcom/htc/reportagent/budget/BudgetManager$NetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/reportagent/budget/BudgetManager$NetworkType;

    return-object v0
.end method
