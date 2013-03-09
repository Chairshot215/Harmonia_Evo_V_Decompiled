.class public Lcom/htc/android/rosie/home/fxcontrol/PageSlideZControl;
.super Ljava/lang/Object;
.source "PageSlideZControl.java"


# instance fields
.field private mFrom0:Lcom/htc/fusion/fx/Marker;

.field private mFrom1:Lcom/htc/fusion/fx/Marker;

.field private mFrom5:Lcom/htc/fusion/fx/Marker;

.field private mFrom6:Lcom/htc/fusion/fx/Marker;

.field private mPageSlideZControl:Lcom/htc/fusion/fx/FxTimelineControl;


# direct methods
.method public constructor <init>(Lcom/htc/fusion/fx/FxTimelineControl;)V
    .locals 2
    .parameter "control"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideZControl;->mPageSlideZControl:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 13
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideZControl;->mPageSlideZControl:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideZControl;->mPageSlideZControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "0to3"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideZControl;->mFrom0:Lcom/htc/fusion/fx/Marker;

    .line 15
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideZControl;->mPageSlideZControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "1to3"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideZControl;->mFrom1:Lcom/htc/fusion/fx/Marker;

    .line 16
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideZControl;->mPageSlideZControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "5to3"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideZControl;->mFrom5:Lcom/htc/fusion/fx/Marker;

    .line 17
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideZControl;->mPageSlideZControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "6to3"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideZControl;->mFrom6:Lcom/htc/fusion/fx/Marker;

    .line 19
    :cond_0
    return-void
.end method


# virtual methods
.method public setFrame(IIII)V
    .locals 4
    .parameter "begin"
    .parameter "end"
    .parameter "screenWidth"
    .parameter "scrollX"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideZControl;->mPageSlideZControl:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 23
    packed-switch p1, :pswitch_data_0

    .line 38
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 25
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideZControl;->mPageSlideZControl:Lcom/htc/fusion/fx/FxTimelineControl;

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideZControl;->mFrom0:Lcom/htc/fusion/fx/Marker;

    iget v1, v1, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideZControl;->mFrom0:Lcom/htc/fusion/fx/Marker;

    iget v2, v2, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    sub-int/2addr v1, v2

    mul-int/2addr v1, p4

    int-to-float v1, v1

    mul-int/lit8 v2, p3, 0x3

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideZControl;->mFrom0:Lcom/htc/fusion/fx/Marker;

    iget v2, v2, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    goto :goto_0

    .line 28
    :pswitch_2
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideZControl;->mPageSlideZControl:Lcom/htc/fusion/fx/FxTimelineControl;

    mul-int/lit8 v1, p3, 0x1

    sub-int v1, p4, v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideZControl;->mFrom1:Lcom/htc/fusion/fx/Marker;

    iget v2, v2, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideZControl;->mFrom1:Lcom/htc/fusion/fx/Marker;

    iget v3, v3, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    sub-int/2addr v2, v3

    mul-int/2addr v1, v2

    int-to-float v1, v1

    mul-int/lit8 v2, p3, 0x3

    mul-int/lit8 v3, p3, 0x1

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideZControl;->mFrom1:Lcom/htc/fusion/fx/Marker;

    iget v2, v2, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    goto :goto_0

    .line 31
    :pswitch_3
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideZControl;->mPageSlideZControl:Lcom/htc/fusion/fx/FxTimelineControl;

    mul-int/lit8 v1, p3, 0x5

    sub-int v1, p4, v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideZControl;->mFrom5:Lcom/htc/fusion/fx/Marker;

    iget v2, v2, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideZControl;->mFrom5:Lcom/htc/fusion/fx/Marker;

    iget v3, v3, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    sub-int/2addr v2, v3

    mul-int/2addr v1, v2

    int-to-float v1, v1

    mul-int/lit8 v2, p3, 0x3

    mul-int/lit8 v3, p3, 0x5

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideZControl;->mFrom5:Lcom/htc/fusion/fx/Marker;

    iget v2, v2, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    goto :goto_0

    .line 34
    :pswitch_4
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideZControl;->mPageSlideZControl:Lcom/htc/fusion/fx/FxTimelineControl;

    mul-int/lit8 v1, p3, 0x6

    sub-int v1, p4, v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideZControl;->mFrom6:Lcom/htc/fusion/fx/Marker;

    iget v2, v2, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideZControl;->mFrom6:Lcom/htc/fusion/fx/Marker;

    iget v3, v3, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    sub-int/2addr v2, v3

    mul-int/2addr v1, v2

    int-to-float v1, v1

    mul-int/lit8 v2, p3, 0x3

    mul-int/lit8 v3, p3, 0x6

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideZControl;->mFrom6:Lcom/htc/fusion/fx/Marker;

    iget v2, v2, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    goto/16 :goto_0

    .line 23
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
