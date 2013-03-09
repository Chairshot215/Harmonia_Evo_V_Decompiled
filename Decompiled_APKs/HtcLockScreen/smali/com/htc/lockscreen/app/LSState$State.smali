.class public final enum Lcom/htc/lockscreen/app/LSState$State;
.super Ljava/lang/Enum;
.source "LSState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/app/LSState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/lockscreen/app/LSState$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/lockscreen/app/LSState$State;

.field public static final enum NONE:Lcom/htc/lockscreen/app/LSState$State;

.field public static final enum START:Lcom/htc/lockscreen/app/LSState$State;

.field public static final enum STOP:Lcom/htc/lockscreen/app/LSState$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 128
    new-instance v0, Lcom/htc/lockscreen/app/LSState$State;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/htc/lockscreen/app/LSState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/lockscreen/app/LSState$State;->NONE:Lcom/htc/lockscreen/app/LSState$State;

    .line 129
    new-instance v0, Lcom/htc/lockscreen/app/LSState$State;

    const-string v1, "START"

    invoke-direct {v0, v1, v3}, Lcom/htc/lockscreen/app/LSState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/lockscreen/app/LSState$State;->START:Lcom/htc/lockscreen/app/LSState$State;

    .line 130
    new-instance v0, Lcom/htc/lockscreen/app/LSState$State;

    const-string v1, "STOP"

    invoke-direct {v0, v1, v4}, Lcom/htc/lockscreen/app/LSState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/lockscreen/app/LSState$State;->STOP:Lcom/htc/lockscreen/app/LSState$State;

    .line 127
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/lockscreen/app/LSState$State;

    sget-object v1, Lcom/htc/lockscreen/app/LSState$State;->NONE:Lcom/htc/lockscreen/app/LSState$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/lockscreen/app/LSState$State;->START:Lcom/htc/lockscreen/app/LSState$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/lockscreen/app/LSState$State;->STOP:Lcom/htc/lockscreen/app/LSState$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/lockscreen/app/LSState$State;->$VALUES:[Lcom/htc/lockscreen/app/LSState$State;

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
    .line 127
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/lockscreen/app/LSState$State;
    .locals 1
    .parameter "name"

    .prologue
    .line 127
    const-class v0, Lcom/htc/lockscreen/app/LSState$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/lockscreen/app/LSState$State;

    return-object v0
.end method

.method public static values()[Lcom/htc/lockscreen/app/LSState$State;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/htc/lockscreen/app/LSState$State;->$VALUES:[Lcom/htc/lockscreen/app/LSState$State;

    invoke-virtual {v0}, [Lcom/htc/lockscreen/app/LSState$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/lockscreen/app/LSState$State;

    return-object v0
.end method
