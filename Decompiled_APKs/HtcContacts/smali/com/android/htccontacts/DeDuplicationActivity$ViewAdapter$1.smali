.class Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter$1;
.super Ljava/lang/Object;
.source "DeDuplicationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter;->bindView(Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter$InformationItem;Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 284
    iput-object p1, p0, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter$1;->this$1:Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 286
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;

    .line 287
    .local v0, data:Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;
    iget-boolean v1, v0, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;->isChecked:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;->isChecked:Z

    .line 288
    iget-boolean v1, v0, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;->isChecked:Z

    if-eqz v1, :cond_1

    .line 289
    iget-object v1, p0, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter$1;->this$1:Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter;

    iget-object v1, v1, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    invoke-static {v1}, Lcom/android/htccontacts/DeDuplicationActivity;->access$208(Lcom/android/htccontacts/DeDuplicationActivity;)I

    .line 293
    :goto_1
    check-cast p1, Lcom/htc/widget/HtcListItemCheckBox;

    .end local p1
    iget-boolean v1, v0, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;->isChecked:Z

    invoke-virtual {p1, v1}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 294
    iget-object v1, p0, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter$1;->this$1:Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter;

    iget-object v1, v1, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    #calls: Lcom/android/htccontacts/DeDuplicationActivity;->updateDeleteButtonState()V
    invoke-static {v1}, Lcom/android/htccontacts/DeDuplicationActivity;->access$300(Lcom/android/htccontacts/DeDuplicationActivity;)V

    .line 295
    return-void

    .line 287
    .restart local p1
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 291
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter$1;->this$1:Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter;

    iget-object v1, v1, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    invoke-static {v1}, Lcom/android/htccontacts/DeDuplicationActivity;->access$210(Lcom/android/htccontacts/DeDuplicationActivity;)I

    goto :goto_1
.end method
