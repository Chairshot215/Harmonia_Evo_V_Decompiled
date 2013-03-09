.class Lcom/htc/music/DMCServiceManager$11;
.super Ljava/lang/Object;
.source "DMCServiceManager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/DMCServiceManager;->prepareVolumeUI(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/DMCServiceManager;


# direct methods
.method constructor <init>(Lcom/htc/music/DMCServiceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/DMCServiceManager$11;->this$0:Lcom/htc/music/DMCServiceManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$11;->this$0:Lcom/htc/music/DMCServiceManager;

    #calls: Lcom/htc/music/DMCServiceManager;->resetVolUITimeout()V
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$4000(Lcom/htc/music/DMCServiceManager;)V

    const/4 v0, 0x1

    return v0
.end method
