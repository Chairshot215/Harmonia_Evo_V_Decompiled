.class Lcom/htc/WifiRouter/UserManagement$3;
.super Ljava/lang/Object;
.source "UserManagement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/WifiRouter/UserManagement;->relayoutRequestList(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/WifiRouter/UserManagement;


# direct methods
.method constructor <init>(Lcom/htc/WifiRouter/UserManagement;)V
    .locals 0
    .parameter

    .prologue
    .line 633
    iput-object p1, p0, Lcom/htc/WifiRouter/UserManagement$3;->this$0:Lcom/htc/WifiRouter/UserManagement;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 635
    iget-object v2, p0, Lcom/htc/WifiRouter/UserManagement$3;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->mRequestContainer:Lcom/htc/widget/HtcListView;
    invoke-static {v2}, Lcom/htc/WifiRouter/UserManagement;->access$1300(Lcom/htc/WifiRouter/UserManagement;)Lcom/htc/widget/HtcListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 636
    .local v0, listParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/htc/WifiRouter/UserManagement$3;->this$0:Lcom/htc/WifiRouter/UserManagement;

    invoke-virtual {v2}, Lcom/htc/WifiRouter/UserManagement;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090048

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 637
    .local v1, request_user:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/WifiRouter/UserManagement$3;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->mrlistSeparator:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/htc/WifiRouter/UserManagement;->access$1500(Lcom/htc/WifiRouter/UserManagement;)Landroid/widget/RelativeLayout;

    move-result-object v2

    const v3, 0x2020010

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/WifiRouter/UserManagement$3;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->r_size:I
    invoke-static {v4}, Lcom/htc/WifiRouter/UserManagement;->access$1400(Lcom/htc/WifiRouter/UserManagement;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 639
    iget-object v2, p0, Lcom/htc/WifiRouter/UserManagement$3;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->r_size:I
    invoke-static {v2}, Lcom/htc/WifiRouter/UserManagement;->access$1400(Lcom/htc/WifiRouter/UserManagement;)I

    move-result v2

    if-lez v2, :cond_0

    .line 640
    iget-object v2, p0, Lcom/htc/WifiRouter/UserManagement$3;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->r_size:I
    invoke-static {v2}, Lcom/htc/WifiRouter/UserManagement;->access$1400(Lcom/htc/WifiRouter/UserManagement;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/WifiRouter/UserManagement$3;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->r_size:I
    invoke-static {v3}, Lcom/htc/WifiRouter/UserManagement;->access$1400(Lcom/htc/WifiRouter/UserManagement;)I

    move-result v3

    iget-object v4, p0, Lcom/htc/WifiRouter/UserManagement$3;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->listItemHeight:I
    invoke-static {v4}, Lcom/htc/WifiRouter/UserManagement;->access$1600(Lcom/htc/WifiRouter/UserManagement;)I

    move-result v4

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 641
    iget-object v2, p0, Lcom/htc/WifiRouter/UserManagement$3;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->mRequestContainer:Lcom/htc/widget/HtcListView;
    invoke-static {v2}, Lcom/htc/WifiRouter/UserManagement;->access$1300(Lcom/htc/WifiRouter/UserManagement;)Lcom/htc/widget/HtcListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 642
    iget-object v2, p0, Lcom/htc/WifiRouter/UserManagement$3;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->mRequestLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/htc/WifiRouter/UserManagement;->access$1700(Lcom/htc/WifiRouter/UserManagement;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 643
    iget-object v2, p0, Lcom/htc/WifiRouter/UserManagement$3;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->rlistAdapter:Lcom/htc/WifiRouter/UserManagement$MonitorListAdapter;
    invoke-static {v2}, Lcom/htc/WifiRouter/UserManagement;->access$1800(Lcom/htc/WifiRouter/UserManagement;)Lcom/htc/WifiRouter/UserManagement$MonitorListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/WifiRouter/UserManagement$MonitorListAdapter;->notifyDataSetChanged()V

    .line 647
    :goto_0
    return-void

    .line 645
    :cond_0
    iget-object v2, p0, Lcom/htc/WifiRouter/UserManagement$3;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->mRequestLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/htc/WifiRouter/UserManagement;->access$1700(Lcom/htc/WifiRouter/UserManagement;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
