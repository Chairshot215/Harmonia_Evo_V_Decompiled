.class public final enum Lcom/htc/dlnamiddlelayer/RepeatState;
.super Ljava/lang/Enum;
.source "RepeatState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/dlnamiddlelayer/RepeatState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/dlnamiddlelayer/RepeatState;

.field public static final enum NOREPEAT:Lcom/htc/dlnamiddlelayer/RepeatState;

.field public static final enum REPEATALL:Lcom/htc/dlnamiddlelayer/RepeatState;

.field public static final enum REPEATONE:Lcom/htc/dlnamiddlelayer/RepeatState;


# instance fields
.field private nValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/htc/dlnamiddlelayer/RepeatState;

    const-string v1, "NOREPEAT"

    invoke-direct {v0, v1, v2, v2}, Lcom/htc/dlnamiddlelayer/RepeatState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/dlnamiddlelayer/RepeatState;->NOREPEAT:Lcom/htc/dlnamiddlelayer/RepeatState;

    new-instance v0, Lcom/htc/dlnamiddlelayer/RepeatState;

    const-string v1, "REPEATONE"

    invoke-direct {v0, v1, v3, v3}, Lcom/htc/dlnamiddlelayer/RepeatState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/dlnamiddlelayer/RepeatState;->REPEATONE:Lcom/htc/dlnamiddlelayer/RepeatState;

    new-instance v0, Lcom/htc/dlnamiddlelayer/RepeatState;

    const-string v1, "REPEATALL"

    invoke-direct {v0, v1, v4, v4}, Lcom/htc/dlnamiddlelayer/RepeatState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/dlnamiddlelayer/RepeatState;->REPEATALL:Lcom/htc/dlnamiddlelayer/RepeatState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/dlnamiddlelayer/RepeatState;

    sget-object v1, Lcom/htc/dlnamiddlelayer/RepeatState;->NOREPEAT:Lcom/htc/dlnamiddlelayer/RepeatState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/dlnamiddlelayer/RepeatState;->REPEATONE:Lcom/htc/dlnamiddlelayer/RepeatState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/dlnamiddlelayer/RepeatState;->REPEATALL:Lcom/htc/dlnamiddlelayer/RepeatState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/dlnamiddlelayer/RepeatState;->$VALUES:[Lcom/htc/dlnamiddlelayer/RepeatState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lcom/htc/dlnamiddlelayer/RepeatState;->nValue:I

    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/dlnamiddlelayer/RepeatState;
    .locals 1
    .parameter "name"

    .prologue
    .line 13
    const-class v0, Lcom/htc/dlnamiddlelayer/RepeatState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/dlnamiddlelayer/RepeatState;

    return-object v0
.end method

.method public static values()[Lcom/htc/dlnamiddlelayer/RepeatState;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/htc/dlnamiddlelayer/RepeatState;->$VALUES:[Lcom/htc/dlnamiddlelayer/RepeatState;

    invoke-virtual {v0}, [Lcom/htc/dlnamiddlelayer/RepeatState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/dlnamiddlelayer/RepeatState;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/htc/dlnamiddlelayer/RepeatState;->nValue:I

    return v0
.end method
