.class Lcom/htc/music/widget/SoundEffectAdapter$SelectedHolder;
.super Ljava/lang/Object;
.source "SoundEffectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/SoundEffectAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelectedHolder"
.end annotation


# instance fields
.field checked:Landroid/widget/CheckedTextView;

.field item:Lcom/htc/music/util/SoundEffectItem;

.field final synthetic this$0:Lcom/htc/music/widget/SoundEffectAdapter;


# direct methods
.method constructor <init>(Lcom/htc/music/widget/SoundEffectAdapter;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/htc/music/widget/SoundEffectAdapter$SelectedHolder;->this$0:Lcom/htc/music/widget/SoundEffectAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/music/widget/SoundEffectAdapter$SelectedHolder;->item:Lcom/htc/music/util/SoundEffectItem;

    iput-object v0, p0, Lcom/htc/music/widget/SoundEffectAdapter$SelectedHolder;->checked:Landroid/widget/CheckedTextView;

    return-void
.end method
