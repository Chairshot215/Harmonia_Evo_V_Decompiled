.class public abstract Lcom/htc/android/rosie/widget/Widget;
.super Ljava/lang/Object;
.source "Widget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/rosie/widget/Widget$IllegalWidgetStateException;,
        Lcom/htc/android/rosie/widget/Widget$SuperNotCalledException;,
        Lcom/htc/android/rosie/widget/Widget$WidgetRuntimeException;,
        Lcom/htc/android/rosie/widget/Widget$Base;,
        Lcom/htc/android/rosie/widget/Widget$Host;,
        Lcom/htc/android/rosie/widget/Widget$ConfigurationChange;
    }
.end annotation


# static fields
.field public static final HOST_MSG_ARG1_VISIBLE:I = 0x1

.field public static final HOST_ORIENTATION_CHANGE_COMPLETE:I = 0x3

.field public static final HOST_PLAY_ANIMATION:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HOST_PLAY_ANIMATION_COMPLETE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HOST_RESUME_IN_KEYGUARD:I = 0x4

.field public static final HOST_USER_ACTION:I = 0x2

.field public static final HOST_USER_PRESENT:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getComponentName()Landroid/content/ComponentName;
.end method

.method protected abstract getContent()Ljava/lang/String;
.end method

.method protected abstract getContext()Landroid/content/Context;
.end method

.method protected abstract getHost()Lcom/htc/android/rosie/widget/Widget$Host;
.end method

.method protected abstract getIntent()Landroid/content/Intent;
.end method

.method protected abstract getScene()Lcom/htc/fusion/fx/FxScene;
.end method

.method protected abstract getScene(I)Lcom/htc/fusion/fx/FxScene;
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)V
.end method

.method protected abstract onCreate(Landroid/os/Bundle;)V
.end method

.method protected abstract onDestroy()V
.end method

.method protected abstract onHostMessage(Landroid/os/Message;)V
.end method

.method protected abstract onLowMemory()V
.end method

.method protected abstract onPause()V
.end method

.method protected abstract onPostCreate(Landroid/os/Bundle;)V
.end method

.method protected abstract onRestart()V
.end method

.method protected abstract onRestoreState(Landroid/os/Bundle;)V
.end method

.method protected abstract onResume()V
.end method

.method protected abstract onSaveState(Landroid/os/Bundle;)V
.end method

.method protected abstract onStart()V
.end method

.method protected abstract onStop()V
.end method

.method protected abstract onTiltChanged(F)V
.end method

.method protected abstract onVisibilityChanged(Z)V
.end method

.method protected abstract setContent(Ljava/lang/String;)V
.end method
