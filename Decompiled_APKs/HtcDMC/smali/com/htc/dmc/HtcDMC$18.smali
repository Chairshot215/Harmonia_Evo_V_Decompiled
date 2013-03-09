.class Lcom/htc/dmc/HtcDMC$18;
.super Ljava/lang/Object;
.source "HtcDMC.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dmc/HtcDMC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dmc/HtcDMC;


# direct methods
.method constructor <init>(Lcom/htc/dmc/HtcDMC;)V
    .locals 0
    .parameter

    .prologue
    .line 3944
    iput-object p1, p0, Lcom/htc/dmc/HtcDMC$18;->this$0:Lcom/htc/dmc/HtcDMC;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 3949
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-static {}, Lcom/htc/dmc/HtcDMC;->access$800()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1090003

    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$18;->this$0:Lcom/htc/dmc/HtcDMC;

    #calls: Lcom/htc/dmc/HtcDMC;->generateMenuItemString()[Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/dmc/HtcDMC;->access$5500(Lcom/htc/dmc/HtcDMC;)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 3952
    .local v0, adapter:Landroid/widget/ArrayAdapter;
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$18;->this$0:Lcom/htc/dmc/HtcDMC;

    new-instance v2, Lcom/htc/widget/HtcPopupWindowWrapper;

    invoke-direct {v2}, Lcom/htc/widget/HtcPopupWindowWrapper;-><init>()V

    iput-object v2, v1, Lcom/htc/dmc/HtcDMC;->mMoreMenuPopupWindow:Lcom/htc/widget/HtcPopupWindowWrapper;

    .line 3953
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$18;->this$0:Lcom/htc/dmc/HtcDMC;

    iget-object v1, v1, Lcom/htc/dmc/HtcDMC;->mMoreMenuPopupWindow:Lcom/htc/widget/HtcPopupWindowWrapper;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcPopupWindowWrapper;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3954
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$18;->this$0:Lcom/htc/dmc/HtcDMC;

    iget-object v1, v1, Lcom/htc/dmc/HtcDMC;->mMoreMenuPopupWindow:Lcom/htc/widget/HtcPopupWindowWrapper;

    invoke-virtual {v1, p1}, Lcom/htc/widget/HtcPopupWindowWrapper;->setArchorView(Landroid/view/View;)V

    .line 3955
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$18;->this$0:Lcom/htc/dmc/HtcDMC;

    iget-object v1, v1, Lcom/htc/dmc/HtcDMC;->mMoreMenuPopupWindow:Lcom/htc/widget/HtcPopupWindowWrapper;

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$18;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mMoreItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v2}, Lcom/htc/dmc/HtcDMC;->access$5600(Lcom/htc/dmc/HtcDMC;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcPopupWindowWrapper;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 3957
    :try_start_0
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$18;->this$0:Lcom/htc/dmc/HtcDMC;

    iget-object v1, v1, Lcom/htc/dmc/HtcDMC;->mMoreMenuPopupWindow:Lcom/htc/widget/HtcPopupWindowWrapper;

    invoke-virtual {v1}, Lcom/htc/widget/HtcPopupWindowWrapper;->showPopupWindow()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3961
    :goto_0
    return-void

    .line 3958
    :catch_0
    move-exception v1

    goto :goto_0
.end method
