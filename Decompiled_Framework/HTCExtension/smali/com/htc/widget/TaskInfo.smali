.class Lcom/htc/widget/TaskInfo;
.super Ljava/lang/Object;
.source "TaskInfo.java"


# instance fields
.field _id:J

.field alternativeName:Ljava/lang/String;

.field countText:Ljava/lang/String;

.field gId:Ljava/lang/String;

.field icon:Ljava/lang/String;

.field intentUri:Ljava/lang/String;

.field isCountTextVisible:I

.field isHost:I

.field isRemovable:I

.field overlay:Ljava/lang/String;

.field resPackage:Ljava/lang/String;

.field selectedIcon:Ljava/lang/String;

.field taskName:Ljava/lang/String;

.field taskOrder:I

.field taskTag:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 2

    const-string v0, "task_tag"

    iget-object v1, p0, Lcom/htc/widget/TaskInfo;->taskTag:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "task_name"

    iget-object v1, p0, Lcom/htc/widget/TaskInfo;->taskName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "intent"

    iget-object v1, p0, Lcom/htc/widget/TaskInfo;->intentUri:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "res_package"

    iget-object v1, p0, Lcom/htc/widget/TaskInfo;->resPackage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "icon_resource"

    iget-object v1, p0, Lcom/htc/widget/TaskInfo;->icon:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "selected_icon_resource"

    iget-object v1, p0, Lcom/htc/widget/TaskInfo;->selectedIcon:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "overlay_resource"

    iget-object v1, p0, Lcom/htc/widget/TaskInfo;->overlay:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "is_host"

    iget v1, p0, Lcom/htc/widget/TaskInfo;->isHost:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "is_removable"

    iget v1, p0, Lcom/htc/widget/TaskInfo;->isRemovable:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method syncWithDatabase(Landroid/database/Cursor;Landroid/content/ContentValues;)Z
    .locals 16

    const/4 v11, 0x0

    const-string v14, "task_name"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const-string v14, "intent"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v14, "res_package"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v14, "icon_resource"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v14, "selected_icon_resource"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v14, "overlay_resource"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/TaskInfo;->taskName:Ljava/lang/String;

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string v14, "task_name"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/TaskInfo;->taskName:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x1

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/TaskInfo;->intentUri:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    const-string v14, "intent"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/TaskInfo;->intentUri:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x1

    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/TaskInfo;->resPackage:Ljava/lang/String;

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    const-string v14, "res_package"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/TaskInfo;->resPackage:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x1

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/TaskInfo;->icon:Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    const-string v14, "icon_resource"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/TaskInfo;->icon:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x1

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/TaskInfo;->selectedIcon:Ljava/lang/String;

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    const-string v14, "selected_icon_resource"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/TaskInfo;->selectedIcon:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x1

    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/TaskInfo;->overlay:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    const-string v14, "overlay_resource"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/TaskInfo;->overlay:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x1

    :cond_5
    return v11
.end method

.method public toArrayDefault([Ljava/lang/Object;I)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "_id"

    invoke-static {v0}, Lcom/htc/widget/CarouselUtil;->indexForTaskColumnName(Ljava/lang/String;)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "task_tag"

    invoke-static {v0}, Lcom/htc/widget/CarouselUtil;->indexForTaskColumnName(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/TaskInfo;->taskTag:Ljava/lang/String;

    aput-object v1, p1, v0

    const-string v0, "task_name"

    invoke-static {v0}, Lcom/htc/widget/CarouselUtil;->indexForTaskColumnName(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/TaskInfo;->taskName:Ljava/lang/String;

    aput-object v1, p1, v0

    const-string v0, "alternative_name"

    invoke-static {v0}, Lcom/htc/widget/CarouselUtil;->indexForTaskColumnName(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    const-string v0, "intent"

    invoke-static {v0}, Lcom/htc/widget/CarouselUtil;->indexForTaskColumnName(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/TaskInfo;->intentUri:Ljava/lang/String;

    aput-object v1, p1, v0

    const-string v0, "res_package"

    invoke-static {v0}, Lcom/htc/widget/CarouselUtil;->indexForTaskColumnName(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/TaskInfo;->resPackage:Ljava/lang/String;

    aput-object v1, p1, v0

    const-string v0, "icon_resource"

    invoke-static {v0}, Lcom/htc/widget/CarouselUtil;->indexForTaskColumnName(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/TaskInfo;->icon:Ljava/lang/String;

    aput-object v1, p1, v0

    const-string v0, "selected_icon_resource"

    invoke-static {v0}, Lcom/htc/widget/CarouselUtil;->indexForTaskColumnName(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/TaskInfo;->selectedIcon:Ljava/lang/String;

    aput-object v1, p1, v0

    const-string v0, "overlay_resource"

    invoke-static {v0}, Lcom/htc/widget/CarouselUtil;->indexForTaskColumnName(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/TaskInfo;->overlay:Ljava/lang/String;

    aput-object v1, p1, v0

    const-string v0, "task_order"

    invoke-static {v0}, Lcom/htc/widget/CarouselUtil;->indexForTaskColumnName(Ljava/lang/String;)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "is_host"

    invoke-static {v0}, Lcom/htc/widget/CarouselUtil;->indexForTaskColumnName(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/htc/widget/TaskInfo;->isHost:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "tab_id"

    invoke-static {v0}, Lcom/htc/widget/CarouselUtil;->indexForTaskColumnName(Ljava/lang/String;)I

    move-result v0

    const-string v1, "0"

    aput-object v1, p1, v0

    const-string v0, "count_text"

    invoke-static {v0}, Lcom/htc/widget/CarouselUtil;->indexForTaskColumnName(Ljava/lang/String;)I

    move-result v0

    const-string v1, "0"

    aput-object v1, p1, v0

    const-string v0, "count_text_visible"

    invoke-static {v0}, Lcom/htc/widget/CarouselUtil;->indexForTaskColumnName(Ljava/lang/String;)I

    move-result v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "is_removable"

    invoke-static {v0}, Lcom/htc/widget/CarouselUtil;->indexForTaskColumnName(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/htc/widget/TaskInfo;->isRemovable:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "is_updated"

    invoke-static {v0}, Lcom/htc/widget/CarouselUtil;->indexForTaskColumnName(Ljava/lang/String;)I

    move-result v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskInfo[taskTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/TaskInfo;->taskTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", taskBane="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/TaskInfo;->taskName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", intentUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/TaskInfo;->intentUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resPackage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/TaskInfo;->resPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/TaskInfo;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", selectedIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/TaskInfo;->selectedIcon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", overlay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/TaskInfo;->overlay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", taskOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/widget/TaskInfo;->taskOrder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isHost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/widget/TaskInfo;->isHost:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isRemovable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/widget/TaskInfo;->isRemovable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
