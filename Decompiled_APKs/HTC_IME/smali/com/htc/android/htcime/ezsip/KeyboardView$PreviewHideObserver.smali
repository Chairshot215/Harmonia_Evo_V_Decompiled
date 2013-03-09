.class Lcom/htc/android/htcime/ezsip/KeyboardView$PreviewHideObserver;
.super Ljava/lang/Object;
.source "KeyboardView.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/ezsip/KeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewHideObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/ezsip/KeyboardView;


# direct methods
.method private constructor <init>(Lcom/htc/android/htcime/ezsip/KeyboardView;)V
    .locals 0
    .parameter

    .prologue
    .line 3301
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView$PreviewHideObserver;->this$0:Lcom/htc/android/htcime/ezsip/KeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/htcime/ezsip/KeyboardView;Lcom/htc/android/htcime/ezsip/KeyboardView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3301
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/ezsip/KeyboardView$PreviewHideObserver;-><init>(Lcom/htc/android/htcime/ezsip/KeyboardView;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1
    .parameter "o"
    .parameter "arg"

    .prologue
    .line 3304
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView$PreviewHideObserver;->this$0:Lcom/htc/android/htcime/ezsip/KeyboardView;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->showKey_PreviewGone()V

    .line 3305
    return-void
.end method
