.class Lcom/android/htccontacts/widget/GroupListAdapter$1;
.super Landroid/database/DataSetObserver;
.source "GroupListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/widget/GroupListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/widget/GroupListAdapter;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/widget/GroupListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/htccontacts/widget/GroupListAdapter$1;->this$0:Lcom/android/htccontacts/widget/GroupListAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/htccontacts/widget/GroupListAdapter$1;->this$0:Lcom/android/htccontacts/widget/GroupListAdapter;

    invoke-virtual {v0}, Lcom/android/htccontacts/widget/GroupListAdapter;->notifyDataSetChanged()V

    .line 69
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/htccontacts/widget/GroupListAdapter$1;->this$0:Lcom/android/htccontacts/widget/GroupListAdapter;

    invoke-virtual {v0}, Lcom/android/htccontacts/widget/GroupListAdapter;->notifyDataSetInvalidated()V

    .line 72
    return-void
.end method
