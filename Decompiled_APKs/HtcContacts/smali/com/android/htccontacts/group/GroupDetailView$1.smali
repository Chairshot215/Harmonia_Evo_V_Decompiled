.class Lcom/android/htccontacts/group/GroupDetailView$1;
.super Ljava/lang/Object;
.source "GroupDetailView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/group/GroupDetailView;->doDeleteGroup(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/group/GroupDetailView;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/group/GroupDetailView;)V
    .locals 0
    .parameter

    .prologue
    .line 475
    iput-object p1, p0, Lcom/android/htccontacts/group/GroupDetailView$1;->this$0:Lcom/android/htccontacts/group/GroupDetailView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupDetailView$1;->this$0:Lcom/android/htccontacts/group/GroupDetailView;

    iget-object v1, p0, Lcom/android/htccontacts/group/GroupDetailView$1;->this$0:Lcom/android/htccontacts/group/GroupDetailView;

    iget-object v1, v1, Lcom/android/htccontacts/group/GroupDetailView;->mGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/group/GroupDetailView;->removeGroups(Ljava/lang/String;)V

    .line 506
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupDetailView$1;->this$0:Lcom/android/htccontacts/group/GroupDetailView;

    invoke-virtual {v0}, Lcom/android/htccontacts/group/GroupDetailView;->finish()V

    .line 507
    return-void
.end method
