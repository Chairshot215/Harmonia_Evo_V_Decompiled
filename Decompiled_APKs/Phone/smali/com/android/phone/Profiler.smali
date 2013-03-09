.class public Lcom/android/phone/Profiler;
.super Ljava/lang/Object;
.source "Profiler.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PhoneApp"

.field private static final PROFILE:Z

.field static sTimeCallScreenCreated:J

.field static sTimeCallScreenOnCreate:J

.field static sTimeCallScreenRequested:J

.field static sTimeIncomingCallPanelCreated:J

.field static sTimeIncomingCallPanelOnCreate:J

.field static sTimeIncomingCallPanelRequested:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method static callScreenCreated()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method static callScreenOnCreate()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method static callScreenRequested()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method private static dumpCallScreenStat()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method private static dumpIncomingCallPanelStat()V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method static incomingCallPanelCreated()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method static incomingCallPanelOnCreate()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method static incomingCallPanelRequested()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 124
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Profiler] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void
.end method

.method static profileViewCreate(Landroid/view/Window;Ljava/lang/String;)V
    .locals 0
    .parameter "win"
    .parameter "tag"

    .prologue
    .line 63
    return-void
.end method
