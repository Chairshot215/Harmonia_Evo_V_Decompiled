.class Lcom/htc/music/HtcMusic$42;
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

    iput-object p1, p0, Lcom/htc/music/HtcMusic$42;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/htc/music/HtcMusic$42;->this$0:Lcom/htc/music/HtcMusic;

    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/music/HtcMusic$42;->this$0:Lcom/htc/music/HtcMusic;

    iget v2, v2, Lcom/htc/music/HtcMusic;->mSelectEQIndex:I

    aget-object v1, v1, v2

    const/4 v2, 0x0

    #calls: Lcom/htc/music/HtcMusic;->setSoundEffect(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/htc/music/HtcMusic;->access$6500(Lcom/htc/music/HtcMusic;Ljava/lang/String;I)V

    return-void
.end method
