.class public Lcom/htc/video/VideoUtility/SoundEffectItem;
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
    .parameter "type"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/video/VideoUtility/SoundEffectItem;->mType:Ljava/lang/String;

    .line 7
    iput v1, p0, Lcom/htc/video/VideoUtility/SoundEffectItem;->mEffectIconResId:I

    .line 8
    iput-boolean v1, p0, Lcom/htc/video/VideoUtility/SoundEffectItem;->mNeedButton:Z

    .line 9
    iput-boolean v2, p0, Lcom/htc/video/VideoUtility/SoundEffectItem;->mIsEnabled:Z

    .line 10
    iput-boolean v2, p0, Lcom/htc/video/VideoUtility/SoundEffectItem;->mIsVisible:Z

    .line 11
    iput-boolean v1, p0, Lcom/htc/video/VideoUtility/SoundEffectItem;->mIsSelected:Z

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/video/VideoUtility/SoundEffectItem;->mClickListener:Landroid/view/View$OnClickListener;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/video/VideoUtility/SoundEffectItem;->mEqualizerStyle:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/htc/video/VideoUtility/SoundEffectItem;->mType:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .parameter "type"
    .parameter "resId"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/video/VideoUtility/SoundEffectItem;->mType:Ljava/lang/String;

    .line 7
    iput v1, p0, Lcom/htc/video/VideoUtility/SoundEffectItem;->mEffectIconResId:I

    .line 8
    iput-boolean v1, p0, Lcom/htc/video/VideoUtility/SoundEffectItem;->mNeedButton:Z

    .line 9
    iput-boolean v2, p0, Lcom/htc/video/VideoUtility/SoundEffectItem;->mIsEnabled:Z

    .line 10
    iput-boolean v2, p0, Lcom/htc/video/VideoUtility/SoundEffectItem;->mIsVisible:Z

    .line 11
    iput-boolean v1, p0, Lcom/htc/video/VideoUtility/SoundEffectItem;->mIsSelected:Z

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/video/VideoUtility/SoundEffectItem;->mClickListener:Landroid/view/View$OnClickListener;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/video/VideoUtility/SoundEffectItem;->mEqualizerStyle:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/htc/video/VideoUtility/SoundEffectItem;->mType:Ljava/lang/String;

    .line 22
    iput p2, p0, Lcom/htc/video/VideoUtility/SoundEffectItem;->mEffectIconResId:I

    .line 23
    return-void
.end method


# virtual methods
.method public setEffectIcon(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 46
    iput p1, p0, Lcom/htc/video/VideoUtility/SoundEffectItem;->mEffectIconResId:I

    .line 47
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/htc/video/VideoUtility/SoundEffectItem;->mIsEnabled:Z

    .line 27
    return-void
.end method

.method public setEqualizerStyle(Ljava/lang/String;)V
    .locals 0
    .parameter "style"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/htc/video/VideoUtility/SoundEffectItem;->mEqualizerStyle:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "clickListener"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/htc/video/VideoUtility/SoundEffectItem;->mClickListener:Landroid/view/View$OnClickListener;

    .line 35
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .parameter "selected"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/htc/video/VideoUtility/SoundEffectItem;->mIsSelected:Z

    .line 39
    return-void
.end method

.method public setVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/htc/video/VideoUtility/SoundEffectItem;->mIsVisible:Z

    .line 31
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SoundItem: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/video/VideoUtility/SoundEffectItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
