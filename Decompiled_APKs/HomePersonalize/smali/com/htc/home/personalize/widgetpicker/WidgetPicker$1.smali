.class Lcom/htc/home/personalize/widgetpicker/WidgetPicker$1;
.super Ljava/lang/Object;
.source "WidgetPicker.java"

# interfaces
.implements Lcom/htc/home/personalize/widget/AlbumAdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/widgetpicker/WidgetPicker;
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
    .line 90
    iput-object p1, p0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker$1;->this$0:Lcom/htc/home/personalize/widgetpicker/WidgetPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/htc/home/personalize/widget/AlbumAdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "pos"
    .parameter "id"
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
    .line 94
    .local p1, parent:Lcom/htc/home/personalize/widget/AlbumAdapterView;,"Lcom/htc/home/personalize/widget/AlbumAdapterView<*>;"
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker$1;->this$0:Lcom/htc/home/personalize/widgetpicker/WidgetPicker;

    #calls: Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->updateTitle(I)V
    invoke-static {v0, p3}, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->access$000(Lcom/htc/home/personalize/widgetpicker/WidgetPicker;I)V

    .line 95
    return-void
.end method

.method public onNothingSelected(Lcom/htc/home/personalize/widget/AlbumAdapterView;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/home/personalize/widget/AlbumAdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, arg0:Lcom/htc/home/personalize/widget/AlbumAdapterView;,"Lcom/htc/home/personalize/widget/AlbumAdapterView<*>;"
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker$1;->this$0:Lcom/htc/home/personalize/widgetpicker/WidgetPicker;

    const/4 v1, -0x1

    #calls: Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->updateTitle(I)V
    invoke-static {v0, v1}, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->access$000(Lcom/htc/home/personalize/widgetpicker/WidgetPicker;I)V

    .line 99
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/home/personalize/widget/AlbumAdapterView;Z)V
    .locals 0
    .parameter
    .parameter "arg1"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/home/personalize/widget/AlbumAdapterView",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, arg0:Lcom/htc/home/personalize/widget/AlbumAdapterView;,"Lcom/htc/home/personalize/widget/AlbumAdapterView<*>;"
    return-void
.end method
