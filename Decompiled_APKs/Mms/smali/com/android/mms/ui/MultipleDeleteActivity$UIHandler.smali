.class Lcom/android/mms/ui/MultipleDeleteActivity$UIHandler;
.super Landroid/os/Handler;
.source "MultipleDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MultipleDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIHandler"
.end annotation


# static fields
.field public static final CALCULATE_COUNT:I = 0xa


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MultipleDeleteActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/MultipleDeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2073
    iput-object p1, p0, Lcom/android/mms/ui/MultipleDeleteActivity$UIHandler;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/MultipleDeleteActivity;Lcom/android/mms/ui/MultipleDeleteActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2073
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MultipleDeleteActivity$UIHandler;-><init>(Lcom/android/mms/ui/MultipleDeleteActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "message"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2079
    iget v5, p1, Landroid/os/Message;->what:I

    if-lez v5, :cond_2

    move v1, v3

    .line 2080
    .local v1, flag:Z
    :goto_0
    iget-object v5, p0, Lcom/android/mms/ui/MultipleDeleteActivity$UIHandler;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    invoke-virtual {v5}, Lcom/android/mms/ui/MultipleDeleteActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcListView;->getCount()I

    move-result v0

    .line 2082
    .local v0, count:I
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSelectAllOnTop()Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 2084
    :cond_0
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 2122
    :cond_1
    :goto_1
    return-void

    .end local v0           #count:I
    .end local v1           #flag:Z
    :cond_2
    move v1, v4

    .line 2079
    goto :goto_0

    .line 2087
    .restart local v0       #count:I
    .restart local v1       #flag:Z
    :sswitch_0
    iget-object v5, p0, Lcom/android/mms/ui/MultipleDeleteActivity$UIHandler;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mAdapter:Lcom/android/mms/ui/MultipleDeleteListAdapter;
    invoke-static {v5}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$300(Lcom/android/mms/ui/MultipleDeleteActivity;)Lcom/android/mms/ui/MultipleDeleteListAdapter;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 2089
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 2090
    iget-object v5, p0, Lcom/android/mms/ui/MultipleDeleteActivity$UIHandler;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    iget-object v5, v5, Lcom/android/mms/ui/MultipleDeleteActivity;->checkArray:[Z

    aput-boolean v1, v5, v2

    .line 2089
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2092
    :cond_3
    iget-object v5, p0, Lcom/android/mms/ui/MultipleDeleteActivity$UIHandler;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mAdapter:Lcom/android/mms/ui/MultipleDeleteListAdapter;
    invoke-static {v5}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$300(Lcom/android/mms/ui/MultipleDeleteActivity;)Lcom/android/mms/ui/MultipleDeleteListAdapter;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    iput v6, v5, Lcom/android/mms/ui/MultipleDeleteListAdapter;->mSelectStatus:I

    .line 2093
    iget-object v5, p0, Lcom/android/mms/ui/MultipleDeleteActivity$UIHandler;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mCheckDeleteOk:Landroid/widget/Button;
    invoke-static {v5}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$200(Lcom/android/mms/ui/MultipleDeleteActivity;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2094
    iget-object v5, p0, Lcom/android/mms/ui/MultipleDeleteActivity$UIHandler;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mCheckDeleteOk:Landroid/widget/Button;
    invoke-static {v5}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$200(Lcom/android/mms/ui/MultipleDeleteActivity;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 2095
    iget v5, p1, Landroid/os/Message;->what:I

    if-nez v5, :cond_5

    .line 2096
    iget-object v3, p0, Lcom/android/mms/ui/MultipleDeleteActivity$UIHandler;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #setter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mSelectedCount:I
    invoke-static {v3, v4}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$2602(Lcom/android/mms/ui/MultipleDeleteActivity;I)I

    .line 2097
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSelectAllOnTop()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/mms/ui/MultipleDeleteActivity$UIHandler;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    iget-object v3, v3, Lcom/android/mms/ui/MultipleDeleteActivity;->mListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 2103
    :cond_4
    :goto_3
    iget-object v3, p0, Lcom/android/mms/ui/MultipleDeleteActivity$UIHandler;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mCheckDeleteOk:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$200(Lcom/android/mms/ui/MultipleDeleteActivity;)Landroid/widget/Button;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/mms/ui/MultipleDeleteActivity$UIHandler;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultipleDeleteActivity;->delStr:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$2700(Lcom/android/mms/ui/MultipleDeleteActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/MultipleDeleteActivity$UIHandler;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mSelectedCount:I
    invoke-static {v5}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$2600(Lcom/android/mms/ui/MultipleDeleteActivity;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2104
    iget-object v3, p0, Lcom/android/mms/ui/MultipleDeleteActivity$UIHandler;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    invoke-virtual {v3}, Lcom/android/mms/ui/MultipleDeleteActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    goto/16 :goto_1

    .line 2099
    :cond_5
    iget-object v4, p0, Lcom/android/mms/ui/MultipleDeleteActivity$UIHandler;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #setter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mSelectedCount:I
    invoke-static {v4, v0}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$2602(Lcom/android/mms/ui/MultipleDeleteActivity;I)I

    .line 2100
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSelectAllOnTop()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/mms/ui/MultipleDeleteActivity$UIHandler;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    iget-object v4, v4, Lcom/android/mms/ui/MultipleDeleteActivity;->mListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    goto :goto_3

    .line 2107
    .end local v2           #i:I
    :sswitch_1
    iget-object v5, p0, Lcom/android/mms/ui/MultipleDeleteActivity$UIHandler;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #setter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mSelectedCount:I
    invoke-static {v5, v4}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$2602(Lcom/android/mms/ui/MultipleDeleteActivity;I)I

    .line 2108
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    iget-object v5, p0, Lcom/android/mms/ui/MultipleDeleteActivity$UIHandler;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    iget-object v5, v5, Lcom/android/mms/ui/MultipleDeleteActivity;->checkArray:[Z

    array-length v5, v5

    if-ge v2, v5, :cond_7

    .line 2109
    iget-object v5, p0, Lcom/android/mms/ui/MultipleDeleteActivity$UIHandler;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    iget-object v5, v5, Lcom/android/mms/ui/MultipleDeleteActivity;->checkArray:[Z

    aget-boolean v5, v5, v2

    if-eqz v5, :cond_6

    .line 2110
    iget-object v5, p0, Lcom/android/mms/ui/MultipleDeleteActivity$UIHandler;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    invoke-static {v5}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$2608(Lcom/android/mms/ui/MultipleDeleteActivity;)I

    .line 2108
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2112
    :cond_7
    iget-object v5, p0, Lcom/android/mms/ui/MultipleDeleteActivity$UIHandler;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mCheckDeleteOk:Landroid/widget/Button;
    invoke-static {v5}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$200(Lcom/android/mms/ui/MultipleDeleteActivity;)Landroid/widget/Button;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/mms/ui/MultipleDeleteActivity$UIHandler;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultipleDeleteActivity;->delStr:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$2700(Lcom/android/mms/ui/MultipleDeleteActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/MultipleDeleteActivity$UIHandler;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mSelectedCount:I
    invoke-static {v7}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$2600(Lcom/android/mms/ui/MultipleDeleteActivity;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2115
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSelectAllOnTop()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2116
    iget-object v5, p0, Lcom/android/mms/ui/MultipleDeleteActivity$UIHandler;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    iget-object v5, v5, Lcom/android/mms/ui/MultipleDeleteActivity;->mListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    iget-object v6, p0, Lcom/android/mms/ui/MultipleDeleteActivity$UIHandler;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mSelectedCount:I
    invoke-static {v6}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$2600(Lcom/android/mms/ui/MultipleDeleteActivity;)I

    move-result v6

    if-ne v6, v0, :cond_8

    :goto_5
    invoke-virtual {v5, v3}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    goto/16 :goto_1

    :cond_8
    move v3, v4

    goto :goto_5

    .line 2084
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method
