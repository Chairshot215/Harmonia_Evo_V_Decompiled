.class public Lcom/htc/fusion/fx/controls/FxTextLabel;
.super Lcom/htc/fusion/fx/FxNodeControl;
.source "FxTextLabel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fusion/fx/controls/FxTextLabel$LayoutChangedParameters;
    }
.end annotation


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/fusion/fx/FxNodeControl;-><init>(I)V

    return-void
.end method


# virtual methods
.method public native getBaseFontSize()D
.end method

.method public native getContent()Ljava/lang/CharSequence;
.end method

.method public native getEllipsizeMode()I
.end method

.method public native getFadeoutMode()I
.end method

.method public native getFadeoutStrength()F
.end method

.method public native getLayoutSize()Landroid/graphics/PointF;
.end method

.method public native getString()Ljava/lang/String;
.end method

.method public native setContent(Ljava/lang/CharSequence;)V
.end method

.method public native setEllipsize(I)V
.end method

.method public native setEnableMarquee(Z)V
.end method

.method public native setFadeout(IF)V
.end method

.method public native setString(Ljava/lang/String;)V
.end method
