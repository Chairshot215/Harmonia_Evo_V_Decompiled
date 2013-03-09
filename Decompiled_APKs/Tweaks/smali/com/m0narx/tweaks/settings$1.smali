.class Lcom/m0narx/tweaks/settings$1;
.super Landroid/os/Handler;
.source "settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/settings;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/settings;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/settings$1;->this$0:Lcom/m0narx/tweaks/settings;

    .line 209
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/m0narx/tweaks/settings$1;->this$0:Lcom/m0narx/tweaks/settings;

    #getter for: Lcom/m0narx/tweaks/settings;->pDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/m0narx/tweaks/settings;->access$0(Lcom/m0narx/tweaks/settings;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 212
    iget-object v0, p0, Lcom/m0narx/tweaks/settings$1;->this$0:Lcom/m0narx/tweaks/settings;

    #calls: Lcom/m0narx/tweaks/settings;->restartPhone()V
    invoke-static {v0}, Lcom/m0narx/tweaks/settings;->access$1(Lcom/m0narx/tweaks/settings;)V

    .line 213
    return-void
.end method
