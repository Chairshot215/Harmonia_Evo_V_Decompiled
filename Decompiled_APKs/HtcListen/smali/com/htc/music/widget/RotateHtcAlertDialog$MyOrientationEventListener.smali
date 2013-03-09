.class Lcom/htc/music/widget/RotateHtcAlertDialog$MyOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "RotateHtcAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/RotateHtcAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyOrientationEventListener"
.end annotation


# instance fields
.field private Orientaion:I

.field private mDialog:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Dialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Dialog;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$MyOrientationEventListener;->Orientaion:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$MyOrientationEventListener;->mDialog:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    if-lez p1, :cond_0

    const/16 v1, 0x5a

    if-ge p1, v1, :cond_0

    iget v1, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$MyOrientationEventListener;->Orientaion:I

    if-eq v1, v4, :cond_0

    const-string v1, "[RotateHtcAlertDialog]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOrientationChanged: rotate from L to P = + Orientaion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$MyOrientationEventListener;->Orientaion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$MyOrientationEventListener;->mDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$MyOrientationEventListener;->mDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->postInvalidate()V

    iput v4, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$MyOrientationEventListener;->Orientaion:I

    :cond_0
    const/16 v1, 0xbe

    if-ge v1, p1, :cond_1

    const/16 v1, 0x118

    if-ge p1, v1, :cond_1

    iget v1, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$MyOrientationEventListener;->Orientaion:I

    if-eq v1, v5, :cond_1

    const-string v1, "[RotateHtcAlertDialog]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOrientationChanged: rotate from P to L = + Orientaion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$MyOrientationEventListener;->Orientaion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$MyOrientationEventListener;->mDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$MyOrientationEventListener;->mDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->postInvalidate()V

    iput v5, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$MyOrientationEventListener;->Orientaion:I

    :cond_1
    return-void
.end method
