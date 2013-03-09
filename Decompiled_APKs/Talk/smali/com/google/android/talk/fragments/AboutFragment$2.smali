.class Lcom/google/android/talk/fragments/AboutFragment$2;
.super Landroid/text/style/ClickableSpan;
.source "AboutFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/AboutFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/AboutFragment;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/AboutFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/android/talk/fragments/AboutFragment$2;->this$0:Lcom/google/android/talk/fragments/AboutFragment;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "widget"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/talk/fragments/AboutFragment$2;->this$0:Lcom/google/android/talk/fragments/AboutFragment;

    invoke-virtual {v0}, Lcom/google/android/talk/fragments/AboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 66
    return-void
.end method
