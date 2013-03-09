.class Lcom/google/android/gm/preference/AboutFragment$2;
.super Landroid/text/style/URLSpan;
.source "AboutFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/preference/AboutFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/preference/AboutFragment;


# direct methods
.method constructor <init>(Lcom/google/android/gm/preference/AboutFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/google/android/gm/preference/AboutFragment$2;->this$0:Lcom/google/android/gm/preference/AboutFragment;

    invoke-direct {p0, p2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gm/Utils;->launchGoogleFeedback(Landroid/content/Context;)V

    .line 88
    return-void
.end method
