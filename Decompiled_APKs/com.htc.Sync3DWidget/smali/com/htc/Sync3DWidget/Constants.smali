.class public interface abstract Lcom/htc/Sync3DWidget/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final DIMEN_HD:Ljava/lang/String; = "HD"

.field public static final DIMEN_HVGA:Ljava/lang/String; = "HVGA"

.field public static final DIMEN_QHD:Ljava/lang/String; = "QHD"

.field public static final DIMEN_QVGA:Ljava/lang/String; = "QVGA"

.field public static final DIMEN_UNKNOW:Ljava/lang/String; = "UNKNOW"

.field public static final DIMEN_WQVGA:Ljava/lang/String; = "WQVGA"

.field public static final DIMEN_WSVGA:Ljava/lang/String; = "WSVGA"

.field public static final DIMEN_WVGA:Ljava/lang/String; = "WVGA"

.field public static final HD:Landroid/graphics/Point; = null

.field public static final HVGA:Landroid/graphics/Point; = null

.field public static final LAND_PATH:Ljava/lang/String; = "Land/"

.field public static final PORT_PATH:Ljava/lang/String; = "Port/"

.field public static final QHD:Landroid/graphics/Point; = null

.field public static final QVGA:Landroid/graphics/Point; = null

.field public static final WIDGET_STYLE1:I = 0x0

.field public static final WIDGET_STYLE1_NAME:Ljava/lang/String; = "Setting_1x1_SyncAll.m10"

.field public static final WQVGA:Landroid/graphics/Point;

.field public static final WSVGA:Landroid/graphics/Point;

.field public static final WVGA:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x1e0

    const/16 v3, 0x140

    const/16 v2, 0xf0

    .line 7
    new-instance v0, Landroid/graphics/Point;

    const/16 v1, 0x190

    invoke-direct {v0, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    sput-object v0, Lcom/htc/Sync3DWidget/Constants;->WQVGA:Landroid/graphics/Point;

    .line 8
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    sput-object v0, Lcom/htc/Sync3DWidget/Constants;->QVGA:Landroid/graphics/Point;

    .line 9
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    sput-object v0, Lcom/htc/Sync3DWidget/Constants;->HVGA:Landroid/graphics/Point;

    .line 10
    new-instance v0, Landroid/graphics/Point;

    const/16 v1, 0x320

    invoke-direct {v0, v4, v1}, Landroid/graphics/Point;-><init>(II)V

    sput-object v0, Lcom/htc/Sync3DWidget/Constants;->WVGA:Landroid/graphics/Point;

    .line 11
    new-instance v0, Landroid/graphics/Point;

    const/16 v1, 0x258

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    sput-object v0, Lcom/htc/Sync3DWidget/Constants;->WSVGA:Landroid/graphics/Point;

    .line 12
    new-instance v0, Landroid/graphics/Point;

    const/16 v1, 0x21c

    const/16 v2, 0x3c0

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    sput-object v0, Lcom/htc/Sync3DWidget/Constants;->QHD:Landroid/graphics/Point;

    .line 13
    new-instance v0, Landroid/graphics/Point;

    const/16 v1, 0x2d0

    const/16 v2, 0x500

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    sput-object v0, Lcom/htc/Sync3DWidget/Constants;->HD:Landroid/graphics/Point;

    return-void
.end method
