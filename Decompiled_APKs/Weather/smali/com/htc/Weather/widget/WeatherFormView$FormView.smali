.class Lcom/htc/Weather/widget/WeatherFormView$FormView;
.super Landroid/view/View;
.source "WeatherFormView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/Weather/widget/WeatherFormView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FormView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/Weather/widget/WeatherFormView;


# direct methods
.method public constructor <init>(Lcom/htc/Weather/widget/WeatherFormView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 275
    iput-object p1, p0, Lcom/htc/Weather/widget/WeatherFormView$FormView;->this$0:Lcom/htc/Weather/widget/WeatherFormView;

    .line 276
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 278
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 281
    invoke-static {}, Lcom/htc/Weather/widget/WeatherFormView;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDraw called!! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 286
    iget-object v0, p0, Lcom/htc/Weather/widget/WeatherFormView$FormView;->this$0:Lcom/htc/Weather/widget/WeatherFormView;

    #getter for: Lcom/htc/Weather/widget/WeatherFormView;->isInitialize:Z
    invoke-static {v0}, Lcom/htc/Weather/widget/WeatherFormView;->access$100(Lcom/htc/Weather/widget/WeatherFormView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    :goto_0
    return-void

    .line 290
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 291
    iget-object v0, p0, Lcom/htc/Weather/widget/WeatherFormView$FormView;->this$0:Lcom/htc/Weather/widget/WeatherFormView;

    #calls: Lcom/htc/Weather/widget/WeatherFormView;->DrawOuterEdge(Landroid/graphics/Canvas;)V
    invoke-static {v0, p1}, Lcom/htc/Weather/widget/WeatherFormView;->access$200(Lcom/htc/Weather/widget/WeatherFormView;Landroid/graphics/Canvas;)V

    .line 292
    invoke-static {}, Lcom/htc/Weather/widget/WeatherFormView;->access$300()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 293
    iget-object v0, p0, Lcom/htc/Weather/widget/WeatherFormView$FormView;->this$0:Lcom/htc/Weather/widget/WeatherFormView;

    #calls: Lcom/htc/Weather/widget/WeatherFormView;->DrawFrom(Landroid/graphics/Canvas;)V
    invoke-static {v0, p1}, Lcom/htc/Weather/widget/WeatherFormView;->access$400(Lcom/htc/Weather/widget/WeatherFormView;Landroid/graphics/Canvas;)V

    .line 294
    iget-object v0, p0, Lcom/htc/Weather/widget/WeatherFormView$FormView;->this$0:Lcom/htc/Weather/widget/WeatherFormView;

    #calls: Lcom/htc/Weather/widget/WeatherFormView;->DrawDataLine(Landroid/graphics/Canvas;)V
    invoke-static {v0, p1}, Lcom/htc/Weather/widget/WeatherFormView;->access$500(Lcom/htc/Weather/widget/WeatherFormView;Landroid/graphics/Canvas;)V

    .line 295
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method
