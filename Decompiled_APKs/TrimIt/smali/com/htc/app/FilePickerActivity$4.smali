.class Lcom/htc/app/FilePickerActivity$4;
.super Ljava/lang/Object;
.source "FilePickerActivity.java"

# interfaces
.implements Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FilePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/FilePickerActivity;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/htc/app/FilePickerActivity$4;->this$0:Lcom/htc/app/FilePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Lcom/htc/widget/MoreExpandableHtcListView;Landroid/view/View;IIJ)Z
    .locals 9
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    .line 221
    invoke-static {p3, p4}, Lcom/htc/widget/MoreExpandableItemInfo;->getPosition(II)I

    move-result v4

    .line 223
    .local v4, position:I
    iget-object v6, p0, Lcom/htc/app/FilePickerActivity$4;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->moreExAdapter:Lcom/htc/app/FilePickerFolderAdapter;
    invoke-static {v6}, Lcom/htc/app/FilePickerActivity;->access$000(Lcom/htc/app/FilePickerActivity;)Lcom/htc/app/FilePickerFolderAdapter;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/htc/app/FilePickerFolderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/app/FolderItemInfo;

    .line 226
    .local v5, selectedItem:Lcom/htc/app/FolderItemInfo;
    invoke-virtual {v5}, Lcom/htc/app/FolderItemInfo;->isNothing()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 227
    const/4 v6, 0x0

    .line 254
    :goto_0
    return v6

    .line 230
    :cond_0
    invoke-virtual {v5}, Lcom/htc/app/FolderItemInfo;->getFile()Ljava/io/File;

    move-result-object v0

    .line 231
    .local v0, file:Ljava/io/File;
    if-eqz v0, :cond_2

    .line 232
    iget-object v6, p0, Lcom/htc/app/FilePickerActivity$4;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mSelectionType:I
    invoke-static {v6}, Lcom/htc/app/FilePickerActivity;->access$100(Lcom/htc/app/FilePickerActivity;)I

    move-result v6

    if-nez v6, :cond_3

    .line 234
    iget-object v6, p0, Lcom/htc/app/FilePickerActivity$4;->this$0:Lcom/htc/app/FilePickerActivity;

    iget-object v6, v6, Lcom/htc/app/FilePickerActivity;->mSelectedFiles:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 235
    iget-object v6, p0, Lcom/htc/app/FilePickerActivity$4;->this$0:Lcom/htc/app/FilePickerActivity;

    iget-object v6, v6, Lcom/htc/app/FilePickerActivity;->mSelectedFiles:Ljava/util/ArrayList;

    invoke-virtual {v5}, Lcom/htc/app/FolderItemInfo;->getFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v6, p0, Lcom/htc/app/FilePickerActivity$4;->this$0:Lcom/htc/app/FilePickerActivity;

    invoke-virtual {v6}, Lcom/htc/app/FilePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 238
    .local v2, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/htc/app/FilePickerActivity$4;->this$0:Lcom/htc/app/FilePickerActivity;

    iget-object v6, v6, Lcom/htc/app/FilePickerActivity;->mSelectedFiles:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v3, v6, [Ljava/lang/String;

    .line 239
    .local v3, output:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v6, v3

    if-ge v1, v6, :cond_1

    .line 240
    iget-object v6, p0, Lcom/htc/app/FilePickerActivity$4;->this$0:Lcom/htc/app/FilePickerActivity;

    iget-object v6, v6, Lcom/htc/app/FilePickerActivity;->mSelectedFiles:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    .line 239
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 242
    :cond_1
    iget-object v6, p0, Lcom/htc/app/FilePickerActivity$4;->this$0:Lcom/htc/app/FilePickerActivity;

    iget-object v7, p0, Lcom/htc/app/FilePickerActivity$4;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mSortType:I
    invoke-static {v7}, Lcom/htc/app/FilePickerActivity;->access$200(Lcom/htc/app/FilePickerActivity;)I

    move-result v7

    iget-object v8, p0, Lcom/htc/app/FilePickerActivity$4;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mSortOrder:I
    invoke-static {v8}, Lcom/htc/app/FilePickerActivity;->access$300(Lcom/htc/app/FilePickerActivity;)I

    move-result v8

    invoke-virtual {v6, v3, v7, v8}, Lcom/htc/app/FilePickerActivity;->onResult([Ljava/lang/String;II)V

    .line 254
    .end local v1           #i:I
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #output:[Ljava/lang/String;
    :cond_2
    :goto_2
    const/4 v6, 0x1

    goto :goto_0

    .line 243
    :cond_3
    iget-object v6, p0, Lcom/htc/app/FilePickerActivity$4;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mSelectionType:I
    invoke-static {v6}, Lcom/htc/app/FilePickerActivity;->access$100(Lcom/htc/app/FilePickerActivity;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 245
    invoke-virtual {v5}, Lcom/htc/app/FolderItemInfo;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 246
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/htc/app/FolderItemInfo;->setChecked(Z)V

    .line 247
    iget-object v6, p0, Lcom/htc/app/FilePickerActivity$4;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->moreExAdapter:Lcom/htc/app/FilePickerFolderAdapter;
    invoke-static {v6}, Lcom/htc/app/FilePickerActivity;->access$000(Lcom/htc/app/FilePickerActivity;)Lcom/htc/app/FilePickerFolderAdapter;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/htc/app/FilePickerFolderAdapter;->removeChecked(Lcom/htc/app/FolderItemInfo;)V

    goto :goto_2

    .line 249
    :cond_4
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/htc/app/FolderItemInfo;->setChecked(Z)V

    .line 250
    iget-object v6, p0, Lcom/htc/app/FilePickerActivity$4;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->moreExAdapter:Lcom/htc/app/FilePickerFolderAdapter;
    invoke-static {v6}, Lcom/htc/app/FilePickerActivity;->access$000(Lcom/htc/app/FilePickerActivity;)Lcom/htc/app/FilePickerFolderAdapter;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/htc/app/FilePickerFolderAdapter;->addChecked(Lcom/htc/app/FolderItemInfo;)V

    goto :goto_2
.end method
