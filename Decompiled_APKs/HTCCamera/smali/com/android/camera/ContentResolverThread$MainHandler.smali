.class Lcom/android/camera/ContentResolverThread$MainHandler;
.super Landroid/os/Handler;
.source "ContentResolverThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ContentResolverThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ContentResolverThread;


# direct methods
.method private constructor <init>(Lcom/android/camera/ContentResolverThread;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ContentResolverThread$MainHandler;->this$0:Lcom/android/camera/ContentResolverThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ContentResolverThread;Lcom/android/camera/ContentResolverThread$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ContentResolverThread$MainHandler;-><init>(Lcom/android/camera/ContentResolverThread;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v3, 0x0

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    iget-object v2, p0, Lcom/android/camera/ContentResolverThread$MainHandler;->this$0:Lcom/android/camera/ContentResolverThread;

    #setter for: Lcom/android/camera/ContentResolverThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2, v3}, Lcom/android/camera/ContentResolverThread;->access$002(Lcom/android/camera/ContentResolverThread;Lcom/android/camera/HTCCamera;)Lcom/android/camera/HTCCamera;

    goto :goto_0

    :pswitch_1
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/ContentResolverThread$MainHandler;->this$0:Lcom/android/camera/ContentResolverThread;

    #getter for: Lcom/android/camera/ContentResolverThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/ContentResolverThread;->access$000(Lcom/android/camera/ContentResolverThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/camera/ContentResolverThread$MainHandler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "ContentResolverThread"

    const-string v3, "Exception was occurred while deleting content"

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
