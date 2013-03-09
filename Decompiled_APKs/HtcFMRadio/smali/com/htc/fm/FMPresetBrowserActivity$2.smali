.class Lcom/htc/fm/FMPresetBrowserActivity$2;
.super Ljava/lang/Object;
.source "FMPresetBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fm/FMPresetBrowserActivity;->showButtonsPanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fm/FMPresetBrowserActivity;


# direct methods
.method constructor <init>(Lcom/htc/fm/FMPresetBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 444
    iput-object p1, p0, Lcom/htc/fm/FMPresetBrowserActivity$2;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 446
    const-string v2, "FMPresetBrowserActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMPresetBrowserActivity]@@@@ mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/fm/FMPresetBrowserActivity$2;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    #getter for: Lcom/htc/fm/FMPresetBrowserActivity;->mMode:I
    invoke-static {v4}, Lcom/htc/fm/FMPresetBrowserActivity;->access$500(Lcom/htc/fm/FMPresetBrowserActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity$2;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    iget-object v2, v2, Lcom/htc/fm/FMPresetBrowserActivity;->mAdapter:Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity$2;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    #getter for: Lcom/htc/fm/FMPresetBrowserActivity;->mMode:I
    invoke-static {v2}, Lcom/htc/fm/FMPresetBrowserActivity;->access$500(Lcom/htc/fm/FMPresetBrowserActivity;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 448
    const-string v2, "FMPresetBrowserActivity"

    const-string v3, "[FMPresetBrowserActivity]@@@@ delete - 1"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity$2;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    #getter for: Lcom/htc/fm/FMPresetBrowserActivity;->mArraySeletcedId:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/fm/FMPresetBrowserActivity;->access$600(Lcom/htc/fm/FMPresetBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 451
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity$2;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    #getter for: Lcom/htc/fm/FMPresetBrowserActivity;->mArraySeletcedId:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/fm/FMPresetBrowserActivity;->access$600(Lcom/htc/fm/FMPresetBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 452
    :cond_0
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity$2;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    iget-object v2, v2, Lcom/htc/fm/FMPresetBrowserActivity;->mAdapter:Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;

    invoke-virtual {v2}, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->exportSelectedList()V

    .line 453
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity$2;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    #getter for: Lcom/htc/fm/FMPresetBrowserActivity;->mArraySeletcedId:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/fm/FMPresetBrowserActivity;->access$600(Lcom/htc/fm/FMPresetBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity$2;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    #getter for: Lcom/htc/fm/FMPresetBrowserActivity;->mArraySeletcedId:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/fm/FMPresetBrowserActivity;->access$600(Lcom/htc/fm/FMPresetBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 455
    .local v1, where:Ljava/lang/StringBuilder;
    const-string v2, "_id IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity$2;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    #getter for: Lcom/htc/fm/FMPresetBrowserActivity;->mArraySeletcedId:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/fm/FMPresetBrowserActivity;->access$600(Lcom/htc/fm/FMPresetBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 457
    if-lez v0, :cond_1

    .line 458
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    :cond_1
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity$2;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    #getter for: Lcom/htc/fm/FMPresetBrowserActivity;->mArraySeletcedId:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/fm/FMPresetBrowserActivity;->access$600(Lcom/htc/fm/FMPresetBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 456
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 461
    :cond_2
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    const-string v2, "FMPresetBrowserActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "where= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity$2;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    invoke-virtual {v2}, Lcom/htc/fm/FMPresetBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "internal"

    invoke-static {v3}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 464
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity$2;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    #getter for: Lcom/htc/fm/FMPresetBrowserActivity;->mArraySeletcedId:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/fm/FMPresetBrowserActivity;->access$600(Lcom/htc/fm/FMPresetBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 465
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity$2;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    #getter for: Lcom/htc/fm/FMPresetBrowserActivity;->mPreset:Lcom/htc/fm/Preset;
    invoke-static {v2}, Lcom/htc/fm/FMPresetBrowserActivity;->access$200(Lcom/htc/fm/FMPresetBrowserActivity;)Lcom/htc/fm/Preset;

    move-result-object v2

    const-string v3, ""

    iput-object v3, v2, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    .line 466
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity$2;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    const-string v3, ""

    #setter for: Lcom/htc/fm/FMPresetBrowserActivity;->mTitle:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/fm/FMPresetBrowserActivity;->access$702(Lcom/htc/fm/FMPresetBrowserActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 469
    .end local v0           #i:I
    .end local v1           #where:Ljava/lang/StringBuilder;
    :cond_3
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity$2;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    iget-object v2, v2, Lcom/htc/fm/FMPresetBrowserActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_4

    .line 470
    const-string v2, "FMPresetBrowserActivity"

    const-string v3, "[FMPresetBrowserActivity]@@@@ delete - 2"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity$2;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    iget-object v2, v2, Lcom/htc/fm/FMPresetBrowserActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 473
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity$2;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    iput-object v6, v2, Lcom/htc/fm/FMPresetBrowserActivity;->mCursor:Landroid/database/Cursor;

    .line 474
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity$2;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    #setter for: Lcom/htc/fm/FMPresetBrowserActivity;->mMode:I
    invoke-static {v2, v5}, Lcom/htc/fm/FMPresetBrowserActivity;->access$502(Lcom/htc/fm/FMPresetBrowserActivity;I)I

    .line 475
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity$2;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    iget-object v2, v2, Lcom/htc/fm/FMPresetBrowserActivity;->mAdapter:Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;

    iget-object v3, p0, Lcom/htc/fm/FMPresetBrowserActivity$2;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    #getter for: Lcom/htc/fm/FMPresetBrowserActivity;->mMode:I
    invoke-static {v3}, Lcom/htc/fm/FMPresetBrowserActivity;->access$500(Lcom/htc/fm/FMPresetBrowserActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->changeMode(I)V

    .line 478
    :cond_4
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity$2;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    #getter for: Lcom/htc/fm/FMPresetBrowserActivity;->mSaveBtn:Landroid/widget/Button;
    invoke-static {v2}, Lcom/htc/fm/FMPresetBrowserActivity;->access$800(Lcom/htc/fm/FMPresetBrowserActivity;)Landroid/widget/Button;

    move-result-object v2

    const v3, 0x20c01fc

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 483
    :cond_5
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity$2;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    #calls: Lcom/htc/fm/FMPresetBrowserActivity;->notifyPresetDataChanged()V
    invoke-static {v2}, Lcom/htc/fm/FMPresetBrowserActivity;->access$900(Lcom/htc/fm/FMPresetBrowserActivity;)V

    .line 484
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity$2;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    #calls: Lcom/htc/fm/FMPresetBrowserActivity;->updateUi()V
    invoke-static {v2}, Lcom/htc/fm/FMPresetBrowserActivity;->access$1000(Lcom/htc/fm/FMPresetBrowserActivity;)V

    .line 485
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity$2;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    #getter for: Lcom/htc/fm/FMPresetBrowserActivity;->mSaveBtn:Landroid/widget/Button;
    invoke-static {v2}, Lcom/htc/fm/FMPresetBrowserActivity;->access$800(Lcom/htc/fm/FMPresetBrowserActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 486
    const-string v2, "delete_channel"

    const-string v3, "complete"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->atsLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    return-void
.end method
