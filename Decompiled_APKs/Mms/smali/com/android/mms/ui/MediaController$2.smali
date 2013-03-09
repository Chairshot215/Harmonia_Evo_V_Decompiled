.class Lcom/android/mms/ui/MediaController$2;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MediaController;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MediaController;)V
    .locals 0
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/android/mms/ui/MediaController$2;->this$0:Lcom/android/mms/ui/MediaController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/mms/ui/MediaController$2;->this$0:Lcom/android/mms/ui/MediaController;

    #calls: Lcom/android/mms/ui/MediaController;->doPauseResume()V
    invoke-static {v0}, Lcom/android/mms/ui/MediaController;->access$000(Lcom/android/mms/ui/MediaController;)V

    .line 309
    iget-object v0, p0, Lcom/android/mms/ui/MediaController$2;->this$0:Lcom/android/mms/ui/MediaController;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MediaController;->show(I)V

    .line 310
    return-void
.end method
