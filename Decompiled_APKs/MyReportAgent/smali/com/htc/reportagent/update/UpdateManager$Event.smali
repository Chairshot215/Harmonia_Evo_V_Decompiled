.class public final enum Lcom/htc/reportagent/update/UpdateManager$Event;
.super Ljava/lang/Enum;
.source "UpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/reportagent/update/UpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/reportagent/update/UpdateManager$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/reportagent/update/UpdateManager$Event;

.field public static final enum ALARM_WAKEUP:Lcom/htc/reportagent/update/UpdateManager$Event;

.field public static final enum BOOT_COMPLETE:Lcom/htc/reportagent/update/UpdateManager$Event;

.field public static final enum NETWORK_CHANGE:Lcom/htc/reportagent/update/UpdateManager$Event;

.field public static final enum OOBE_FINISH:Lcom/htc/reportagent/update/UpdateManager$Event;

.field public static final enum TIME_SET:Lcom/htc/reportagent/update/UpdateManager$Event;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v0, Lcom/htc/reportagent/update/UpdateManager$Event;

    const-string v1, "BOOT_COMPLETE"

    invoke-direct {v0, v1, v2}, Lcom/htc/reportagent/update/UpdateManager$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/reportagent/update/UpdateManager$Event;->BOOT_COMPLETE:Lcom/htc/reportagent/update/UpdateManager$Event;

    .line 37
    new-instance v0, Lcom/htc/reportagent/update/UpdateManager$Event;

    const-string v1, "TIME_SET"

    invoke-direct {v0, v1, v3}, Lcom/htc/reportagent/update/UpdateManager$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/reportagent/update/UpdateManager$Event;->TIME_SET:Lcom/htc/reportagent/update/UpdateManager$Event;

    .line 38
    new-instance v0, Lcom/htc/reportagent/update/UpdateManager$Event;

    const-string v1, "OOBE_FINISH"

    invoke-direct {v0, v1, v4}, Lcom/htc/reportagent/update/UpdateManager$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/reportagent/update/UpdateManager$Event;->OOBE_FINISH:Lcom/htc/reportagent/update/UpdateManager$Event;

    .line 39
    new-instance v0, Lcom/htc/reportagent/update/UpdateManager$Event;

    const-string v1, "NETWORK_CHANGE"

    invoke-direct {v0, v1, v5}, Lcom/htc/reportagent/update/UpdateManager$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/reportagent/update/UpdateManager$Event;->NETWORK_CHANGE:Lcom/htc/reportagent/update/UpdateManager$Event;

    .line 40
    new-instance v0, Lcom/htc/reportagent/update/UpdateManager$Event;

    const-string v1, "ALARM_WAKEUP"

    invoke-direct {v0, v1, v6}, Lcom/htc/reportagent/update/UpdateManager$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/reportagent/update/UpdateManager$Event;->ALARM_WAKEUP:Lcom/htc/reportagent/update/UpdateManager$Event;

    .line 35
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/htc/reportagent/update/UpdateManager$Event;

    sget-object v1, Lcom/htc/reportagent/update/UpdateManager$Event;->BOOT_COMPLETE:Lcom/htc/reportagent/update/UpdateManager$Event;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/reportagent/update/UpdateManager$Event;->TIME_SET:Lcom/htc/reportagent/update/UpdateManager$Event;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/reportagent/update/UpdateManager$Event;->OOBE_FINISH:Lcom/htc/reportagent/update/UpdateManager$Event;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/reportagent/update/UpdateManager$Event;->NETWORK_CHANGE:Lcom/htc/reportagent/update/UpdateManager$Event;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/reportagent/update/UpdateManager$Event;->ALARM_WAKEUP:Lcom/htc/reportagent/update/UpdateManager$Event;

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/reportagent/update/UpdateManager$Event;->$VALUES:[Lcom/htc/reportagent/update/UpdateManager$Event;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static toString(Lcom/htc/reportagent/update/UpdateManager$Event;)Ljava/lang/String;
    .locals 2
    .parameter "event"

    .prologue
    .line 43
    sget-object v0, Lcom/htc/reportagent/update/UpdateManager$1;->$SwitchMap$com$htc$reportagent$update$UpdateManager$Event:[I

    invoke-virtual {p0}, Lcom/htc/reportagent/update/UpdateManager$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 50
    const-string v0, ""

    :goto_0
    return-object v0

    .line 44
    :pswitch_0
    const-string v0, "BOOT_COMPLETE"

    goto :goto_0

    .line 45
    :pswitch_1
    const-string v0, "TIME_SET"

    goto :goto_0

    .line 46
    :pswitch_2
    const-string v0, "OOBE_FINISH"

    goto :goto_0

    .line 47
    :pswitch_3
    const-string v0, "NETWORK_CHANGE"

    goto :goto_0

    .line 48
    :pswitch_4
    const-string v0, "ALARM_WAKEUP"

    goto :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/reportagent/update/UpdateManager$Event;
    .locals 1
    .parameter "name"

    .prologue
    .line 35
    const-class v0, Lcom/htc/reportagent/update/UpdateManager$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/reportagent/update/UpdateManager$Event;

    return-object v0
.end method

.method public static values()[Lcom/htc/reportagent/update/UpdateManager$Event;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/htc/reportagent/update/UpdateManager$Event;->$VALUES:[Lcom/htc/reportagent/update/UpdateManager$Event;

    invoke-virtual {v0}, [Lcom/htc/reportagent/update/UpdateManager$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/reportagent/update/UpdateManager$Event;

    return-object v0
.end method
