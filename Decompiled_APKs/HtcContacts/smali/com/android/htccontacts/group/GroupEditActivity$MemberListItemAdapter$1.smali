.class Lcom/android/htccontacts/group/GroupEditActivity$MemberListItemAdapter$1;
.super Ljava/lang/Object;
.source "GroupEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/group/GroupEditActivity$MemberListItemAdapter;->getInsertView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/htccontacts/group/GroupEditActivity$MemberListItemAdapter;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/group/GroupEditActivity$MemberListItemAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1844
    iput-object p1, p0, Lcom/android/htccontacts/group/GroupEditActivity$MemberListItemAdapter$1;->this$1:Lcom/android/htccontacts/group/GroupEditActivity$MemberListItemAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1846
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity$MemberListItemAdapter$1;->this$1:Lcom/android/htccontacts/group/GroupEditActivity$MemberListItemAdapter;

    iget-object v0, v0, Lcom/android/htccontacts/group/GroupEditActivity$MemberListItemAdapter;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/group/GroupEditActivity;->doAddMember()V

    .line 1847
    return-void
.end method
