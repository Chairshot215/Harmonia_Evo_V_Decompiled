.class public abstract Lcom/htc/android/rosie/home/fxcontrol/SlideAnimator;
.super Ljava/lang/Object;
.source "SlideAnimator.java"


# instance fields
.field protected mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

.field protected mSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

.field protected mTranslationMarkers:[Lcom/htc/fusion/fx/Marker;


# direct methods
.method public constructor <init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;Lcom/htc/fusion/fx/FxTimelineControl;I)V
    .locals 1
    .parameter "fxWorkspace"
    .parameter "slideControl"
    .parameter "screenCount"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    add-int/lit8 v0, p3, 0x1

    new-array v0, v0, [Lcom/htc/fusion/fx/Marker;

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/SlideAnimator;->mTranslationMarkers:[Lcom/htc/fusion/fx/Marker;

    .line 19
    iput-object p2, p0, Lcom/htc/android/rosie/home/fxcontrol/SlideAnimator;->mSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 20
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/SlideAnimator;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    .line 21
    invoke-virtual {p0, p3}, Lcom/htc/android/rosie/home/fxcontrol/SlideAnimator;->initMarkers(I)V

    .line 22
    return-void
.end method


# virtual methods
.method public getInitialFrame(I)F
    .locals 1
    .parameter "defaultScreenIndex"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/SlideAnimator;->mTranslationMarkers:[Lcom/htc/fusion/fx/Marker;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    int-to-float v0, v0

    return v0
.end method

.method protected abstract initMarkers(I)V
.end method

.method public abstract scrollXToFrame(FILcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$SnapInfo;)F
.end method

.method public abstract updateScreenCount(I)V
.end method
