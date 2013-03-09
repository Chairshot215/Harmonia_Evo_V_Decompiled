.class public Lcom/google/android/voicesearch/actioneditor/PopupManager;
.super Ljava/lang/Object;
.source "PopupManager.java"


# instance fields
.field private mLastShownPopup:Lcom/google/android/voicesearch/actioneditor/ArrowPopup;

.field private mOutsideKeyViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mOutsideTouchViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/PopupManager;->mOutsideTouchViews:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/PopupManager;->mOutsideKeyViews:Ljava/util/List;

    .line 35
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/PopupManager;->mView:Landroid/view/View;

    .line 36
    return-void
.end method


# virtual methods
.method public addFallthroughKeyView(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/PopupManager;->mOutsideKeyViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method

.method public addFallthroughTouchView(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/PopupManager;->mOutsideTouchViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    return-void
.end method

.method public dismissCurrentPopup()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/PopupManager;->mLastShownPopup:Lcom/google/android/voicesearch/actioneditor/ArrowPopup;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/PopupManager;->mLastShownPopup:Lcom/google/android/voicesearch/actioneditor/ArrowPopup;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->dismiss()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/PopupManager;->mLastShownPopup:Lcom/google/android/voicesearch/actioneditor/ArrowPopup;

    .line 68
    :cond_0
    return-void
.end method

.method public setupPopup(Lcom/google/android/voicesearch/actioneditor/ArrowPopup;)V
    .locals 1
    .parameter "popup"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/PopupManager;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->setWindowToken(Landroid/os/IBinder;)V

    .line 60
    return-void
.end method

.method public showPopup(Lcom/google/android/voicesearch/actioneditor/ArrowPopup;Landroid/graphics/Point;)V
    .locals 0
    .parameter "popup"
    .parameter "point"

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/actioneditor/PopupManager;->setupPopup(Lcom/google/android/voicesearch/actioneditor/ArrowPopup;)V

    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/google/android/voicesearch/actioneditor/PopupManager;->showPopupWithoutSetup(Lcom/google/android/voicesearch/actioneditor/ArrowPopup;Landroid/graphics/Point;)V

    .line 73
    return-void
.end method

.method public showPopupWithoutSetup(Lcom/google/android/voicesearch/actioneditor/ArrowPopup;Landroid/graphics/Point;)V
    .locals 1
    .parameter "popup"
    .parameter "point"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/PopupManager;->mLastShownPopup:Lcom/google/android/voicesearch/actioneditor/ArrowPopup;

    if-eq v0, p1, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/PopupManager;->dismissCurrentPopup()V

    .line 79
    :cond_0
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/PopupManager;->mLastShownPopup:Lcom/google/android/voicesearch/actioneditor/ArrowPopup;

    .line 80
    invoke-virtual {p1, p2}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->showAt(Landroid/graphics/Point;)V

    .line 81
    return-void
.end method
