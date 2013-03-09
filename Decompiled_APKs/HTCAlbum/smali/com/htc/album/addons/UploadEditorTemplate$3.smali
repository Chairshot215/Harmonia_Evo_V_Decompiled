.class Lcom/htc/album/addons/UploadEditorTemplate$3;
.super Ljava/lang/Object;
.source "UploadEditorTemplate.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/addons/UploadEditorTemplate;->initUploadEditorUI(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/UploadEditorTemplate;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/UploadEditorTemplate;)V
    .locals 0
    .parameter

    .prologue
    .line 1444
    iput-object p1, p0, Lcom/htc/album/addons/UploadEditorTemplate$3;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 1446
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorTemplate$3;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mEditorDescription:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/htc/album/addons/UploadEditorTemplate;->access$800(Lcom/htc/album/addons/UploadEditorTemplate;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1447
    const/4 v0, 0x0

    return v0
.end method
