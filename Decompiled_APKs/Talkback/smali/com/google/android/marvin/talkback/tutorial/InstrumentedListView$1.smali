.class Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView$1;
.super Ljava/lang/Object;
.source "InstrumentedListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView;->performAccessibilityAction(ILandroid/os/Bundle;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView;

.field private final synthetic val$action:I


# direct methods
.method constructor <init>(Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView$1;->this$0:Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView;

    iput p2, p0, Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView$1;->val$action:I

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView$1;->this$0:Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView;

    #getter for: Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView;->mListener:Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView$ListViewListener;
    invoke-static {v0}, Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView;->access$0(Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView;)Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView$ListViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView$1;->this$0:Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView;

    #getter for: Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView;->mListener:Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView$ListViewListener;
    invoke-static {v0}, Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView;->access$0(Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView;)Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView$ListViewListener;

    move-result-object v0

    iget v1, p0, Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView$1;->val$action:I

    invoke-interface {v0, v1}, Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView$ListViewListener;->onPerformAccessibilityAction(I)V

    .line 59
    :cond_0
    return-void
.end method
