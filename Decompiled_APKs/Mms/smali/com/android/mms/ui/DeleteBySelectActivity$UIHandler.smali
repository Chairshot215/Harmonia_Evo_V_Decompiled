.class Lcom/android/mms/ui/DeleteBySelectActivity$UIHandler;
.super Landroid/os/Handler;
.source "DeleteBySelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/DeleteBySelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIHandler"
.end annotation


# static fields
.field public static final CALCULATE_COUNT:I = 0xa


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/DeleteBySelectActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/DeleteBySelectActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1435
    iput-object p1, p0, Lcom/android/mms/ui/DeleteBySelectActivity$UIHandler;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/DeleteBySelectActivity;Lcom/android/mms/ui/DeleteBySelectActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1435
    invoke-direct {p0, p1}, Lcom/android/mms/ui/DeleteBySelectActivity$UIHandler;-><init>(Lcom/android/mms/ui/DeleteBySelectActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "message"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1441
    iget v5, p1, Landroid/os/Message;->what:I

    if-lez v5, :cond_2

    move v1, v3

    .line 1442
    .local v1, flag:Z
    :goto_0
    iget-object v5, p0, Lcom/android/mms/ui/DeleteBySelectActivity$UIHandler;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    invoke-virtual {v5}, Lcom/android/mms/ui/DeleteBySelectActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcListView;->getCount()I

    move-result v0

    .line 1443
    .local v0, count:I
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSelectAllOnTop()Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 1444
    :cond_0
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 1479
    :cond_1
    :goto_1
    return-void

    .end local v0           #count:I
    .end local v1           #flag:Z
    :cond_2
    move v1, v4

    .line 1441
    goto :goto_0

    .line 1447
    .restart local v0       #count:I
    .restart local v1       #flag:Z
    :sswitch_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 1448
    iget-object v5, p0, Lcom/android/mms/ui/DeleteBySelectActivity$UIHandler;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    iget-object v5, v5, Lcom/android/mms/ui/DeleteBySelectActivity;->checkArray:[Z

    aput-boolean v1, v5, v2

    .line 1447
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1450
    :cond_3
    iget-object v5, p0, Lcom/android/mms/ui/DeleteBySelectActivity$UIHandler;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    #getter for: Lcom/android/mms/ui/DeleteBySelectActivity;->mAdapter:Lcom/android/mms/ui/DeleteBySelectListAdapter;
    invoke-static {v5}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$400(Lcom/android/mms/ui/DeleteBySelectActivity;)Lcom/android/mms/ui/DeleteBySelectListAdapter;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    iput v6, v5, Lcom/android/mms/ui/DeleteBySelectListAdapter;->mSelectStatus:I

    .line 1451
    iget-object v5, p0, Lcom/android/mms/ui/DeleteBySelectActivity$UIHandler;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    #getter for: Lcom/android/mms/ui/DeleteBySelectActivity;->mCheckDeleteOk:Landroid/widget/Button;
    invoke-static {v5}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$300(Lcom/android/mms/ui/DeleteBySelectActivity;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1452
    iget-object v5, p0, Lcom/android/mms/ui/DeleteBySelectActivity$UIHandler;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    #getter for: Lcom/android/mms/ui/DeleteBySelectActivity;->mCheckDeleteOk:Landroid/widget/Button;
    invoke-static {v5}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$300(Lcom/android/mms/ui/DeleteBySelectActivity;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 1453
    iget v5, p1, Landroid/os/Message;->what:I

    if-nez v5, :cond_5

    .line 1454
    iget-object v3, p0, Lcom/android/mms/ui/DeleteBySelectActivity$UIHandler;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    #setter for: Lcom/android/mms/ui/DeleteBySelectActivity;->mSelectedCount:I
    invoke-static {v3, v4}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$102(Lcom/android/mms/ui/DeleteBySelectActivity;I)I

    .line 1455
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSelectAllOnTop()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/mms/ui/DeleteBySelectActivity$UIHandler;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    iget-object v3, v3, Lcom/android/mms/ui/DeleteBySelectActivity;->mListItemCheckBox:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/MessageListItem;->changeCheckboxResource2(Z)V

    .line 1461
    :cond_4
    :goto_3
    iget-object v3, p0, Lcom/android/mms/ui/DeleteBySelectActivity$UIHandler;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    #getter for: Lcom/android/mms/ui/DeleteBySelectActivity;->mCheckDeleteOk:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$300(Lcom/android/mms/ui/DeleteBySelectActivity;)Landroid/widget/Button;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/mms/ui/DeleteBySelectActivity$UIHandler;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    #getter for: Lcom/android/mms/ui/DeleteBySelectActivity;->delStr:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$1800(Lcom/android/mms/ui/DeleteBySelectActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/DeleteBySelectActivity$UIHandler;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    #getter for: Lcom/android/mms/ui/DeleteBySelectActivity;->mSelectedCount:I
    invoke-static {v5}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$100(Lcom/android/mms/ui/DeleteBySelectActivity;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1462
    iget-object v3, p0, Lcom/android/mms/ui/DeleteBySelectActivity$UIHandler;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    invoke-virtual {v3}, Lcom/android/mms/ui/DeleteBySelectActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    goto :goto_1

    .line 1457
    :cond_5
    iget-object v4, p0, Lcom/android/mms/ui/DeleteBySelectActivity$UIHandler;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    #setter for: Lcom/android/mms/ui/DeleteBySelectActivity;->mSelectedCount:I
    invoke-static {v4, v0}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$102(Lcom/android/mms/ui/DeleteBySelectActivity;I)I

    .line 1458
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSelectAllOnTop()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/mms/ui/DeleteBySelectActivity$UIHandler;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    iget-object v4, v4, Lcom/android/mms/ui/DeleteBySelectActivity;->mListItemCheckBox:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v4, v3}, Lcom/android/mms/ui/MessageListItem;->changeCheckboxResource2(Z)V

    goto :goto_3

    .line 1465
    .end local v2           #i:I
    :sswitch_1
    iget-object v5, p0, Lcom/android/mms/ui/DeleteBySelectActivity$UIHandler;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    #setter for: Lcom/android/mms/ui/DeleteBySelectActivity;->mSelectedCount:I
    invoke-static {v5, v4}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$102(Lcom/android/mms/ui/DeleteBySelectActivity;I)I

    .line 1466
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    iget-object v5, p0, Lcom/android/mms/ui/DeleteBySelectActivity$UIHandler;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    iget-object v5, v5, Lcom/android/mms/ui/DeleteBySelectActivity;->checkArray:[Z

    array-length v5, v5

    if-ge v2, v5, :cond_7

    .line 1467
    iget-object v5, p0, Lcom/android/mms/ui/DeleteBySelectActivity$UIHandler;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    iget-object v5, v5, Lcom/android/mms/ui/DeleteBySelectActivity;->checkArray:[Z

    aget-boolean v5, v5, v2

    if-eqz v5, :cond_6

    .line 1468
    iget-object v5, p0, Lcom/android/mms/ui/DeleteBySelectActivity$UIHandler;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    invoke-static {v5}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$108(Lcom/android/mms/ui/DeleteBySelectActivity;)I

    .line 1466
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1470
    :cond_7
    iget-object v5, p0, Lcom/android/mms/ui/DeleteBySelectActivity$UIHandler;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    #getter for: Lcom/android/mms/ui/DeleteBySelectActivity;->mCheckDeleteOk:Landroid/widget/Button;
    invoke-static {v5}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$300(Lcom/android/mms/ui/DeleteBySelectActivity;)Landroid/widget/Button;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/mms/ui/DeleteBySelectActivity$UIHandler;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    #getter for: Lcom/android/mms/ui/DeleteBySelectActivity;->delStr:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$1800(Lcom/android/mms/ui/DeleteBySelectActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/DeleteBySelectActivity$UIHandler;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    #getter for: Lcom/android/mms/ui/DeleteBySelectActivity;->mSelectedCount:I
    invoke-static {v7}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$100(Lcom/android/mms/ui/DeleteBySelectActivity;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1473
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSelectAllOnTop()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1474
    iget-object v5, p0, Lcom/android/mms/ui/DeleteBySelectActivity$UIHandler;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    iget-object v5, v5, Lcom/android/mms/ui/DeleteBySelectActivity;->mListItemCheckBox:Lcom/android/mms/ui/MessageListItem;

    iget-object v6, p0, Lcom/android/mms/ui/DeleteBySelectActivity$UIHandler;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    #getter for: Lcom/android/mms/ui/DeleteBySelectActivity;->mSelectedCount:I
    invoke-static {v6}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$100(Lcom/android/mms/ui/DeleteBySelectActivity;)I

    move-result v6

    if-ne v6, v0, :cond_8

    :goto_5
    invoke-virtual {v5, v3}, Lcom/android/mms/ui/MessageListItem;->changeCheckboxResource2(Z)V

    goto/16 :goto_1

    :cond_8
    move v3, v4

    goto :goto_5

    .line 1444
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method
