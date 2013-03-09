.class public Lcom/htc/launcher/Launcher$RosieEditModeListener;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IEditModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RosieEditModeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/Launcher;


# direct methods
.method public constructor <init>(Lcom/htc/launcher/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 9156
    iput-object p1, p0, Lcom/htc/launcher/Launcher$RosieEditModeListener;->this$0:Lcom/htc/launcher/Launcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostEnterEditMode()V
    .locals 0

    .prologue
    .line 9166
    return-void
.end method

.method public onPostLeaveEditMode()V
    .locals 2

    .prologue
    .line 9178
    iget-object v0, p0, Lcom/htc/launcher/Launcher$RosieEditModeListener;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/htc/launcher/Launcher$RosieEditModeListener$1;

    invoke-direct {v1, p0}, Lcom/htc/launcher/Launcher$RosieEditModeListener$1;-><init>(Lcom/htc/launcher/Launcher$RosieEditModeListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9195
    return-void
.end method

.method public onPreEnterEditMode()V
    .locals 0

    .prologue
    .line 9161
    return-void
.end method

.method public onPreLeaveEditMode()V
    .locals 1

    .prologue
    .line 9171
    iget-object v0, p0, Lcom/htc/launcher/Launcher$RosieEditModeListener;->this$0:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->update2DButtonBarViews()V

    .line 9172
    return-void
.end method
