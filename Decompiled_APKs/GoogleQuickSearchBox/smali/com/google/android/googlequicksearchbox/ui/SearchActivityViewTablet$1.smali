.class Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet$1;
.super Ljava/lang/Object;
.source "SearchActivityViewTablet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet$1;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet$1;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->isQueryEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet$1;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;

    iget-object v0, v0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->mExitClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet$1;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;

    iget-object v0, v0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->mExitClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 66
    :cond_0
    return-void
.end method
