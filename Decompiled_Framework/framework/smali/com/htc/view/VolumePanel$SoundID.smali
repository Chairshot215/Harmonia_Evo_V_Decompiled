.class Lcom/htc/view/VolumePanel$SoundID;
.super Ljava/lang/Object;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/view/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SoundID"
.end annotation


# instance fields
.field mId:I

.field mLoaded:Z

.field final synthetic this$0:Lcom/htc/view/VolumePanel;


# direct methods
.method constructor <init>(Lcom/htc/view/VolumePanel;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/view/VolumePanel$SoundID;->this$0:Lcom/htc/view/VolumePanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/view/VolumePanel$SoundID;->mLoaded:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/view/VolumePanel$SoundID;->mId:I

    return-void
.end method
