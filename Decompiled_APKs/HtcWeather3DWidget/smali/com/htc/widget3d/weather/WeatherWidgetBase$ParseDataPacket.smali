.class Lcom/htc/widget3d/weather/WeatherWidgetBase$ParseDataPacket;
.super Ljava/lang/Object;
.source "WeatherWidgetBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget3d/weather/WeatherWidgetBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ParseDataPacket"
.end annotation


# instance fields
.field idx:I

.field mIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/htc/widget3d/weather/WeatherWidgetBase;


# direct methods
.method public constructor <init>(Lcom/htc/widget3d/weather/WeatherWidgetBase;Landroid/content/Intent;I)V
    .locals 0
    .parameter
    .parameter "intent"
    .parameter "index"

    .prologue
    .line 605
    iput-object p1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase$ParseDataPacket;->this$0:Lcom/htc/widget3d/weather/WeatherWidgetBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 606
    iput-object p2, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase$ParseDataPacket;->mIntent:Landroid/content/Intent;

    .line 607
    iput p3, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase$ParseDataPacket;->idx:I

    .line 608
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 612
    iget-object v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase$ParseDataPacket;->this$0:Lcom/htc/widget3d/weather/WeatherWidgetBase;

    iget-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase$ParseDataPacket;->mIntent:Landroid/content/Intent;

    iget v2, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase$ParseDataPacket;->idx:I

    #calls: Lcom/htc/widget3d/weather/WeatherWidgetBase;->parseDataPacket(Landroid/content/Intent;I)V
    invoke-static {v0, v1, v2}, Lcom/htc/widget3d/weather/WeatherWidgetBase;->access$400(Lcom/htc/widget3d/weather/WeatherWidgetBase;Landroid/content/Intent;I)V

    .line 614
    return-void
.end method
