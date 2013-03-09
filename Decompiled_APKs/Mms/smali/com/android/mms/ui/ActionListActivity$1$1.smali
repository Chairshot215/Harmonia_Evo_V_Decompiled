.class Lcom/android/mms/ui/ActionListActivity$1$1;
.super Ljava/lang/Object;
.source "ActionListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ActionListActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ActionListActivity$1;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ActionListActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/mms/ui/ActionListActivity$1$1;->this$1:Lcom/android/mms/ui/ActionListActivity$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/mms/ui/ActionListActivity$1$1;->this$1:Lcom/android/mms/ui/ActionListActivity$1;

    iget-object v0, v0, Lcom/android/mms/ui/ActionListActivity$1;->this$0:Lcom/android/mms/ui/ActionListActivity;

    new-instance v1, Lcom/android/mms/ui/ActionListActivity$ActionListAdapter;

    iget-object v2, p0, Lcom/android/mms/ui/ActionListActivity$1$1;->this$1:Lcom/android/mms/ui/ActionListActivity$1;

    iget-object v2, v2, Lcom/android/mms/ui/ActionListActivity$1;->this$0:Lcom/android/mms/ui/ActionListActivity;

    iget-object v3, p0, Lcom/android/mms/ui/ActionListActivity$1$1;->this$1:Lcom/android/mms/ui/ActionListActivity$1;

    iget-object v3, v3, Lcom/android/mms/ui/ActionListActivity$1;->this$0:Lcom/android/mms/ui/ActionListActivity;

    #getter for: Lcom/android/mms/ui/ActionListActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/ActionListActivity;->access$200(Lcom/android/mms/ui/ActionListActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/mms/ui/ActionListActivity$ActionListAdapter;-><init>(Lcom/android/mms/ui/ActionListActivity;Landroid/content/Context;)V

    #setter for: Lcom/android/mms/ui/ActionListActivity;->mAdapter:Lcom/android/mms/ui/ActionListActivity$ActionListAdapter;
    invoke-static {v0, v1}, Lcom/android/mms/ui/ActionListActivity;->access$102(Lcom/android/mms/ui/ActionListActivity;Lcom/android/mms/ui/ActionListActivity$ActionListAdapter;)Lcom/android/mms/ui/ActionListActivity$ActionListAdapter;

    .line 253
    iget-object v0, p0, Lcom/android/mms/ui/ActionListActivity$1$1;->this$1:Lcom/android/mms/ui/ActionListActivity$1;

    iget-object v0, v0, Lcom/android/mms/ui/ActionListActivity$1;->this$0:Lcom/android/mms/ui/ActionListActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ActionListActivity$1$1;->this$1:Lcom/android/mms/ui/ActionListActivity$1;

    iget-object v1, v1, Lcom/android/mms/ui/ActionListActivity$1;->this$0:Lcom/android/mms/ui/ActionListActivity;

    #getter for: Lcom/android/mms/ui/ActionListActivity;->mAdapter:Lcom/android/mms/ui/ActionListActivity$ActionListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ActionListActivity;->access$100(Lcom/android/mms/ui/ActionListActivity;)Lcom/android/mms/ui/ActionListActivity$ActionListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ActionListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 255
    return-void
.end method
