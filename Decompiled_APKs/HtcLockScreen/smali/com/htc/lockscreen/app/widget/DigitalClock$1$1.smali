.class Lcom/htc/lockscreen/app/widget/DigitalClock$1$1;
.super Ljava/lang/Object;
.source "DigitalClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/lockscreen/app/widget/DigitalClock$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/lockscreen/app/widget/DigitalClock$1;


# direct methods
.method constructor <init>(Lcom/htc/lockscreen/app/widget/DigitalClock$1;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/htc/lockscreen/app/widget/DigitalClock$1$1;->this$1:Lcom/htc/lockscreen/app/widget/DigitalClock$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/DigitalClock$1$1;->this$1:Lcom/htc/lockscreen/app/widget/DigitalClock$1;

    iget-object v0, v0, Lcom/htc/lockscreen/app/widget/DigitalClock$1;->this$0:Lcom/htc/lockscreen/app/widget/DigitalClock;

    #calls: Lcom/htc/lockscreen/app/widget/DigitalClock;->updateTime()V
    invoke-static {v0}, Lcom/htc/lockscreen/app/widget/DigitalClock;->access$200(Lcom/htc/lockscreen/app/widget/DigitalClock;)V

    .line 72
    return-void
.end method
