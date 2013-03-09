.class Lcom/android/browser/view/BasePieView$1;
.super Landroid/database/DataSetObserver;
.source "BasePieView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/view/BasePieView;->setAdapter(Landroid/widget/Adapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/view/BasePieView;


# direct methods
.method constructor <init>(Lcom/android/browser/view/BasePieView;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/browser/view/BasePieView$1;->this$0:Lcom/android/browser/view/BasePieView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/browser/view/BasePieView$1;->this$0:Lcom/android/browser/view/BasePieView;

    invoke-virtual {v0}, Lcom/android/browser/view/BasePieView;->buildViews()V

    .line 66
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/browser/view/BasePieView$1;->this$0:Lcom/android/browser/view/BasePieView;

    iget-object v0, v0, Lcom/android/browser/view/BasePieView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 71
    return-void
.end method
