.class Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$1;
.super Ljava/lang/Object;
.source "DisplayExpandableListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->bindGroupView(IZLandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;

.field final synthetic val$accountDisplay:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountDisplay;

.field final synthetic val$checkBox:Lcom/htc/widget/HtcListItemCheckBox;

.field final synthetic val$setGroupPosition:I


# direct methods
.method constructor <init>(Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;Lcom/htc/widget/HtcListItemCheckBox;Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountDisplay;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$1;->this$0:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;

    iput-object p2, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$1;->val$checkBox:Lcom/htc/widget/HtcListItemCheckBox;

    iput-object p3, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$1;->val$accountDisplay:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountDisplay;

    iput p4, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$1;->val$setGroupPosition:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 382
    iget-object v0, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$1;->val$checkBox:Lcom/htc/widget/HtcListItemCheckBox;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListItemCheckBox;->toggle()V

    .line 383
    iget-object v3, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$1;->val$accountDisplay:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountDisplay;

    iget-object v0, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$1;->val$checkBox:Lcom/htc/widget/HtcListItemCheckBox;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListItemCheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountDisplay;->setVisible(Z)V

    .line 384
    iget-object v0, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$1;->this$0:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;

    iget v3, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$1;->val$setGroupPosition:I

    iget-object v4, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$1;->val$checkBox:Lcom/htc/widget/HtcListItemCheckBox;

    invoke-virtual {v4}, Lcom/htc/widget/HtcListItemCheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_1

    :goto_1
    invoke-virtual {v0, v3, v1}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->setAllChildToggle(IZ)V

    .line 385
    iget-object v0, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$1;->this$0:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;

    invoke-virtual {v0}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->notifyDataSetChanged()V

    .line 386
    return-void

    :cond_0
    move v0, v2

    .line 383
    goto :goto_0

    :cond_1
    move v1, v2

    .line 384
    goto :goto_1
.end method
