.class public Lcom/futuredial/ui/CMultiCheckHandle;
.super Ljava/lang/Object;
.source "CMultiCheckHandle.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# instance fields
.field protected m_selectedItems:Lcom/futuredial/ui/ListData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/futuredial/ui/ListData;

    invoke-direct {v0}, Lcom/futuredial/ui/ListData;-><init>()V

    iput-object v0, p0, Lcom/futuredial/ui/CMultiCheckHandle;->m_selectedItems:Lcom/futuredial/ui/ListData;

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, arg0:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    move-object v0, p2

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 65
    .local v0, t:Landroid/widget/CheckedTextView;
    const-string v1, "CMultiCheckHandle"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "item:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "clicked"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/futuredial/ui/CMultiCheckHandle;->m_selectedItems:Lcom/futuredial/ui/ListData;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/futuredial/ui/ListData;->add(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 70
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/futuredial/ui/CMultiCheckHandle;->m_selectedItems:Lcom/futuredial/ui/ListData;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/futuredial/ui/ListData;->removeByIndex(Ljava/lang/Integer;)V

    goto :goto_0
.end method
