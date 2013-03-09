.class public Lcom/android/htccontacts/group/GroupEditActivity$OnRemoveClickListener;
.super Ljava/lang/Object;
.source "GroupEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/group/GroupEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "OnRemoveClickListener"
.end annotation


# instance fields
.field protected mItemId:I

.field final synthetic this$0:Lcom/android/htccontacts/group/GroupEditActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/group/GroupEditActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1710
    iput-object p1, p0, Lcom/android/htccontacts/group/GroupEditActivity$OnRemoveClickListener;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1717
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity$OnRemoveClickListener;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    iget v1, p0, Lcom/android/htccontacts/group/GroupEditActivity$OnRemoveClickListener;->mItemId:I

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/group/GroupEditActivity;->doRemoveListItem(I)V

    .line 1718
    return-void
.end method

.method public setItemId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 1713
    iput p1, p0, Lcom/android/htccontacts/group/GroupEditActivity$OnRemoveClickListener;->mItemId:I

    .line 1714
    return-void
.end method
