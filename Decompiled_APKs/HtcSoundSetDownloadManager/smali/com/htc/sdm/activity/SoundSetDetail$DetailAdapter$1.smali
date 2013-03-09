.class Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter$1;
.super Ljava/lang/Object;
.source "SoundSetDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    .line 353
    iput-object p1, p0, Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter$1;->this$1:Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 357
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter$1;->this$1:Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter;

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetDetail;

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetDetail;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    iget-object v1, p0, Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter$1;->this$1:Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter;

    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter$1;->this$1:Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter;

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetDetail;

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetDetail;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter;->playSound(I)V

    .line 366
    :cond_0
    return-void
.end method
