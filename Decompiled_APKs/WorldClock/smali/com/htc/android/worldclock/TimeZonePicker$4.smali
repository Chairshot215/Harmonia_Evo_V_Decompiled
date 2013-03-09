.class Lcom/htc/android/worldclock/TimeZonePicker$4;
.super Ljava/lang/Object;
.source "TimeZonePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/TimeZonePicker;->addCityToDB([Lcom/htc/util/weather/WeatherLocation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/TimeZonePicker;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/TimeZonePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/htc/android/worldclock/TimeZonePicker$4;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 270
    iget-object v1, p0, Lcom/htc/android/worldclock/TimeZonePicker$4;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    const v2, 0x7f08006f

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 272
    .local v0, toast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/htc/android/worldclock/ToastMaster;->setToast(Landroid/widget/Toast;)V

    .line 273
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 274
    return-void
.end method
