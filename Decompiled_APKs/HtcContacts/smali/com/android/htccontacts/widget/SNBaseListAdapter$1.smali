.class Lcom/android/htccontacts/widget/SNBaseListAdapter$1;
.super Landroid/database/DataSetObserver;
.source "SNBaseListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/widget/SNBaseListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/widget/SNBaseListAdapter;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/widget/SNBaseListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter$1;->this$0:Lcom/android/htccontacts/widget/SNBaseListAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter$1;->this$0:Lcom/android/htccontacts/widget/SNBaseListAdapter;

    invoke-virtual {v0}, Lcom/android/htccontacts/widget/SNBaseListAdapter;->notifyDataSetChanged()V

    .line 101
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter$1;->this$0:Lcom/android/htccontacts/widget/SNBaseListAdapter;

    invoke-virtual {v0}, Lcom/android/htccontacts/widget/SNBaseListAdapter;->notifyDataSetInvalidated()V

    .line 104
    return-void
.end method
