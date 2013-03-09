.class Lcom/htc/launcher/Workspace$FocusState;
.super Ljava/lang/Object;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FocusState"
.end annotation


# instance fields
.field cellX:I

.field cellY:I

.field id:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 3453
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3454
    iput v0, p0, Lcom/htc/launcher/Workspace$FocusState;->cellX:I

    .line 3455
    iput v0, p0, Lcom/htc/launcher/Workspace$FocusState;->cellY:I

    .line 3456
    iput v0, p0, Lcom/htc/launcher/Workspace$FocusState;->id:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/launcher/Workspace$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3453
    invoke-direct {p0}, Lcom/htc/launcher/Workspace$FocusState;-><init>()V

    return-void
.end method
