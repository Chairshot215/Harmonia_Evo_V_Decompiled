.class public Lcom/htc/fusion/fx/controls/FxProgressBar;
.super Lcom/htc/fusion/fx/FxTimelineControl;
.source "FxProgressBar.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/fusion/fx/FxTimelineControl;-><init>(I)V

    return-void
.end method


# virtual methods
.method public native getPercentageOffset()F
.end method

.method public native getValue()F
.end method

.method public native getValueChangedSource()Lcom/htc/fusion/fx/IMessageSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/fusion/fx/IMessageSource",
            "<",
            "Lcom/htc/fusion/fx/controls/FxProgressData;",
            ">;"
        }
    .end annotation
.end method

.method public native getValueMax()F
.end method

.method public native getValueMin()F
.end method

.method public native setValue(F)V
.end method

.method public native setValueByPercentage(F)V
.end method
