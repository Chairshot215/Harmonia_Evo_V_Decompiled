.class public Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$SuggestionsViewKeyListener;
.super Ljava/lang/Object;
.source "SearchActivityView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SuggestionsViewKeyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;


# direct methods
.method protected constructor <init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;)V
    .locals 0
    .parameter

    .prologue
    .line 823
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$SuggestionsViewKeyListener;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

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
    .line 825
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$SuggestionsViewKeyListener;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->forwardKeyToQueryTextView(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
