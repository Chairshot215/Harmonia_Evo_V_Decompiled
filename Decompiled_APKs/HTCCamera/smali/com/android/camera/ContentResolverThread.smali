.class public Lcom/android/camera/ContentResolverThread;
.super Ljava/lang/Thread;
.source "ContentResolverThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ContentResolverThread$1;,
        Lcom/android/camera/ContentResolverThread$MainHandler;
    }
.end annotation


# static fields
.field static final DELETE_ACTION:I = 0x1

.field static final QUIT_CONTENTRESOLVER_THREAD:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ContentResolverThread"


# instance fields
.field private mCameraActivity:Lcom/android/camera/HTCCamera;

.field private mLastContentUri:Landroid/net/Uri;

.field private mMainHandler:Lcom/android/camera/ContentResolverThread$MainHandler;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ContentResolverThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    iput-object v0, p0, Lcom/android/camera/ContentResolverThread;->mLastContentUri:Landroid/net/Uri;

    iput-object p1, p0, Lcom/android/camera/ContentResolverThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    iput-object p2, p0, Lcom/android/camera/ContentResolverThread;->mLastContentUri:Landroid/net/Uri;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ContentResolverThread;)Lcom/android/camera/HTCCamera;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ContentResolverThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/camera/ContentResolverThread;Lcom/android/camera/HTCCamera;)Lcom/android/camera/HTCCamera;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ContentResolverThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    return-object p1
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    const-string v1, "ContentResolverThread"

    const-string v2, "*************************************** run"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v1, Lcom/android/camera/ContentResolverThread$MainHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/ContentResolverThread$MainHandler;-><init>(Lcom/android/camera/ContentResolverThread;Lcom/android/camera/ContentResolverThread$1;)V

    iput-object v1, p0, Lcom/android/camera/ContentResolverThread;->mMainHandler:Lcom/android/camera/ContentResolverThread$MainHandler;

    iget-object v1, p0, Lcom/android/camera/ContentResolverThread;->mMainHandler:Lcom/android/camera/ContentResolverThread$MainHandler;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/camera/ContentResolverThread;->mLastContentUri:Landroid/net/Uri;

    invoke-static {v1, v2, v4, v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ContentResolverThread;->mMainHandler:Lcom/android/camera/ContentResolverThread$MainHandler;

    invoke-virtual {v1, v0}, Lcom/android/camera/ContentResolverThread$MainHandler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
