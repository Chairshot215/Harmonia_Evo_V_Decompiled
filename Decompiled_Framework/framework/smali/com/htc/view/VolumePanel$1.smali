.class Lcom/htc/view/VolumePanel$1;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/view/VolumePanel;-><init>(Landroid/content/Context;Landroid/media/AudioService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/view/VolumePanel;


# direct methods
.method constructor <init>(Lcom/htc/view/VolumePanel;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/view/VolumePanel$1;->this$0:Lcom/htc/view/VolumePanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/view/VolumePanel$1;->this$0:Lcom/htc/view/VolumePanel;

    #calls: Lcom/htc/view/VolumePanel;->resetTimeout()V
    invoke-static {v0}, Lcom/htc/view/VolumePanel;->access$100(Lcom/htc/view/VolumePanel;)V

    const/4 v0, 0x0

    return v0
.end method
