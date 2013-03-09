.class public final Lcom/htc/launcher/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AllAppsGridView:[I = null

.field public static final AllAppsGridView_texture:I = 0x0

.field public static final CellLayout:[I = null

.field public static final CellLayout_cellHeight:I = 0x1

.field public static final CellLayout_cellWidth:I = 0x0

.field public static final CellLayout_longAxisCells:I = 0x7

.field public static final CellLayout_longAxisEndPadding:I = 0x3

.field public static final CellLayout_longAxisStartPadding:I = 0x2

.field public static final CellLayout_shortAxisCells:I = 0x6

.field public static final CellLayout_shortAxisEndPadding:I = 0x5

.field public static final CellLayout_shortAxisStartPadding:I = 0x4

.field public static final DeleteZone:[I = null

.field public static final DeleteZone_direction:I = 0x0

.field public static final DragMenuBar:[I = null

.field public static final DragMenuBar_direction:I = 0x0

.field public static final FolderCellLayout:[I = null

.field public static final FolderCellLayout_folderCellHeight:I = 0x1

.field public static final FolderCellLayout_folderCellWidth:I = 0x0

.field public static final FolderCellLayout_folderHeightGap:I = 0x3

.field public static final FolderCellLayout_folderMaxGap:I = 0x4

.field public static final FolderCellLayout_folderWidthGap:I = 0x2

.field public static final HandleView:[I = null

.field public static final HandleView_direction:I = 0x0

.field public static final Scrollbar:[I = null

.field public static final Scrollbar_hide:I = 0x6

.field public static final Scrollbar_x1:I = 0x0

.field public static final Scrollbar_x2:I = 0x2

.field public static final Scrollbar_x3:I = 0x4

.field public static final Scrollbar_y1:I = 0x1

.field public static final Scrollbar_y2:I = 0x3

.field public static final Scrollbar_y3:I = 0x5

.field public static final Workspace:[I = null

.field public static final Workspace_cellCountX:I = 0x1

.field public static final Workspace_cellCountY:I = 0x2

.field public static final Workspace_defaultScreen:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/high16 v4, 0x7f01

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12902
    new-array v0, v3, [I

    const v1, 0x7f010011

    aput v1, v0, v2

    sput-object v0, Lcom/htc/launcher/R$styleable;->AllAppsGridView:[I

    .line 12942
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/launcher/R$styleable;->CellLayout:[I

    .line 13097
    new-array v0, v3, [I

    aput v4, v0, v2

    sput-object v0, Lcom/htc/launcher/R$styleable;->DeleteZone:[I

    .line 13130
    new-array v0, v3, [I

    aput v4, v0, v2

    sput-object v0, Lcom/htc/launcher/R$styleable;->DragMenuBar:[I

    .line 13172
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/launcher/R$styleable;->FolderCellLayout:[I

    .line 13277
    new-array v0, v3, [I

    aput v4, v0, v2

    sput-object v0, Lcom/htc/launcher/R$styleable;->HandleView:[I

    .line 13323
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/htc/launcher/R$styleable;->Scrollbar:[I

    .line 13442
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/htc/launcher/R$styleable;->Workspace:[I

    return-void

    .line 12942
    nop

    :array_0
    .array-data 0x4
        0x4t 0x0t 0x1t 0x7ft
        0x5t 0x0t 0x1t 0x7ft
        0x6t 0x0t 0x1t 0x7ft
        0x7t 0x0t 0x1t 0x7ft
        0x8t 0x0t 0x1t 0x7ft
        0x9t 0x0t 0x1t 0x7ft
        0xat 0x0t 0x1t 0x7ft
        0xbt 0x0t 0x1t 0x7ft
    .end array-data

    .line 13172
    :array_1
    .array-data 0x4
        0xct 0x0t 0x1t 0x7ft
        0xdt 0x0t 0x1t 0x7ft
        0xet 0x0t 0x1t 0x7ft
        0xft 0x0t 0x1t 0x7ft
        0x10t 0x0t 0x1t 0x7ft
    .end array-data

    .line 13323
    :array_2
    .array-data 0x4
        0x12t 0x0t 0x1t 0x7ft
        0x13t 0x0t 0x1t 0x7ft
        0x14t 0x0t 0x1t 0x7ft
        0x15t 0x0t 0x1t 0x7ft
        0x16t 0x0t 0x1t 0x7ft
        0x17t 0x0t 0x1t 0x7ft
        0x18t 0x0t 0x1t 0x7ft
    .end array-data

    .line 13442
    :array_3
    .array-data 0x4
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12890
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
