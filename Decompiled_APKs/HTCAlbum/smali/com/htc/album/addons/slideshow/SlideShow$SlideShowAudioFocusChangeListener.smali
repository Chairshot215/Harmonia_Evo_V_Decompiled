.class Lcom/htc/album/addons/slideshow/SlideShow$SlideShowAudioFocusChangeListener;
.super Ljava/lang/Object;
.source "SlideShow.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/slideshow/SlideShow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlideShowAudioFocusChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/slideshow/SlideShow;


# direct methods
.method private constructor <init>(Lcom/htc/album/addons/slideshow/SlideShow;)V
    .locals 0
    .parameter

    .prologue
    .line 1395
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideShow$SlideShowAudioFocusChangeListener;->this$0:Lcom/htc/album/addons/slideshow/SlideShow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/addons/slideshow/SlideShow;Lcom/htc/album/addons/slideshow/SlideShow$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1395
    invoke-direct {p0, p1}, Lcom/htc/album/addons/slideshow/SlideShow$SlideShowAudioFocusChangeListener;-><init>(Lcom/htc/album/addons/slideshow/SlideShow;)V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 0
    .parameter "focusChange"

    .prologue
    .line 1421
    return-void
.end method
