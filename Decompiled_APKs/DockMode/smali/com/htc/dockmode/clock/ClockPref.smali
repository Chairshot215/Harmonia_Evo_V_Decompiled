.class public Lcom/htc/dockmode/clock/ClockPref;
.super Ljava/lang/Object;
.source "ClockPref.java"


# static fields
.field public static final HOUR_MODE:Ljava/lang/String; = "hour_mode"

.field public static final SHORT_DATEFORMAT:Ljava/lang/String; = "short_dateformat"

.field public static final SNOOZE:Ljava/lang/String; = "snooze"

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    const-class v0, Lcom/htc/dockmode/clock/ClockPref;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/dockmode/clock/ClockPref;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
