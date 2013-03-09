.class final enum Lcom/htc/idlescreen/base/reminderview/IncomingCallView$PhotoState;
.super Ljava/lang/Enum;
.source "IncomingCallView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/reminderview/IncomingCallView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PhotoState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/idlescreen/base/reminderview/IncomingCallView$PhotoState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/idlescreen/base/reminderview/IncomingCallView$PhotoState;

.field public static final enum DEFAULT:Lcom/htc/idlescreen/base/reminderview/IncomingCallView$PhotoState;

.field public static final enum DONE:Lcom/htc/idlescreen/base/reminderview/IncomingCallView$PhotoState;

.field public static final enum NONE:Lcom/htc/idlescreen/base/reminderview/IncomingCallView$PhotoState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-instance v0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView$PhotoState;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/htc/idlescreen/base/reminderview/IncomingCallView$PhotoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView$PhotoState;->NONE:Lcom/htc/idlescreen/base/reminderview/IncomingCallView$PhotoState;

    .line 51
    new-instance v0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView$PhotoState;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v3}, Lcom/htc/idlescreen/base/reminderview/IncomingCallView$PhotoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView$PhotoState;->DEFAULT:Lcom/htc/idlescreen/base/reminderview/IncomingCallView$PhotoState;

    .line 52
    new-instance v0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView$PhotoState;

    const-string v1, "DONE"

    invoke-direct {v0, v1, v4}, Lcom/htc/idlescreen/base/reminderview/IncomingCallView$PhotoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView$PhotoState;->DONE:Lcom/htc/idlescreen/base/reminderview/IncomingCallView$PhotoState;

    .line 49
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/idlescreen/base/reminderview/IncomingCallView$PhotoState;

    sget-object v1, Lcom/htc/idlescreen/base/reminderview/IncomingCallView$PhotoState;->NONE:Lcom/htc/idlescreen/base/reminderview/IncomingCallView$PhotoState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/idlescreen/base/reminderview/IncomingCallView$PhotoState;->DEFAULT:Lcom/htc/idlescreen/base/reminderview/IncomingCallView$PhotoState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/idlescreen/base/reminderview/IncomingCallView$PhotoState;->DONE:Lcom/htc/idlescreen/base/reminderview/IncomingCallView$PhotoState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView$PhotoState;->$VALUES:[Lcom/htc/idlescreen/base/reminderview/IncomingCallView$PhotoState;

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
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/idlescreen/base/reminderview/IncomingCallView$PhotoState;
    .locals 1
    .parameter "name"

    .prologue
    .line 49
    const-class v0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView$PhotoState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView$PhotoState;

    return-object v0
.end method

.method public static values()[Lcom/htc/idlescreen/base/reminderview/IncomingCallView$PhotoState;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/htc/idlescreen/base/reminderview/IncomingCallView$PhotoState;->$VALUES:[Lcom/htc/idlescreen/base/reminderview/IncomingCallView$PhotoState;

    invoke-virtual {v0}, [Lcom/htc/idlescreen/base/reminderview/IncomingCallView$PhotoState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/idlescreen/base/reminderview/IncomingCallView$PhotoState;

    return-object v0
.end method
