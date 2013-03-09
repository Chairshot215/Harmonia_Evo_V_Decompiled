.class Lcom/htc/launcher/Workspace$WriteRearrangedItemToDatabase;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WriteRearrangedItemToDatabase"
.end annotation


# instance fields
.field private mDropScreen:I

.field final synthetic this$0:Lcom/htc/launcher/Workspace;


# direct methods
.method constructor <init>(Lcom/htc/launcher/Workspace;I)V
    .locals 0
    .parameter
    .parameter "dropScreen"

    .prologue
    .line 2178
    iput-object p1, p0, Lcom/htc/launcher/Workspace$WriteRearrangedItemToDatabase;->this$0:Lcom/htc/launcher/Workspace;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2179
    iput p2, p0, Lcom/htc/launcher/Workspace$WriteRearrangedItemToDatabase;->mDropScreen:I

    .line 2180
    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 2184
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/Workspace$WriteRearrangedItemToDatabase;->this$0:Lcom/htc/launcher/Workspace;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/launcher/Workspace$WriteRearrangedItemToDatabase;->mDropScreen:I

    invoke-virtual {v3, v4}, Lcom/htc/launcher/Workspace;->getScreenAt(I)Lcom/htc/launcher/Workspace$Screen;

    move-result-object v1

    .line 2186
    .local v1, targetScreen:Lcom/htc/launcher/Workspace$Screen;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/Workspace$WriteRearrangedItemToDatabase;->this$0:Lcom/htc/launcher/Workspace;

    #getter for: Lcom/htc/launcher/Workspace;->mRearrangedDraggee:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/launcher/Workspace;->access$200(Lcom/htc/launcher/Workspace;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 2187
    .local v16, size:I
    move/from16 v0, v16

    new-array v12, v0, [Lcom/htc/launcher/Draggee;

    .line 2188
    .local v12, draggees:[Lcom/htc/launcher/Draggee;
    move/from16 v0, v16

    new-array v10, v0, [I

    .line 2189
    .local v10, cellXs:[I
    move/from16 v0, v16

    new-array v11, v0, [I

    .line 2191
    .local v11, cellYs:[I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    move/from16 v0, v16

    if-ge v13, v0, :cond_0

    .line 2192
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/Workspace$WriteRearrangedItemToDatabase;->this$0:Lcom/htc/launcher/Workspace;

    #getter for: Lcom/htc/launcher/Workspace;->mRearrangedDraggee:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/launcher/Workspace;->access$200(Lcom/htc/launcher/Workspace;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/launcher/Draggee;

    .line 2193
    .local v2, drag:Lcom/htc/launcher/Draggee;
    invoke-interface {v2}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v14

    .line 2194
    .local v14, info:Lcom/htc/launcher/ItemInfo;
    invoke-interface {v2}, Lcom/htc/launcher/Draggee;->getCellXY()Landroid/graphics/Point;

    move-result-object v15

    .line 2198
    .local v15, p:Landroid/graphics/Point;
    aput-object v2, v12, v13

    .line 2199
    iget v3, v15, Landroid/graphics/Point;->x:I

    aput v3, v10, v13

    .line 2200
    iget v3, v15, Landroid/graphics/Point;->y:I

    aput v3, v11, v13

    .line 2203
    iget v3, v15, Landroid/graphics/Point;->x:I

    iget v4, v15, Landroid/graphics/Point;->y:I

    iget v5, v14, Lcom/htc/launcher/ItemInfo;->spanX:I

    iget v6, v14, Lcom/htc/launcher/ItemInfo;->spanY:I

    invoke-interface/range {v1 .. v6}, Lcom/htc/launcher/Workspace$Screen;->onDropChildByCell(Lcom/htc/launcher/Draggee;IIII)V

    .line 2205
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/Workspace$WriteRearrangedItemToDatabase;->this$0:Lcom/htc/launcher/Workspace;

    #getter for: Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v3}, Lcom/htc/launcher/Workspace;->access$100(Lcom/htc/launcher/Workspace;)Lcom/htc/launcher/Launcher;

    move-result-object v3

    invoke-interface {v2}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v4

    const-wide/16 v5, -0x64

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/launcher/Workspace$WriteRearrangedItemToDatabase;->mDropScreen:I

    iget v8, v15, Landroid/graphics/Point;->x:I

    iget v9, v15, Landroid/graphics/Point;->y:I

    invoke-static/range {v3 .. v9}, Lcom/htc/launcher/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;JIII)V

    .line 2191
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 2210
    .end local v2           #drag:Lcom/htc/launcher/Draggee;
    .end local v14           #info:Lcom/htc/launcher/ItemInfo;
    .end local v15           #p:Landroid/graphics/Point;
    :cond_0
    return-void
.end method
