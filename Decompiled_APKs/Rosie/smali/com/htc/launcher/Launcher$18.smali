.class Lcom/htc/launcher/Launcher$18;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/Launcher;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/htc/launcher/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 5384
    iput-object p1, p0, Lcom/htc/launcher/Launcher$18;->this$0:Lcom/htc/launcher/Launcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 5390
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    packed-switch p3, :pswitch_data_0

    .line 5401
    :goto_0
    iget-object v0, p0, Lcom/htc/launcher/Launcher$18;->this$0:Lcom/htc/launcher/Launcher;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/htc/launcher/Launcher;->dismissDialog(I)V

    .line 5402
    return-void

    .line 5393
    :pswitch_0
    iget-object v0, p0, Lcom/htc/launcher/Launcher$18;->this$0:Lcom/htc/launcher/Launcher;

    #calls: Lcom/htc/launcher/Launcher;->startWallpaperNoLiveWallpaper()V
    invoke-static {v0}, Lcom/htc/launcher/Launcher;->access$4800(Lcom/htc/launcher/Launcher;)V

    goto :goto_0

    .line 5397
    :pswitch_1
    iget-object v0, p0, Lcom/htc/launcher/Launcher$18;->this$0:Lcom/htc/launcher/Launcher;

    #calls: Lcom/htc/launcher/Launcher;->startLockScreenWallpaper()V
    invoke-static {v0}, Lcom/htc/launcher/Launcher;->access$4900(Lcom/htc/launcher/Launcher;)V

    goto :goto_0

    .line 5390
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
