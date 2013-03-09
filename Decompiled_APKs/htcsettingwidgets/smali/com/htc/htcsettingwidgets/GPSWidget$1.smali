.class Lcom/htc/htcsettingwidgets/GPSWidget$1;
.super Ljava/lang/Object;
.source "GPSWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/htcsettingwidgets/GPSWidget;->setGPSOn(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htcsettingwidgets/GPSWidget;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/htc/htcsettingwidgets/GPSWidget;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/htc/htcsettingwidgets/GPSWidget$1;->this$0:Lcom/htc/htcsettingwidgets/GPSWidget;

    iput-boolean p2, p0, Lcom/htc/htcsettingwidgets/GPSWidget$1;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/GPSWidget$1;->this$0:Lcom/htc/htcsettingwidgets/GPSWidget;

    #calls: Lcom/htc/htcsettingwidgets/GPSWidget;->getContext()Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/htcsettingwidgets/GPSWidget;->access$900(Lcom/htc/htcsettingwidgets/GPSWidget;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    iget-boolean v2, p0, Lcom/htc/htcsettingwidgets/GPSWidget$1;->val$enabled:Z

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 187
    return-void
.end method
