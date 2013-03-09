.class Lcom/htc/Weather/WeatherActivity$8;
.super Ljava/lang/Object;
.source "WeatherActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 1596
    iput-object p1, p0, Lcom/htc/Weather/WeatherActivity$8;->this$0:Lcom/htc/Weather/WeatherActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 1598
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity$8;->this$0:Lcom/htc/Weather/WeatherActivity;

    #calls: Lcom/htc/Weather/WeatherActivity;->addTopWindowView()V
    invoke-static {v0}, Lcom/htc/Weather/WeatherActivity;->access$2900(Lcom/htc/Weather/WeatherActivity;)V

    .line 1599
    return-void
.end method
