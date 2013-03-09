.class Lcom/android/htccontacts/group/GroupEditActivity$1;
.super Ljava/lang/Object;
.source "GroupEditActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/group/GroupEditActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 291
    iput-object p1, p0, Lcom/android/htccontacts/group/GroupEditActivity$1;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity$1;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;
    invoke-static {v0}, Lcom/android/htccontacts/group/GroupEditActivity;->access$100(Lcom/android/htccontacts/group/GroupEditActivity;)Lcom/htc/widget/HtcListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity$1;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;
    invoke-static {v0}, Lcom/android/htccontacts/group/GroupEditActivity;->access$200(Lcom/android/htccontacts/group/GroupEditActivity;)Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->requestFocus()Z

    .line 296
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
