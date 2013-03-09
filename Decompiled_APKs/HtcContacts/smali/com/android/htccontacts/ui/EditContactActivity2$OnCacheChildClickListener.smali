.class Lcom/android/htccontacts/ui/EditContactActivity2$OnCacheChildClickListener;
.super Ljava/lang/Object;
.source "EditContactActivity2.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ui/EditContactActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnCacheChildClickListener"
.end annotation


# instance fields
.field final isCheck:Z

.field final synthetic this$0:Lcom/android/htccontacts/ui/EditContactActivity2;


# direct methods
.method private constructor <init>(Lcom/android/htccontacts/ui/EditContactActivity2;)V
    .locals 1
    .parameter

    .prologue
    .line 6229
    iput-object p1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$OnCacheChildClickListener;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$OnCacheChildClickListener;->isCheck:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/ui/EditContactActivity2;Lcom/android/htccontacts/ui/EditContactActivity2$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6229
    invoke-direct {p0, p1}, Lcom/android/htccontacts/ui/EditContactActivity2$OnCacheChildClickListener;-><init>(Lcom/android/htccontacts/ui/EditContactActivity2;)V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 6
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    .line 6232
    iget-object v4, p0, Lcom/android/htccontacts/ui/EditContactActivity2$OnCacheChildClickListener;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    const/16 v5, 0xf0

    invoke-virtual {v4, v5}, Lcom/android/htccontacts/ui/EditContactActivity2;->dismissDialog(I)V

    .line 6233
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ui/EditContactActivity2$LabelData;

    .line 6235
    .local v0, data:Lcom/android/htccontacts/ui/EditContactActivity2$LabelData;
    iget-object v2, v0, Lcom/android/htccontacts/ui/EditContactActivity2$LabelData;->kind:Lcom/android/htccontacts/model/DataKind;

    .line 6236
    .local v2, kind:Lcom/android/htccontacts/model/DataKind;
    iget-object v3, v0, Lcom/android/htccontacts/ui/EditContactActivity2$LabelData;->type:Lcom/android/htccontacts/model/AccountType$EditType;

    .line 6239
    .local v3, type:Lcom/android/htccontacts/model/AccountType$EditType;
    const/4 v1, 0x1

    .line 6240
    .local v1, isAction:Z
    packed-switch p3, :pswitch_data_0

    .line 6308
    :pswitch_0
    const/4 v1, 0x0

    .line 6312
    :pswitch_1
    if-eqz v1, :cond_0

    .line 6313
    iget-object v4, p0, Lcom/android/htccontacts/ui/EditContactActivity2$OnCacheChildClickListener;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mEditor:Lcom/android/htccontacts/ui/widget/ContactEditorView2;
    invoke-static {v4}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$7100(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/widget/ContactEditorView2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->requestRequestLastInsertItem()V

    .line 6314
    iget-object v4, p0, Lcom/android/htccontacts/ui/EditContactActivity2$OnCacheChildClickListener;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mEditor:Lcom/android/htccontacts/ui/widget/ContactEditorView2;
    invoke-static {v4}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$7100(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/widget/ContactEditorView2;

    move-result-object v4

    iget-object v5, p0, Lcom/android/htccontacts/ui/EditContactActivity2$OnCacheChildClickListener;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    iget-object v5, v5, Lcom/android/htccontacts/ui/EditContactActivity2;->mGroupActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->setGroupMemberAction(Landroid/view/View$OnClickListener;)V

    .line 6316
    :cond_0
    const/4 v4, 0x1

    return v4

    .line 6240
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
