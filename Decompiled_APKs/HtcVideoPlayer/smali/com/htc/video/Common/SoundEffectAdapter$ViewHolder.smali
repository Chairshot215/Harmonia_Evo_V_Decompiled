.class Lcom/htc/video/Common/SoundEffectAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SoundEffectAdapter.java"

# interfaces
.implements Lcom/htc/widget/HtcListItemSeparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/video/Common/SoundEffectAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field btn:Lcom/htc/widget/HtcListItemRadioButton;

.field checked:Lcom/htc/widget/HtcListItem2LineText;

.field effectIcon:Lcom/htc/widget/HtcListItemColorIcon;

.field final synthetic this$0:Lcom/htc/video/Common/SoundEffectAdapter;


# direct methods
.method constructor <init>(Lcom/htc/video/Common/SoundEffectAdapter;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 38
    iput-object p1, p0, Lcom/htc/video/Common/SoundEffectAdapter$ViewHolder;->this$0:Lcom/htc/video/Common/SoundEffectAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/htc/video/Common/SoundEffectAdapter$ViewHolder;->btn:Lcom/htc/widget/HtcListItemRadioButton;

    .line 40
    iput-object v0, p0, Lcom/htc/video/Common/SoundEffectAdapter$ViewHolder;->effectIcon:Lcom/htc/widget/HtcListItemColorIcon;

    .line 41
    iput-object v0, p0, Lcom/htc/video/Common/SoundEffectAdapter$ViewHolder;->checked:Lcom/htc/widget/HtcListItem2LineText;

    return-void
.end method


# virtual methods
.method public shouldDrawOnThis()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public shouldSeparate(Ljava/lang/Object;)Z
    .locals 1
    .parameter "listitem"

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method
