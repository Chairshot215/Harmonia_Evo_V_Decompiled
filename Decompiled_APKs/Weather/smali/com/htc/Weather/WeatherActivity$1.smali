.class Lcom/htc/Weather/WeatherActivity$1;
.super Ljava/lang/Object;
.source "WeatherActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/Weather/WeatherActivity;->setNoCityUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/Weather/WeatherActivity;


# direct methods
.method constructor <init>(Lcom/htc/Weather/WeatherActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 671
    iput-object p1, p0, Lcom/htc/Weather/WeatherActivity$1;->this$0:Lcom/htc/Weather/WeatherActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 673
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity$1;->this$0:Lcom/htc/Weather/WeatherActivity;

    iget-object v1, p0, Lcom/htc/Weather/WeatherActivity$1;->this$0:Lcom/htc/Weather/WeatherActivity;

    #getter for: Lcom/htc/Weather/WeatherActivity;->Frame_1:I
    invoke-static {v1}, Lcom/htc/Weather/WeatherActivity;->access$000(Lcom/htc/Weather/WeatherActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/Weather/WeatherActivity;->getMaActivityInFrame(I)Lcom/htc/app/ma/IMaActivity;

    move-result-object v0

    check-cast v0, Lcom/htc/Weather/WeatherDetail;

    invoke-virtual {v0}, Lcom/htc/Weather/WeatherDetail;->addCity()V

    .line 674
    return-void
.end method
