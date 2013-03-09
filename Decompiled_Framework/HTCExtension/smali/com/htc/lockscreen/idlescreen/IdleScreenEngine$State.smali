.class public final enum Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;
.super Ljava/lang/Enum;
.source "IdleScreenEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

.field public static final enum NONE:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

.field public static final enum PAUSE:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

.field public static final enum RESUME:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

.field public static final enum START:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

.field public static final enum STOP:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->NONE:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    new-instance v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    const-string v1, "START"

    invoke-direct {v0, v1, v3}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->START:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    new-instance v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    const-string v1, "RESUME"

    invoke-direct {v0, v1, v4}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->RESUME:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    new-instance v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v5}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->PAUSE:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    new-instance v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    const-string v1, "STOP"

    invoke-direct {v0, v1, v6}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->STOP:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    sget-object v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->NONE:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->START:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->RESUME:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->PAUSE:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->STOP:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->$VALUES:[Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;
    .locals 1

    const-class v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    return-object v0
.end method

.method public static values()[Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;
    .locals 1

    sget-object v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->$VALUES:[Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    invoke-virtual {v0}, [Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    return-object v0
.end method
