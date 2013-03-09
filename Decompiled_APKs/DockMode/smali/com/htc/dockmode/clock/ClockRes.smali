.class public Lcom/htc/dockmode/clock/ClockRes;
.super Ljava/lang/Object;
.source "ClockRes.java"


# instance fields
.field public alarmOff:Ljava/lang/String;

.field public alarmOn:Ljava/lang/String;

.field public date:I

.field public ic_alarm:I

.field public icon_alarm:I

.field public next_alarm:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1
    .parameter "res"

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const v0, 0x7f0a0008

    iput v0, p0, Lcom/htc/dockmode/clock/ClockRes;->date:I

    .line 23
    const v0, 0x7f020039

    iput v0, p0, Lcom/htc/dockmode/clock/ClockRes;->icon_alarm:I

    .line 26
    const v0, 0x7f0a000a

    iput v0, p0, Lcom/htc/dockmode/clock/ClockRes;->next_alarm:I

    .line 27
    const v0, 0x7f0a0009

    iput v0, p0, Lcom/htc/dockmode/clock/ClockRes;->ic_alarm:I

    .line 29
    const v0, 0x7f08001d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dockmode/clock/ClockRes;->alarmOn:Ljava/lang/String;

    .line 30
    const v0, 0x7f08001c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dockmode/clock/ClockRes;->alarmOff:Ljava/lang/String;

    .line 31
    return-void
.end method
