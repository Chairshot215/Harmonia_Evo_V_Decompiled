.class Lcom/htc/music/HtcMusic$41;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/HtcMusic;->createEqualizerDialog()Landroid/app/Dialog;
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

    iput-object p1, p0, Lcom/htc/music/HtcMusic$41;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const-string v2, "EQStyleClickListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dialog: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", arg1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/music/HtcMusic$41;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v3, p0, Lcom/htc/music/HtcMusic$41;->this$0:Lcom/htc/music/HtcMusic;

    iget v3, v3, Lcom/htc/music/HtcMusic;->mTempSelectedEQIndex:I

    iput v3, v2, Lcom/htc/music/HtcMusic;->mSelectEQIndex:I

    iget-object v2, p0, Lcom/htc/music/HtcMusic$41;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v3, p0, Lcom/htc/music/HtcMusic$41;->this$0:Lcom/htc/music/HtcMusic;

    iget v3, v3, Lcom/htc/music/HtcMusic;->mTempSelectedEQIndex:I

    #setter for: Lcom/htc/music/HtcMusic;->mTempShowingEQIndex:I
    invoke-static {v2, v3}, Lcom/htc/music/HtcMusic;->access$6602(Lcom/htc/music/HtcMusic;I)I

    iget-object v2, p0, Lcom/htc/music/HtcMusic$41;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->LocalizedEqualizerStylesFromDevice:[Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/HtcMusic;->access$6700(Lcom/htc/music/HtcMusic;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/HtcMusic$41;->this$0:Lcom/htc/music/HtcMusic;

    iget v3, v3, Lcom/htc/music/HtcMusic;->mSelectEQIndex:I

    aget-object v1, v2, v3

    iget-object v2, p0, Lcom/htc/music/HtcMusic$41;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/music/HtcMusic;->access$6300(Lcom/htc/music/HtcMusic;)Ljava/util/ArrayList;

    move-result-object v2

    sget v3, Lcom/htc/music/util/SoundEffectHelper;->Equalizer:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/util/SoundEffectItem;

    iget-object v2, p0, Lcom/htc/music/HtcMusic$41;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v2, v2, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    sget v3, Lcom/htc/music/util/SoundEffectHelper;->Equalizer:I

    aget-object v2, v2, v3

    iput-object v2, v0, Lcom/htc/music/util/SoundEffectItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/music/util/SoundEffectItem;->setEqualizerStyle(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/music/HtcMusic$41;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mSoundEffectAdapter:Lcom/htc/music/widget/SoundEffectAdapter;
    invoke-static {v2}, Lcom/htc/music/HtcMusic;->access$3000(Lcom/htc/music/HtcMusic;)Lcom/htc/music/widget/SoundEffectAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/music/widget/SoundEffectAdapter;->notifyDataSetChanged()V

    return-void
.end method
