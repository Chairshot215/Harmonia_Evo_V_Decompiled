.class Lcom/htc/home/personalize/widgetpicker/Gallery$1;
.super Ljava/lang/Object;
.source "Gallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/widgetpicker/Gallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/widgetpicker/Gallery;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/widgetpicker/Gallery;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/htc/home/personalize/widgetpicker/Gallery$1;->this$0:Lcom/htc/home/personalize/widgetpicker/Gallery;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/Gallery$1;->this$0:Lcom/htc/home/personalize/widgetpicker/Gallery;

    const/4 v1, 0x0

    #setter for: Lcom/htc/home/personalize/widgetpicker/Gallery;->mSuppressSelectionChanged:Z
    invoke-static {v0, v1}, Lcom/htc/home/personalize/widgetpicker/Gallery;->access$002(Lcom/htc/home/personalize/widgetpicker/Gallery;Z)Z

    .line 124
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/Gallery$1;->this$0:Lcom/htc/home/personalize/widgetpicker/Gallery;

    invoke-virtual {v0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->selectionChanged()V

    .line 125
    return-void
.end method
