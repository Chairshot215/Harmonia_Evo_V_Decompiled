.class Lcom/htc/home/personalize/widgetpicker/WidgetPicker$2;
.super Ljava/lang/Object;
.source "WidgetPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 151
    iput-object p1, p0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker$2;->this$0:Lcom/htc/home/personalize/widgetpicker/WidgetPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker$2;->this$0:Lcom/htc/home/personalize/widgetpicker/WidgetPicker;

    iget-object v1, p0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker$2;->this$0:Lcom/htc/home/personalize/widgetpicker/WidgetPicker;

    #getter for: Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->adapter:Lcom/htc/home/personalize/widgetpicker/WidgetAdapter;
    invoke-static {v1}, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->access$200(Lcom/htc/home/personalize/widgetpicker/WidgetPicker;)Lcom/htc/home/personalize/widgetpicker/WidgetAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker$2;->this$0:Lcom/htc/home/personalize/widgetpicker/WidgetPicker;

    #getter for: Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->gallery:Lcom/htc/home/personalize/widget/HtcFilmstripView;
    invoke-static {v2}, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->access$100(Lcom/htc/home/personalize/widgetpicker/WidgetPicker;)Lcom/htc/home/personalize/widget/HtcFilmstripView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/home/personalize/widgetpicker/WidgetAdapter;->getItem(I)Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;

    move-result-object v1

    #calls: Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->choose(Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;)V
    invoke-static {v0, v1}, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->access$300(Lcom/htc/home/personalize/widgetpicker/WidgetPicker;Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;)V

    .line 155
    sget-boolean v0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->localLOGV:Z

    if-eqz v0, :cond_0

    .line 157
    invoke-static {}, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[ATS][com.htc.RosieUtility][press_select][successful]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_0
    return-void
.end method
