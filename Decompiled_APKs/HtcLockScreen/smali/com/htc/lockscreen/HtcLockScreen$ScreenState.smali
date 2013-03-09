.class public final enum Lcom/htc/lockscreen/HtcLockScreen$ScreenState;
.super Ljava/lang/Enum;
.source "HtcLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/HtcLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScreenState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/lockscreen/HtcLockScreen$ScreenState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/lockscreen/HtcLockScreen$ScreenState;

.field public static final enum PAUSE:Lcom/htc/lockscreen/HtcLockScreen$ScreenState;

.field public static final enum RESUME:Lcom/htc/lockscreen/HtcLockScreen$ScreenState;

.field public static final enum START:Lcom/htc/lockscreen/HtcLockScreen$ScreenState;

.field public static final enum STOP:Lcom/htc/lockscreen/HtcLockScreen$ScreenState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    new-instance v0, Lcom/htc/lockscreen/HtcLockScreen$ScreenState;

    const-string v1, "START"

    invoke-direct {v0, v1, v2}, Lcom/htc/lockscreen/HtcLockScreen$ScreenState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/lockscreen/HtcLockScreen$ScreenState;->START:Lcom/htc/lockscreen/HtcLockScreen$ScreenState;

    .line 56
    new-instance v0, Lcom/htc/lockscreen/HtcLockScreen$ScreenState;

    const-string v1, "RESUME"

    invoke-direct {v0, v1, v3}, Lcom/htc/lockscreen/HtcLockScreen$ScreenState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/lockscreen/HtcLockScreen$ScreenState;->RESUME:Lcom/htc/lockscreen/HtcLockScreen$ScreenState;

    .line 57
    new-instance v0, Lcom/htc/lockscreen/HtcLockScreen$ScreenState;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v4}, Lcom/htc/lockscreen/HtcLockScreen$ScreenState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/lockscreen/HtcLockScreen$ScreenState;->PAUSE:Lcom/htc/lockscreen/HtcLockScreen$ScreenState;

    .line 58
    new-instance v0, Lcom/htc/lockscreen/HtcLockScreen$ScreenState;

    const-string v1, "STOP"

    invoke-direct {v0, v1, v5}, Lcom/htc/lockscreen/HtcLockScreen$ScreenState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/lockscreen/HtcLockScreen$ScreenState;->STOP:Lcom/htc/lockscreen/HtcLockScreen$ScreenState;

    .line 54
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/lockscreen/HtcLockScreen$ScreenState;

    sget-object v1, Lcom/htc/lockscreen/HtcLockScreen$ScreenState;->START:Lcom/htc/lockscreen/HtcLockScreen$ScreenState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/lockscreen/HtcLockScreen$ScreenState;->RESUME:Lcom/htc/lockscreen/HtcLockScreen$ScreenState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/lockscreen/HtcLockScreen$ScreenState;->PAUSE:Lcom/htc/lockscreen/HtcLockScreen$ScreenState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/lockscreen/HtcLockScreen$ScreenState;->STOP:Lcom/htc/lockscreen/HtcLockScreen$ScreenState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/lockscreen/HtcLockScreen$ScreenState;->$VALUES:[Lcom/htc/lockscreen/HtcLockScreen$ScreenState;

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
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/lockscreen/HtcLockScreen$ScreenState;
    .locals 1
    .parameter "name"

    .prologue
    .line 54
    const-class v0, Lcom/htc/lockscreen/HtcLockScreen$ScreenState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/lockscreen/HtcLockScreen$ScreenState;

    return-object v0
.end method

.method public static values()[Lcom/htc/lockscreen/HtcLockScreen$ScreenState;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/htc/lockscreen/HtcLockScreen$ScreenState;->$VALUES:[Lcom/htc/lockscreen/HtcLockScreen$ScreenState;

    invoke-virtual {v0}, [Lcom/htc/lockscreen/HtcLockScreen$ScreenState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/lockscreen/HtcLockScreen$ScreenState;

    return-object v0
.end method
