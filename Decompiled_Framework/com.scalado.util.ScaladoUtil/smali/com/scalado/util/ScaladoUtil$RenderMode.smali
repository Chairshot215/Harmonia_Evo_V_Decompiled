.class public final enum Lcom/scalado/util/ScaladoUtil$RenderMode;
.super Ljava/lang/Enum;
.source "ScaladoUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/util/ScaladoUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RenderMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/scalado/util/ScaladoUtil$RenderMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/scalado/util/ScaladoUtil$RenderMode;

.field public static final enum NORMAL:Lcom/scalado/util/ScaladoUtil$RenderMode;

.field public static final enum OPTIMIZE_QUALITY:Lcom/scalado/util/ScaladoUtil$RenderMode;

.field public static final enum OPTIMIZE_SPEED:Lcom/scalado/util/ScaladoUtil$RenderMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/scalado/util/ScaladoUtil$RenderMode;

    const-string v1, "OPTIMIZE_SPEED"

    invoke-direct {v0, v1, v2}, Lcom/scalado/util/ScaladoUtil$RenderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scalado/util/ScaladoUtil$RenderMode;->OPTIMIZE_SPEED:Lcom/scalado/util/ScaladoUtil$RenderMode;

    new-instance v0, Lcom/scalado/util/ScaladoUtil$RenderMode;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/scalado/util/ScaladoUtil$RenderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scalado/util/ScaladoUtil$RenderMode;->NORMAL:Lcom/scalado/util/ScaladoUtil$RenderMode;

    new-instance v0, Lcom/scalado/util/ScaladoUtil$RenderMode;

    const-string v1, "OPTIMIZE_QUALITY"

    invoke-direct {v0, v1, v4}, Lcom/scalado/util/ScaladoUtil$RenderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scalado/util/ScaladoUtil$RenderMode;->OPTIMIZE_QUALITY:Lcom/scalado/util/ScaladoUtil$RenderMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/scalado/util/ScaladoUtil$RenderMode;

    sget-object v1, Lcom/scalado/util/ScaladoUtil$RenderMode;->OPTIMIZE_SPEED:Lcom/scalado/util/ScaladoUtil$RenderMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/scalado/util/ScaladoUtil$RenderMode;->NORMAL:Lcom/scalado/util/ScaladoUtil$RenderMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/scalado/util/ScaladoUtil$RenderMode;->OPTIMIZE_QUALITY:Lcom/scalado/util/ScaladoUtil$RenderMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/scalado/util/ScaladoUtil$RenderMode;->$VALUES:[Lcom/scalado/util/ScaladoUtil$RenderMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/scalado/util/ScaladoUtil$RenderMode;
    .locals 1

    const-class v0, Lcom/scalado/util/ScaladoUtil$RenderMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/scalado/util/ScaladoUtil$RenderMode;

    return-object v0
.end method

.method public static values()[Lcom/scalado/util/ScaladoUtil$RenderMode;
    .locals 1

    sget-object v0, Lcom/scalado/util/ScaladoUtil$RenderMode;->$VALUES:[Lcom/scalado/util/ScaladoUtil$RenderMode;

    invoke-virtual {v0}, [Lcom/scalado/util/ScaladoUtil$RenderMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scalado/util/ScaladoUtil$RenderMode;

    return-object v0
.end method
