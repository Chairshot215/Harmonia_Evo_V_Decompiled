.class Lcom/htc/lockscreen/app/widget/DigitalClock$FormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/app/widget/DigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/app/widget/DigitalClock;


# direct methods
.method public constructor <init>(Lcom/htc/lockscreen/app/widget/DigitalClock;)V
    .locals 1
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/htc/lockscreen/app/widget/DigitalClock$FormatChangeObserver;->this$0:Lcom/htc/lockscreen/app/widget/DigitalClock;

    .line 103
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 104
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/DigitalClock$FormatChangeObserver;->this$0:Lcom/htc/lockscreen/app/widget/DigitalClock;

    #calls: Lcom/htc/lockscreen/app/widget/DigitalClock;->setDateFormat()V
    invoke-static {v0}, Lcom/htc/lockscreen/app/widget/DigitalClock;->access$400(Lcom/htc/lockscreen/app/widget/DigitalClock;)V

    .line 108
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/DigitalClock$FormatChangeObserver;->this$0:Lcom/htc/lockscreen/app/widget/DigitalClock;

    #calls: Lcom/htc/lockscreen/app/widget/DigitalClock;->updateTime()V
    invoke-static {v0}, Lcom/htc/lockscreen/app/widget/DigitalClock;->access$200(Lcom/htc/lockscreen/app/widget/DigitalClock;)V

    .line 109
    return-void
.end method
