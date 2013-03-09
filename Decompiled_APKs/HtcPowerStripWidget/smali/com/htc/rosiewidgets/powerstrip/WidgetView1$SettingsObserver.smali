.class Lcom/htc/rosiewidgets/powerstrip/WidgetView1$SettingsObserver;
.super Ljava/lang/Object;
.source "WidgetView1.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/rosiewidgets/powerstrip/WidgetView1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetView1;


# direct methods
.method private constructor <init>(Lcom/htc/rosiewidgets/powerstrip/WidgetView1;)V
    .locals 0
    .parameter

    .prologue
    .line 514
    iput-object p1, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1$SettingsObserver;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetView1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/rosiewidgets/powerstrip/WidgetView1;Lcom/htc/rosiewidgets/powerstrip/WidgetView1$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 514
    invoke-direct {p0, p1}, Lcom/htc/rosiewidgets/powerstrip/WidgetView1$SettingsObserver;-><init>(Lcom/htc/rosiewidgets/powerstrip/WidgetView1;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1
    .parameter "o"
    .parameter "arg"

    .prologue
    .line 518
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1$SettingsObserver;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetView1;

    iget-object v0, v0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->Widget_Screen_Brightness:Lcom/htc/rosiewidgets/powerstrip/WidgetScreenBrightness;

    invoke-virtual {v0}, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenBrightness;->updateIcon()V

    .line 519
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1$SettingsObserver;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetView1;

    iget-object v0, v0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->Widget_ScreenTimeout:Lcom/htc/rosiewidgets/powerstrip/WidgetScreenTimeout;

    invoke-virtual {v0}, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenTimeout;->updateIcon()V

    .line 520
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1$SettingsObserver;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetView1;

    iget-object v0, v0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->Widget_Background_Data:Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;

    invoke-virtual {v0}, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;->updateIcon()V

    .line 521
    return-void
.end method
