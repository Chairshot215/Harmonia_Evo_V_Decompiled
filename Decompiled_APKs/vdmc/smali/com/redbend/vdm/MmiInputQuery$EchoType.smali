.class public final enum Lcom/redbend/vdm/MmiInputQuery$EchoType;
.super Ljava/lang/Enum;
.source "MmiInputQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbend/vdm/MmiInputQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EchoType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/redbend/vdm/MmiInputQuery$EchoType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/redbend/vdm/MmiInputQuery$EchoType;

.field public static final enum MASKED:Lcom/redbend/vdm/MmiInputQuery$EchoType;

.field public static final enum PLAIN:Lcom/redbend/vdm/MmiInputQuery$EchoType;

.field public static final enum UNDEFINED:Lcom/redbend/vdm/MmiInputQuery$EchoType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/redbend/vdm/MmiInputQuery$EchoType;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1, v2}, Lcom/redbend/vdm/MmiInputQuery$EchoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/MmiInputQuery$EchoType;->UNDEFINED:Lcom/redbend/vdm/MmiInputQuery$EchoType;

    .line 34
    new-instance v0, Lcom/redbend/vdm/MmiInputQuery$EchoType;

    const-string v1, "PLAIN"

    invoke-direct {v0, v1, v3}, Lcom/redbend/vdm/MmiInputQuery$EchoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/MmiInputQuery$EchoType;->PLAIN:Lcom/redbend/vdm/MmiInputQuery$EchoType;

    .line 36
    new-instance v0, Lcom/redbend/vdm/MmiInputQuery$EchoType;

    const-string v1, "MASKED"

    invoke-direct {v0, v1, v4}, Lcom/redbend/vdm/MmiInputQuery$EchoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/MmiInputQuery$EchoType;->MASKED:Lcom/redbend/vdm/MmiInputQuery$EchoType;

    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/redbend/vdm/MmiInputQuery$EchoType;

    sget-object v1, Lcom/redbend/vdm/MmiInputQuery$EchoType;->UNDEFINED:Lcom/redbend/vdm/MmiInputQuery$EchoType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/redbend/vdm/MmiInputQuery$EchoType;->PLAIN:Lcom/redbend/vdm/MmiInputQuery$EchoType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/redbend/vdm/MmiInputQuery$EchoType;->MASKED:Lcom/redbend/vdm/MmiInputQuery$EchoType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/redbend/vdm/MmiInputQuery$EchoType;->$VALUES:[Lcom/redbend/vdm/MmiInputQuery$EchoType;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/redbend/vdm/MmiInputQuery$EchoType;
    .locals 1
    .parameter "name"

    .prologue
    .line 30
    const-class v0, Lcom/redbend/vdm/MmiInputQuery$EchoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/redbend/vdm/MmiInputQuery$EchoType;

    return-object v0
.end method

.method public static values()[Lcom/redbend/vdm/MmiInputQuery$EchoType;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/redbend/vdm/MmiInputQuery$EchoType;->$VALUES:[Lcom/redbend/vdm/MmiInputQuery$EchoType;

    invoke-virtual {v0}, [Lcom/redbend/vdm/MmiInputQuery$EchoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/redbend/vdm/MmiInputQuery$EchoType;

    return-object v0
.end method
