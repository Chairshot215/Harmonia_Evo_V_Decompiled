.class final Lcom/android/camera/Camera_Util$1;
.super Ljava/lang/Thread;
.source "Camera_Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera_Util;->runThreadToAddTimeStamp(Landroid/content/ContentResolver;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$contentResolver:Landroid/content/ContentResolver;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/Camera_Util$1;->val$contentResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/camera/Camera_Util$1;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/Camera_Util$1;->val$contentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/Camera_Util$1;->val$uri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/camera/Camera_Util;->addTimeStampByCopyBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-void
.end method
