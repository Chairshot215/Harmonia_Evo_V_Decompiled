.class public Lcom/htc/Sync3DWidget/SyncUtilities;
.super Ljava/lang/Object;
.source "SyncUtilities.java"

# interfaces
.implements Lcom/htc/Sync3DWidget/Constants;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/htc/Sync3DWidget/SyncUtilities;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/Sync3DWidget/SyncUtilities;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResolution(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    .line 15
    const-string v4, "window"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 17
    .local v0, WinManager:Landroid/view/WindowManager;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 18
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 20
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 21
    .local v2, x:I
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 23
    .local v3, y:I
    sget-object v4, Lcom/htc/Sync3DWidget/SyncUtilities;->QVGA:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    if-ne v2, v4, :cond_0

    sget-object v4, Lcom/htc/Sync3DWidget/SyncUtilities;->QVGA:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    if-eq v3, v4, :cond_1

    :cond_0
    sget-object v4, Lcom/htc/Sync3DWidget/SyncUtilities;->QVGA:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    if-ne v2, v4, :cond_2

    sget-object v4, Lcom/htc/Sync3DWidget/SyncUtilities;->QVGA:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    if-ne v3, v4, :cond_2

    .line 24
    :cond_1
    const-string v4, "QVGA"

    .line 38
    :goto_0
    return-object v4

    .line 25
    :cond_2
    sget-object v4, Lcom/htc/Sync3DWidget/SyncUtilities;->WQVGA:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    if-ne v2, v4, :cond_3

    sget-object v4, Lcom/htc/Sync3DWidget/SyncUtilities;->WQVGA:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    if-eq v3, v4, :cond_4

    :cond_3
    sget-object v4, Lcom/htc/Sync3DWidget/SyncUtilities;->WQVGA:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    if-ne v2, v4, :cond_5

    sget-object v4, Lcom/htc/Sync3DWidget/SyncUtilities;->WQVGA:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    if-ne v3, v4, :cond_5

    .line 26
    :cond_4
    const-string v4, "WQVGA"

    goto :goto_0

    .line 27
    :cond_5
    sget-object v4, Lcom/htc/Sync3DWidget/SyncUtilities;->HVGA:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    if-ne v2, v4, :cond_6

    sget-object v4, Lcom/htc/Sync3DWidget/SyncUtilities;->HVGA:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    if-eq v3, v4, :cond_7

    :cond_6
    sget-object v4, Lcom/htc/Sync3DWidget/SyncUtilities;->HVGA:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    if-ne v2, v4, :cond_8

    sget-object v4, Lcom/htc/Sync3DWidget/SyncUtilities;->HVGA:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    if-ne v3, v4, :cond_8

    .line 28
    :cond_7
    const-string v4, "HVGA"

    goto :goto_0

    .line 29
    :cond_8
    sget-object v4, Lcom/htc/Sync3DWidget/SyncUtilities;->WVGA:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    if-ne v2, v4, :cond_9

    sget-object v4, Lcom/htc/Sync3DWidget/SyncUtilities;->WVGA:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    if-eq v3, v4, :cond_a

    :cond_9
    sget-object v4, Lcom/htc/Sync3DWidget/SyncUtilities;->WVGA:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    if-ne v2, v4, :cond_b

    sget-object v4, Lcom/htc/Sync3DWidget/SyncUtilities;->WVGA:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    if-ne v3, v4, :cond_b

    .line 30
    :cond_a
    const-string v4, "WVGA"

    goto :goto_0

    .line 31
    :cond_b
    sget-object v4, Lcom/htc/Sync3DWidget/SyncUtilities;->QHD:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    if-ne v2, v4, :cond_c

    sget-object v4, Lcom/htc/Sync3DWidget/SyncUtilities;->QHD:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    if-eq v3, v4, :cond_d

    :cond_c
    sget-object v4, Lcom/htc/Sync3DWidget/SyncUtilities;->QHD:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    if-ne v2, v4, :cond_e

    sget-object v4, Lcom/htc/Sync3DWidget/SyncUtilities;->QHD:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    if-ne v3, v4, :cond_e

    .line 32
    :cond_d
    const-string v4, "QHD"

    goto :goto_0

    .line 33
    :cond_e
    sget-object v4, Lcom/htc/Sync3DWidget/SyncUtilities;->WSVGA:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    if-ne v2, v4, :cond_f

    sget-object v4, Lcom/htc/Sync3DWidget/SyncUtilities;->WSVGA:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    if-eq v3, v4, :cond_10

    :cond_f
    sget-object v4, Lcom/htc/Sync3DWidget/SyncUtilities;->WSVGA:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    if-ne v2, v4, :cond_11

    sget-object v4, Lcom/htc/Sync3DWidget/SyncUtilities;->WSVGA:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    if-ne v3, v4, :cond_11

    .line 34
    :cond_10
    const-string v4, "WSVGA"

    goto/16 :goto_0

    .line 35
    :cond_11
    sget-object v4, Lcom/htc/Sync3DWidget/SyncUtilities;->HD:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    if-ne v2, v4, :cond_12

    sget-object v4, Lcom/htc/Sync3DWidget/SyncUtilities;->HD:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    if-eq v3, v4, :cond_13

    :cond_12
    sget-object v4, Lcom/htc/Sync3DWidget/SyncUtilities;->HD:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    if-ne v2, v4, :cond_14

    sget-object v4, Lcom/htc/Sync3DWidget/SyncUtilities;->HD:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    if-ne v3, v4, :cond_14

    .line 36
    :cond_13
    const-string v4, "HD"

    goto/16 :goto_0

    .line 38
    :cond_14
    const-string v4, "UNKNOW"

    goto/16 :goto_0
.end method

.method public static getWidgetScenePath(Ljava/lang/String;II)Ljava/lang/String;
    .locals 4
    .parameter "resolution"
    .parameter "orientation"
    .parameter "style"

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, scene_path:Ljava/lang/StringBuilder;
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 75
    const-string v1, "Land/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    if-nez p2, :cond_0

    .line 82
    const-string v1, "Setting_1x1_SyncAll.m10"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    :cond_0
    sget-object v1, Lcom/htc/Sync3DWidget/SyncUtilities;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWidgetScenePath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 77
    :cond_1
    const-string v1, "Port/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
