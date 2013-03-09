.class Lcom/htc/Weather/WeatherDetail$4;
.super Ljava/lang/Object;
.source "WeatherDetail.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/Weather/WeatherDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/Weather/WeatherDetail;


# direct methods
.method constructor <init>(Lcom/htc/Weather/WeatherDetail;)V
    .locals 0
    .parameter

    .prologue
    .line 360
    iput-object p1, p0, Lcom/htc/Weather/WeatherDetail$4;->this$0:Lcom/htc/Weather/WeatherDetail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 363
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail$4;->this$0:Lcom/htc/Weather/WeatherDetail;

    #calls: Lcom/htc/Weather/WeatherDetail;->setTabView(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/htc/Weather/WeatherDetail;->access$600(Lcom/htc/Weather/WeatherDetail;Landroid/view/View;)V

    .line 364
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail$4;->this$0:Lcom/htc/Weather/WeatherDetail;

    #getter for: Lcom/htc/Weather/WeatherDetail;->mButtonGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v0}, Lcom/htc/Weather/WeatherDetail;->access$700(Lcom/htc/Weather/WeatherDetail;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
