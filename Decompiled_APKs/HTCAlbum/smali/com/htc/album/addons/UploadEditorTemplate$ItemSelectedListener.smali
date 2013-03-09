.class Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;
.super Ljava/lang/Object;
.source "UploadEditorTemplate.java"

# interfaces
.implements Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/UploadEditorTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemSelectedListener"
.end annotation


# instance fields
.field private isRequestThumbnail:Z

.field private lastIndex:I

.field final synthetic this$0:Lcom/htc/album/addons/UploadEditorTemplate;


# direct methods
.method public constructor <init>(Lcom/htc/album/addons/UploadEditorTemplate;)V
    .locals 1
    .parameter

    .prologue
    .line 1846
    iput-object p1, p0, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1844
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;->lastIndex:I

    .line 1847
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;->isRequestThumbnail:Z

    .line 1848
    return-void
.end method

.method static synthetic access$1700(Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1841
    iget v0, p0, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;->lastIndex:I

    return v0
.end method

.method static synthetic access$1702(Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1841
    iput p1, p0, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;->lastIndex:I

    return p1
.end method


# virtual methods
.method public onItemSelected(Lcom/htc/sunny2/view/SView;I)V
    .locals 3
    .parameter "parent"
    .parameter "nIndex"

    .prologue
    .line 1855
    move v0, p2

    .line 1856
    .local v0, index:I
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;
    invoke-static {v1}, Lcom/htc/album/addons/UploadEditorTemplate;->access$1800(Lcom/htc/album/addons/UploadEditorTemplate;)Lcom/htc/opensense2/album/DisplayManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener$1;

    invoke-direct {v2, p0, v0}, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener$1;-><init>(Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;I)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1940
    return-void
.end method

.method public onNothingSelected(Lcom/htc/sunny2/view/SView;I)V
    .locals 0
    .parameter "parent"
    .parameter "index"

    .prologue
    .line 1946
    return-void
.end method
