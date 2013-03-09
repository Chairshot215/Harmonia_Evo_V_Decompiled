.class public final enum Lcom/htc/lmw/CustomizeBase$LoadingTime;
.super Ljava/lang/Enum;
.source "CustomizeBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lmw/CustomizeBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoadingTime"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/lmw/CustomizeBase$LoadingTime;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/lmw/CustomizeBase$LoadingTime;

.field public static final enum LOAD_AFTER_CACHE:Lcom/htc/lmw/CustomizeBase$LoadingTime;

.field public static final enum LOAD_BEFORE_CACHE:Lcom/htc/lmw/CustomizeBase$LoadingTime;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v0, Lcom/htc/lmw/CustomizeBase$LoadingTime;

    const-string v1, "LOAD_BEFORE_CACHE"

    invoke-direct {v0, v1, v2}, Lcom/htc/lmw/CustomizeBase$LoadingTime;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/lmw/CustomizeBase$LoadingTime;->LOAD_BEFORE_CACHE:Lcom/htc/lmw/CustomizeBase$LoadingTime;

    .line 37
    new-instance v0, Lcom/htc/lmw/CustomizeBase$LoadingTime;

    const-string v1, "LOAD_AFTER_CACHE"

    invoke-direct {v0, v1, v3}, Lcom/htc/lmw/CustomizeBase$LoadingTime;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/lmw/CustomizeBase$LoadingTime;->LOAD_AFTER_CACHE:Lcom/htc/lmw/CustomizeBase$LoadingTime;

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/lmw/CustomizeBase$LoadingTime;

    sget-object v1, Lcom/htc/lmw/CustomizeBase$LoadingTime;->LOAD_BEFORE_CACHE:Lcom/htc/lmw/CustomizeBase$LoadingTime;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/lmw/CustomizeBase$LoadingTime;->LOAD_AFTER_CACHE:Lcom/htc/lmw/CustomizeBase$LoadingTime;

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/lmw/CustomizeBase$LoadingTime;->$VALUES:[Lcom/htc/lmw/CustomizeBase$LoadingTime;

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
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/lmw/CustomizeBase$LoadingTime;
    .locals 1
    .parameter "name"

    .prologue
    .line 34
    const-class v0, Lcom/htc/lmw/CustomizeBase$LoadingTime;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/lmw/CustomizeBase$LoadingTime;

    return-object v0
.end method

.method public static values()[Lcom/htc/lmw/CustomizeBase$LoadingTime;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/htc/lmw/CustomizeBase$LoadingTime;->$VALUES:[Lcom/htc/lmw/CustomizeBase$LoadingTime;

    invoke-virtual {v0}, [Lcom/htc/lmw/CustomizeBase$LoadingTime;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/lmw/CustomizeBase$LoadingTime;

    return-object v0
.end method
