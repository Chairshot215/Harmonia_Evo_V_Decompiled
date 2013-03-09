.class Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$1;
.super Ljava/lang/Object;
.source "UakChooseFlowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->RefreshContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 402
    iput-object p1, p0, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$1;->this$0:Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 404
    iget-object v2, p0, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$1;->this$0:Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;

    const v3, 0x7f08018f

    invoke-virtual {v2, v3}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListView;

    .line 405
    .local v1, list:Lcom/htc/widget/HtcListView;
    if-eqz v1, :cond_0

    .line 406
    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    .line 407
    .local v0, content:Landroid/widget/BaseAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 409
    .end local v0           #content:Landroid/widget/BaseAdapter;
    :cond_0
    return-void
.end method
