.class Lcom/htc/music/HtcMusic$36;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/HtcMusic;->createSoundEffectDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/HtcMusic;


# direct methods
.method constructor <init>(Lcom/htc/music/HtcMusic;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/HtcMusic$36;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v5, 0x1

    const-string v2, "[HtcMusic]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SoundEffectDialog, setOnItemClickListener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " +++"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/music/HtcMusic$36;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/music/HtcMusic;->access$6300(Lcom/htc/music/HtcMusic;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/htc/music/HtcMusic$36;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/music/HtcMusic;->access$6300(Lcom/htc/music/HtcMusic;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/htc/music/HtcMusic$36;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v3}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/music/util/SoundEffectHelper;->getSoundEffectStyleSize(Landroid/content/Context;)I

    move-result v3

    if-lt v2, v3, :cond_5

    invoke-static {p3}, Lcom/htc/music/widget/SoundEffectAdapter;->getRealListPos(I)I

    move-result v1

    iget-object v2, p0, Lcom/htc/music/HtcMusic$36;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/music/HtcMusic;->access$6300(Lcom/htc/music/HtcMusic;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/util/SoundEffectItem;

    iget-object v2, p0, Lcom/htc/music/HtcMusic$36;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;
    invoke-static {v2}, Lcom/htc/music/HtcMusic;->access$6400(Lcom/htc/music/HtcMusic;)Lcom/htc/music/util/SoundEffectItem;

    move-result-object v2

    if-ne v0, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v2, v0, Lcom/htc/music/util/SoundEffectItem;->mIsEnabled:Z

    if-eqz v2, :cond_2

    iput-boolean v5, v0, Lcom/htc/music/util/SoundEffectItem;->mIsSelected:Z

    iget-object v2, p0, Lcom/htc/music/HtcMusic$36;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;
    invoke-static {v2}, Lcom/htc/music/HtcMusic;->access$6400(Lcom/htc/music/HtcMusic;)Lcom/htc/music/util/SoundEffectItem;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/HtcMusic$36;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;
    invoke-static {v2}, Lcom/htc/music/HtcMusic;->access$6400(Lcom/htc/music/HtcMusic;)Lcom/htc/music/util/SoundEffectItem;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/htc/music/util/SoundEffectItem;->mIsSelected:Z

    :cond_1
    iget-object v2, p0, Lcom/htc/music/HtcMusic$36;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v2}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/music/HtcMusic$36;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v3, p0, Lcom/htc/music/HtcMusic$36;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v3}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/htc/music/util/SoundEffectHelper;->getSoundEffectStyleByIndex(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/htc/music/HtcMusic;->setSoundEffect(Ljava/lang/String;I)V
    invoke-static {v2, v3, v5}, Lcom/htc/music/HtcMusic;->access$6500(Lcom/htc/music/HtcMusic;Ljava/lang/String;I)V

    :goto_1
    iget-object v2, p0, Lcom/htc/music/HtcMusic$36;->this$0:Lcom/htc/music/HtcMusic;

    #setter for: Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;
    invoke-static {v2, v0}, Lcom/htc/music/HtcMusic;->access$6402(Lcom/htc/music/HtcMusic;Lcom/htc/music/util/SoundEffectItem;)Lcom/htc/music/util/SoundEffectItem;

    iget-object v2, p0, Lcom/htc/music/HtcMusic$36;->this$0:Lcom/htc/music/HtcMusic;

    #setter for: Lcom/htc/music/HtcMusic;->m_iUserLastClickEffectIdx:I
    invoke-static {v2, v1}, Lcom/htc/music/HtcMusic;->access$102(Lcom/htc/music/HtcMusic;I)I

    iget-object v2, p0, Lcom/htc/music/HtcMusic$36;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mSoundEffectAdapter:Lcom/htc/music/widget/SoundEffectAdapter;
    invoke-static {v2}, Lcom/htc/music/HtcMusic;->access$3000(Lcom/htc/music/HtcMusic;)Lcom/htc/music/widget/SoundEffectAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/music/widget/SoundEffectAdapter;->notifyDataSetChanged()V

    :cond_2
    :goto_2
    const-string v2, "[HtcMusic]"

    const-string v3, "SoundEffectDialog, setOnItemClickListener ---"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget v2, Lcom/htc/music/util/SoundEffectHelper;->Equalizer:I

    if-ne v2, v1, :cond_4

    iget-object v2, p0, Lcom/htc/music/HtcMusic$36;->this$0:Lcom/htc/music/HtcMusic;

    sget-object v3, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/music/HtcMusic$36;->this$0:Lcom/htc/music/HtcMusic;

    iget v4, v4, Lcom/htc/music/HtcMusic;->mSelectEQIndex:I

    aget-object v3, v3, v4

    #calls: Lcom/htc/music/HtcMusic;->setSoundEffect(Ljava/lang/String;I)V
    invoke-static {v2, v3, v5}, Lcom/htc/music/HtcMusic;->access$6500(Lcom/htc/music/HtcMusic;Ljava/lang/String;I)V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/htc/music/HtcMusic$36;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v3, p0, Lcom/htc/music/HtcMusic$36;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v3}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/htc/music/util/SoundEffectHelper;->getSoundEffectStyleByIndex(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/htc/music/HtcMusic;->setSoundEffect(Ljava/lang/String;I)V
    invoke-static {v2, v3, v5}, Lcom/htc/music/HtcMusic;->access$6500(Lcom/htc/music/HtcMusic;Ljava/lang/String;I)V

    goto :goto_1

    :cond_5
    const-string v2, "[HtcMusic]"

    const-string v3, "SoundEffectDialog, setOnItemClickListener, mSoundEffectList is null or size is incorrect."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
