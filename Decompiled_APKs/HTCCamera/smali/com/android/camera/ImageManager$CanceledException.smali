.class public Lcom/android/camera/ImageManager$CanceledException;
.super Ljava/lang/Exception;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CanceledException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ImageManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/ImageManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ImageManager$CanceledException;->this$0:Lcom/android/camera/ImageManager;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method
