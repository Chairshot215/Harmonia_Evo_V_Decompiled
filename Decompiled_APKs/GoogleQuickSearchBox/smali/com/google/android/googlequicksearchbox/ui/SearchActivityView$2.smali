.class Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$2;
.super Ljava/lang/Object;
.source "SearchActivityView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$2;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$2;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->forwardKeyToQueryTextView(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
