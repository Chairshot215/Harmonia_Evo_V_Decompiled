.class public Lcom/htc/view/DisplaySetting;
.super Ljava/lang/Object;
.source "DisplaySetting.java"


# static fields
.field public static final STEREOSCOPIC_3D_FORMAT_INTERLEAVED:I = 0x3

.field public static final STEREOSCOPIC_3D_FORMAT_OFF:I = 0x0

.field public static final STEREOSCOPIC_3D_FORMAT_SIDE_BY_SIDE:I = 0x1

.field public static final STEREOSCOPIC_3D_FORMAT_TOP_BOTTOM:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setStereoscopic3DFormat(Landroid/view/Surface;I)Z
    .locals 3
    .parameter "surface"
    .parameter "format"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 42
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    packed-switch p1, :pswitch_data_0

    :cond_0
    move v0, v1

    .line 64
    :goto_0
    return v0

    .line 47
    :pswitch_0
    invoke-virtual {p0, v1}, Landroid/view/Surface;->setExternalDisplay(I)V

    goto :goto_0

    .line 51
    :pswitch_1
    const/high16 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/Surface;->setExternalDisplay(I)V

    goto :goto_0

    .line 55
    :pswitch_2
    const/high16 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/view/Surface;->setExternalDisplay(I)V

    goto :goto_0

    .line 59
    :pswitch_3
    const/high16 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/view/Surface;->setExternalDisplay(I)V

    goto :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
