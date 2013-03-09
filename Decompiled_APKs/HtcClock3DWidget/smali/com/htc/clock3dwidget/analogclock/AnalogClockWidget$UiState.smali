.class public final enum Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$UiState;
.super Ljava/lang/Enum;
.source "AnalogClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UiState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$UiState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$UiState;

.field public static final enum NONE:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$UiState;

.field public static final enum PAUSED:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$UiState;

.field public static final enum RESUME:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$UiState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    new-instance v0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$UiState;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$UiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$UiState;->NONE:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$UiState;

    new-instance v0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$UiState;

    const-string v1, "RESUME"

    invoke-direct {v0, v1, v3}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$UiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$UiState;->RESUME:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$UiState;

    new-instance v0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$UiState;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v4}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$UiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$UiState;->PAUSED:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$UiState;

    .line 61
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$UiState;

    sget-object v1, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$UiState;->NONE:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$UiState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$UiState;->RESUME:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$UiState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$UiState;->PAUSED:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$UiState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$UiState;->$VALUES:[Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$UiState;

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
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$UiState;
    .locals 1
    .parameter "name"

    .prologue
    .line 61
    const-class v0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$UiState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$UiState;

    return-object v0
.end method

.method public static values()[Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$UiState;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$UiState;->$VALUES:[Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$UiState;

    invoke-virtual {v0}, [Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$UiState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$UiState;

    return-object v0
.end method
