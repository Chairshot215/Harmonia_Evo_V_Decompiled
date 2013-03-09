.class Lcom/htc/home/personalize/WallpaperPreview$4;
.super Ljava/lang/Object;
.source "WallpaperPreview.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/WallpaperPreview;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/WallpaperPreview;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/WallpaperPreview;)V
    .locals 0
    .parameter

    .prologue
    .line 303
    iput-object p1, p0, Lcom/htc/home/personalize/WallpaperPreview$4;->this$0:Lcom/htc/home/personalize/WallpaperPreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPreview$4;->this$0:Lcom/htc/home/personalize/WallpaperPreview;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/WallpaperPreview;->dismissDialog(I)V

    .line 307
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPreview$4;->this$0:Lcom/htc/home/personalize/WallpaperPreview;

    const/4 v1, 0x0

    #setter for: Lcom/htc/home/personalize/WallpaperPreview;->mIsWallpaperSet:Z
    invoke-static {v0, v1}, Lcom/htc/home/personalize/WallpaperPreview;->access$502(Lcom/htc/home/personalize/WallpaperPreview;Z)Z

    .line 308
    return-void
.end method
