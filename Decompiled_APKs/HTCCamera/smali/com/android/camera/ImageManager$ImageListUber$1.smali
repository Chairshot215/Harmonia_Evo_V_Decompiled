.class Lcom/android/camera/ImageManager$ImageListUber$1;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Lcom/android/camera/ImageManager$IImageList$OnChange;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ImageManager$ImageListUber;-><init>(Lcom/android/camera/ImageManager;[Lcom/android/camera/ImageManager$IImageList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/ImageManager$ImageListUber;

.field final synthetic val$this$0:Lcom/android/camera/ImageManager;


# direct methods
.method constructor <init>(Lcom/android/camera/ImageManager$ImageListUber;Lcom/android/camera/ImageManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ImageManager$ImageListUber$1;->this$1:Lcom/android/camera/ImageManager$ImageListUber;

    iput-object p2, p0, Lcom/android/camera/ImageManager$ImageListUber$1;->val$this$0:Lcom/android/camera/ImageManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/android/camera/ImageManager$IImageList;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ImageManager$ImageListUber$1;->this$1:Lcom/android/camera/ImageManager$ImageListUber;

    #getter for: Lcom/android/camera/ImageManager$ImageListUber;->mListener:Lcom/android/camera/ImageManager$IImageList$OnChange;
    invoke-static {v0}, Lcom/android/camera/ImageManager$ImageListUber;->access$700(Lcom/android/camera/ImageManager$ImageListUber;)Lcom/android/camera/ImageManager$IImageList$OnChange;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ImageManager$ImageListUber$1;->this$1:Lcom/android/camera/ImageManager$ImageListUber;

    #getter for: Lcom/android/camera/ImageManager$ImageListUber;->mListener:Lcom/android/camera/ImageManager$IImageList$OnChange;
    invoke-static {v0}, Lcom/android/camera/ImageManager$ImageListUber;->access$700(Lcom/android/camera/ImageManager$ImageListUber;)Lcom/android/camera/ImageManager$IImageList$OnChange;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ImageManager$ImageListUber$1;->this$1:Lcom/android/camera/ImageManager$ImageListUber;

    invoke-interface {v0, v1}, Lcom/android/camera/ImageManager$IImageList$OnChange;->onChange(Lcom/android/camera/ImageManager$IImageList;)V

    :cond_0
    return-void
.end method
