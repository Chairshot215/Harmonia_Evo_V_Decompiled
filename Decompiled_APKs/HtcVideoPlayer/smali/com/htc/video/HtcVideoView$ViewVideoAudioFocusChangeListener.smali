.class Lcom/htc/video/HtcVideoView$ViewVideoAudioFocusChangeListener;
.super Ljava/lang/Object;
.source "HtcVideoView.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/video/HtcVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewVideoAudioFocusChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/video/HtcVideoView;


# direct methods
.method private constructor <init>(Lcom/htc/video/HtcVideoView;)V
    .locals 0
    .parameter

    .prologue
    .line 1206
    iput-object p1, p0, Lcom/htc/video/HtcVideoView$ViewVideoAudioFocusChangeListener;->this$0:Lcom/htc/video/HtcVideoView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/video/HtcVideoView;Lcom/htc/video/HtcVideoView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1206
    invoke-direct {p0, p1}, Lcom/htc/video/HtcVideoView$ViewVideoAudioFocusChangeListener;-><init>(Lcom/htc/video/HtcVideoView;)V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 0
    .parameter "focusChange"

    .prologue
    .line 1232
    return-void
.end method
