.class Lcom/android/common/widget/GroupingListAdapter$2;
.super Landroid/database/DataSetObserver;
.source "GroupingListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/widget/GroupingListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/common/widget/GroupingListAdapter;


# direct methods
.method constructor <init>(Lcom/android/common/widget/GroupingListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/common/widget/GroupingListAdapter$2;->this$0:Lcom/android/common/widget/GroupingListAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/common/widget/GroupingListAdapter$2;->this$0:Lcom/android/common/widget/GroupingListAdapter;

    invoke-virtual {v0}, Lcom/android/common/widget/GroupingListAdapter;->notifyDataSetChanged()V

    .line 108
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/common/widget/GroupingListAdapter$2;->this$0:Lcom/android/common/widget/GroupingListAdapter;

    invoke-virtual {v0}, Lcom/android/common/widget/GroupingListAdapter;->notifyDataSetInvalidated()V

    .line 113
    return-void
.end method
