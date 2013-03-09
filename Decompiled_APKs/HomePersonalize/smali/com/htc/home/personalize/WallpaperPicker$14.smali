.class Lcom/htc/home/personalize/WallpaperPicker$14;
.super Ljava/lang/Object;
.source "WallpaperPicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/WallpaperPicker;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/WallpaperPicker;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/WallpaperPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1343
    iput-object p1, p0, Lcom/htc/home/personalize/WallpaperPicker$14;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v1, 0x0

    .line 1346
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker$14;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/WallpaperPicker;->dismissDialog(I)V

    .line 1347
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperPicker$14;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    #setter for: Lcom/htc/home/personalize/WallpaperPicker;->mIsWallpaperSet:Z
    invoke-static {v0, v1}, Lcom/htc/home/personalize/WallpaperPicker;->access$3102(Lcom/htc/home/personalize/WallpaperPicker;Z)Z

    .line 1348
    return-void
.end method
