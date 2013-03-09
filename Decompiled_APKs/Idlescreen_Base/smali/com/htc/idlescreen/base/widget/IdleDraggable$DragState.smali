.class public final enum Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;
.super Ljava/lang/Enum;
.source "IdleDraggable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/widget/IdleDraggable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DragState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;

.field public static final enum DRAGGING:Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;

.field public static final enum IDLE:Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;

.field public static final enum TOUCHED:Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 95
    new-instance v0, Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;->IDLE:Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;

    .line 96
    new-instance v0, Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;

    const-string v1, "TOUCHED"

    invoke-direct {v0, v1, v3}, Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;->TOUCHED:Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;

    .line 97
    new-instance v0, Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;

    const-string v1, "DRAGGING"

    invoke-direct {v0, v1, v4}, Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;->DRAGGING:Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;

    .line 94
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;

    sget-object v1, Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;->IDLE:Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;->TOUCHED:Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;->DRAGGING:Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;->$VALUES:[Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;

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
    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;
    .locals 1
    .parameter "name"

    .prologue
    .line 94
    const-class v0, Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;

    return-object v0
.end method

.method public static values()[Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;->$VALUES:[Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;

    invoke-virtual {v0}, [Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/idlescreen/base/widget/IdleDraggable$DragState;

    return-object v0
.end method
