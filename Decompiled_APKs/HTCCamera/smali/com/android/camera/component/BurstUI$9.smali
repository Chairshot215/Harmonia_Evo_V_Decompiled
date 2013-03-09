.class Lcom/android/camera/component/BurstUI$9;
.super Ljava/lang/Object;
.source "BurstUI.java"

# interfaces
.implements Lcom/android/camera/widget/ImageCheckBox$OnClickChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/BurstUI;->initializeUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/BurstUI;

.field final synthetic val$frame:Lcom/android/camera/widget/ImageCheckBox;


# direct methods
.method constructor <init>(Lcom/android/camera/component/BurstUI;Lcom/android/camera/widget/ImageCheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/BurstUI$9;->this$0:Lcom/android/camera/component/BurstUI;

    iput-object p2, p0, Lcom/android/camera/component/BurstUI$9;->val$frame:Lcom/android/camera/widget/ImageCheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickChanged(Lcom/android/camera/widget/ImageCheckBox;)V
    .locals 2

    iget-object v1, p0, Lcom/android/camera/component/BurstUI$9;->val$frame:Lcom/android/camera/widget/ImageCheckBox;

    invoke-virtual {v1}, Lcom/android/camera/widget/ImageCheckBox;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/component/BurstUI$9;->this$0:Lcom/android/camera/component/BurstUI;

    #getter for: Lcom/android/camera/component/BurstUI;->m_burstReviewFrame:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/camera/component/BurstUI;->access$900(Lcom/android/camera/component/BurstUI;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/android/camera/component/BurstUI$9;->this$0:Lcom/android/camera/component/BurstUI;

    #calls: Lcom/android/camera/component/BurstUI;->updateReviewScreenStatus(Lcom/android/camera/widget/ImageCheckBox;)V
    invoke-static {v1, p1}, Lcom/android/camera/component/BurstUI;->access$1000(Lcom/android/camera/component/BurstUI;Lcom/android/camera/widget/ImageCheckBox;)V

    return-void
.end method
