.class public final enum Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;
.super Ljava/lang/Enum;
.source "ScaleFastBitmapDrawble.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScaleFastType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;

.field public static final enum BACKGROUND:Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;

.field public static final enum FULLSCREEN:Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;

.field public static final enum FULLSCREENRET:Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;

.field public static final enum HIDEFILM:Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;

.field public static final enum HIDEGRID:Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;

.field public static final enum NONE:Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;

.field public static final enum SCORLL:Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;

.field public static final enum ZOOM:Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;


# instance fields
.field mID:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 59
    new-instance v0, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4, v4}, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;->NONE:Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;

    .line 60
    new-instance v0, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;

    const-string v1, "BACKGROUND"

    invoke-direct {v0, v1, v5, v5}, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;->BACKGROUND:Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;

    .line 61
    new-instance v0, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;

    const-string v1, "ZOOM"

    invoke-direct {v0, v1, v6, v6}, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;->ZOOM:Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;

    .line 62
    new-instance v0, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;

    const-string v1, "SCORLL"

    invoke-direct {v0, v1, v8, v7}, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;->SCORLL:Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;

    .line 63
    new-instance v0, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;

    const-string v1, "HIDEGRID"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v7, v2}, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;->HIDEGRID:Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;

    .line 64
    new-instance v0, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;

    const-string v1, "HIDEFILM"

    const/4 v2, 0x5

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;->HIDEFILM:Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;

    .line 65
    new-instance v0, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;

    const-string v1, "FULLSCREEN"

    const/4 v2, 0x6

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;->FULLSCREEN:Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;

    .line 66
    new-instance v0, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;

    const-string v1, "FULLSCREENRET"

    const/4 v2, 0x7

    const/16 v3, 0x40

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;->FULLSCREENRET:Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;

    .line 58
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;

    sget-object v1, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;->NONE:Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;->BACKGROUND:Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;->ZOOM:Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;->SCORLL:Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;->HIDEGRID:Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;->HIDEFILM:Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;->FULLSCREEN:Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;->FULLSCREENRET:Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;->$VALUES:[Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 70
    iput p3, p0, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;->mID:I

    .line 71
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;
    .locals 1
    .parameter "name"

    .prologue
    .line 58
    const-class v0, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;

    return-object v0
.end method

.method public static values()[Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;->$VALUES:[Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;

    invoke-virtual {v0}, [Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$ScaleFastType;

    return-object v0
.end method
