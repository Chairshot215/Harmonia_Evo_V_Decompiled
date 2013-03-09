.class Lcom/m0narx/tweaks/RosieHideApps$1;
.super Landroid/os/Handler;
.source "RosieHideApps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/RosieHideApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/RosieHideApps;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/RosieHideApps;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/RosieHideApps$1;->this$0:Lcom/m0narx/tweaks/RosieHideApps;

    .line 125
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/m0narx/tweaks/RosieHideApps$1;->this$0:Lcom/m0narx/tweaks/RosieHideApps;

    #getter for: Lcom/m0narx/tweaks/RosieHideApps;->AppList:Lcom/htc/widget/HtcListView;
    invoke-static {v0}, Lcom/m0narx/tweaks/RosieHideApps;->access$0(Lcom/m0narx/tweaks/RosieHideApps;)Lcom/htc/widget/HtcListView;

    move-result-object v0

    iget-object v1, p0, Lcom/m0narx/tweaks/RosieHideApps$1;->this$0:Lcom/m0narx/tweaks/RosieHideApps;

    iget-object v1, v1, Lcom/m0narx/tweaks/RosieHideApps;->mAdapter:Lcom/m0narx/tweaks/RosieHideApps$AppListAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 128
    iget-object v0, p0, Lcom/m0narx/tweaks/RosieHideApps$1;->this$0:Lcom/m0narx/tweaks/RosieHideApps;

    #getter for: Lcom/m0narx/tweaks/RosieHideApps;->pDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/m0narx/tweaks/RosieHideApps;->access$1(Lcom/m0narx/tweaks/RosieHideApps;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 129
    return-void
.end method
