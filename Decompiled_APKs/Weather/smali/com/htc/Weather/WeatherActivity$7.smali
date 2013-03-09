.class Lcom/htc/Weather/WeatherActivity$7;
.super Ljava/lang/Object;
.source "WeatherActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/Weather/WeatherActivity;->showNetworkErrorDlg()V
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
    .line 1583
    iput-object p1, p0, Lcom/htc/Weather/WeatherActivity$7;->this$0:Lcom/htc/Weather/WeatherActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "button"

    .prologue
    .line 1586
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1587
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity$7;->this$0:Lcom/htc/Weather/WeatherActivity;

    iget-object v1, p0, Lcom/htc/Weather/WeatherActivity$7;->this$0:Lcom/htc/Weather/WeatherActivity;

    #getter for: Lcom/htc/Weather/WeatherActivity;->Frame_1:I
    invoke-static {v1}, Lcom/htc/Weather/WeatherActivity;->access$000(Lcom/htc/Weather/WeatherActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/Weather/WeatherActivity;->getMaActivityInFrame(I)Lcom/htc/app/ma/IMaActivity;

    move-result-object v0

    check-cast v0, Lcom/htc/Weather/WeatherDetail;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/Weather/WeatherDetail;->updateRefreshButton(Z)V

    .line 1588
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity$7;->this$0:Lcom/htc/Weather/WeatherActivity;

    #calls: Lcom/htc/Weather/WeatherActivity;->addTopWindowView()V
    invoke-static {v0}, Lcom/htc/Weather/WeatherActivity;->access$2900(Lcom/htc/Weather/WeatherActivity;)V

    .line 1590
    :cond_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 1591
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity$7;->this$0:Lcom/htc/Weather/WeatherActivity;

    #calls: Lcom/htc/Weather/WeatherActivity;->addTopWindowView()V
    invoke-static {v0}, Lcom/htc/Weather/WeatherActivity;->access$2900(Lcom/htc/Weather/WeatherActivity;)V

    .line 1594
    :cond_1
    return-void
.end method
