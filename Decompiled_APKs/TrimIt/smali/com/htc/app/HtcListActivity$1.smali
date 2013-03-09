.class Lcom/htc/app/HtcListActivity$1;
.super Ljava/lang/Object;
.source "HtcListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/HtcListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/HtcListActivity;


# direct methods
.method constructor <init>(Lcom/htc/app/HtcListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/htc/app/HtcListActivity$1;->this$0:Lcom/htc/app/HtcListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/htc/app/HtcListActivity$1;->this$0:Lcom/htc/app/HtcListActivity;

    iget-object v0, v0, Lcom/htc/app/HtcListActivity;->mList:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/app/HtcListActivity$1;->this$0:Lcom/htc/app/HtcListActivity;

    iget-object v1, v1, Lcom/htc/app/HtcListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->focusableViewAvailable(Landroid/view/View;)V

    .line 196
    return-void
.end method
