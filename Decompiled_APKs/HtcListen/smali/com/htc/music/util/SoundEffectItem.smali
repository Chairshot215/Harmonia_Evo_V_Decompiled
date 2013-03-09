.class public Lcom/htc/music/util/SoundEffectItem;
.super Ljava/lang/Object;
.source "SoundEffectItem.java"


# instance fields
.field public mClickListener:Landroid/view/View$OnClickListener;

.field public mEffectIconResId:I

.field public mEqualizerStyle:Ljava/lang/String;

.field public mIsEnabled:Z

.field public mIsSelected:Z

.field public mIsVisible:Z

.field public mNeedButton:Z

.field public mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/music/util/SoundEffectItem;->mType:Ljava/lang/String;

    iput v1, p0, Lcom/htc/music/util/SoundEffectItem;->mEffectIconResId:I

    iput-boolean v1, p0, Lcom/htc/music/util/SoundEffectItem;->mNeedButton:Z

    iput-boolean v2, p0, Lcom/htc/music/util/SoundEffectItem;->mIsEnabled:Z

    iput-boolean v2, p0, Lcom/htc/music/util/SoundEffectItem;->mIsVisible:Z

    iput-boolean v1, p0, Lcom/htc/music/util/SoundEffectItem;->mIsSelected:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/util/SoundEffectItem;->mClickListener:Landroid/view/View$OnClickListener;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/music/util/SoundEffectItem;->mEqualizerStyle:Ljava/lang/String;

    iput-object p1, p0, Lcom/htc/music/util/SoundEffectItem;->mType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/music/util/SoundEffectItem;->mType:Ljava/lang/String;

    iput v1, p0, Lcom/htc/music/util/SoundEffectItem;->mEffectIconResId:I

    iput-boolean v1, p0, Lcom/htc/music/util/SoundEffectItem;->mNeedButton:Z

    iput-boolean v2, p0, Lcom/htc/music/util/SoundEffectItem;->mIsEnabled:Z

    iput-boolean v2, p0, Lcom/htc/music/util/SoundEffectItem;->mIsVisible:Z

    iput-boolean v1, p0, Lcom/htc/music/util/SoundEffectItem;->mIsSelected:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/util/SoundEffectItem;->mClickListener:Landroid/view/View$OnClickListener;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/music/util/SoundEffectItem;->mEqualizerStyle:Ljava/lang/String;

    iput-object p1, p0, Lcom/htc/music/util/SoundEffectItem;->mType:Ljava/lang/String;

    iput p2, p0, Lcom/htc/music/util/SoundEffectItem;->mEffectIconResId:I

    return-void
.end method


# virtual methods
.method public setEffectIcon(I)V
    .locals 0

    iput p1, p0, Lcom/htc/music/util/SoundEffectItem;->mEffectIconResId:I

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/music/util/SoundEffectItem;->mIsEnabled:Z

    return-void
.end method

.method public setEqualizerStyle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/util/SoundEffectItem;->mEqualizerStyle:Ljava/lang/String;

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/util/SoundEffectItem;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/music/util/SoundEffectItem;->mIsSelected:Z

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/util/SoundEffectItem;->mType:Ljava/lang/String;

    return-void
.end method

.method public setVisibility(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/music/util/SoundEffectItem;->mIsVisible:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SoundItem: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/util/SoundEffectItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
