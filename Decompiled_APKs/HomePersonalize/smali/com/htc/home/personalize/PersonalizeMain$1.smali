.class Lcom/htc/home/personalize/PersonalizeMain$1;
.super Ljava/lang/Object;
.source "PersonalizeMain.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/PersonalizeMain;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/PersonalizeMain;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/PersonalizeMain;)V
    .locals 0
    .parameter

    .prologue
    .line 654
    iput-object p1, p0, Lcom/htc/home/personalize/PersonalizeMain$1;->this$0:Lcom/htc/home/personalize/PersonalizeMain;

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
    .line 659
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    packed-switch p3, :pswitch_data_0

    .line 670
    :goto_0
    iget-object v0, p0, Lcom/htc/home/personalize/PersonalizeMain$1;->this$0:Lcom/htc/home/personalize/PersonalizeMain;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/PersonalizeMain;->dismissDialog(I)V

    .line 671
    return-void

    .line 662
    :pswitch_0
    iget-object v0, p0, Lcom/htc/home/personalize/PersonalizeMain$1;->this$0:Lcom/htc/home/personalize/PersonalizeMain;

    #calls: Lcom/htc/home/personalize/PersonalizeMain;->startWallpaperNoLiveWallpaper()V
    invoke-static {v0}, Lcom/htc/home/personalize/PersonalizeMain;->access$1000(Lcom/htc/home/personalize/PersonalizeMain;)V

    goto :goto_0

    .line 666
    :pswitch_1
    iget-object v0, p0, Lcom/htc/home/personalize/PersonalizeMain$1;->this$0:Lcom/htc/home/personalize/PersonalizeMain;

    #calls: Lcom/htc/home/personalize/PersonalizeMain;->startLockScreenWallpaper()V
    invoke-static {v0}, Lcom/htc/home/personalize/PersonalizeMain;->access$1100(Lcom/htc/home/personalize/PersonalizeMain;)V

    goto :goto_0

    .line 659
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
