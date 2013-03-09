.class Lcom/htc/android/fieldtrial/ListItemsActivity$1;
.super Ljava/lang/Object;
.source "ListItemsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/fieldtrial/ListItemsActivity;->updateSettingValue(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/fieldtrial/ListItemsActivity;

.field final synthetic val$itemId:I

.field final synthetic val$status:I

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/htc/android/fieldtrial/ListItemsActivity;IILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 284
    iput-object p1, p0, Lcom/htc/android/fieldtrial/ListItemsActivity$1;->this$0:Lcom/htc/android/fieldtrial/ListItemsActivity;

    iput p2, p0, Lcom/htc/android/fieldtrial/ListItemsActivity$1;->val$itemId:I

    iput p3, p0, Lcom/htc/android/fieldtrial/ListItemsActivity$1;->val$status:I

    iput-object p4, p0, Lcom/htc/android/fieldtrial/ListItemsActivity$1;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 286
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/android/fieldtrial/ListItemsActivity$1;->this$0:Lcom/htc/android/fieldtrial/ListItemsActivity;

    #getter for: Lcom/htc/android/fieldtrial/ListItemsActivity;->mSettingGroup:Lcom/htc/android/fieldtrial/SettingGroup;
    invoke-static {v2}, Lcom/htc/android/fieldtrial/ListItemsActivity;->access$000(Lcom/htc/android/fieldtrial/ListItemsActivity;)Lcom/htc/android/fieldtrial/SettingGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/fieldtrial/SettingGroup;->getSettingItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 287
    iget-object v2, p0, Lcom/htc/android/fieldtrial/ListItemsActivity$1;->this$0:Lcom/htc/android/fieldtrial/ListItemsActivity;

    #getter for: Lcom/htc/android/fieldtrial/ListItemsActivity;->mSettingGroup:Lcom/htc/android/fieldtrial/SettingGroup;
    invoke-static {v2}, Lcom/htc/android/fieldtrial/ListItemsActivity;->access$000(Lcom/htc/android/fieldtrial/ListItemsActivity;)Lcom/htc/android/fieldtrial/SettingGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/fieldtrial/SettingGroup;->getSettingItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/fieldtrial/SettingItem;

    .line 288
    .local v1, item:Lcom/htc/android/fieldtrial/SettingItem;
    invoke-virtual {v1}, Lcom/htc/android/fieldtrial/SettingItem;->getId()I

    move-result v2

    iget v3, p0, Lcom/htc/android/fieldtrial/ListItemsActivity$1;->val$itemId:I

    if-ne v2, v3, :cond_4

    .line 289
    iget v2, p0, Lcom/htc/android/fieldtrial/ListItemsActivity$1;->val$status:I

    invoke-virtual {v1, v2}, Lcom/htc/android/fieldtrial/SettingItem;->setStatus(I)V

    .line 290
    iget v2, p0, Lcom/htc/android/fieldtrial/ListItemsActivity$1;->val$status:I

    if-nez v2, :cond_1

    .line 291
    iget-object v2, p0, Lcom/htc/android/fieldtrial/ListItemsActivity$1;->val$value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/android/fieldtrial/SettingItem;->setValue(Ljava/lang/String;)V

    .line 296
    :goto_1
    invoke-static {}, Lcom/htc/android/fieldtrial/ListItemsActivity;->access$104()I

    .line 298
    invoke-static {}, Lcom/htc/android/fieldtrial/ListItemsActivity;->access$100()I

    move-result v2

    iget-object v3, p0, Lcom/htc/android/fieldtrial/ListItemsActivity$1;->this$0:Lcom/htc/android/fieldtrial/ListItemsActivity;

    #getter for: Lcom/htc/android/fieldtrial/ListItemsActivity;->mSettingGroup:Lcom/htc/android/fieldtrial/SettingGroup;
    invoke-static {v3}, Lcom/htc/android/fieldtrial/ListItemsActivity;->access$000(Lcom/htc/android/fieldtrial/ListItemsActivity;)Lcom/htc/android/fieldtrial/SettingGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/fieldtrial/SettingGroup;->getSettingItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 299
    iget-object v2, p0, Lcom/htc/android/fieldtrial/ListItemsActivity$1;->this$0:Lcom/htc/android/fieldtrial/ListItemsActivity;

    invoke-virtual {v2}, Lcom/htc/android/fieldtrial/ListItemsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 311
    .end local v1           #item:Lcom/htc/android/fieldtrial/SettingItem;
    :cond_0
    :goto_2
    return-void

    .line 293
    .restart local v1       #item:Lcom/htc/android/fieldtrial/SettingItem;
    :cond_1
    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/htc/android/fieldtrial/SettingItem;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 301
    :cond_2
    invoke-static {}, Lcom/htc/android/fieldtrial/ListItemsActivity;->access$100()I

    move-result v2

    iget-object v3, p0, Lcom/htc/android/fieldtrial/ListItemsActivity$1;->this$0:Lcom/htc/android/fieldtrial/ListItemsActivity;

    #getter for: Lcom/htc/android/fieldtrial/ListItemsActivity;->mSettingGroup:Lcom/htc/android/fieldtrial/SettingGroup;
    invoke-static {v3}, Lcom/htc/android/fieldtrial/ListItemsActivity;->access$000(Lcom/htc/android/fieldtrial/ListItemsActivity;)Lcom/htc/android/fieldtrial/SettingGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/fieldtrial/SettingGroup;->getSettingItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v2, v3, :cond_3

    .line 304
    const-string v2, "FieldTrialListItemsActivity"

    const-string v3, "orphan update"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 306
    :cond_3
    iget-object v2, p0, Lcom/htc/android/fieldtrial/ListItemsActivity$1;->this$0:Lcom/htc/android/fieldtrial/ListItemsActivity;

    invoke-virtual {v2}, Lcom/htc/android/fieldtrial/ListItemsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_2

    .line 286
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method
