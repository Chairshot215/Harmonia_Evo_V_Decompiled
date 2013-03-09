.class public final enum Lcom/htc/reportagent/policy/PolicyManager$Event;
.super Ljava/lang/Enum;
.source "PolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/reportagent/policy/PolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/reportagent/policy/PolicyManager$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/reportagent/policy/PolicyManager$Event;

.field public static final enum ALARM_WAKEUP:Lcom/htc/reportagent/policy/PolicyManager$Event;

.field public static final enum BOOT_COMPLETE:Lcom/htc/reportagent/policy/PolicyManager$Event;

.field public static final enum NETWORK_CHANGE:Lcom/htc/reportagent/policy/PolicyManager$Event;

.field public static final enum NEW_POLICY:Lcom/htc/reportagent/policy/PolicyManager$Event;

.field public static final enum OOBE_FINISH:Lcom/htc/reportagent/policy/PolicyManager$Event;

.field public static final enum SETTING_CHANGE:Lcom/htc/reportagent/policy/PolicyManager$Event;

.field public static final enum TIME_SET:Lcom/htc/reportagent/policy/PolicyManager$Event;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    new-instance v0, Lcom/htc/reportagent/policy/PolicyManager$Event;

    const-string v1, "BOOT_COMPLETE"

    invoke-direct {v0, v1, v3}, Lcom/htc/reportagent/policy/PolicyManager$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/reportagent/policy/PolicyManager$Event;->BOOT_COMPLETE:Lcom/htc/reportagent/policy/PolicyManager$Event;

    .line 45
    new-instance v0, Lcom/htc/reportagent/policy/PolicyManager$Event;

    const-string v1, "NEW_POLICY"

    invoke-direct {v0, v1, v4}, Lcom/htc/reportagent/policy/PolicyManager$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/reportagent/policy/PolicyManager$Event;->NEW_POLICY:Lcom/htc/reportagent/policy/PolicyManager$Event;

    .line 46
    new-instance v0, Lcom/htc/reportagent/policy/PolicyManager$Event;

    const-string v1, "TIME_SET"

    invoke-direct {v0, v1, v5}, Lcom/htc/reportagent/policy/PolicyManager$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/reportagent/policy/PolicyManager$Event;->TIME_SET:Lcom/htc/reportagent/policy/PolicyManager$Event;

    .line 47
    new-instance v0, Lcom/htc/reportagent/policy/PolicyManager$Event;

    const-string v1, "OOBE_FINISH"

    invoke-direct {v0, v1, v6}, Lcom/htc/reportagent/policy/PolicyManager$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/reportagent/policy/PolicyManager$Event;->OOBE_FINISH:Lcom/htc/reportagent/policy/PolicyManager$Event;

    .line 48
    new-instance v0, Lcom/htc/reportagent/policy/PolicyManager$Event;

    const-string v1, "NETWORK_CHANGE"

    invoke-direct {v0, v1, v7}, Lcom/htc/reportagent/policy/PolicyManager$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/reportagent/policy/PolicyManager$Event;->NETWORK_CHANGE:Lcom/htc/reportagent/policy/PolicyManager$Event;

    .line 49
    new-instance v0, Lcom/htc/reportagent/policy/PolicyManager$Event;

    const-string v1, "ALARM_WAKEUP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/reportagent/policy/PolicyManager$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/reportagent/policy/PolicyManager$Event;->ALARM_WAKEUP:Lcom/htc/reportagent/policy/PolicyManager$Event;

    .line 50
    new-instance v0, Lcom/htc/reportagent/policy/PolicyManager$Event;

    const-string v1, "SETTING_CHANGE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/htc/reportagent/policy/PolicyManager$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/reportagent/policy/PolicyManager$Event;->SETTING_CHANGE:Lcom/htc/reportagent/policy/PolicyManager$Event;

    .line 43
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/htc/reportagent/policy/PolicyManager$Event;

    sget-object v1, Lcom/htc/reportagent/policy/PolicyManager$Event;->BOOT_COMPLETE:Lcom/htc/reportagent/policy/PolicyManager$Event;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/reportagent/policy/PolicyManager$Event;->NEW_POLICY:Lcom/htc/reportagent/policy/PolicyManager$Event;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/reportagent/policy/PolicyManager$Event;->TIME_SET:Lcom/htc/reportagent/policy/PolicyManager$Event;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/reportagent/policy/PolicyManager$Event;->OOBE_FINISH:Lcom/htc/reportagent/policy/PolicyManager$Event;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/reportagent/policy/PolicyManager$Event;->NETWORK_CHANGE:Lcom/htc/reportagent/policy/PolicyManager$Event;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/reportagent/policy/PolicyManager$Event;->ALARM_WAKEUP:Lcom/htc/reportagent/policy/PolicyManager$Event;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/reportagent/policy/PolicyManager$Event;->SETTING_CHANGE:Lcom/htc/reportagent/policy/PolicyManager$Event;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/reportagent/policy/PolicyManager$Event;->$VALUES:[Lcom/htc/reportagent/policy/PolicyManager$Event;

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
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static toString(Lcom/htc/reportagent/policy/PolicyManager$Event;)Ljava/lang/String;
    .locals 2
    .parameter "event"

    .prologue
    .line 53
    sget-object v0, Lcom/htc/reportagent/policy/PolicyManager$1;->$SwitchMap$com$htc$reportagent$policy$PolicyManager$Event:[I

    invoke-virtual {p0}, Lcom/htc/reportagent/policy/PolicyManager$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 62
    const-string v0, ""

    :goto_0
    return-object v0

    .line 54
    :pswitch_0
    const-string v0, "BOOT_COMPLETE"

    goto :goto_0

    .line 55
    :pswitch_1
    const-string v0, "NEW_POLICY"

    goto :goto_0

    .line 56
    :pswitch_2
    const-string v0, "TIME_SET"

    goto :goto_0

    .line 57
    :pswitch_3
    const-string v0, "OOBE_FINISH"

    goto :goto_0

    .line 58
    :pswitch_4
    const-string v0, "NETWORK_CHANGE"

    goto :goto_0

    .line 59
    :pswitch_5
    const-string v0, "ALARM_WAKEUP"

    goto :goto_0

    .line 60
    :pswitch_6
    const-string v0, "SETTING_CHANGE"

    goto :goto_0

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/reportagent/policy/PolicyManager$Event;
    .locals 1
    .parameter "name"

    .prologue
    .line 43
    const-class v0, Lcom/htc/reportagent/policy/PolicyManager$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/reportagent/policy/PolicyManager$Event;

    return-object v0
.end method

.method public static values()[Lcom/htc/reportagent/policy/PolicyManager$Event;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/htc/reportagent/policy/PolicyManager$Event;->$VALUES:[Lcom/htc/reportagent/policy/PolicyManager$Event;

    invoke-virtual {v0}, [Lcom/htc/reportagent/policy/PolicyManager$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/reportagent/policy/PolicyManager$Event;

    return-object v0
.end method
