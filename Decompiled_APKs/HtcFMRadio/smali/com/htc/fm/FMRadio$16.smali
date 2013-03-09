.class Lcom/htc/fm/FMRadio$16;
.super Ljava/lang/Object;
.source "FMRadio.java"

# interfaces
.implements Lcom/htc/fm/FMRepeatingImageButton$RepeatListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/FMRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fm/FMRadio;


# direct methods
.method constructor <init>(Lcom/htc/fm/FMRadio;)V
    .locals 0
    .parameter

    .prologue
    .line 2493
    iput-object p1, p0, Lcom/htc/fm/FMRadio$16;->this$0:Lcom/htc/fm/FMRadio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRepeat(Landroid/view/View;JIZ)V
    .locals 3
    .parameter "v"
    .parameter "howlong"
    .parameter "repcnt"
    .parameter "last"

    .prologue
    const/4 v2, 0x0

    .line 2496
    const-wide/16 v0, 0x1f4

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 2514
    :goto_0
    return-void

    .line 2499
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMRadio$16;->this$0:Lcom/htc/fm/FMRadio;

    const/4 v1, 0x1

    #setter for: Lcom/htc/fm/FMRadio;->mFromManul:Z
    invoke-static {v0, v1}, Lcom/htc/fm/FMRadio;->access$1702(Lcom/htc/fm/FMRadio;Z)Z

    .line 2508
    iget-object v0, p0, Lcom/htc/fm/FMRadio$16;->this$0:Lcom/htc/fm/FMRadio;

    iget-object v0, v0, Lcom/htc/fm/FMRadio;->mrollbar:Lcom/htc/fm/FreqRollBar;

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/htc/fm/FreqRollBar;->setRotateTime(IIII)V

    .line 2509
    iget-object v0, p0, Lcom/htc/fm/FMRadio$16;->this$0:Lcom/htc/fm/FMRadio;

    iget-object v0, v0, Lcom/htc/fm/FMRadio;->mmirrorface:Lcom/htc/fm/MirrorFace;

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/htc/fm/MirrorFace;->setRotateTime(IIII)V

    .line 2513
    iget-object v0, p0, Lcom/htc/fm/FMRadio$16;->this$0:Lcom/htc/fm/FMRadio;

    #calls: Lcom/htc/fm/FMRadio;->doTuneUp(Z)V
    invoke-static {v0, p5}, Lcom/htc/fm/FMRadio;->access$2700(Lcom/htc/fm/FMRadio;Z)V

    goto :goto_0
.end method
