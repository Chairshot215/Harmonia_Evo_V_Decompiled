.class Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon$MyHandler;
.super Landroid/os/Handler;
.source "ShortcutIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;


# direct methods
.method private constructor <init>(Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;)V
    .locals 0
    .parameter

    .prologue
    .line 471
    iput-object p1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon$MyHandler;->this$0:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 471
    invoke-direct {p0, p1}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon$MyHandler;-><init>(Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    .line 473
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 480
    :goto_0
    return-void

    .line 475
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v0, :cond_0

    .line 476
    .local v0, isVisible:Z
    :goto_1
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon$MyHandler;->this$0:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;

    #calls: Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->handleNameVisible(Z)V
    invoke-static {v1, v0}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->access$100(Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;Z)V

    goto :goto_0

    .line 475
    .end local v0           #isVisible:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 473
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
