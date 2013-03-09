.class public Lcom/htc/launcher/Widget;
.super Lcom/htc/launcher/ItemInfo;
.source "Widget.java"


# instance fields
.field layoutResource:I

.field public props:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/htc/launcher/ItemInfo;-><init>()V

    return-void
.end method

.method static makeSearch()Lcom/htc/launcher/Widget;
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/htc/launcher/Widget;

    invoke-direct {v0}, Lcom/htc/launcher/Widget;-><init>()V

    .line 30
    .local v0, w:Lcom/htc/launcher/Widget;
    const/16 v1, 0x3e9

    iput v1, v0, Lcom/htc/launcher/ItemInfo;->itemType:I

    .line 31
    const/4 v1, 0x4

    iput v1, v0, Lcom/htc/launcher/ItemInfo;->spanX:I

    .line 32
    const/4 v1, 0x1

    iput v1, v0, Lcom/htc/launcher/ItemInfo;->spanY:I

    .line 33
    const v1, 0x7f03002f

    iput v1, v0, Lcom/htc/launcher/Widget;->layoutResource:I

    .line 34
    return-object v0
.end method


# virtual methods
.method public createItem(Lcom/htc/launcher/Launcher;Landroid/view/ViewGroup;)Lcom/htc/launcher/Draggee;
    .locals 1
    .parameter "launcher"
    .parameter "container"

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/htc/launcher/ItemInfo;->id:J

    return-wide v0
.end method

.method onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/htc/launcher/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 40
    const-string v0, "props"

    iget-object v1, p0, Lcom/htc/launcher/Widget;->props:[B

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 41
    return-void
.end method

.method public setWorkspaceId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 44
    iput p1, p0, Lcom/htc/launcher/ItemInfo;->workspaceId:I

    .line 45
    return-void
.end method
