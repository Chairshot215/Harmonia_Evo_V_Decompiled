.class public Lcom/android/camera/mirror/MirrorActivity;
.super Landroid/app/Activity;
.source "MirrorActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/mirror/MirrorActivity$3;
    }
.end annotation


# static fields
.field public static final MSG_CAMERA_CLOSED:I = 0x69

.field public static final MSG_CAMERA_ERROR:I = 0xc8

.field public static final MSG_CAMERA_OPEN:I = 0x64

.field public static final MSG_CAMERA_OPEN_FAILED:I = 0x65

.field public static final MSG_CAMERA_PREVIEW_STARTED:I = 0x66

.field public static final MSG_CAMERA_PREVIEW_START_FAILED:I = 0x67

.field public static final MSG_CAMERA_PREVIEW_STOPPED:I = 0x68

.field public static final SHOW_TOAST:I = 0xc9

.field private static final TAG:Ljava/lang/String; = "MirrorActivity"


# instance fields
.field private mToast:Lcom/android/camera/rotate/RotateToast;

.field private m_BottomBar:Landroid/view/View;

.field private m_BrightnessButton:Landroid/widget/ImageView;

.field private m_IsCameraOpen:Z

.field private m_IsMaxBrightness:Z

.field private m_IsPreviewStarted:Z

.field private m_IsPreviewSurfaceCreated:Z

.field private m_MessageHandler:Landroid/os/Handler;

.field private m_MirrorThread:Lcom/android/camera/mirror/MirrorThread;

.field private m_PreviewSurface:Landroid/view/SurfaceView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/mirror/MirrorActivity;->m_IsMaxBrightness:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/mirror/MirrorActivity;->mToast:Lcom/android/camera/rotate/RotateToast;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/mirror/MirrorActivity;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/mirror/MirrorActivity;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/mirror/MirrorActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/mirror/MirrorActivity;->m_BrightnessButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/mirror/MirrorActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/mirror/MirrorActivity;->m_IsMaxBrightness:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/mirror/MirrorActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/mirror/MirrorActivity;->setMinBrightness()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/mirror/MirrorActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/mirror/MirrorActivity;->setMaxBrightness()V

    return-void
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v3, 0x0

    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    const-string v2, "MirrorActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got unknown message : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0}, Lcom/android/camera/mirror/MirrorActivity;->onCameraOpen()V

    goto :goto_0

    :sswitch_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v2, v3}, Lcom/android/camera/mirror/MirrorActivity;->onPreviewStarted(II)V

    goto :goto_0

    :sswitch_2
    iput-boolean v3, p0, Lcom/android/camera/mirror/MirrorActivity;->m_IsPreviewStarted:Z

    goto :goto_0

    :sswitch_3
    iput-boolean v3, p0, Lcom/android/camera/mirror/MirrorActivity;->m_IsCameraOpen:Z

    goto :goto_0

    :sswitch_4
    const v2, 0x7f0a016c

    invoke-direct {p0, v2}, Lcom/android/camera/mirror/MirrorActivity;->showErrorMessage(I)V

    goto :goto_0

    :sswitch_5
    const v2, 0x7f0a016d

    invoke-direct {p0, v2}, Lcom/android/camera/mirror/MirrorActivity;->showErrorMessage(I)V

    goto :goto_0

    :sswitch_6
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v2}, Lcom/android/camera/mirror/MirrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v2, "MirrorActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SHOW_TOAST - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/mirror/MirrorActivity;->mToast:Lcom/android/camera/rotate/RotateToast;

    if-nez v2, :cond_1

    const-string v2, ""

    const v3, 0x186a0

    invoke-static {p0, v2, v3}, Lcom/android/camera/rotate/RotateToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/android/camera/rotate/RotateToast;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/mirror/MirrorActivity;->mToast:Lcom/android/camera/rotate/RotateToast;

    :cond_1
    iget-object v2, p0, Lcom/android/camera/mirror/MirrorActivity;->mToast:Lcom/android/camera/rotate/RotateToast;

    invoke-virtual {v2}, Lcom/android/camera/rotate/RotateToast;->cancel()V

    iget-object v2, p0, Lcom/android/camera/mirror/MirrorActivity;->mToast:Lcom/android/camera/rotate/RotateToast;

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/rotate/RotateToast;->updateOrientation(I)V

    iget-object v2, p0, Lcom/android/camera/mirror/MirrorActivity;->mToast:Lcom/android/camera/rotate/RotateToast;

    invoke-virtual {v2, v0}, Lcom/android/camera/rotate/RotateToast;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/camera/mirror/MirrorActivity;->mToast:Lcom/android/camera/rotate/RotateToast;

    invoke-virtual {v2}, Lcom/android/camera/rotate/RotateToast;->show()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_4
        0x66 -> :sswitch_1
        0x67 -> :sswitch_4
        0x68 -> :sswitch_2
        0x69 -> :sswitch_3
        0xc8 -> :sswitch_5
        0xc9 -> :sswitch_6
    .end sparse-switch
.end method

.method private onCameraOpen()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "MirrorActivity"

    const-string v1, "onCameraOpen"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/android/camera/mirror/MirrorActivity;->m_IsCameraOpen:Z

    iget-boolean v0, p0, Lcom/android/camera/mirror/MirrorActivity;->m_IsPreviewSurfaceCreated:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/mirror/MirrorActivity;->m_IsPreviewStarted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/mirror/MirrorActivity;->m_MirrorThread:Lcom/android/camera/mirror/MirrorThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/mirror/MirrorActivity;->m_MirrorThread:Lcom/android/camera/mirror/MirrorThread;

    invoke-virtual {v0}, Lcom/android/camera/mirror/MirrorThread;->getMessageHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6e

    iget-object v2, p0, Lcom/android/camera/mirror/MirrorActivity;->m_PreviewSurface:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-static {v0, v1, v3, v3, v2}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    iput-boolean v4, p0, Lcom/android/camera/mirror/MirrorActivity;->m_IsPreviewStarted:Z

    :cond_0
    return-void
.end method

.method private onPreviewStarted(II)V
    .locals 0

    return-void
.end method

.method private restoreBrightness()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.request.BRIGHTNESS_NORMAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/mirror/MirrorActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setMaxBrightness()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.request.BRIGHTNESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "EXTRA_BRIGHTNESS"

    const/16 v2, 0xff

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/camera/mirror/MirrorActivity;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/mirror/MirrorActivity;->m_IsMaxBrightness:Z

    iget-object v1, p0, Lcom/android/camera/mirror/MirrorActivity;->m_BrightnessButton:Landroid/widget/ImageView;

    const v2, 0x7f0a0027

    const v3, 0x7f020007

    invoke-static {p0, v2, v3}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/camera/mirror/MirrorActivity;->m_BottomBar:Landroid/view/View;

    const v2, 0x7f0a0025

    const v3, 0x7f02014f

    invoke-static {p0, v2, v3}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setMinBrightness()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.request.BRIGHTNESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "EXTRA_BRIGHTNESS"

    const/16 v2, 0x5a

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/camera/mirror/MirrorActivity;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/mirror/MirrorActivity;->m_IsMaxBrightness:Z

    iget-object v1, p0, Lcom/android/camera/mirror/MirrorActivity;->m_BrightnessButton:Landroid/widget/ImageView;

    const v2, 0x7f0a0027

    const v3, 0x7f0200f0

    invoke-static {p0, v2, v3}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/camera/mirror/MirrorActivity;->m_BottomBar:Landroid/view/View;

    const v2, 0x7f0a0026

    const v3, 0x7f02014e

    invoke-static {p0, v2, v3}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private showErrorMessage(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/mirror/MirrorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/mirror/MirrorActivity;->showErrorMessage(Ljava/lang/String;)V

    return-void
.end method

.method private showErrorMessage(Ljava/lang/String;)V
    .locals 3

    const v1, 0x7f08012f

    invoke-virtual {p0, v1}, Lcom/android/camera/mirror/MirrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v1, p0, Lcom/android/camera/mirror/MirrorActivity;->m_MirrorThread:Lcom/android/camera/mirror/MirrorThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/mirror/MirrorActivity;->m_MirrorThread:Lcom/android/camera/mirror/MirrorThread;

    invoke-virtual {v1}, Lcom/android/camera/mirror/MirrorThread;->getMessageHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x6f

    invoke-static {v1, v2}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public getMessageHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/mirror/MirrorActivity;->m_MessageHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v2, Lcom/android/camera/mirror/MirrorActivity$1;

    invoke-direct {v2, p0}, Lcom/android/camera/mirror/MirrorActivity$1;-><init>(Lcom/android/camera/mirror/MirrorActivity;)V

    iput-object v2, p0, Lcom/android/camera/mirror/MirrorActivity;->m_MessageHandler:Landroid/os/Handler;

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    const v0, 0x7f030022

    sget-object v2, Lcom/android/camera/mirror/MirrorActivity$3;->$SwitchMap$com$android$camera$DisplayDevice$Resolution:[I

    sget-object v3, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    invoke-virtual {v3}, Lcom/android/camera/DisplayDevice$Resolution;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/camera/mirror/MirrorActivity;->setContentView(I)V

    const v2, 0x7f08012a

    invoke-virtual {p0, v2}, Lcom/android/camera/mirror/MirrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceView;

    iput-object v2, p0, Lcom/android/camera/mirror/MirrorActivity;->m_PreviewSurface:Landroid/view/SurfaceView;

    iget-object v2, p0, Lcom/android/camera/mirror/MirrorActivity;->m_PreviewSurface:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const v2, 0x7f08012b

    invoke-virtual {p0, v2}, Lcom/android/camera/mirror/MirrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/mirror/MirrorActivity;->m_BottomBar:Landroid/view/View;

    const v2, 0x7f08012c

    invoke-virtual {p0, v2}, Lcom/android/camera/mirror/MirrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/mirror/MirrorActivity;->m_BrightnessButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/camera/mirror/MirrorActivity;->m_BrightnessButton:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/camera/mirror/MirrorActivity$2;

    invoke-direct {v3, p0}, Lcom/android/camera/mirror/MirrorActivity$2;-><init>(Lcom/android/camera/mirror/MirrorActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :pswitch_1
    const v0, 0x7f030025

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportWideScreen2ndCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    const v0, 0x7f030024

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportWideScreen2ndCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    const v0, 0x7f030024

    goto :goto_0

    :cond_1
    const v0, 0x7f030023

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/android/camera/mirror/MirrorActivity;->m_MirrorThread:Lcom/android/camera/mirror/MirrorThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/mirror/MirrorActivity;->m_MirrorThread:Lcom/android/camera/mirror/MirrorThread;

    invoke-virtual {v0}, Lcom/android/camera/mirror/MirrorThread;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/mirror/MirrorActivity;->m_MirrorThread:Lcom/android/camera/mirror/MirrorThread;

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/mirror/MirrorActivity;->m_PreviewSurface:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/mirror/MirrorActivity;->m_PreviewSurface:Landroid/view/SurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/android/camera/mirror/MirrorActivity;->m_PreviewSurface:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/mirror/MirrorActivity;->m_PreviewSurface:Landroid/view/SurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/mirror/MirrorActivity;->mToast:Lcom/android/camera/rotate/RotateToast;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/mirror/MirrorActivity;->mToast:Lcom/android/camera/rotate/RotateToast;

    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateToast;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/mirror/MirrorActivity;->m_MirrorThread:Lcom/android/camera/mirror/MirrorThread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/mirror/MirrorActivity;->m_MirrorThread:Lcom/android/camera/mirror/MirrorThread;

    invoke-virtual {v0}, Lcom/android/camera/mirror/MirrorThread;->getMessageHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x78

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/mirror/MirrorActivity;->restoreBrightness()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/android/camera/mirror/MirrorActivity;->m_PreviewSurface:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/mirror/MirrorActivity;->m_PreviewSurface:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/mirror/MirrorActivity;->m_MirrorThread:Lcom/android/camera/mirror/MirrorThread;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/camera/mirror/MirrorThread;

    invoke-direct {v0, p0}, Lcom/android/camera/mirror/MirrorThread;-><init>(Lcom/android/camera/mirror/MirrorActivity;)V

    iput-object v0, p0, Lcom/android/camera/mirror/MirrorActivity;->m_MirrorThread:Lcom/android/camera/mirror/MirrorThread;

    iget-object v0, p0, Lcom/android/camera/mirror/MirrorActivity;->m_MirrorThread:Lcom/android/camera/mirror/MirrorThread;

    invoke-virtual {v0}, Lcom/android/camera/mirror/MirrorThread;->start()V

    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/mirror/MirrorActivity;->m_IsMaxBrightness:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/camera/mirror/MirrorActivity;->setMaxBrightness()V

    :goto_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->DisablePen()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {p0}, Lcom/android/camera/Util;->disableSketcher(Landroid/app/Activity;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/camera/mirror/MirrorActivity;->m_MirrorThread:Lcom/android/camera/mirror/MirrorThread;

    invoke-virtual {v0}, Lcom/android/camera/mirror/MirrorThread;->getMessageHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/camera/mirror/MirrorActivity;->setMinBrightness()V

    goto :goto_1
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    const-string v0, "MirrorActivity"

    const-string v1, "surfaceChanged"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-boolean v3, p0, Lcom/android/camera/mirror/MirrorActivity;->m_IsPreviewSurfaceCreated:Z

    iget-boolean v0, p0, Lcom/android/camera/mirror/MirrorActivity;->m_IsCameraOpen:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/mirror/MirrorActivity;->m_IsPreviewStarted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/mirror/MirrorActivity;->m_MirrorThread:Lcom/android/camera/mirror/MirrorThread;

    if-eqz v0, :cond_0

    const-string v0, "MirrorActivity"

    const-string v1, "pass SurfaceHolder"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/mirror/MirrorActivity;->m_MirrorThread:Lcom/android/camera/mirror/MirrorThread;

    invoke-virtual {v0}, Lcom/android/camera/mirror/MirrorThread;->getMessageHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-static {v0, v1, v2, v2, p1}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    iput-boolean v3, p0, Lcom/android/camera/mirror/MirrorActivity;->m_IsPreviewStarted:Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "MirrorActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m_IsCameraOpen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/mirror/MirrorActivity;->m_IsCameraOpen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",m_IsPreviewStarted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/mirror/MirrorActivity;->m_IsPreviewStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    const-string v0, "MirrorActivity"

    const-string v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/mirror/MirrorActivity;->m_IsPreviewSurfaceCreated:Z

    return-void
.end method
