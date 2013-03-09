.class Lcom/htc/android/epst/ListItemsActivity$6;
.super Ljava/lang/Object;
.source "ListItemsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/epst/ListItemsActivity;->updateSettingValue(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/epst/ListItemsActivity;

.field final synthetic val$itemId:I

.field final synthetic val$status:I

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/htc/android/epst/ListItemsActivity;IILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1076
    iput-object p1, p0, Lcom/htc/android/epst/ListItemsActivity$6;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    iput p2, p0, Lcom/htc/android/epst/ListItemsActivity$6;->val$itemId:I

    iput p3, p0, Lcom/htc/android/epst/ListItemsActivity$6;->val$status:I

    iput-object p4, p0, Lcom/htc/android/epst/ListItemsActivity$6;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/16 v5, 0x64

    .line 1078
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/android/epst/ListItemsActivity$6;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    #getter for: Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;
    invoke-static {v3}, Lcom/htc/android/epst/ListItemsActivity;->access$100(Lcom/htc/android/epst/ListItemsActivity;)Lcom/htc/android/epst/SettingGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/epst/SettingGroup;->getSettingItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1079
    iget-object v3, p0, Lcom/htc/android/epst/ListItemsActivity$6;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    #getter for: Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;
    invoke-static {v3}, Lcom/htc/android/epst/ListItemsActivity;->access$100(Lcom/htc/android/epst/ListItemsActivity;)Lcom/htc/android/epst/SettingGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/epst/SettingGroup;->getSettingItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/epst/SettingItem;

    .line 1080
    .local v2, item:Lcom/htc/android/epst/SettingItem;
    invoke-virtual {v2}, Lcom/htc/android/epst/SettingItem;->getId()I

    move-result v3

    iget v4, p0, Lcom/htc/android/epst/ListItemsActivity$6;->val$itemId:I

    if-ne v3, v4, :cond_4

    .line 1081
    iget v3, p0, Lcom/htc/android/epst/ListItemsActivity$6;->val$status:I

    invoke-virtual {v2, v3}, Lcom/htc/android/epst/SettingItem;->setStatus(I)V

    .line 1082
    iget v3, p0, Lcom/htc/android/epst/ListItemsActivity$6;->val$status:I

    if-nez v3, :cond_1

    .line 1083
    iget-object v3, p0, Lcom/htc/android/epst/ListItemsActivity$6;->val$value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/android/epst/SettingItem;->setValue(Ljava/lang/String;)V

    .line 1087
    :goto_1
    iget-object v3, p0, Lcom/htc/android/epst/ListItemsActivity$6;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    invoke-virtual {v3}, Lcom/htc/android/epst/ListItemsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->invalidateViews()V

    .line 1088
    invoke-static {}, Lcom/htc/android/epst/ListItemsActivity;->access$1004()I

    .line 1089
    invoke-static {}, Lcom/htc/android/epst/ListItemsActivity;->access$1000()I

    move-result v3

    iget-object v4, p0, Lcom/htc/android/epst/ListItemsActivity$6;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    #getter for: Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;
    invoke-static {v4}, Lcom/htc/android/epst/ListItemsActivity;->access$100(Lcom/htc/android/epst/ListItemsActivity;)Lcom/htc/android/epst/SettingGroup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/android/epst/SettingGroup;->getSettingItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1090
    iget-object v3, p0, Lcom/htc/android/epst/ListItemsActivity$6;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    #getter for: Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;
    invoke-static {v3}, Lcom/htc/android/epst/ListItemsActivity;->access$100(Lcom/htc/android/epst/ListItemsActivity;)Lcom/htc/android/epst/SettingGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/epst/SettingGroup;->getSettingItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    div-int v1, v5, v3

    .line 1091
    .local v1, incremental:I
    invoke-static {v1}, Lcom/htc/android/epst/ListItemsActivity;->access$1112(I)I

    .line 1092
    invoke-static {}, Lcom/htc/android/epst/ListItemsActivity;->access$1200()Lcom/htc/app/HtcProgressDialog;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/htc/app/HtcProgressDialog;->incrementProgressBy(I)V

    .line 1107
    .end local v1           #incremental:I
    .end local v2           #item:Lcom/htc/android/epst/SettingItem;
    :cond_0
    :goto_2
    return-void

    .line 1085
    .restart local v2       #item:Lcom/htc/android/epst/SettingItem;
    :cond_1
    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/htc/android/epst/SettingItem;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 1093
    :cond_2
    invoke-static {}, Lcom/htc/android/epst/ListItemsActivity;->access$1000()I

    move-result v3

    iget-object v4, p0, Lcom/htc/android/epst/ListItemsActivity$6;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    #getter for: Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;
    invoke-static {v4}, Lcom/htc/android/epst/ListItemsActivity;->access$100(Lcom/htc/android/epst/ListItemsActivity;)Lcom/htc/android/epst/SettingGroup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/android/epst/SettingGroup;->getSettingItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 1094
    invoke-static {v5}, Lcom/htc/android/epst/ListItemsActivity;->access$1102(I)I

    .line 1095
    invoke-static {}, Lcom/htc/android/epst/ListItemsActivity;->access$1200()Lcom/htc/app/HtcProgressDialog;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/htc/app/HtcProgressDialog;->setProgress(I)V

    .line 1096
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/htc/android/epst/ListItemsActivity;->access$1102(I)I

    .line 1097
    iget-object v3, p0, Lcom/htc/android/epst/ListItemsActivity$6;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/android/epst/ListItemsActivity;->dismissDialog(I)V

    goto :goto_2

    .line 1101
    :cond_3
    const-string v3, "ListItemsActivity"

    const-string v4, "updateSettingValue.orphan update"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1078
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method
