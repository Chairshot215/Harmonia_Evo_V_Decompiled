.class public final enum Lcom/htc/idlescreen/base/IdleState$ViewMode;
.super Ljava/lang/Enum;
.source "IdleState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/IdleState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/idlescreen/base/IdleState$ViewMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/idlescreen/base/IdleState$ViewMode;

.field public static final enum AIRPLANE_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

.field public static final enum ALARM_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

.field public static final enum BATTERY_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

.field public static final enum CALENDAR_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

.field public static final enum CALL_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

.field public static final enum EMERENCY_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

.field public static final enum MESSAGE_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

.field public static final enum MISSCALL_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

.field public static final enum MUSIC_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

.field public static final enum NORMAL_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

.field public static final enum NOSIGNAL_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

.field public static final enum NOSIM_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

.field public static final enum OOBERUN_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

.field public static final enum REMOTE_VIEW_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

.field public static final enum SIMLOCK_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

.field public static final enum TASK_VIEW_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

.field public static final enum TIMER_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

.field public static final enum VOICEMAIL_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

.field public static final enum WEATHER_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 157
    new-instance v0, Lcom/htc/idlescreen/base/IdleState$ViewMode;

    const-string v1, "NORMAL_MODE"

    invoke-direct {v0, v1, v3}, Lcom/htc/idlescreen/base/IdleState$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/idlescreen/base/IdleState$ViewMode;->NORMAL_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    .line 158
    new-instance v0, Lcom/htc/idlescreen/base/IdleState$ViewMode;

    const-string v1, "CALL_MODE"

    invoke-direct {v0, v1, v4}, Lcom/htc/idlescreen/base/IdleState$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/idlescreen/base/IdleState$ViewMode;->CALL_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    .line 159
    new-instance v0, Lcom/htc/idlescreen/base/IdleState$ViewMode;

    const-string v1, "ALARM_MODE"

    invoke-direct {v0, v1, v5}, Lcom/htc/idlescreen/base/IdleState$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/idlescreen/base/IdleState$ViewMode;->ALARM_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    .line 160
    new-instance v0, Lcom/htc/idlescreen/base/IdleState$ViewMode;

    const-string v1, "CALENDAR_MODE"

    invoke-direct {v0, v1, v6}, Lcom/htc/idlescreen/base/IdleState$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/idlescreen/base/IdleState$ViewMode;->CALENDAR_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    .line 161
    new-instance v0, Lcom/htc/idlescreen/base/IdleState$ViewMode;

    const-string v1, "TIMER_MODE"

    invoke-direct {v0, v1, v7}, Lcom/htc/idlescreen/base/IdleState$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/idlescreen/base/IdleState$ViewMode;->TIMER_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    .line 162
    new-instance v0, Lcom/htc/idlescreen/base/IdleState$ViewMode;

    const-string v1, "MUSIC_MODE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/idlescreen/base/IdleState$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/idlescreen/base/IdleState$ViewMode;->MUSIC_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    .line 163
    new-instance v0, Lcom/htc/idlescreen/base/IdleState$ViewMode;

    const-string v1, "BATTERY_MODE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/htc/idlescreen/base/IdleState$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/idlescreen/base/IdleState$ViewMode;->BATTERY_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    .line 164
    new-instance v0, Lcom/htc/idlescreen/base/IdleState$ViewMode;

    const-string v1, "NOSIM_MODE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/htc/idlescreen/base/IdleState$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/idlescreen/base/IdleState$ViewMode;->NOSIM_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    .line 165
    new-instance v0, Lcom/htc/idlescreen/base/IdleState$ViewMode;

    const-string v1, "NOSIGNAL_MODE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/htc/idlescreen/base/IdleState$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/idlescreen/base/IdleState$ViewMode;->NOSIGNAL_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    .line 166
    new-instance v0, Lcom/htc/idlescreen/base/IdleState$ViewMode;

    const-string v1, "SIMLOCK_MODE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/htc/idlescreen/base/IdleState$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/idlescreen/base/IdleState$ViewMode;->SIMLOCK_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    .line 167
    new-instance v0, Lcom/htc/idlescreen/base/IdleState$ViewMode;

    const-string v1, "AIRPLANE_MODE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/htc/idlescreen/base/IdleState$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/idlescreen/base/IdleState$ViewMode;->AIRPLANE_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    .line 168
    new-instance v0, Lcom/htc/idlescreen/base/IdleState$ViewMode;

    const-string v1, "OOBERUN_MODE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/htc/idlescreen/base/IdleState$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/idlescreen/base/IdleState$ViewMode;->OOBERUN_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    .line 169
    new-instance v0, Lcom/htc/idlescreen/base/IdleState$ViewMode;

    const-string v1, "MISSCALL_MODE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/htc/idlescreen/base/IdleState$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/idlescreen/base/IdleState$ViewMode;->MISSCALL_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    .line 170
    new-instance v0, Lcom/htc/idlescreen/base/IdleState$ViewMode;

    const-string v1, "MESSAGE_MODE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/htc/idlescreen/base/IdleState$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/idlescreen/base/IdleState$ViewMode;->MESSAGE_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    .line 171
    new-instance v0, Lcom/htc/idlescreen/base/IdleState$ViewMode;

    const-string v1, "VOICEMAIL_MODE"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/htc/idlescreen/base/IdleState$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/idlescreen/base/IdleState$ViewMode;->VOICEMAIL_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    .line 172
    new-instance v0, Lcom/htc/idlescreen/base/IdleState$ViewMode;

    const-string v1, "REMOTE_VIEW_MODE"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/htc/idlescreen/base/IdleState$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/idlescreen/base/IdleState$ViewMode;->REMOTE_VIEW_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    .line 173
    new-instance v0, Lcom/htc/idlescreen/base/IdleState$ViewMode;

    const-string v1, "TASK_VIEW_MODE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/htc/idlescreen/base/IdleState$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/idlescreen/base/IdleState$ViewMode;->TASK_VIEW_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    .line 174
    new-instance v0, Lcom/htc/idlescreen/base/IdleState$ViewMode;

    const-string v1, "WEATHER_MODE"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/htc/idlescreen/base/IdleState$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/idlescreen/base/IdleState$ViewMode;->WEATHER_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    .line 175
    new-instance v0, Lcom/htc/idlescreen/base/IdleState$ViewMode;

    const-string v1, "EMERENCY_MODE"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/htc/idlescreen/base/IdleState$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/idlescreen/base/IdleState$ViewMode;->EMERENCY_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    .line 156
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/htc/idlescreen/base/IdleState$ViewMode;

    sget-object v1, Lcom/htc/idlescreen/base/IdleState$ViewMode;->NORMAL_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/idlescreen/base/IdleState$ViewMode;->CALL_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/idlescreen/base/IdleState$ViewMode;->ALARM_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/idlescreen/base/IdleState$ViewMode;->CALENDAR_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/idlescreen/base/IdleState$ViewMode;->TIMER_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/idlescreen/base/IdleState$ViewMode;->MUSIC_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/idlescreen/base/IdleState$ViewMode;->BATTERY_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/idlescreen/base/IdleState$ViewMode;->NOSIM_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/idlescreen/base/IdleState$ViewMode;->NOSIGNAL_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/htc/idlescreen/base/IdleState$ViewMode;->SIMLOCK_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/htc/idlescreen/base/IdleState$ViewMode;->AIRPLANE_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/htc/idlescreen/base/IdleState$ViewMode;->OOBERUN_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/htc/idlescreen/base/IdleState$ViewMode;->MISSCALL_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/htc/idlescreen/base/IdleState$ViewMode;->MESSAGE_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/htc/idlescreen/base/IdleState$ViewMode;->VOICEMAIL_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/htc/idlescreen/base/IdleState$ViewMode;->REMOTE_VIEW_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/htc/idlescreen/base/IdleState$ViewMode;->TASK_VIEW_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/htc/idlescreen/base/IdleState$ViewMode;->WEATHER_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/htc/idlescreen/base/IdleState$ViewMode;->EMERENCY_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/idlescreen/base/IdleState$ViewMode;->$VALUES:[Lcom/htc/idlescreen/base/IdleState$ViewMode;

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
    .line 156
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/idlescreen/base/IdleState$ViewMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 156
    const-class v0, Lcom/htc/idlescreen/base/IdleState$ViewMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/idlescreen/base/IdleState$ViewMode;

    return-object v0
.end method

.method public static values()[Lcom/htc/idlescreen/base/IdleState$ViewMode;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/htc/idlescreen/base/IdleState$ViewMode;->$VALUES:[Lcom/htc/idlescreen/base/IdleState$ViewMode;

    invoke-virtual {v0}, [Lcom/htc/idlescreen/base/IdleState$ViewMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/idlescreen/base/IdleState$ViewMode;

    return-object v0
.end method
