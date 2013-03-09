.class Lcom/htc/video/Common/SoundEffectAdapter$SelectedHolder;
.super Ljava/lang/Object;
.source "SoundEffectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/video/Common/SoundEffectAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelectedHolder"
.end annotation


# instance fields
.field checked:Lcom/htc/widget/HtcListItemRadioButton;

.field item:Lcom/htc/video/VideoUtility/SoundEffectItem;

.field final synthetic this$0:Lcom/htc/video/Common/SoundEffectAdapter;


# direct methods
.method constructor <init>(Lcom/htc/video/Common/SoundEffectAdapter;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 52
    iput-object p1, p0, Lcom/htc/video/Common/SoundEffectAdapter$SelectedHolder;->this$0:Lcom/htc/video/Common/SoundEffectAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/htc/video/Common/SoundEffectAdapter$SelectedHolder;->item:Lcom/htc/video/VideoUtility/SoundEffectItem;

    .line 54
    iput-object v0, p0, Lcom/htc/video/Common/SoundEffectAdapter$SelectedHolder;->checked:Lcom/htc/widget/HtcListItemRadioButton;

    return-void
.end method
