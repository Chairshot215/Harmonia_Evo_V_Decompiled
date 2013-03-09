.class Lcom/android/htccontacts/group/GroupPeopleView$2;
.super Ljava/lang/Object;
.source "GroupPeopleView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/group/GroupPeopleView;->setTitleBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/group/GroupPeopleView;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/group/GroupPeopleView;)V
    .locals 0
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/android/htccontacts/group/GroupPeopleView$2;->this$0:Lcom/android/htccontacts/group/GroupPeopleView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView$2;->this$0:Lcom/android/htccontacts/group/GroupPeopleView;

    iget-boolean v0, v0, Lcom/android/htccontacts/group/GroupPeopleView;->mIsSmartGroup:Z

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView$2;->this$0:Lcom/android/htccontacts/group/GroupPeopleView;

    #calls: Lcom/android/htccontacts/group/GroupPeopleView;->launchSmartGroup()V
    invoke-static {v0}, Lcom/android/htccontacts/group/GroupPeopleView;->access$100(Lcom/android/htccontacts/group/GroupPeopleView;)V

    .line 314
    :goto_0
    return-void

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView$2;->this$0:Lcom/android/htccontacts/group/GroupPeopleView;

    invoke-virtual {v0}, Lcom/android/htccontacts/group/GroupPeopleView;->doAddMember()V

    goto :goto_0
.end method
