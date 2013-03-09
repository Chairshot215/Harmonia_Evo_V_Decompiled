.class public Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView;
.super Landroid/widget/ListView;
.source "InstrumentedListView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView$ListViewListener;
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mListener:Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView$ListViewListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView;->mHandler:Landroid/os/Handler;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView;->mHandler:Landroid/os/Handler;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView;->mHandler:Landroid/os/Handler;

    .line 45
    return-void
.end method

.method static synthetic access$0(Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView;)Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView$ListViewListener;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView;->mListener:Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView$ListViewListener;

    return-object v0
.end method


# virtual methods
.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 2
    .parameter "action"
    .parameter "arguments"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView$1;-><init>(Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 62
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public setInstrumentation(Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView$ListViewListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView;->mListener:Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView$ListViewListener;

    .line 49
    return-void
.end method
