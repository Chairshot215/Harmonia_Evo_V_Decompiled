.class Lcom/m0narx/tweaks/DeleteAndRearrangeQS$2;
.super Ljava/lang/Object;
.source "DeleteAndRearrangeQS.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/DeleteAndRearrangeQS;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/DeleteAndRearrangeQS;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$2;->this$0:Lcom/m0narx/tweaks/DeleteAndRearrangeQS;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "arg0"

    .prologue
    .line 71
    iget-object v5, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$2;->this$0:Lcom/m0narx/tweaks/DeleteAndRearrangeQS;

    #getter for: Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->QSList:Lcom/htc/widget/HtcReorderListView;
    invoke-static {v5}, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->access$0(Lcom/m0narx/tweaks/DeleteAndRearrangeQS;)Lcom/htc/widget/HtcReorderListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcReorderListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;

    .line 72
    .local v1, Adapter:Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;
    const-string v0, ""

    .line 73
    .local v0, ActiveIds:Ljava/lang/String;
    const-string v2, ""

    .line 74
    .local v2, AllIds:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget-object v5, v1, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v4, v5, :cond_0

    .line 91
    iget-object v5, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$2;->this$0:Lcom/m0narx/tweaks/DeleteAndRearrangeQS;

    iget-object v5, v5, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_quicksettings_full"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 92
    iget-object v5, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$2;->this$0:Lcom/m0narx/tweaks/DeleteAndRearrangeQS;

    iget-object v5, v5, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_quicksettings"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 93
    iget-object v5, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$2;->this$0:Lcom/m0narx/tweaks/DeleteAndRearrangeQS;

    invoke-virtual {v5}, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->finish()V

    .line 94
    return-void

    .line 75
    :cond_0
    iget-object v5, v1, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 76
    .local v3, QSName:Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 77
    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 78
    move-object v2, v3

    .line 83
    :cond_1
    :goto_1
    iget-object v5, v1, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;->isChecked:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_2

    .line 84
    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 85
    move-object v0, v3

    .line 74
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 80
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 87
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method
