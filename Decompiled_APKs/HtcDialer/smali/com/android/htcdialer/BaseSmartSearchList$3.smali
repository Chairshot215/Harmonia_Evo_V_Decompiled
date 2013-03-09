.class Lcom/android/htcdialer/BaseSmartSearchList$3;
.super Ljava/lang/Object;
.source "BaseSmartSearchList.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htcdialer/BaseSmartSearchList;->newInputWatcher()Landroid/text/TextWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htcdialer/BaseSmartSearchList;


# direct methods
.method constructor <init>(Lcom/android/htcdialer/BaseSmartSearchList;)V
    .locals 0
    .parameter

    .prologue
    .line 502
    iput-object p1, p0, Lcom/android/htcdialer/BaseSmartSearchList$3;->this$0:Lcom/android/htcdialer/BaseSmartSearchList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 505
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 508
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 511
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 513
    .local v0, length:I
    if-lez v0, :cond_0

    .line 517
    :goto_0
    return-void

    .line 515
    :cond_0
    iget-object v1, p0, Lcom/android/htcdialer/BaseSmartSearchList$3;->this$0:Lcom/android/htcdialer/BaseSmartSearchList;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/htcdialer/BaseSmartSearchList;->search(ILjava/lang/String;)V

    goto :goto_0
.end method
