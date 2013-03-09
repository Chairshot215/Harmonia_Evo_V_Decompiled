.class public Lcom/google/android/finsky/previews/PreviewController;
.super Ljava/lang/Object;
.source "PreviewController.java"


# static fields
.field private static final mPlayer:Lcom/google/android/finsky/previews/PreviewPlayer;


# instance fields
.field private final mStatusListener:Lcom/google/android/finsky/previews/StatusListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/google/android/finsky/previews/PreviewPlayer;

    invoke-direct {v0}, Lcom/google/android/finsky/previews/PreviewPlayer;-><init>()V

    sput-object v0, Lcom/google/android/finsky/previews/PreviewController;->mPlayer:Lcom/google/android/finsky/previews/PreviewPlayer;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/previews/StatusListener;)V
    .locals 1
    .parameter "statusListener"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v0, Lcom/google/android/finsky/previews/PreviewController;->mPlayer:Lcom/google/android/finsky/previews/PreviewPlayer;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/PreviewPlayer;->initialize()V

    .line 25
    iput-object p1, p0, Lcom/google/android/finsky/previews/PreviewController;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    .line 26
    sget-object v0, Lcom/google/android/finsky/previews/PreviewController;->mPlayer:Lcom/google/android/finsky/previews/PreviewPlayer;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/previews/PreviewPlayer;->addStatusListener(Lcom/google/android/finsky/previews/StatusListener;)V

    .line 27
    return-void
.end method

.method static synthetic access$000()Lcom/google/android/finsky/previews/PreviewPlayer;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/google/android/finsky/previews/PreviewController;->mPlayer:Lcom/google/android/finsky/previews/PreviewPlayer;

    return-object v0
.end method

.method public static reset()V
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/google/android/finsky/previews/PreviewController;->mPlayer:Lcom/google/android/finsky/previews/PreviewPlayer;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/PreviewPlayer;->reset()V

    .line 62
    return-void
.end method

.method public static setupOnBackStackChangedListener(Lcom/google/android/finsky/navigationmanager/NavigationManager;)V
    .locals 1
    .parameter "navigationManager"

    .prologue
    .line 70
    new-instance v0, Lcom/google/android/finsky/previews/PreviewController$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/previews/PreviewController$1;-><init>(Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    .line 83
    .local v0, listener:Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->removeOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    .line 84
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    .line 85
    return-void
.end method


# virtual methods
.method public getCurrentQueueSize()I
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/google/android/finsky/previews/PreviewController;->mPlayer:Lcom/google/android/finsky/previews/PreviewPlayer;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/PreviewPlayer;->getCurrentQueueSize()I

    move-result v0

    return v0
.end method

.method public getCurrentTrack()Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/google/android/finsky/previews/PreviewController;->mPlayer:Lcom/google/android/finsky/previews/PreviewPlayer;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/PreviewPlayer;->getCurrentTrack()Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    move-result-object v0

    return-object v0
.end method

.method public getStatusUpdate(Lcom/google/android/finsky/previews/StatusListener;)V
    .locals 1
    .parameter "statusListener"

    .prologue
    .line 50
    sget-object v0, Lcom/google/android/finsky/previews/PreviewController;->mPlayer:Lcom/google/android/finsky/previews/PreviewPlayer;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/previews/PreviewPlayer;->notifyListener(Lcom/google/android/finsky/previews/StatusListener;)V

    .line 51
    return-void
.end method

.method public play(Ljava/util/Collection;)V
    .locals 1
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
    .line 34
    .local p1, tracks:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/api/model/Document;>;"
    sget-object v0, Lcom/google/android/finsky/previews/PreviewController;->mPlayer:Lcom/google/android/finsky/previews/PreviewPlayer;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/previews/PreviewPlayer;->play(Ljava/util/Collection;)V

    .line 35
    return-void
.end method

.method public skip()V
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/google/android/finsky/previews/PreviewController;->mPlayer:Lcom/google/android/finsky/previews/PreviewPlayer;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/PreviewPlayer;->skip()V

    .line 43
    return-void
.end method

.method public togglePlayback(Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;)V
    .locals 1
    .parameter "track"

    .prologue
    .line 38
    sget-object v0, Lcom/google/android/finsky/previews/PreviewController;->mPlayer:Lcom/google/android/finsky/previews/PreviewPlayer;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/previews/PreviewPlayer;->togglePlayback(Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;)V

    .line 39
    return-void
.end method

.method public unbind()V
    .locals 2

    .prologue
    .line 30
    sget-object v0, Lcom/google/android/finsky/previews/PreviewController;->mPlayer:Lcom/google/android/finsky/previews/PreviewPlayer;

    iget-object v1, p0, Lcom/google/android/finsky/previews/PreviewController;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/previews/PreviewPlayer;->removeStatusListener(Lcom/google/android/finsky/previews/StatusListener;)V

    .line 31
    return-void
.end method
