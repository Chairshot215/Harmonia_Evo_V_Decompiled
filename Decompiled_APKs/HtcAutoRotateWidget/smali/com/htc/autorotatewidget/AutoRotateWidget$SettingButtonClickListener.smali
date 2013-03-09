.class Lcom/htc/autorotatewidget/AutoRotateWidget$SettingButtonClickListener;
.super Lcom/htc/fusion/fx/MessageListener;
.source "AutoRotateWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/autorotatewidget/AutoRotateWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingButtonClickListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageListener",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/autorotatewidget/AutoRotateWidget;


# direct methods
.method private constructor <init>(Lcom/htc/autorotatewidget/AutoRotateWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 334
    iput-object p1, p0, Lcom/htc/autorotatewidget/AutoRotateWidget$SettingButtonClickListener;->this$0:Lcom/htc/autorotatewidget/AutoRotateWidget;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/autorotatewidget/AutoRotateWidget;Lcom/htc/autorotatewidget/AutoRotateWidget$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 334
    invoke-direct {p0, p1}, Lcom/htc/autorotatewidget/AutoRotateWidget$SettingButtonClickListener;-><init>(Lcom/htc/autorotatewidget/AutoRotateWidget;)V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Ljava/lang/Integer;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 337
    invoke-static {}, Lcom/htc/autorotatewidget/AutoRotateWidget;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingButton - AutoRotate is clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v0, p0, Lcom/htc/autorotatewidget/AutoRotateWidget$SettingButtonClickListener;->this$0:Lcom/htc/autorotatewidget/AutoRotateWidget;

    invoke-virtual {v0}, Lcom/htc/autorotatewidget/AutoRotateWidget;->SwitchSetting()V

    .line 339
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 334
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/autorotatewidget/AutoRotateWidget$SettingButtonClickListener;->onMessageReceived(Ljava/lang/Integer;)V

    return-void
.end method
