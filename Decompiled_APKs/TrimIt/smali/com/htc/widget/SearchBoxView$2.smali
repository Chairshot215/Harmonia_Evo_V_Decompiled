.class Lcom/htc/widget/SearchBoxView$2;
.super Ljava/lang/Object;
.source "SearchBoxView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/SearchBoxView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/SearchBoxView;


# direct methods
.method constructor <init>(Lcom/htc/widget/SearchBoxView;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/htc/widget/SearchBoxView$2;->this$0:Lcom/htc/widget/SearchBoxView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 63
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/htc/widget/SearchBoxView$2;->this$0:Lcom/htc/widget/SearchBoxView;

    #getter for: Lcom/htc/widget/SearchBoxView;->mCloseButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/htc/widget/SearchBoxView;->access$200(Lcom/htc/widget/SearchBoxView;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/SearchBoxView$2;->this$0:Lcom/htc/widget/SearchBoxView;

    #getter for: Lcom/htc/widget/SearchBoxView;->mCloseButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/htc/widget/SearchBoxView;->access$200(Lcom/htc/widget/SearchBoxView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 70
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 73
    return-void
.end method
