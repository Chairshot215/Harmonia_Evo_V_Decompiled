.class public final enum Lcom/htc/taskmanager/Customize$ResourceType;
.super Ljava/lang/Enum;
.source "Customize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/taskmanager/Customize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResourceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/taskmanager/Customize$ResourceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/taskmanager/Customize$ResourceType;

.field public static final enum BULLET:Lcom/htc/taskmanager/Customize$ResourceType;

.field public static final enum KILL_BUTTON:Lcom/htc/taskmanager/Customize$ResourceType;

.field public static final enum LARGE_PROGRESS:Lcom/htc/taskmanager/Customize$ResourceType;

.field public static final enum SMALL_PROGRESS:Lcom/htc/taskmanager/Customize$ResourceType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 117
    new-instance v0, Lcom/htc/taskmanager/Customize$ResourceType;

    const-string v1, "LARGE_PROGRESS"

    invoke-direct {v0, v1, v2}, Lcom/htc/taskmanager/Customize$ResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/taskmanager/Customize$ResourceType;->LARGE_PROGRESS:Lcom/htc/taskmanager/Customize$ResourceType;

    .line 118
    new-instance v0, Lcom/htc/taskmanager/Customize$ResourceType;

    const-string v1, "SMALL_PROGRESS"

    invoke-direct {v0, v1, v3}, Lcom/htc/taskmanager/Customize$ResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/taskmanager/Customize$ResourceType;->SMALL_PROGRESS:Lcom/htc/taskmanager/Customize$ResourceType;

    .line 119
    new-instance v0, Lcom/htc/taskmanager/Customize$ResourceType;

    const-string v1, "KILL_BUTTON"

    invoke-direct {v0, v1, v4}, Lcom/htc/taskmanager/Customize$ResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/taskmanager/Customize$ResourceType;->KILL_BUTTON:Lcom/htc/taskmanager/Customize$ResourceType;

    .line 120
    new-instance v0, Lcom/htc/taskmanager/Customize$ResourceType;

    const-string v1, "BULLET"

    invoke-direct {v0, v1, v5}, Lcom/htc/taskmanager/Customize$ResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/taskmanager/Customize$ResourceType;->BULLET:Lcom/htc/taskmanager/Customize$ResourceType;

    .line 116
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/taskmanager/Customize$ResourceType;

    sget-object v1, Lcom/htc/taskmanager/Customize$ResourceType;->LARGE_PROGRESS:Lcom/htc/taskmanager/Customize$ResourceType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/taskmanager/Customize$ResourceType;->SMALL_PROGRESS:Lcom/htc/taskmanager/Customize$ResourceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/taskmanager/Customize$ResourceType;->KILL_BUTTON:Lcom/htc/taskmanager/Customize$ResourceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/taskmanager/Customize$ResourceType;->BULLET:Lcom/htc/taskmanager/Customize$ResourceType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/taskmanager/Customize$ResourceType;->$VALUES:[Lcom/htc/taskmanager/Customize$ResourceType;

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
    .line 116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/taskmanager/Customize$ResourceType;
    .locals 1
    .parameter "name"

    .prologue
    .line 116
    const-class v0, Lcom/htc/taskmanager/Customize$ResourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/taskmanager/Customize$ResourceType;

    return-object v0
.end method

.method public static values()[Lcom/htc/taskmanager/Customize$ResourceType;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/htc/taskmanager/Customize$ResourceType;->$VALUES:[Lcom/htc/taskmanager/Customize$ResourceType;

    invoke-virtual {v0}, [Lcom/htc/taskmanager/Customize$ResourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/taskmanager/Customize$ResourceType;

    return-object v0
.end method
