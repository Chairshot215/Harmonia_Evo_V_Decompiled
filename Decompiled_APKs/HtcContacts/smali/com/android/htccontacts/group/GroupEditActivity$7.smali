.class Lcom/android/htccontacts/group/GroupEditActivity$7;
.super Ljava/lang/Object;
.source "GroupEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/group/GroupEditActivity;->setListeners()V
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
    .line 596
    iput-object p1, p0, Lcom/android/htccontacts/group/GroupEditActivity$7;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity$7;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/group/GroupEditActivity;->setResult(I)V

    .line 600
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity$7;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/group/GroupEditActivity;->finish()V

    .line 601
    return-void
.end method
