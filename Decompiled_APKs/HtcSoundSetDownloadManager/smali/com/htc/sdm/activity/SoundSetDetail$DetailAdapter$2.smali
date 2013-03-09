.class Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter$2;
.super Ljava/lang/Object;
.source "SoundSetDetail.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter;


# direct methods
.method constructor <init>(Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 478
    iput-object p1, p0, Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter$2;->this$1:Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 481
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter$2;->this$1:Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter;

    invoke-virtual {v0, p3}, Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter;->playSound(I)V

    .line 482
    return-void
.end method
