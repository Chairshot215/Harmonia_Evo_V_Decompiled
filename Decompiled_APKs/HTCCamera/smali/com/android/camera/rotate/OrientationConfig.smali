.class public Lcom/android/camera/rotate/OrientationConfig;
.super Ljava/lang/Object;
.source "OrientationConfig.java"


# static fields
.field public static final SCREEN_ORIENTATION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OrientationConfig"

.field public static final UI_ILANDSCAPE:I = 0x3

.field public static final UI_IPORTRAIT:I = 0x2

.field public static final UI_LANDSCAPE:I = 0x1

.field public static final UI_PORTRAIT:I = 0x0

.field public static final UI_UNSPECIFIED:I = -0x1

.field public static final UNKNOWN_ORIENTATION:I = -0x1

.field private static mUIOrientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/camera/rotate/OrientationConfig;->mUIOrientation:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static animation_fromDegrees(I)F
    .locals 2

    const/4 v1, 0x3

    sget v0, Lcom/android/camera/rotate/OrientationConfig;->mUIOrientation:I

    if-nez v0, :cond_0

    if-ne p0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/android/camera/rotate/OrientationConfig;->mUIOrientation:I

    if-ne v0, v1, :cond_1

    if-nez p0, :cond_1

    const/high16 v0, -0x3d4c

    goto :goto_0

    :cond_1
    sget v0, Lcom/android/camera/rotate/OrientationConfig;->mUIOrientation:I

    add-int/lit8 v0, v0, 0x0

    mul-int/lit8 v0, v0, 0x5a

    int-to-float v0, v0

    goto :goto_0
.end method

.method public static animation_toDegrees(I)F
    .locals 2

    const/4 v1, 0x3

    sget v0, Lcom/android/camera/rotate/OrientationConfig;->mUIOrientation:I

    if-nez v0, :cond_0

    if-ne p0, v1, :cond_0

    const/high16 v0, -0x3d4c

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/android/camera/rotate/OrientationConfig;->mUIOrientation:I

    if-ne v0, v1, :cond_1

    if-nez p0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, p0, 0x0

    mul-int/lit8 v0, v0, 0x5a

    int-to-float v0, v0

    goto :goto_0
.end method

.method public static diffOrientationWithScreen(I)I
    .locals 1

    add-int/lit8 v0, p0, 0x0

    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x4

    :cond_0
    return v0
.end method

.method public static diffOrientationWithScreen_Inverse(I)I
    .locals 2

    invoke-static {p0}, Lcom/android/camera/rotate/OrientationConfig;->diffOrientationWithScreen(I)I

    move-result v0

    rsub-int/lit8 v1, v0, 0x4

    rem-int/lit8 v1, v1, 0x4

    return v1
.end method

.method public static getUIOrientation()I
    .locals 1

    sget v0, Lcom/android/camera/rotate/OrientationConfig;->mUIOrientation:I

    return v0
.end method

.method public static isEqual_ScreenOrientation(I)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEqual_UIOrientation(I)Z
    .locals 1

    sget v0, Lcom/android/camera/rotate/OrientationConfig;->mUIOrientation:I

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInverse_ScreenOrientation(I)Z
    .locals 2

    invoke-static {p0}, Lcom/android/camera/rotate/OrientationConfig;->diffOrientationWithScreen(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUILandscape()Z
    .locals 3

    const/4 v0, 0x1

    sget v1, Lcom/android/camera/rotate/OrientationConfig;->mUIOrientation:I

    if-eq v1, v0, :cond_0

    sget v1, Lcom/android/camera/rotate/OrientationConfig;->mUIOrientation:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static mapDrgreeToUIOrientationEx(IZ)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-static {p0, v0}, Lcom/android/camera/rotate/OrientationConfig;->mapOrientation_Event2UI(IZ)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    rem-int/lit16 p0, p0, 0x168

    sget v1, Lcom/android/camera/rotate/OrientationConfig;->mUIOrientation:I

    packed-switch v1, :pswitch_data_0

    :cond_1
    sget v0, Lcom/android/camera/rotate/OrientationConfig;->mUIOrientation:I

    goto :goto_0

    :pswitch_0
    const/16 v1, 0xe1

    if-lt p0, v1, :cond_1

    const/16 v1, 0x11d

    if-gt p0, v1, :cond_1

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x159

    if-ge p0, v0, :cond_2

    const/16 v0, 0x2d

    if-gt p0, v0, :cond_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static mapOrientation_Event2UI(I)I
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/camera/rotate/OrientationConfig;->mapOrientation_Event2UI(IZ)I

    move-result v0

    return v0
.end method

.method public static mapOrientation_Event2UI(IZ)I
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, -0x1

    if-ne p0, v2, :cond_1

    const-string v1, "OrientationConfig"

    const-string v2, "Undefined orientation in mapOrientation_Event2UI"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    rem-int/lit16 p0, p0, 0x168

    const/16 v2, 0x2d

    if-le p0, v2, :cond_0

    const/16 v2, 0x13b

    if-gt p0, v2, :cond_0

    const/16 v2, 0xe1

    if-le p0, v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/16 v2, 0x87

    if-le p0, v2, :cond_3

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public static mapUIOrientationToDegree(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/16 v0, 0x10e

    goto :goto_0

    :pswitch_1
    const/16 v0, 0xb4

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x5a

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setUIOrientation(I)V
    .locals 0

    sput p0, Lcom/android/camera/rotate/OrientationConfig;->mUIOrientation:I

    return-void
.end method
