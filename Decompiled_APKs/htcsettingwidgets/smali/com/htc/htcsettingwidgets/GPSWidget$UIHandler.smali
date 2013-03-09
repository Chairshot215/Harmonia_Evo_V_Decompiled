.class Lcom/htc/htcsettingwidgets/GPSWidget$UIHandler;
.super Landroid/os/Handler;
.source "GPSWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcsettingwidgets/GPSWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htcsettingwidgets/GPSWidget;


# direct methods
.method private constructor <init>(Lcom/htc/htcsettingwidgets/GPSWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/htc/htcsettingwidgets/GPSWidget$UIHandler;->this$0:Lcom/htc/htcsettingwidgets/GPSWidget;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/htcsettingwidgets/GPSWidget;Lcom/htc/htcsettingwidgets/GPSWidget$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/htc/htcsettingwidgets/GPSWidget$UIHandler;-><init>(Lcom/htc/htcsettingwidgets/GPSWidget;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    .line 213
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 239
    :goto_0
    return-void

    .line 215
    :pswitch_0
    iget-object v1, p0, Lcom/htc/htcsettingwidgets/GPSWidget$UIHandler;->this$0:Lcom/htc/htcsettingwidgets/GPSWidget;

    #getter for: Lcom/htc/htcsettingwidgets/GPSWidget;->mSettingOn:Z
    invoke-static {v1}, Lcom/htc/htcsettingwidgets/GPSWidget;->access$300(Lcom/htc/htcsettingwidgets/GPSWidget;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 216
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v2, p0, Lcom/htc/htcsettingwidgets/GPSWidget$UIHandler;->this$0:Lcom/htc/htcsettingwidgets/GPSWidget;

    #calls: Lcom/htc/htcsettingwidgets/GPSWidget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;
    invoke-static {v2}, Lcom/htc/htcsettingwidgets/GPSWidget;->access$1500(Lcom/htc/htcsettingwidgets/GPSWidget;)Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/android/rosie/widget/Widget$Host;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/htc/htcsettingwidgets/GPSWidget$UIHandler;->this$0:Lcom/htc/htcsettingwidgets/GPSWidget;

    #calls: Lcom/htc/htcsettingwidgets/GPSWidget;->getContext()Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/htcsettingwidgets/GPSWidget;->access$1400(Lcom/htc/htcsettingwidgets/GPSWidget;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070026

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/htcsettingwidgets/GPSWidget$UIHandler;->this$0:Lcom/htc/htcsettingwidgets/GPSWidget;

    #calls: Lcom/htc/htcsettingwidgets/GPSWidget;->getContext()Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/htcsettingwidgets/GPSWidget;->access$1300(Lcom/htc/htcsettingwidgets/GPSWidget;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070027

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htcsettingwidgets/GPSWidget$UIHandler;->this$0:Lcom/htc/htcsettingwidgets/GPSWidget;

    #calls: Lcom/htc/htcsettingwidgets/GPSWidget;->getContext()Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/htcsettingwidgets/GPSWidget;->access$1200(Lcom/htc/htcsettingwidgets/GPSWidget;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x20c013c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/htc/htcsettingwidgets/GPSWidget$UIHandler$2;

    invoke-direct {v2, p0}, Lcom/htc/htcsettingwidgets/GPSWidget$UIHandler$2;-><init>(Lcom/htc/htcsettingwidgets/GPSWidget$UIHandler;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htcsettingwidgets/GPSWidget$UIHandler;->this$0:Lcom/htc/htcsettingwidgets/GPSWidget;

    #calls: Lcom/htc/htcsettingwidgets/GPSWidget;->getContext()Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/htcsettingwidgets/GPSWidget;->access$1000(Lcom/htc/htcsettingwidgets/GPSWidget;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x20c013d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/htc/htcsettingwidgets/GPSWidget$UIHandler$1;

    invoke-direct {v2, p0}, Lcom/htc/htcsettingwidgets/GPSWidget$UIHandler$1;-><init>(Lcom/htc/htcsettingwidgets/GPSWidget$UIHandler;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 232
    :cond_0
    iget-object v1, p0, Lcom/htc/htcsettingwidgets/GPSWidget$UIHandler;->this$0:Lcom/htc/htcsettingwidgets/GPSWidget;

    iget-object v2, p0, Lcom/htc/htcsettingwidgets/GPSWidget$UIHandler;->this$0:Lcom/htc/htcsettingwidgets/GPSWidget;

    #getter for: Lcom/htc/htcsettingwidgets/GPSWidget;->mSettingOn:Z
    invoke-static {v2}, Lcom/htc/htcsettingwidgets/GPSWidget;->access$300(Lcom/htc/htcsettingwidgets/GPSWidget;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    #calls: Lcom/htc/htcsettingwidgets/GPSWidget;->setGPSOn(Z)V
    invoke-static {v1, v0}, Lcom/htc/htcsettingwidgets/GPSWidget;->access$400(Lcom/htc/htcsettingwidgets/GPSWidget;Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 213
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method
