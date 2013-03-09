.class final enum Lcom/htc/musicenhancer/EnhancerService$PreviousAction;
.super Ljava/lang/Enum;
.source "EnhancerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/musicenhancer/EnhancerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PreviousAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/musicenhancer/EnhancerService$PreviousAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/musicenhancer/EnhancerService$PreviousAction;

.field public static final enum ACTIVITY_ONSTART:Lcom/htc/musicenhancer/EnhancerService$PreviousAction;

.field public static final enum AUTO_UPDATE:Lcom/htc/musicenhancer/EnhancerService$PreviousAction;

.field public static final enum NONE:Lcom/htc/musicenhancer/EnhancerService$PreviousAction;

.field public static final enum UPDATE_ALL:Lcom/htc/musicenhancer/EnhancerService$PreviousAction;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 137
    new-instance v0, Lcom/htc/musicenhancer/EnhancerService$PreviousAction;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/htc/musicenhancer/EnhancerService$PreviousAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/musicenhancer/EnhancerService$PreviousAction;->NONE:Lcom/htc/musicenhancer/EnhancerService$PreviousAction;

    .line 138
    new-instance v0, Lcom/htc/musicenhancer/EnhancerService$PreviousAction;

    const-string v1, "AUTO_UPDATE"

    invoke-direct {v0, v1, v3}, Lcom/htc/musicenhancer/EnhancerService$PreviousAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/musicenhancer/EnhancerService$PreviousAction;->AUTO_UPDATE:Lcom/htc/musicenhancer/EnhancerService$PreviousAction;

    .line 139
    new-instance v0, Lcom/htc/musicenhancer/EnhancerService$PreviousAction;

    const-string v1, "UPDATE_ALL"

    invoke-direct {v0, v1, v4}, Lcom/htc/musicenhancer/EnhancerService$PreviousAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/musicenhancer/EnhancerService$PreviousAction;->UPDATE_ALL:Lcom/htc/musicenhancer/EnhancerService$PreviousAction;

    .line 140
    new-instance v0, Lcom/htc/musicenhancer/EnhancerService$PreviousAction;

    const-string v1, "ACTIVITY_ONSTART"

    invoke-direct {v0, v1, v5}, Lcom/htc/musicenhancer/EnhancerService$PreviousAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/musicenhancer/EnhancerService$PreviousAction;->ACTIVITY_ONSTART:Lcom/htc/musicenhancer/EnhancerService$PreviousAction;

    .line 136
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/musicenhancer/EnhancerService$PreviousAction;

    sget-object v1, Lcom/htc/musicenhancer/EnhancerService$PreviousAction;->NONE:Lcom/htc/musicenhancer/EnhancerService$PreviousAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/musicenhancer/EnhancerService$PreviousAction;->AUTO_UPDATE:Lcom/htc/musicenhancer/EnhancerService$PreviousAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/musicenhancer/EnhancerService$PreviousAction;->UPDATE_ALL:Lcom/htc/musicenhancer/EnhancerService$PreviousAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/musicenhancer/EnhancerService$PreviousAction;->ACTIVITY_ONSTART:Lcom/htc/musicenhancer/EnhancerService$PreviousAction;

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/musicenhancer/EnhancerService$PreviousAction;->$VALUES:[Lcom/htc/musicenhancer/EnhancerService$PreviousAction;

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
    .line 136
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/musicenhancer/EnhancerService$PreviousAction;
    .locals 1
    .parameter "name"

    .prologue
    .line 136
    const-class v0, Lcom/htc/musicenhancer/EnhancerService$PreviousAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/musicenhancer/EnhancerService$PreviousAction;

    return-object v0
.end method

.method public static values()[Lcom/htc/musicenhancer/EnhancerService$PreviousAction;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/htc/musicenhancer/EnhancerService$PreviousAction;->$VALUES:[Lcom/htc/musicenhancer/EnhancerService$PreviousAction;

    invoke-virtual {v0}, [Lcom/htc/musicenhancer/EnhancerService$PreviousAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/musicenhancer/EnhancerService$PreviousAction;

    return-object v0
.end method
