.class Lcom/android/camera/HTCSnapbooth$3;
.super Ljava/lang/Object;
.source "HTCSnapbooth.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/HTCSnapbooth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/HTCSnapbooth;


# direct methods
.method constructor <init>(Lcom/android/camera/HTCSnapbooth;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/HTCSnapbooth$3;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    const-string v0, "HTCSnapbooth"

    const-string v1, "MediaPlayer Error - release"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
