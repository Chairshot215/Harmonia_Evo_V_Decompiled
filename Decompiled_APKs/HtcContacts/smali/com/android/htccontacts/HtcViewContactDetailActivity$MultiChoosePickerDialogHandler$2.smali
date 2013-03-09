.class Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler$2;
.super Ljava/lang/Object;
.source "HtcViewContactDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;->create()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;

.field final synthetic val$checkedItems:[Z


# direct methods
.method constructor <init>(Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;[Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3129
    iput-object p1, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler$2;->this$1:Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;

    iput-object p2, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler$2;->val$checkedItems:[Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 3136
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3137
    .local v2, checkNumbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3138
    .local v0, checkLabels:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3140
    .local v1, checkMails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v7, Lcom/android/htccontacts/HtcViewContactDetailActivity$SaveToSIMDataPackage;

    const/4 v9, 0x0

    invoke-direct {v7, v9}, Lcom/android/htccontacts/HtcViewContactDetailActivity$SaveToSIMDataPackage;-><init>(Lcom/android/htccontacts/HtcViewContactDetailActivity$1;)V

    .line 3141
    .local v7, pack:Lcom/android/htccontacts/HtcViewContactDetailActivity$SaveToSIMDataPackage;
    iget-object v9, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler$2;->this$1:Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;

    iget-object v9, v9, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 3142
    .local v6, numberSize:I
    iget-object v9, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler$2;->this$1:Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;

    iget-object v9, v9, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;->emails:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3143
    .local v3, emailSize:I
    const/4 v4, 0x1

    .local v4, i:I
    :goto_0
    iget-object v9, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler$2;->val$checkedItems:[Z

    array-length v9, v9

    if-ge v4, v9, :cond_0

    .line 3144
    iget-object v9, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler$2;->val$checkedItems:[Z

    aget-boolean v9, v9, v4

    if-eqz v9, :cond_2

    .line 3145
    add-int/lit8 v9, v4, -0x1

    if-lt v9, v6, :cond_3

    .line 3146
    add-int/lit8 v9, v4, -0x1

    sub-int v5, v9, v6

    .line 3147
    .local v5, index:I
    if-ltz v5, :cond_0

    if-lt v5, v3, :cond_1

    .line 3173
    .end local v5           #index:I
    :cond_0
    iput-object v2, v7, Lcom/android/htccontacts/HtcViewContactDetailActivity$SaveToSIMDataPackage;->phones:Ljava/util/ArrayList;

    .line 3174
    iput-object v0, v7, Lcom/android/htccontacts/HtcViewContactDetailActivity$SaveToSIMDataPackage;->labels:Ljava/util/ArrayList;

    .line 3175
    iput-object v1, v7, Lcom/android/htccontacts/HtcViewContactDetailActivity$SaveToSIMDataPackage;->emails:Ljava/util/ArrayList;

    .line 3176
    new-instance v8, Lcom/android/htccontacts/HtcViewContactDetailActivity$SaveToSIMContactsTask;

    iget-object v9, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler$2;->this$1:Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;

    iget-object v9, v9, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;->this$0:Lcom/android/htccontacts/HtcViewContactDetailActivity;

    invoke-direct {v8, v9}, Lcom/android/htccontacts/HtcViewContactDetailActivity$SaveToSIMContactsTask;-><init>(Lcom/android/htccontacts/HtcViewContactDetailActivity;)V

    .line 3177
    .local v8, task:Lcom/android/htccontacts/HtcViewContactDetailActivity$SaveToSIMContactsTask;
    const/4 v9, 0x1

    new-array v9, v9, [Lcom/android/htccontacts/HtcViewContactDetailActivity$SaveToSIMDataPackage;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    invoke-virtual {v8, v9}, Lcom/android/htccontacts/HtcViewContactDetailActivity$SaveToSIMContactsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3182
    return-void

    .line 3150
    .end local v8           #task:Lcom/android/htccontacts/HtcViewContactDetailActivity$SaveToSIMContactsTask;
    .restart local v5       #index:I
    :cond_1
    iget-object v9, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler$2;->this$1:Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;

    iget-object v9, v9, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;->emails:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3143
    .end local v5           #index:I
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3153
    :cond_3
    iget-object v9, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler$2;->this$1:Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;

    iget-object v9, v9, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;->numbers:Ljava/util/ArrayList;

    add-int/lit8 v10, v4, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3154
    iget-object v9, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler$2;->this$1:Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;

    iget-object v9, v9, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;->labels:Ljava/util/ArrayList;

    add-int/lit8 v10, v4, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
