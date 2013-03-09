.class Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherProviderObserver;
.super Landroid/database/ContentObserver;
.source "DeleteAndRearrangeCity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/Weather/DeleteAndRearrangeCity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeatherProviderObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/Weather/DeleteAndRearrangeCity;


# direct methods
.method public constructor <init>(Lcom/htc/Weather/DeleteAndRearrangeCity;)V
    .locals 1
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherProviderObserver;->this$0:Lcom/htc/Weather/DeleteAndRearrangeCity;

    .line 418
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 419
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 423
    const-string v0, "DeleteCity_ListActivity"

    const-string v1, "Weather-Rearrange get change notification from weather provider"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v0, p0, Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherProviderObserver;->this$0:Lcom/htc/Weather/DeleteAndRearrangeCity;

    const/4 v1, 0x1

    #setter for: Lcom/htc/Weather/DeleteAndRearrangeCity;->weatherProviderChanged:Z
    invoke-static {v0, v1}, Lcom/htc/Weather/DeleteAndRearrangeCity;->access$1002(Lcom/htc/Weather/DeleteAndRearrangeCity;Z)Z

    .line 425
    return-void
.end method
