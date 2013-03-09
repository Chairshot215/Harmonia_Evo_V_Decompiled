.class Lcom/htc/Weather/AddCity$1;
.super Landroid/os/Handler;
.source "AddCity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/Weather/AddCity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/Weather/AddCity;


# direct methods
.method constructor <init>(Lcom/htc/Weather/AddCity;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/htc/Weather/AddCity$1;->this$0:Lcom/htc/Weather/AddCity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 165
    iget v0, p1, Landroid/os/Message;->what:I

    .line 170
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 172
    return-void
.end method
