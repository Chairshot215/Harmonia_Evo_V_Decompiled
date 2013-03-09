.class final enum Lcom/htc/opensense/album/util/ScaladoLib2$RenderMode;
.super Ljava/lang/Enum;
.source "ScaladoLib2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/util/ScaladoLib2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "RenderMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/opensense/album/util/ScaladoLib2$RenderMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/opensense/album/util/ScaladoLib2$RenderMode;

.field public static final enum NORMAL:Lcom/htc/opensense/album/util/ScaladoLib2$RenderMode;

.field public static final enum OPTIMIZE_QUALITY:Lcom/htc/opensense/album/util/ScaladoLib2$RenderMode;

.field public static final enum OPTIMIZE_SPEED:Lcom/htc/opensense/album/util/ScaladoLib2$RenderMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 172
    new-instance v0, Lcom/htc/opensense/album/util/ScaladoLib2$RenderMode;

    const-string v1, "OPTIMIZE_SPEED"

    invoke-direct {v0, v1, v2}, Lcom/htc/opensense/album/util/ScaladoLib2$RenderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/opensense/album/util/ScaladoLib2$RenderMode;->OPTIMIZE_SPEED:Lcom/htc/opensense/album/util/ScaladoLib2$RenderMode;

    new-instance v0, Lcom/htc/opensense/album/util/ScaladoLib2$RenderMode;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/htc/opensense/album/util/ScaladoLib2$RenderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/opensense/album/util/ScaladoLib2$RenderMode;->NORMAL:Lcom/htc/opensense/album/util/ScaladoLib2$RenderMode;

    new-instance v0, Lcom/htc/opensense/album/util/ScaladoLib2$RenderMode;

    const-string v1, "OPTIMIZE_QUALITY"

    invoke-direct {v0, v1, v4}, Lcom/htc/opensense/album/util/ScaladoLib2$RenderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/opensense/album/util/ScaladoLib2$RenderMode;->OPTIMIZE_QUALITY:Lcom/htc/opensense/album/util/ScaladoLib2$RenderMode;

    .line 171
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/opensense/album/util/ScaladoLib2$RenderMode;

    sget-object v1, Lcom/htc/opensense/album/util/ScaladoLib2$RenderMode;->OPTIMIZE_SPEED:Lcom/htc/opensense/album/util/ScaladoLib2$RenderMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/opensense/album/util/ScaladoLib2$RenderMode;->NORMAL:Lcom/htc/opensense/album/util/ScaladoLib2$RenderMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/opensense/album/util/ScaladoLib2$RenderMode;->OPTIMIZE_QUALITY:Lcom/htc/opensense/album/util/ScaladoLib2$RenderMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/opensense/album/util/ScaladoLib2$RenderMode;->$VALUES:[Lcom/htc/opensense/album/util/ScaladoLib2$RenderMode;

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
    .line 171
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/opensense/album/util/ScaladoLib2$RenderMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 171
    const-class v0, Lcom/htc/opensense/album/util/ScaladoLib2$RenderMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/util/ScaladoLib2$RenderMode;

    return-object v0
.end method

.method public static values()[Lcom/htc/opensense/album/util/ScaladoLib2$RenderMode;
    .locals 1

    .prologue
    .line 171
    sget-object v0, Lcom/htc/opensense/album/util/ScaladoLib2$RenderMode;->$VALUES:[Lcom/htc/opensense/album/util/ScaladoLib2$RenderMode;

    invoke-virtual {v0}, [Lcom/htc/opensense/album/util/ScaladoLib2$RenderMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/opensense/album/util/ScaladoLib2$RenderMode;

    return-object v0
.end method
