.class public Lcom/google/android/finsky/layout/PlaylistControlButtons;
.super Landroid/widget/TextView;
.source "PlaylistControlButtons.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final mConnection:Lcom/google/android/finsky/previews/PreviewController;

.field private mDocs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation
.end field

.field private mIsPlaying:Z

.field private final mStatusListener:Lcom/google/android/finsky/previews/StatusListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 34
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/finsky/layout/PlaylistControlButtons;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/PlaylistControlButtons;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/PlaylistControlButtons;->mDocs:Ljava/util/Collection;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/PlaylistControlButtons;->mIsPlaying:Z

    .line 89
    new-instance v0, Lcom/google/android/finsky/layout/PlaylistControlButtons$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/layout/PlaylistControlButtons$1;-><init>(Lcom/google/android/finsky/layout/PlaylistControlButtons;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/PlaylistControlButtons;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    .line 43
    new-instance v0, Lcom/google/android/finsky/previews/PreviewController;

    iget-object v1, p0, Lcom/google/android/finsky/layout/PlaylistControlButtons;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    invoke-direct {v0, v1}, Lcom/google/android/finsky/previews/PreviewController;-><init>(Lcom/google/android/finsky/previews/StatusListener;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/PlaylistControlButtons;->mConnection:Lcom/google/android/finsky/previews/PreviewController;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/PlaylistControlButtons;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/PlaylistControlButtons;->setIsPlaying(Z)V

    return-void
.end method

.method private setIsPlaying(Z)V
    .locals 0
    .parameter "isPlaying"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/google/android/finsky/layout/PlaylistControlButtons;->mIsPlaying:Z

    .line 74
    invoke-direct {p0}, Lcom/google/android/finsky/layout/PlaylistControlButtons;->updateState()V

    .line 75
    return-void
.end method

.method private updateState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 79
    iget-boolean v1, p0, Lcom/google/android/finsky/layout/PlaylistControlButtons;->mIsPlaying:Z

    if-nez v1, :cond_0

    .line 80
    const v1, 0x7f070112

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/PlaylistControlButtons;->setText(I)V

    .line 81
    const v0, 0x7f02002d

    .line 86
    .local v0, drawableId:I
    :goto_0
    invoke-virtual {p0, v2, v2, v0, v2}, Lcom/google/android/finsky/layout/PlaylistControlButtons;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 87
    return-void

    .line 83
    .end local v0           #drawableId:I
    :cond_0
    const v1, 0x7f070113

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/PlaylistControlButtons;->setText(I)V

    .line 84
    const v0, 0x7f02002e

    .restart local v0       #drawableId:I
    goto :goto_0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 53
    iget-object v0, p0, Lcom/google/android/finsky/layout/PlaylistControlButtons;->mConnection:Lcom/google/android/finsky/previews/PreviewController;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/PreviewController;->getCurrentQueueSize()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/PlaylistControlButtons;->setIsPlaying(Z)V

    .line 54
    return-void

    .line 53
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/google/android/finsky/layout/PlaylistControlButtons;->mIsPlaying:Z

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/google/android/finsky/layout/PlaylistControlButtons;->mConnection:Lcom/google/android/finsky/previews/PreviewController;

    iget-object v1, p0, Lcom/google/android/finsky/layout/PlaylistControlButtons;->mDocs:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/previews/PreviewController;->play(Ljava/util/Collection;)V

    .line 66
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/PlaylistControlButtons;->setIsPlaying(Z)V

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/PlaylistControlButtons;->mConnection:Lcom/google/android/finsky/previews/PreviewController;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/PreviewController;->skip()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/finsky/layout/PlaylistControlButtons;->mConnection:Lcom/google/android/finsky/previews/PreviewController;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/PreviewController;->unbind()V

    .line 59
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 60
    return-void
.end method

.method public setDocuments(Ljava/util/Collection;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, docs:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/api/model/Document;>;"
    iput-object p1, p0, Lcom/google/android/finsky/layout/PlaylistControlButtons;->mDocs:Ljava/util/Collection;

    .line 48
    return-void
.end method
