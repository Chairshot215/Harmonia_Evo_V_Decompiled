.class public final enum Lcom/htc/home/personalize/abstractresource/PrepareThread$ThreadStatus;
.super Ljava/lang/Enum;
.source "PrepareThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/abstractresource/PrepareThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ThreadStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/home/personalize/abstractresource/PrepareThread$ThreadStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/home/personalize/abstractresource/PrepareThread$ThreadStatus;

.field public static final enum NORMAL:Lcom/htc/home/personalize/abstractresource/PrepareThread$ThreadStatus;

.field public static final enum TO_EXIT:Lcom/htc/home/personalize/abstractresource/PrepareThread$ThreadStatus;

.field public static final enum TO_PAUSE:Lcom/htc/home/personalize/abstractresource/PrepareThread$ThreadStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/htc/home/personalize/abstractresource/PrepareThread$ThreadStatus;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/htc/home/personalize/abstractresource/PrepareThread$ThreadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/home/personalize/abstractresource/PrepareThread$ThreadStatus;->NORMAL:Lcom/htc/home/personalize/abstractresource/PrepareThread$ThreadStatus;

    new-instance v0, Lcom/htc/home/personalize/abstractresource/PrepareThread$ThreadStatus;

    const-string v1, "TO_PAUSE"

    invoke-direct {v0, v1, v3}, Lcom/htc/home/personalize/abstractresource/PrepareThread$ThreadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/home/personalize/abstractresource/PrepareThread$ThreadStatus;->TO_PAUSE:Lcom/htc/home/personalize/abstractresource/PrepareThread$ThreadStatus;

    new-instance v0, Lcom/htc/home/personalize/abstractresource/PrepareThread$ThreadStatus;

    const-string v1, "TO_EXIT"

    invoke-direct {v0, v1, v4}, Lcom/htc/home/personalize/abstractresource/PrepareThread$ThreadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/home/personalize/abstractresource/PrepareThread$ThreadStatus;->TO_EXIT:Lcom/htc/home/personalize/abstractresource/PrepareThread$ThreadStatus;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/home/personalize/abstractresource/PrepareThread$ThreadStatus;

    sget-object v1, Lcom/htc/home/personalize/abstractresource/PrepareThread$ThreadStatus;->NORMAL:Lcom/htc/home/personalize/abstractresource/PrepareThread$ThreadStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/home/personalize/abstractresource/PrepareThread$ThreadStatus;->TO_PAUSE:Lcom/htc/home/personalize/abstractresource/PrepareThread$ThreadStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/home/personalize/abstractresource/PrepareThread$ThreadStatus;->TO_EXIT:Lcom/htc/home/personalize/abstractresource/PrepareThread$ThreadStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/home/personalize/abstractresource/PrepareThread$ThreadStatus;->$VALUES:[Lcom/htc/home/personalize/abstractresource/PrepareThread$ThreadStatus;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/home/personalize/abstractresource/PrepareThread$ThreadStatus;
    .locals 1
    .parameter "name"

    .prologue
    .line 8
    const-class v0, Lcom/htc/home/personalize/abstractresource/PrepareThread$ThreadStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/home/personalize/abstractresource/PrepareThread$ThreadStatus;

    return-object v0
.end method

.method public static values()[Lcom/htc/home/personalize/abstractresource/PrepareThread$ThreadStatus;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/htc/home/personalize/abstractresource/PrepareThread$ThreadStatus;->$VALUES:[Lcom/htc/home/personalize/abstractresource/PrepareThread$ThreadStatus;

    invoke-virtual {v0}, [Lcom/htc/home/personalize/abstractresource/PrepareThread$ThreadStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/home/personalize/abstractresource/PrepareThread$ThreadStatus;

    return-object v0
.end method
