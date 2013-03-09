.class Lcom/htc/Weather/WeatherActivity$5;
.super Ljava/lang/Object;
.source "WeatherActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/Weather/WeatherActivity;->showConnectionFailedDlg(Z)V
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
    .line 1561
    iput-object p1, p0, Lcom/htc/Weather/WeatherActivity$5;->this$0:Lcom/htc/Weather/WeatherActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1563
    iget-object v0, p0, Lcom/htc/Weather/WeatherActivity$5;->this$0:Lcom/htc/Weather/WeatherActivity;

    #calls: Lcom/htc/Weather/WeatherActivity;->addTopWindowView()V
    invoke-static {v0}, Lcom/htc/Weather/WeatherActivity;->access$2900(Lcom/htc/Weather/WeatherActivity;)V

    .line 1564
    return-void
.end method
