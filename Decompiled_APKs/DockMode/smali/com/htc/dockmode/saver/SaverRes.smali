.class public Lcom/htc/dockmode/saver/SaverRes;
.super Ljava/lang/Object;
.source "SaverRes.java"


# instance fields
.field public base_right:I

.field public clock_night_mode:I

.field public dock_layout_height:I

.field public dock_mode_docks:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1
    .parameter "res"

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const v0, 0x7f0a0006

    iput v0, p0, Lcom/htc/dockmode/saver/SaverRes;->clock_night_mode:I

    .line 15
    const v0, 0x7f0a0056

    iput v0, p0, Lcom/htc/dockmode/saver/SaverRes;->dock_mode_docks:I

    .line 16
    const v0, 0x7f070034

    iput v0, p0, Lcom/htc/dockmode/saver/SaverRes;->dock_layout_height:I

    .line 17
    const v0, 0x7f02000b

    iput v0, p0, Lcom/htc/dockmode/saver/SaverRes;->base_right:I

    .line 18
    return-void
.end method
