.class Lcom/htc/home/personalize/LiveWallpaperPreview$3;
.super Ljava/lang/Object;
.source "LiveWallpaperPreview.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/LiveWallpaperPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/LiveWallpaperPreview;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/LiveWallpaperPreview;)V
    .locals 0
    .parameter

    .prologue
    .line 299
    iput-object p1, p0, Lcom/htc/home/personalize/LiveWallpaperPreview$3;->this$0:Lcom/htc/home/personalize/LiveWallpaperPreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/htc/home/personalize/LiveWallpaperPreview$3;->this$0:Lcom/htc/home/personalize/LiveWallpaperPreview;

    invoke-virtual {v0, p1}, Lcom/htc/home/personalize/LiveWallpaperPreview;->configureLiveWallpaper(Landroid/view/View;)V

    .line 302
    return-void
.end method
