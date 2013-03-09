.class Lcom/htc/android/htcime/HTCIMMView$3;
.super Ljava/lang/Object;
.source "HTCIMMView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/HTCIMMView;->AddWordExtractViewInflate()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/HTCIMMView;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/HTCIMMView;)V
    .locals 0
    .parameter

    .prologue
    .line 2214
    iput-object p1, p0, Lcom/htc/android/htcime/HTCIMMView$3;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .parameter "buffer"

    .prologue
    .line 2224
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView$3;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #calls: Lcom/htc/android/htcime/HTCIMMView;->updateAWExtractViewButtonState()V
    invoke-static {v0}, Lcom/htc/android/htcime/HTCIMMView;->access$1000(Lcom/htc/android/htcime/HTCIMMView;)V

    .line 2225
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "buffer"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 2217
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "buffer"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 2221
    return-void
.end method
