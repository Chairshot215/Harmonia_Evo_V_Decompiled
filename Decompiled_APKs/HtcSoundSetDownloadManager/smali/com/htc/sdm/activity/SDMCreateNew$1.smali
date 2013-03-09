.class Lcom/htc/sdm/activity/SDMCreateNew$1;
.super Ljava/lang/Object;
.source "SDMCreateNew.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdm/activity/SDMCreateNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sdm/activity/SDMCreateNew;


# direct methods
.method constructor <init>(Lcom/htc/sdm/activity/SDMCreateNew;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/htc/sdm/activity/SDMCreateNew$1;->this$0:Lcom/htc/sdm/activity/SDMCreateNew;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter "s"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, name:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 78
    iget-object v1, p0, Lcom/htc/sdm/activity/SDMCreateNew$1;->this$0:Lcom/htc/sdm/activity/SDMCreateNew;

    #getter for: Lcom/htc/sdm/activity/SDMCreateNew;->mDoneBtn:Lcom/htc/widget/HtcFooterButton;
    invoke-static {v1}, Lcom/htc/sdm/activity/SDMCreateNew;->access$000(Lcom/htc/sdm/activity/SDMCreateNew;)Lcom/htc/widget/HtcFooterButton;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/htc/sdm/activity/SDMCreateNew$1;->this$0:Lcom/htc/sdm/activity/SDMCreateNew;

    #getter for: Lcom/htc/sdm/activity/SDMCreateNew;->mDoneBtn:Lcom/htc/widget/HtcFooterButton;
    invoke-static {v1}, Lcom/htc/sdm/activity/SDMCreateNew;->access$000(Lcom/htc/sdm/activity/SDMCreateNew;)Lcom/htc/widget/HtcFooterButton;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 81
    iget-object v1, p0, Lcom/htc/sdm/activity/SDMCreateNew$1;->this$0:Lcom/htc/sdm/activity/SDMCreateNew;

    #getter for: Lcom/htc/sdm/activity/SDMCreateNew;->mDoneBtn:Lcom/htc/widget/HtcFooterButton;
    invoke-static {v1}, Lcom/htc/sdm/activity/SDMCreateNew;->access$000(Lcom/htc/sdm/activity/SDMCreateNew;)Lcom/htc/widget/HtcFooterButton;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setFocusable(Z)V

    .line 82
    iget-object v1, p0, Lcom/htc/sdm/activity/SDMCreateNew$1;->this$0:Lcom/htc/sdm/activity/SDMCreateNew;

    invoke-virtual {v1}, Lcom/htc/sdm/activity/SDMCreateNew;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090068

    invoke-static {v1, v2}, Lcom/htc/sdm/util/SDMUtil;->showToast(Landroid/content/Context;I)V

    .line 94
    .end local v0           #name:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 87
    .restart local v0       #name:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/htc/sdm/activity/SDMCreateNew$1;->this$0:Lcom/htc/sdm/activity/SDMCreateNew;

    #getter for: Lcom/htc/sdm/activity/SDMCreateNew;->mDoneBtn:Lcom/htc/widget/HtcFooterButton;
    invoke-static {v1}, Lcom/htc/sdm/activity/SDMCreateNew;->access$000(Lcom/htc/sdm/activity/SDMCreateNew;)Lcom/htc/widget/HtcFooterButton;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/htc/sdm/activity/SDMCreateNew$1;->this$0:Lcom/htc/sdm/activity/SDMCreateNew;

    #getter for: Lcom/htc/sdm/activity/SDMCreateNew;->mDoneBtn:Lcom/htc/widget/HtcFooterButton;
    invoke-static {v1}, Lcom/htc/sdm/activity/SDMCreateNew;->access$000(Lcom/htc/sdm/activity/SDMCreateNew;)Lcom/htc/widget/HtcFooterButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 90
    iget-object v1, p0, Lcom/htc/sdm/activity/SDMCreateNew$1;->this$0:Lcom/htc/sdm/activity/SDMCreateNew;

    #getter for: Lcom/htc/sdm/activity/SDMCreateNew;->mDoneBtn:Lcom/htc/widget/HtcFooterButton;
    invoke-static {v1}, Lcom/htc/sdm/activity/SDMCreateNew;->access$000(Lcom/htc/sdm/activity/SDMCreateNew;)Lcom/htc/widget/HtcFooterButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcFooterButton;->setFocusable(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 64
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 69
    return-void
.end method
