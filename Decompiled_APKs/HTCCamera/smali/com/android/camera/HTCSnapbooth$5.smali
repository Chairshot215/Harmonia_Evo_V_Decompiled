.class Lcom/android/camera/HTCSnapbooth$5;
.super Landroid/view/OrientationEventListener;
.source "HTCSnapbooth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/HTCSnapbooth;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/HTCSnapbooth;


# direct methods
.method constructor <init>(Lcom/android/camera/HTCSnapbooth;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/HTCSnapbooth$5;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    const-string v1, "HTCSnapbooth"

    const-string v2, "Unknown orientation !!!"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$5;->this$0:Lcom/android/camera/HTCSnapbooth;

    #setter for: Lcom/android/camera/HTCSnapbooth;->mLastOrientation:I
    invoke-static {v1, p1}, Lcom/android/camera/HTCSnapbooth;->access$2502(Lcom/android/camera/HTCSnapbooth;I)I

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$5;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mIsFreezeOrientation:Z
    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$500(Lcom/android/camera/HTCSnapbooth;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$5;->this$0:Lcom/android/camera/HTCSnapbooth;

    #setter for: Lcom/android/camera/HTCSnapbooth;->mFreezeOrientation:I
    invoke-static {v1, p1}, Lcom/android/camera/HTCSnapbooth;->access$902(Lcom/android/camera/HTCSnapbooth;I)I

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/camera/rotate/OrientationConfig;->mapDrgreeToUIOrientationEx(IZ)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$5;->this$0:Lcom/android/camera/HTCSnapbooth;

    #calls: Lcom/android/camera/HTCSnapbooth;->onRotateChanged(I)Z
    invoke-static {v1, v0}, Lcom/android/camera/HTCSnapbooth;->access$2600(Lcom/android/camera/HTCSnapbooth;I)Z

    goto :goto_0
.end method
