.class public final enum Lcom/htc/idlescreen/base/widget/IdleRing$RingState;
.super Ljava/lang/Enum;
.source "IdleRing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/widget/IdleRing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RingState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/idlescreen/base/widget/IdleRing$RingState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

.field public static final enum DRAGGING:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

.field public static final enum DROPOVER:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

.field public static final enum IDLE:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

.field public static final enum UNLOCKING:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/htc/idlescreen/base/widget/IdleRing$RingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/idlescreen/base/widget/IdleRing$RingState;->IDLE:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    .line 40
    new-instance v0, Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    const-string v1, "DRAGGING"

    invoke-direct {v0, v1, v3}, Lcom/htc/idlescreen/base/widget/IdleRing$RingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/idlescreen/base/widget/IdleRing$RingState;->DRAGGING:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    .line 41
    new-instance v0, Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    const-string v1, "DROPOVER"

    invoke-direct {v0, v1, v4}, Lcom/htc/idlescreen/base/widget/IdleRing$RingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/idlescreen/base/widget/IdleRing$RingState;->DROPOVER:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    .line 42
    new-instance v0, Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    const-string v1, "UNLOCKING"

    invoke-direct {v0, v1, v5}, Lcom/htc/idlescreen/base/widget/IdleRing$RingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/idlescreen/base/widget/IdleRing$RingState;->UNLOCKING:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    .line 38
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    sget-object v1, Lcom/htc/idlescreen/base/widget/IdleRing$RingState;->IDLE:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/idlescreen/base/widget/IdleRing$RingState;->DRAGGING:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/idlescreen/base/widget/IdleRing$RingState;->DROPOVER:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/idlescreen/base/widget/IdleRing$RingState;->UNLOCKING:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/idlescreen/base/widget/IdleRing$RingState;->$VALUES:[Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

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
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/idlescreen/base/widget/IdleRing$RingState;
    .locals 1
    .parameter "name"

    .prologue
    .line 38
    const-class v0, Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    return-object v0
.end method

.method public static values()[Lcom/htc/idlescreen/base/widget/IdleRing$RingState;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/htc/idlescreen/base/widget/IdleRing$RingState;->$VALUES:[Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    invoke-virtual {v0}, [Lcom/htc/idlescreen/base/widget/IdleRing$RingState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    return-object v0
.end method
