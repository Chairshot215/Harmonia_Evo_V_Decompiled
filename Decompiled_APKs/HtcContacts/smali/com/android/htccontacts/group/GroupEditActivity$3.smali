.class Lcom/android/htccontacts/group/GroupEditActivity$3;
.super Ljava/lang/Object;
.source "GroupEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/group/GroupEditActivity;->setCommonControlTitlebar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/group/GroupEditActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/group/GroupEditActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 426
    iput-object p1, p0, Lcom/android/htccontacts/group/GroupEditActivity$3;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity$3;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/group/GroupEditActivity;->doAddMember()V

    .line 429
    return-void
.end method
