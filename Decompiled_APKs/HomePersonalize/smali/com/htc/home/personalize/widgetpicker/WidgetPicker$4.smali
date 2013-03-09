.class Lcom/htc/home/personalize/widgetpicker/WidgetPicker$4;
.super Ljava/lang/Object;
.source "WidgetPicker.java"

# interfaces
.implements Lcom/htc/home/personalize/widget/AlbumAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/widgetpicker/WidgetPicker;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/widgetpicker/WidgetPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker$4;->this$0:Lcom/htc/home/personalize/widgetpicker/WidgetPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/home/personalize/widget/AlbumAdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "arg1"
    .parameter "pos"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/home/personalize/widget/AlbumAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, arg0:Lcom/htc/home/personalize/widget/AlbumAdapterView;,"Lcom/htc/home/personalize/widget/AlbumAdapterView<*>;"
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker$4;->this$0:Lcom/htc/home/personalize/widgetpicker/WidgetPicker;

    #getter for: Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->gallery:Lcom/htc/home/personalize/widget/HtcFilmstripView;
    invoke-static {v0}, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->access$100(Lcom/htc/home/personalize/widgetpicker/WidgetPicker;)Lcom/htc/home/personalize/widget/HtcFilmstripView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->isFlinging()Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker$4;->this$0:Lcom/htc/home/personalize/widgetpicker/WidgetPicker;

    iget-object v1, p0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker$4;->this$0:Lcom/htc/home/personalize/widgetpicker/WidgetPicker;

    #getter for: Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->adapter:Lcom/htc/home/personalize/widgetpicker/WidgetAdapter;
    invoke-static {v1}, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->access$200(Lcom/htc/home/personalize/widgetpicker/WidgetPicker;)Lcom/htc/home/personalize/widgetpicker/WidgetAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/htc/home/personalize/widgetpicker/WidgetAdapter;->getItem(I)Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;

    move-result-object v1

    #calls: Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->choose(Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;)V
    invoke-static {v0, v1}, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->access$300(Lcom/htc/home/personalize/widgetpicker/WidgetPicker;Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;)V

    .line 199
    :cond_0
    return-void
.end method
