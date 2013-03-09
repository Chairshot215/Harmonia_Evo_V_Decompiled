.class Lcom/htc/home/personalize/widgetpicker/Gallery$2;
.super Ljava/lang/Object;
.source "Gallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/widgetpicker/Gallery;->onKeyUp(ILandroid/view/KeyEvent;)Z
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
    .line 1183
    iput-object p1, p0, Lcom/htc/home/personalize/widgetpicker/Gallery$2;->this$0:Lcom/htc/home/personalize/widgetpicker/Gallery;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/Gallery$2;->this$0:Lcom/htc/home/personalize/widgetpicker/Gallery;

    #calls: Lcom/htc/home/personalize/widgetpicker/Gallery;->dispatchUnpress()V
    invoke-static {v0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->access$300(Lcom/htc/home/personalize/widgetpicker/Gallery;)V

    .line 1186
    return-void
.end method
