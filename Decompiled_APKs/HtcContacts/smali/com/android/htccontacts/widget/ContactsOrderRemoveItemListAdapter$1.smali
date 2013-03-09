.class Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$1;
.super Ljava/lang/Object;
.source "ContactsOrderRemoveItemListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;

.field final synthetic val$checkBox:Lcom/htc/widget/HtcListItemCheckBox;

.field final synthetic val$item:Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;Lcom/htc/widget/HtcListItemCheckBox;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$1;->this$0:Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;

    iput-object p2, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$1;->val$item:Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;

    iput-object p3, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$1;->val$checkBox:Lcom/htc/widget/HtcListItemCheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 182
    iget-object v1, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$1;->val$item:Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;

    iget-object v0, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$1;->val$item:Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;

    iget-boolean v0, v0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;->IsDeleted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;->IsDeleted:Z

    .line 183
    iget-object v0, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$1;->val$checkBox:Lcom/htc/widget/HtcListItemCheckBox;

    iget-object v1, p0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$1;->val$item:Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;

    iget-boolean v1, v1, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;->IsDeleted:Z

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 184
    return-void

    .line 182
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
