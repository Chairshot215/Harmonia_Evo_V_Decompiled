.class Lcom/htc/home/personalize/widgetpicker/WidgetPicker$5;
.super Ljava/lang/Object;
.source "WidgetPicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->createAlertDialog()Lcom/htc/widget/HtcAlertDialog;
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
    .line 389
    iput-object p1, p0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker$5;->this$0:Lcom/htc/home/personalize/widgetpicker/WidgetPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 393
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker$5;->this$0:Lcom/htc/home/personalize/widgetpicker/WidgetPicker;

    #getter for: Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->mNoSpaceAlertDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v0}, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->access$500(Lcom/htc/home/personalize/widgetpicker/WidgetPicker;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/WidgetPicker$5;->this$0:Lcom/htc/home/personalize/widgetpicker/WidgetPicker;

    #getter for: Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->mNoSpaceAlertDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v0}, Lcom/htc/home/personalize/widgetpicker/WidgetPicker;->access$500(Lcom/htc/home/personalize/widgetpicker/WidgetPicker;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 395
    :cond_0
    return-void
.end method
