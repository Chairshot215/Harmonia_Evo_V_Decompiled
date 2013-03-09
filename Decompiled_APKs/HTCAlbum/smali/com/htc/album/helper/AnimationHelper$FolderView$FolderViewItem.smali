.class public Lcom/htc/album/helper/AnimationHelper$FolderView$FolderViewItem;
.super Ljava/lang/Object;
.source "AnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/AnimationHelper$FolderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FolderViewItem"
.end annotation


# static fields
.field public static final COLLAPSE_DELAYTIME:I = 0x190

.field private static final COLLAPSE_ID_0_POSITION_OFFSET_X:I = -0x64

.field private static final COLLAPSE_ID_0_POSITION_OFFSET_Y:I = -0x28

.field private static final COLLAPSE_ID_0_POSITION_OFFSET_Z:I = 0x0

.field private static final COLLAPSE_ID_0_ROTATION_OFFSET_X:I = 0x1e

.field private static final COLLAPSE_ID_0_ROTATION_OFFSET_Y:I = 0x0

.field private static final COLLAPSE_ID_0_ROTATION_OFFSET_Z:I = 0x2d

.field private static final COLLAPSE_ID_1_POSITION_OFFSET_X:I = 0x0

.field private static final COLLAPSE_ID_1_POSITION_OFFSET_Y:I = 0x64

.field private static final COLLAPSE_ID_1_POSITION_OFFSET_Z:I = 0x0

.field private static final COLLAPSE_ID_1_ROTATION_OFFSET_X:I = 0x1e

.field private static final COLLAPSE_ID_1_ROTATION_OFFSET_Y:I = 0x0

.field private static final COLLAPSE_ID_1_ROTATION_OFFSET_Z:I = -0x3c

.field private static final COLLAPSE_ID_2_POSITION_OFFSET_X:I = 0x64

.field private static final COLLAPSE_ID_2_POSITION_OFFSET_Y:I = 0x0

.field private static final COLLAPSE_ID_2_POSITION_OFFSET_Z:I = 0x0

.field private static final COLLAPSE_ID_2_ROTATION_OFFSET_X:I = 0x0

.field private static final COLLAPSE_ID_2_ROTATION_OFFSET_Y:I = 0x2d

.field private static final COLLAPSE_ID_2_ROTATION_OFFSET_Z:I = 0x0

.field public static final COLLAPSE_POSTION_OFFSET:[Lcom/htc/sunny2/view/Vector3F; = null

.field public static final COLLAPSE_ROTATION_OFFSET:[Lcom/htc/sunny2/view/Vector3F; = null

.field public static final DURATION:I = 0x12c

.field private static final EXPAND_ID_0_POSITION_OFFSET_X:I = 0x64

.field private static final EXPAND_ID_0_POSITION_OFFSET_Y:I = 0x28

.field private static final EXPAND_ID_0_POSITION_OFFSET_Z:I = 0x0

.field private static final EXPAND_ID_0_ROTATION_OFFSET_X:I = -0x1e

.field private static final EXPAND_ID_0_ROTATION_OFFSET_Y:I = 0x0

.field private static final EXPAND_ID_0_ROTATION_OFFSET_Z:I = -0x2d

.field private static final EXPAND_ID_1_POSITION_OFFSET_X:I = 0x0

.field private static final EXPAND_ID_1_POSITION_OFFSET_Y:I = -0x64

.field private static final EXPAND_ID_1_POSITION_OFFSET_Z:I = 0x0

.field private static final EXPAND_ID_1_ROTATION_OFFSET_X:I = -0x1e

.field private static final EXPAND_ID_1_ROTATION_OFFSET_Y:I = 0x0

.field private static final EXPAND_ID_1_ROTATION_OFFSET_Z:I = 0x3c

.field private static final EXPAND_ID_2_POSITION_OFFSET_X:I = -0x64

.field private static final EXPAND_ID_2_POSITION_OFFSET_Y:I = 0x0

.field private static final EXPAND_ID_2_POSITION_OFFSET_Z:I = 0x0

.field private static final EXPAND_ID_2_ROTATION_OFFSET_X:I = 0x0

.field private static final EXPAND_ID_2_ROTATION_OFFSET_Y:I = -0x2d

.field private static final EXPAND_ID_2_ROTATION_OFFSET_Z:I = 0x0

.field public static final EXPAND_POSTION_OFFSET:[Lcom/htc/sunny2/view/Vector3F; = null

.field public static final EXPAND_ROTATION_OFFSET:[Lcom/htc/sunny2/view/Vector3F; = null

.field public static final MAX_MUNBER_ANIMATION:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 43
    new-array v0, v8, [Lcom/htc/sunny2/view/Vector3F;

    new-instance v1, Lcom/htc/sunny2/view/Vector3F;

    const/high16 v2, 0x42c8

    const/high16 v3, 0x4220

    invoke-direct {v1, v2, v3, v4}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/htc/sunny2/view/Vector3F;

    const/high16 v2, -0x3d38

    invoke-direct {v1, v4, v2, v4}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/htc/sunny2/view/Vector3F;

    const/high16 v2, -0x3d38

    invoke-direct {v1, v2, v4, v4}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    aput-object v1, v0, v7

    sput-object v0, Lcom/htc/album/helper/AnimationHelper$FolderView$FolderViewItem;->EXPAND_POSTION_OFFSET:[Lcom/htc/sunny2/view/Vector3F;

    .line 61
    new-array v0, v8, [Lcom/htc/sunny2/view/Vector3F;

    new-instance v1, Lcom/htc/sunny2/view/Vector3F;

    const/high16 v2, -0x3e10

    const/high16 v3, -0x3dcc

    invoke-direct {v1, v2, v4, v3}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/htc/sunny2/view/Vector3F;

    const/high16 v2, -0x3e10

    const/high16 v3, 0x4270

    invoke-direct {v1, v2, v4, v3}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/htc/sunny2/view/Vector3F;

    const/high16 v2, -0x3dcc

    invoke-direct {v1, v4, v2, v4}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    aput-object v1, v0, v7

    sput-object v0, Lcom/htc/album/helper/AnimationHelper$FolderView$FolderViewItem;->EXPAND_ROTATION_OFFSET:[Lcom/htc/sunny2/view/Vector3F;

    .line 82
    new-array v0, v8, [Lcom/htc/sunny2/view/Vector3F;

    new-instance v1, Lcom/htc/sunny2/view/Vector3F;

    const/high16 v2, -0x3d38

    const/high16 v3, -0x3de0

    invoke-direct {v1, v2, v3, v4}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/htc/sunny2/view/Vector3F;

    const/high16 v2, 0x42c8

    invoke-direct {v1, v4, v2, v4}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/htc/sunny2/view/Vector3F;

    const/high16 v2, 0x42c8

    invoke-direct {v1, v2, v4, v4}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    aput-object v1, v0, v7

    sput-object v0, Lcom/htc/album/helper/AnimationHelper$FolderView$FolderViewItem;->COLLAPSE_POSTION_OFFSET:[Lcom/htc/sunny2/view/Vector3F;

    .line 100
    new-array v0, v8, [Lcom/htc/sunny2/view/Vector3F;

    new-instance v1, Lcom/htc/sunny2/view/Vector3F;

    const/high16 v2, 0x41f0

    const/high16 v3, 0x4234

    invoke-direct {v1, v2, v4, v3}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/htc/sunny2/view/Vector3F;

    const/high16 v2, 0x41f0

    const/high16 v3, -0x3d90

    invoke-direct {v1, v2, v4, v3}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/htc/sunny2/view/Vector3F;

    const/high16 v2, 0x4234

    invoke-direct {v1, v4, v2, v4}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    aput-object v1, v0, v7

    sput-object v0, Lcom/htc/album/helper/AnimationHelper$FolderView$FolderViewItem;->COLLAPSE_ROTATION_OFFSET:[Lcom/htc/sunny2/view/Vector3F;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
