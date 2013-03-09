.class Lcom/android/camera/SnapboothCustomize$1;
.super Ljava/lang/Object;
.source "SnapboothCustomize.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SnapboothCustomize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SnapboothCustomize;


# direct methods
.method constructor <init>(Lcom/android/camera/SnapboothCustomize;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/SnapboothCustomize$1;->this$0:Lcom/android/camera/SnapboothCustomize;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize$1;->this$0:Lcom/android/camera/SnapboothCustomize;

    #getter for: Lcom/android/camera/SnapboothCustomize;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;
    invoke-static {v0}, Lcom/android/camera/SnapboothCustomize;->access$000(Lcom/android/camera/SnapboothCustomize;)Lcom/android/camera/HTCSnapbooth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCSnapbooth;->startAlbum()V

    return-void
.end method
