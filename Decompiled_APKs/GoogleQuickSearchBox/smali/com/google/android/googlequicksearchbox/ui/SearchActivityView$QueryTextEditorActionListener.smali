.class Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$QueryTextEditorActionListener;
.super Ljava/lang/Object;
.source "SearchActivityView.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryTextEditorActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;


# direct methods
.method private constructor <init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;)V
    .locals 0
    .parameter

    .prologue
    .line 863
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$QueryTextEditorActionListener;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 863
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$QueryTextEditorActionListener;-><init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;)V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 865
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 866
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$QueryTextEditorActionListener;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    invoke-virtual {v1, v0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->onSearchClicked(I)Z

    .line 879
    :cond_0
    :goto_0
    return v0

    .line 870
    :cond_1
    if-nez p2, :cond_2

    if-eqz p3, :cond_2

    .line 872
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 874
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$QueryTextEditorActionListener;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    invoke-virtual {v1, v0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->onSearchClicked(I)Z

    goto :goto_0

    .line 879
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
