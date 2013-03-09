.class Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$1;
.super Ljava/lang/Object;
.source "RemoveOrderGroupBaseAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter;

.field final synthetic val$checkBox:Lcom/htc/widget/HtcListItemCheckBox;

.field final synthetic val$item:Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter;Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;Lcom/htc/widget/HtcListItemCheckBox;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$1;->this$0:Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter;

    iput-object p2, p0, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$1;->val$item:Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;

    iput-object p3, p0, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$1;->val$checkBox:Lcom/htc/widget/HtcListItemCheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 98
    iget-object v1, p0, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$1;->val$item:Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;

    iget-object v0, p0, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$1;->val$item:Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;

    iget-boolean v0, v0, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;->IsDeleted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;->IsDeleted:Z

    .line 99
    iget-object v0, p0, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$1;->val$checkBox:Lcom/htc/widget/HtcListItemCheckBox;

    iget-object v1, p0, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$1;->val$item:Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;

    iget-boolean v1, v1, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;->IsDeleted:Z

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 100
    return-void

    .line 98
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
