.class public final enum Lcom/htc/sunny/SGallery$INTERPOLATE;
.super Ljava/lang/Enum;
.source "SGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny/SGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "INTERPOLATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/sunny/SGallery$INTERPOLATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/sunny/SGallery$INTERPOLATE;

.field public static final enum EASEINOUT_CUBIC:Lcom/htc/sunny/SGallery$INTERPOLATE;

.field public static final enum EASEOUT_CUBIC:Lcom/htc/sunny/SGallery$INTERPOLATE;

.field public static final enum LINEAR:Lcom/htc/sunny/SGallery$INTERPOLATE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 112
    new-instance v0, Lcom/htc/sunny/SGallery$INTERPOLATE;

    const-string v1, "LINEAR"

    invoke-direct {v0, v1, v2}, Lcom/htc/sunny/SGallery$INTERPOLATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sunny/SGallery$INTERPOLATE;->LINEAR:Lcom/htc/sunny/SGallery$INTERPOLATE;

    .line 113
    new-instance v0, Lcom/htc/sunny/SGallery$INTERPOLATE;

    const-string v1, "EASEOUT_CUBIC"

    invoke-direct {v0, v1, v3}, Lcom/htc/sunny/SGallery$INTERPOLATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sunny/SGallery$INTERPOLATE;->EASEOUT_CUBIC:Lcom/htc/sunny/SGallery$INTERPOLATE;

    .line 114
    new-instance v0, Lcom/htc/sunny/SGallery$INTERPOLATE;

    const-string v1, "EASEINOUT_CUBIC"

    invoke-direct {v0, v1, v4}, Lcom/htc/sunny/SGallery$INTERPOLATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sunny/SGallery$INTERPOLATE;->EASEINOUT_CUBIC:Lcom/htc/sunny/SGallery$INTERPOLATE;

    .line 111
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/sunny/SGallery$INTERPOLATE;

    sget-object v1, Lcom/htc/sunny/SGallery$INTERPOLATE;->LINEAR:Lcom/htc/sunny/SGallery$INTERPOLATE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/sunny/SGallery$INTERPOLATE;->EASEOUT_CUBIC:Lcom/htc/sunny/SGallery$INTERPOLATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/sunny/SGallery$INTERPOLATE;->EASEINOUT_CUBIC:Lcom/htc/sunny/SGallery$INTERPOLATE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/sunny/SGallery$INTERPOLATE;->$VALUES:[Lcom/htc/sunny/SGallery$INTERPOLATE;

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
    .line 111
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/sunny/SGallery$INTERPOLATE;
    .locals 1
    .parameter "name"

    .prologue
    .line 111
    const-class v0, Lcom/htc/sunny/SGallery$INTERPOLATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny/SGallery$INTERPOLATE;

    return-object v0
.end method

.method public static values()[Lcom/htc/sunny/SGallery$INTERPOLATE;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/htc/sunny/SGallery$INTERPOLATE;->$VALUES:[Lcom/htc/sunny/SGallery$INTERPOLATE;

    invoke-virtual {v0}, [Lcom/htc/sunny/SGallery$INTERPOLATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/sunny/SGallery$INTERPOLATE;

    return-object v0
.end method
